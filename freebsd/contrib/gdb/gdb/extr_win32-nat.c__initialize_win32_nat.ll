; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c__initialize_win32_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c__initialize_win32_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"dll-symbols\00", align 1
@class_files = common dso_local global i32 0, align 4
@dll_symbol_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Load dll library symbols from FILE.\00", align 1
@filename_completer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"sharedlibrary\00", align 1
@class_alias = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@useshell = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Set use of shell to start subprocess.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"new-console\00", align 1
@new_console = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"Set creation of new console when creating child process.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"new-group\00", align 1
@new_group = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"Set creation of new group when creating child process.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"debugexec\00", align 1
@debug_exec = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"Set whether to display execution in child process.\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"debugevents\00", align 1
@debug_events = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"Set whether to display kernel events in child process.\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"debugmemory\00", align 1
@debug_memory = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [57 x i8] c"Set whether to display memory accesses in child process.\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"debugexceptions\00", align 1
@debug_exceptions = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [59 x i8] c"Set whether to display kernel exceptions in child process.\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dll\00", align 1
@info_dll_command = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"Status of loaded DLLs.\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"w32\00", align 1
@class_info = common dso_local global i32 0, align 4
@info_w32_command = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [47 x i8] c"Print information specific to Win32 debugging.\00", align 1
@info_w32_cmdlist = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"info w32 \00", align 1
@infolist = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@display_selectors = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [25 x i8] c"Display selectors infos.\00", align 1
@child_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_win32_nat() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = call i32 (...) @init_child_ops()
  %3 = load i32, i32* @class_files, align 4
  %4 = load i32, i32* @dll_symbol_command, align 4
  %5 = call %struct.cmd_list_element* @add_com(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_list_element* %5, %struct.cmd_list_element** %1, align 8
  %6 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %7 = load i32, i32* @filename_completer, align 4
  %8 = call i32 @set_cmd_completer(%struct.cmd_list_element* %6, i32 %7)
  %9 = load i32, i32* @class_alias, align 4
  %10 = call i32 @add_com_alias(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9, i32 1)
  %11 = load i32, i32* @class_support, align 4
  %12 = load i32, i32* @var_boolean, align 4
  %13 = call i32 @add_set_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %11, i32 %12, i8* bitcast (i32* @useshell to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32* @setlist)
  %14 = call i32 @add_show_from_set(i32 %13, i32* @showlist)
  %15 = load i32, i32* @class_support, align 4
  %16 = load i32, i32* @var_boolean, align 4
  %17 = call i32 @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %15, i32 %16, i8* bitcast (i32* @new_console to i8*), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32* @setlist)
  %18 = call i32 @add_show_from_set(i32 %17, i32* @showlist)
  %19 = load i32, i32* @class_support, align 4
  %20 = load i32, i32* @var_boolean, align 4
  %21 = call i32 @add_set_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %19, i32 %20, i8* bitcast (i32* @new_group to i8*), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32* @setlist)
  %22 = call i32 @add_show_from_set(i32 %21, i32* @showlist)
  %23 = load i32, i32* @class_support, align 4
  %24 = load i32, i32* @var_boolean, align 4
  %25 = call i32 @add_set_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %23, i32 %24, i8* bitcast (i32* @debug_exec to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32* @setlist)
  %26 = call i32 @add_show_from_set(i32 %25, i32* @showlist)
  %27 = load i32, i32* @class_support, align 4
  %28 = load i32, i32* @var_boolean, align 4
  %29 = call i32 @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %27, i32 %28, i8* bitcast (i32* @debug_events to i8*), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32* @setlist)
  %30 = call i32 @add_show_from_set(i32 %29, i32* @showlist)
  %31 = load i32, i32* @class_support, align 4
  %32 = load i32, i32* @var_boolean, align 4
  %33 = call i32 @add_set_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %31, i32 %32, i8* bitcast (i32* @debug_memory to i8*), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i32* @setlist)
  %34 = call i32 @add_show_from_set(i32 %33, i32* @showlist)
  %35 = load i32, i32* @class_support, align 4
  %36 = load i32, i32* @var_boolean, align 4
  %37 = call i32 @add_set_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %35, i32 %36, i8* bitcast (i32* @debug_exceptions to i8*), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0), i32* @setlist)
  %38 = call i32 @add_show_from_set(i32 %37, i32* @showlist)
  %39 = load i32, i32* @info_dll_command, align 4
  %40 = call i32 @add_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %41 = call i32 @add_info_alias(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 1)
  %42 = load i32, i32* @class_info, align 4
  %43 = load i32, i32* @info_w32_command, align 4
  %44 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %42, i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0), i32* @info_w32_cmdlist, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 0, i32* @infolist)
  %45 = load i32, i32* @class_info, align 4
  %46 = load i32, i32* @display_selectors, align 4
  %47 = call i32 @add_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32* @info_w32_cmdlist)
  %48 = call i32 @add_target(i32* @child_ops)
  ret void
}

declare dso_local i32 @init_child_ops(...) #1

declare dso_local %struct.cmd_list_element* @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_info_alias(i8*, i8*, i32) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
