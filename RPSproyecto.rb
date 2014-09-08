require 'sinatra'
#ROCK=0 PAPER=1 SCISSORS=2
wins=0
losses=0
get '/rock' do
	ccu=rand(3)
	if ccu==0
		"I play ROCk. It's a DRAW. Wins- #{wins}. Losses- #{losses}"
	elsif ccu==1
		losses+=1
		"I play PAPER. YOU LOSE. Wins- #{wins}. Losses- #{losses}"
	elsif ccu==2
		wins+=1
		"I play SCISSORS. YOU WIN. Wins- #{wins}. Losses- #{losses}"
	end
end

get '/scissors' do
	ccu=rand(3)
	if ccu==0
		losses+=1
		"I play ROCK. YOU LOSE. Wins- #{wins}. Losses- #{losses}"
	elsif ccu==1
		wins+=1
		"I play PAPER. YOU WIN. Wins- #{wins}. Losses- #{losses}"
	elsif ccu==2
		"I play SCISSORS. It's a DRAW. Wins- #{wins}. Losses- #{losses}"
	end
end

get '/paper' do
	ccu=rand(3)
	if ccu==0
		wins+=1
		"I play ROCK. YOU WIN. Wins- #{wins}. Losses- #{losses}"
	elsif ccu==1
		"I play PAPER. It's a DRAW. Wins- #{wins}. Losses- #{losses}"
	elsif ccu==2
		losses+=1
		"I play SCISSORS. YOU LOSE. Wins- #{wins}. Losses- #{losses}"
	end
end