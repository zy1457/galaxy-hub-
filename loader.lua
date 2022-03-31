


local url = "https://raw.githubusercontent.com/zy1457/galaxy-hub/main/games"

local games = ({ 
    [155615604] = "Prison Life"
})

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end


local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))() and return print('galaxy hub loaded')


