@winner = ""

def janken
  puts "じゃんけん.."
  puts "0(グー)1(チョキ)2(パー)"
  jankens = ["グー","チョキ","パー"]
  player_hand = gets.chomp
  program_hand = rand(3)
  puts "ホイ！"
  puts "-----------"
  puts "あなた：#{jankens[player_hand.to_i]}を出しました"
  puts "相手：#{jankens[program_hand.to_i]}を出しました"
  if player_hand.to_i === program_hand.to_i
    puts "あいこ"
   return true
  elsif (player_hand.to_i === 0 && program_hand.to_i === 1) || (player_hand.to_i === 1 && program_hand.to_i === 2) || (player_hand.to_i === 2 && program_hand.to_i === 0)
    puts "勝ち"
    @winner = "player"
    return false
  else 
    puts "負け"
    @winner = "program"
    return false
  end
end

while janken do
  janken()
end

def look
  puts "-----------"
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  looks = ["上","下","左","右"]
  player_look = gets.chomp
  program_look = rand(3)
  puts "ホイ！"
  puts "-----------"
  puts "あなた：#{looks[player_look.to_i]}"
  puts "相手：#{looks[program_look.to_i]}"
  if player_look.to_i != program_look.to_i
    puts "最初から"
    return true
  else 
    if @winner === "player"
      puts "おめでとう！"
    else 
      puts "また頑張ろう！"
    end
    return false
  end
end

while look do
  janken()
end


