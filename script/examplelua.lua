 -- Window, notifs, Library
            notif:Create({
                    Name = "this is an example, vooga was here."
                })
            local lib = Window
            local new_tab = lib:Tab({Name = "new tab"})
            local section_1 = new_tab:Section({Name = "hi", Size = 1})
            local first_tab, second_tab = new_tab:MultiSection({Name = "greetings", Tabs = {"hi", "hello"}, Side = "Right", Size = 1})
            -- key binds
            section_1:Toggle({Name = "toggle with keybind", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end}):Keybind({Name = "keybind", Flag = "", ShowInList = true, Callback = function(boolean) 
                if boolean then
                    print("on")
                else
                    print("off")
                end
            end}) 
            -- a normal toggle
            section_1:Toggle({Name = "toggle", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end})
            -- the basics
            section_1:Slider({Name = "slider", Flag = "", Min = 1, Max = 5000, Suffix = " suffix", Default = 500})
            local fuckingdropdown = section_1:Dropdown({Name = "dropdown", Flag = "", Options = {"hi!", "hello!"}, Multi = false})
            fuckingdropdown.Set("hello!")
            fuckingdropdown.RefreshOptions({"insert your messages here", "insert your messages here"})
            section_1:Textbox({Name = "textbox", Flag = "hello_textbox", Default = "hey"})
            print(Library.Flags.hello_textbox)
            section_1:Label({Name = "Label (this is a label label fucking label okay?)"})
            section_1:Toggle({Name = " with color picker", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end}):Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})
            --^^ ui.flags.imsofuckingsleepysendhelp.Color ~ ui.flags.imsofuckingsleepysendhelp.Alpha
            -- yes you can do double (or any amounts) color picker!
            local toggle = section_1:Toggle({Name = "with 2 color pickers", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end})
            toggle:Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})
            toggle:Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})


            -- the multi section time!! (yes it works the same way the normal section does)
            first_tab:Toggle({Name = "toggle with keybind", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end}):Keybind({Name = "keybind", Flag = "", ShowInList = true, Callback = function(boolean) 
                if boolean then
                    print("on")
                else
                    print("off")
                end
            end}) 
            first_tab:Toggle({Name = "toggle", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end})
            first_tab:Slider({Name = "slider", Flag = "", Min = 1, Max = 5000, Suffix = " suffix", Default = 500})
            local fuckingdropdown = first_tab:Dropdown({Name = "dropdown", Flag = "", Options = {"hi!", "hello!"}, Multi = false})
            fuckingdropdown.Set("hello!")
            fuckingdropdown.RefreshOptions({"insert your messages here", "insert your messages here"})
            first_tab:Textbox({Name = "textbox", Flag = "hello_textbox", Default = "hey"})
            print(Library.Flags.hello_textbox)
            first_tab:Label({Name = "Label (this is a label label fucking label okay?)"})
            first_tab:Toggle({Name = " with color picker", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end}):Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})
            --^^ ui.flags.imsofuckingsleepysendhelp.Color ~ ui.flags.imsofuckingsleepysendhelp.Alpha

            -- yes you can do double (or any amounts) color picker!

            local toggle = first_tab:Toggle({Name = "with 2 color pickers", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end})
            toggle:Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})
            toggle:Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})
            -- i am going fucking crazy!
            second_tab:Toggle({Name = "toggle with keybind", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end}):Keybind({Name = "keybind", Flag = "", ShowInList = true, Callback = function(boolean) 
                if boolean then
                    print("on")
                else
                    print("off")
                end
            end}) 
            second_tab:Toggle({Name = "toggle", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end})
            second_tab:Slider({Name = "slider", Flag = "", Min = 1, Max = 5000, Suffix = " suffix", Default = 500})
            local fuckingdropdown = second_tab:Dropdown({Name = "dropdown", Flag = "", Options = {"hi!", "hello!"}, Multi = false})
            fuckingdropdown.Set("hello!")
            fuckingdropdown.RefreshOptions({"insert your messages here", "insert your messages here"})
            second_tab:Textbox({Name = "textbox", Flag = "hello_textbox", Default = "hey"})
            print(Library.Flags.hello_textbox)
            second_tab:Label({Name = "Label (this is a label label fucking label okay?)"})
            second_tab:Toggle({Name = " with color picker", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end}):Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})
            --^^ ui.flags.imsofuckingsleepysendhelp.Color ~ ui.flags.imsofuckingsleepysendhelp.Alpha

            -- yes you can do double (or any amounts) color picker!

            local toggle = second_tab:Toggle({Name = "with 2 color pickers", Flag = "", Callback = function(boolean) 
                if boolean then
                    notif:Create({Name = "i am positive"})
                else
                    notif:Create({Name = "i am negative"})
                end
            end})
            toggle:Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})
            toggle:Colorpicker({Name = "hi", Flag = "imsofuckingsleepysendhelp", Color = Color3.fromRGB(100, 0, 0), Alpha = 155/255})
