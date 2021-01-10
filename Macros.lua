Change CVar
  Auto Loot
    /script SetCVar("AutoLootDefault", 1)

Clear ALL Action Bar Instantly
  /run for i = 1, 120 do PickupAction(i) ClearCursor() end

Check if Quest Completed
  /dump C_QuestLog.IsQuestFlaggedCompleted(questID)

Check if Quest Completed - 4 OOX
  /run local z={"Tanaris","Hinterlands","Feralas"}for k,v in pairs({{351,648},{485,836},{25475,25476}})do print(z[k])for i,q in pairs(v)do print(" #"..i,"\124Hquest:"..q.."\124h["..q.."]\124h" ,C_QuestLog.IsQuestFlaggedCompleted(q)and COMPLETE or INCOMPLETE)end end

Mission Table Toggle
  for the WoD version
    /run ShowGarrisonLandingPage(LE_GARRISON_TYPE_6_0)
  for the Legion version
    /run ShowGarrisonLandingPage(LE_GARRISON_TYPE_7_0)
  for the BoA version
    /run ShowGarrisonLandingPage(LE_GARRISON_TYPE_8_0)

Strip your Toon Nekked
  /run for c=1,19 do PickupInventoryItem(c)for b=20,23 do if CursorHasItem()then PutItemInBag(b)else break end if CursorHasItem() then ClearCursor() print"Error- bags full!" return end end end
