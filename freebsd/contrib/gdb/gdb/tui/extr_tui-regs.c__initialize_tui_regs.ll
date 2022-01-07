; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c__initialize_tui_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c__initialize_tui_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@class_tui = common dso_local global i32 0, align 4
@tui_reg_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"TUI commands to control the register window.\00", align 1
@tuireglist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tui reg \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@tui_reg_float_command = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Display only floating point registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"general\00", align 1
@tui_reg_general_command = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Display only general registers\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@tui_reg_system_command = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Display only system registers\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@tui_reg_next_command = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Display next register group\0A\00", align 1
@xdb_commands = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"gr\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Display only special registers\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"+r\00", align 1
@tui_scroll_regs_forward_command = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"Scroll the registers window forward\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@tui_scroll_regs_backward_command = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"Scroll the register window backward\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_tui_regs() #0 {
  %1 = alloca %struct.cmd_list_element**, align 8
  %2 = call %struct.cmd_list_element** (...) @tui_get_cmd_list()
  store %struct.cmd_list_element** %2, %struct.cmd_list_element*** %1, align 8
  %3 = load i32, i32* @class_tui, align 4
  %4 = load i32, i32* @tui_reg_command, align 4
  %5 = load %struct.cmd_list_element**, %struct.cmd_list_element*** %1, align 8
  %6 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* @tuireglist, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0, %struct.cmd_list_element** %5)
  %7 = load i32, i32* @class_tui, align 4
  %8 = load i32, i32* @tui_reg_float_command, align 4
  %9 = call i32 @add_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %7, i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32* @tuireglist)
  %10 = load i32, i32* @class_tui, align 4
  %11 = load i32, i32* @tui_reg_general_command, align 4
  %12 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %10, i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32* @tuireglist)
  %13 = load i32, i32* @class_tui, align 4
  %14 = load i32, i32* @tui_reg_system_command, align 4
  %15 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %13, i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32* @tuireglist)
  %16 = load i32, i32* @class_tui, align 4
  %17 = load i32, i32* @tui_reg_next_command, align 4
  %18 = call i32 @add_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %16, i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32* @tuireglist)
  %19 = load i64, i64* @xdb_commands, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %0
  %22 = load i32, i32* @class_tui, align 4
  %23 = load i32, i32* @tui_reg_float_command, align 4
  %24 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %22, i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32, i32* @class_tui, align 4
  %26 = load i32, i32* @tui_reg_general_command, align 4
  %27 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %25, i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %28 = load i32, i32* @class_tui, align 4
  %29 = load i32, i32* @tui_reg_system_command, align 4
  %30 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %28, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %31 = load i32, i32* @class_tui, align 4
  %32 = load i32, i32* @tui_scroll_regs_forward_command, align 4
  %33 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %31, i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  %34 = load i32, i32* @class_tui, align 4
  %35 = load i32, i32* @tui_scroll_regs_backward_command, align 4
  %36 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %34, i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  br label %37

37:                                               ; preds = %21, %0
  ret void
}

declare dso_local %struct.cmd_list_element** @tui_get_cmd_list(...) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, %struct.cmd_list_element**) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
