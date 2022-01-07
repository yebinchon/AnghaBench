; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c__initialize_tui_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c__initialize_tui_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@class_tui = common dso_local global i32 0, align 4
@tui_layout_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [575 x i8] c"Change the layout of windows.\0AUsage: layout prev | next | <layout_name> \0ALayout names are:\0A   src   : Displays source and command windows.\0A   asm   : Displays disassembly and command windows.\0A   split : Displays source, disassembly and command windows.\0A   regs  : Displays register window. If existing layout\0A           is source/command or assembly/command, the \0A           register window is displayed. If the\0A           source/assembly/command (split) is displayed, \0A           the register window is displayed with \0A           the window that has current logical focus.\0A\00", align 1
@xdb_commands = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"td\00", align 1
@tui_toggle_layout_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Toggle between Source/Command and Disassembly/Command layouts.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@tui_toggle_split_layout_command = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [95 x i8] c"Toggle between Source/Command or Disassembly/Command and \0ASource/Disassembly/Command layouts.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_tui_layout() #0 {
  %1 = load i32, i32* @class_tui, align 4
  %2 = load i32, i32* @tui_layout_command, align 4
  %3 = call i32 @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* getelementptr inbounds ([575 x i8], [575 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i64, i64* @xdb_commands, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @class_tui, align 4
  %8 = load i32, i32* @tui_toggle_layout_command, align 4
  %9 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32 %8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @class_tui, align 4
  %11 = load i32, i32* @tui_toggle_split_layout_command, align 4
  %12 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %10, i32 %11, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.5, i64 0, i64 0))
  br label %13

13:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
