; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c__initialize_tui_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-win.c__initialize_tui_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@_initialize_tui_win.tui_setlist = internal global %struct.cmd_list_element* null, align 8
@_initialize_tui_win.tui_showlist = internal global %struct.cmd_list_element* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"tui\00", align 1
@class_tui = common dso_local global i32 0, align 4
@set_tui_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TUI configuration variables\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"set tui \00", align 1
@setlist = common dso_local global i32 0, align 4
@show_tui_cmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"show tui \00", align 1
@showlist = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@tui_refresh_all_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Refresh the terminal display.\0A\00", align 1
@xdb_commands = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"tabset\00", align 1
@tui_set_tab_width_command = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [63 x i8] c"Set the width (in characters) of tab stops.\0AUsage: tabset <n>\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"winheight\00", align 1
@tui_set_win_height_command = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [211 x i8] c"Set the height of a specified window.\0AUsage: winheight <win_name> [+ | -] <#lines>\0AWindow names are:\0Asrc  : the source window\0Acmd  : the command window\0Aasm  : the disassembly window\0Aregs : the register display\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"wh\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"win\00", align 1
@tui_all_windows_info = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"List of all displayed windows.\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@tui_set_focus_command = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [216 x i8] c"Set focus to named window or next/prev window.\0AUsage: focus {<win> | next | prev}\0AValid Window names are:\0Asrc  : the source window\0Aasm  : the disassembly window\0Aregs : the register display\0Acmd  : the command window\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@tui_scroll_forward_command = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"Scroll window forward.\0AUsage: + [win] [n]\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@tui_scroll_backward_command = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [44 x i8] c"Scroll window backward.\0AUsage: - [win] [n]\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@tui_scroll_left_command = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [43 x i8] c"Scroll window forward.\0AUsage: < [win] [n]\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c">\00", align 1
@tui_scroll_right_command = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [44 x i8] c"Scroll window backward.\0AUsage: > [win] [n]\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@class_xdb = common dso_local global i32 0, align 4
@tui_xdb_set_win_height_command = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [89 x i8] c"XDB compatibility command for setting the height of a command window.\0AUsage: w <#lines>\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"border-kind\00", align 1
@no_class = common dso_local global i32 0, align 4
@tui_border_kind_enums = common dso_local global i32 0, align 4
@tui_border_kind = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [231 x i8] c"Set the kind of border for TUI windows.\0AThis variable controls the border of TUI windows:\0Aspace           use a white space\0Aascii           use ascii characters + - | for the border\0Aacs             use the Alternate Character Set\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"border-mode\00", align 1
@tui_border_mode_enums = common dso_local global i32 0, align 4
@tui_border_mode = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [428 x i8] c"Set the attribute mode to use for the TUI window borders.\0AThis variable controls the attributes to use for the window borders:\0Anormal          normal display\0Astandout        use highlight mode of terminal\0Areverse         use reverse video mode\0Ahalf            use half bright\0Ahalf-standout   use half bright and standout mode\0Abold            use extra bright or bold\0Abold-standout   use extra bright or bold with standout mode\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"active-border-mode\00", align 1
@tui_active_border_mode = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [440 x i8] c"Set the attribute mode to use for the active TUI window border.\0AThis variable controls the attributes to use for the active window border:\0Anormal          normal display\0Astandout        use highlight mode of terminal\0Areverse         use reverse video mode\0Ahalf            use half bright\0Ahalf-standout   use half bright and standout mode\0Abold            use extra bright or bold\0Abold-standout   use extra bright or bold with standout mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_tui_win() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_tui, align 4
  %3 = load i32, i32* @set_tui_cmd, align 4
  %4 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.cmd_list_element** @_initialize_tui_win.tui_setlist, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @setlist)
  %5 = load i32, i32* @class_tui, align 4
  %6 = load i32, i32* @show_tui_cmd, align 4
  %7 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.cmd_list_element** @_initialize_tui_win.tui_showlist, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* @showlist)
  %8 = load i32, i32* @class_tui, align 4
  %9 = load i32, i32* @tui_refresh_all_command, align 4
  %10 = call i32 @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %8, i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %11 = load i64, i64* @xdb_commands, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @class_tui, align 4
  %15 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %14, i32 0)
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, i32* @class_tui, align 4
  %18 = load i32, i32* @tui_set_tab_width_command, align 4
  %19 = call i32 @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %17, i32 %18, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i32, i32* @class_tui, align 4
  %21 = load i32, i32* @tui_set_win_height_command, align 4
  %22 = call i32 @add_com(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %20, i32 %21, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.10, i64 0, i64 0))
  %23 = load i32, i32* @class_tui, align 4
  %24 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %23, i32 0)
  %25 = load i32, i32* @tui_all_windows_info, align 4
  %26 = call i32 @add_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %27 = load i32, i32* @class_tui, align 4
  %28 = load i32, i32* @tui_set_focus_command, align 4
  %29 = call i32 @add_com(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %27, i32 %28, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.15, i64 0, i64 0))
  %30 = load i32, i32* @class_tui, align 4
  %31 = call i32 @add_com_alias(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %30, i32 0)
  %32 = load i32, i32* @class_tui, align 4
  %33 = load i32, i32* @tui_scroll_forward_command, align 4
  %34 = call i32 @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 %32, i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %35 = load i32, i32* @class_tui, align 4
  %36 = load i32, i32* @tui_scroll_backward_command, align 4
  %37 = call i32 @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %35, i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %38 = load i32, i32* @class_tui, align 4
  %39 = load i32, i32* @tui_scroll_left_command, align 4
  %40 = call i32 @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %38, i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  %41 = load i32, i32* @class_tui, align 4
  %42 = load i32, i32* @tui_scroll_right_command, align 4
  %43 = call i32 @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 %41, i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0))
  %44 = load i64, i64* @xdb_commands, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %16
  %47 = load i32, i32* @class_xdb, align 4
  %48 = load i32, i32* @tui_xdb_set_win_height_command, align 4
  %49 = call i32 @add_com(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 %47, i32 %48, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.26, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %16
  %51 = load i32, i32* @no_class, align 4
  %52 = load i32, i32* @tui_border_kind_enums, align 4
  %53 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 %51, i32 %52, i32* @tui_border_kind, i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.28, i64 0, i64 0), %struct.cmd_list_element** @_initialize_tui_win.tui_setlist)
  store %struct.cmd_list_element* %53, %struct.cmd_list_element** %1, align 8
  %54 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %55 = call i32 @add_show_from_set(%struct.cmd_list_element* %54, %struct.cmd_list_element** @_initialize_tui_win.tui_showlist)
  %56 = load i32, i32* @no_class, align 4
  %57 = load i32, i32* @tui_border_mode_enums, align 4
  %58 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 %56, i32 %57, i32* @tui_border_mode, i8* getelementptr inbounds ([428 x i8], [428 x i8]* @.str.30, i64 0, i64 0), %struct.cmd_list_element** @_initialize_tui_win.tui_setlist)
  store %struct.cmd_list_element* %58, %struct.cmd_list_element** %1, align 8
  %59 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %60 = call i32 @add_show_from_set(%struct.cmd_list_element* %59, %struct.cmd_list_element** @_initialize_tui_win.tui_showlist)
  %61 = load i32, i32* @no_class, align 4
  %62 = load i32, i32* @tui_border_mode_enums, align 4
  %63 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %61, i32 %62, i32* @tui_active_border_mode, i8* getelementptr inbounds ([440 x i8], [440 x i8]* @.str.32, i64 0, i64 0), %struct.cmd_list_element** @_initialize_tui_win.tui_setlist)
  store %struct.cmd_list_element* %63, %struct.cmd_list_element** %1, align 8
  %64 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %65 = call i32 @add_show_from_set(%struct.cmd_list_element* %64, %struct.cmd_list_element** @_initialize_tui_win.tui_showlist)
  ret void
}

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**, i8*, i32, i32*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local %struct.cmd_list_element* @add_set_enum_cmd(i8*, i32, i32, i32*, i8*, %struct.cmd_list_element**) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, %struct.cmd_list_element**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
