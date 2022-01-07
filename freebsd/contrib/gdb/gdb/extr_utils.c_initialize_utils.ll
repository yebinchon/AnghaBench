; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_initialize_utils.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_initialize_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_uinteger = common dso_local global i32 0, align 4
@chars_per_line = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Set number of characters gdb thinks are in a line.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@set_width_command = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@lines_per_page = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Set number of lines gdb thinks are in a page.\00", align 1
@set_height_command = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"demangle\00", align 1
@var_boolean = common dso_local global i32 0, align 4
@demangle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"Set demangling of encoded C++/ObjC names when displaying symbols.\00", align 1
@setprintlist = common dso_local global i32 0, align 4
@showprintlist = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"pagination\00", align 1
@pagination_enabled = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Set state of pagination.\00", align 1
@xdb_commands = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@pagination_on_command = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Enable pagination\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"sm\00", align 1
@pagination_off_command = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"Disable pagination\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"sevenbit-strings\00", align 1
@sevenbit_strings = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"Set printing of 8-bit characters in strings as \\nnn.\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"asm-demangle\00", align 1
@asm_demangle = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [58 x i8] c"Set demangling of C++/ObjC names in disassembly listings.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_utils() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = load i32, i32* @class_support, align 4
  %3 = load i32, i32* @var_uinteger, align 4
  %4 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i8* @chars_per_line, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %4, %struct.cmd_list_element** %1, align 8
  %5 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %6 = call i32 @add_show_from_set(%struct.cmd_list_element* %5, i32* @showlist)
  %7 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %8 = load i32, i32* @set_width_command, align 4
  %9 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %7, i32 %8)
  %10 = load i32, i32* @class_support, align 4
  %11 = load i32, i32* @var_uinteger, align 4
  %12 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %11, i8* @lines_per_page, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %12, %struct.cmd_list_element** %1, align 8
  %13 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %14 = call i32 @add_show_from_set(%struct.cmd_list_element* %13, i32* @showlist)
  %15 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %16 = load i32, i32* @set_height_command, align 4
  %17 = call i32 @set_cmd_sfunc(%struct.cmd_list_element* %15, i32 %16)
  %18 = call i32 (...) @init_page_info()
  %19 = load i32, i32* @class_support, align 4
  %20 = load i32, i32* @var_boolean, align 4
  %21 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %19, i32 %20, i8* bitcast (i32* @demangle to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32* @setprintlist)
  %22 = call i32 @add_show_from_set(%struct.cmd_list_element* %21, i32* @showprintlist)
  %23 = load i32, i32* @class_support, align 4
  %24 = load i32, i32* @var_boolean, align 4
  %25 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %23, i32 %24, i8* bitcast (i32* @pagination_enabled to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32* @setlist)
  %26 = call i32 @add_show_from_set(%struct.cmd_list_element* %25, i32* @showlist)
  %27 = load i64, i64* @xdb_commands, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %0
  %30 = load i32, i32* @class_support, align 4
  %31 = load i32, i32* @pagination_on_command, align 4
  %32 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %30, i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %33 = load i32, i32* @class_support, align 4
  %34 = load i32, i32* @pagination_off_command, align 4
  %35 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %33, i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %36

36:                                               ; preds = %29, %0
  %37 = load i32, i32* @class_support, align 4
  %38 = load i32, i32* @var_boolean, align 4
  %39 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %37, i32 %38, i8* bitcast (i32* @sevenbit_strings to i8*), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32* @setprintlist)
  %40 = call i32 @add_show_from_set(%struct.cmd_list_element* %39, i32* @showprintlist)
  %41 = load i32, i32* @class_support, align 4
  %42 = load i32, i32* @var_boolean, align 4
  %43 = call %struct.cmd_list_element* @add_set_cmd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %41, i32 %42, i8* bitcast (i32* @asm_demangle to i8*), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i32* @setprintlist)
  %44 = call i32 @add_show_from_set(%struct.cmd_list_element* %43, i32* @showprintlist)
  ret void
}

declare dso_local %struct.cmd_list_element* @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local i32 @set_cmd_sfunc(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @init_page_info(...) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
