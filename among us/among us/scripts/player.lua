player = {}

player.x = 980
player.y = 280

player.speed = 3

function player.update()

    if keyDown("W") then
        player.y = player.y - player.speed
        animation("walk")
    end

    if keyDown("S") then
        player.y = player.y + player.speed
        animation("walk")
    end

    if keyDown("A") then
        player.x = player.x - player.speed
        flipX(true)
        animation("walk")
    end

    if keyDown("D") then
        player.x = player.x + player.speed
        flipX(false)
        animation("walk")
    end

    if noKeyPressed() then
        animation("idle")
    end

end