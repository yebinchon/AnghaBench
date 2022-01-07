; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c__initialize_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c__initialize_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@current_source_symtab = common dso_local global i64 0, align 8
@RE_SYNTAX_GREP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@class_files = common dso_local global i32 0, align 4
@directory_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [335 x i8] c"Add directory DIR to beginning of search path for source files.\0AForget cached info on source file locations and line positions.\0ADIR can also be $cwd for the current working directory, or $cdir for the\0Adirectory in which the source file was compiled into object code.\0AWith no argument, reset the search path to $cdir:$cwd, the default.\00", align 1
@cmdlist = common dso_local global i32 0, align 4
@dbx_commands = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@filename_completer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"directories\00", align 1
@no_class = common dso_local global i32 0, align 4
@show_directories = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [170 x i8] c"Current search path for finding source files.\0A$cwd in the path means the current working directory.\0A$cdir in the path means the compilation directory of the source file.\00", align 1
@showlist = common dso_local global i32 0, align 4
@xdb_commands = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@source_info = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"Information about the current source file.\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@line_info = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [302 x i8] c"Core addresses of the code for a source line.\0ALine can be specified as\0A  LINENUM, to list around that line in current file,\0A  FILE:LINENUM, to list around that line in that file,\0A  FUNCTION, to list around beginning of that function,\0A  FILE:FUNCTION, to distinguish among like-named static functions.\0A\00", align 1
@.str.11 = private unnamed_addr constant [241 x i8] c"Default is to describe the last source line that was listed.\0A\0AThis sets the default address for \22x\22 to the line's first instruction\0Aso that \22x/i\22 suffices to start examining the machine code.\0AThe address is also stored as the value of \22$_\22.\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"forward-search\00", align 1
@forward_search_command = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [130 x i8] c"Search for regular expression (see regex(3)) from last line listed.\0AThe matching line number is also stored as the value of \22$_\22.\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"reverse-search\00", align 1
@reverse_search_command = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [139 x i8] c"Search backward for regular expression (see regex(3)) from last line listed.\0AThe matching line number is also stored as the value of \22$_\22.\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"listsize\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_uinteger = common dso_local global i32 0, align 4
@lines_to_list = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [53 x i8] c"Set number of source lines gdb will list by default.\00", align 1
@setlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_source() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  store i64 0, i64* @current_source_symtab, align 8
  %2 = call i32 (...) @init_source_path()
  %3 = load i32, i32* @RE_SYNTAX_GREP, align 4
  %4 = call i32 @re_set_syntax(i32 %3)
  %5 = load i32, i32* @class_files, align 4
  %6 = load i32, i32* @directory_command, align 4
  %7 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i8* getelementptr inbounds ([335 x i8], [335 x i8]* @.str.1, i64 0, i64 0), i32* @cmdlist)
  store %struct.cmd_list_element* %7, %struct.cmd_list_element** %1, align 8
  %8 = load i64, i64* @dbx_commands, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @class_files, align 4
  %12 = call i32 @add_com_alias(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 0)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %15 = load i32, i32* @filename_completer, align 4
  %16 = call i32 @set_cmd_completer(%struct.cmd_list_element* %14, i32 %15)
  %17 = load i32, i32* @no_class, align 4
  %18 = load i32, i32* @show_directories, align 4
  %19 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 %18, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.4, i64 0, i64 0), i32* @showlist)
  %20 = load i64, i64* @xdb_commands, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32, i32* @class_files, align 4
  %24 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23, i32 0)
  %25 = load i32, i32* @no_class, align 4
  %26 = load i32, i32* @show_directories, align 4
  %27 = call %struct.cmd_list_element* @add_cmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %25, i32 %26, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.4, i64 0, i64 0), i32* @cmdlist)
  br label %28

28:                                               ; preds = %22, %13
  %29 = load i32, i32* @source_info, align 4
  %30 = call i32 @add_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %31 = load i32, i32* @line_info, align 4
  %32 = call i8* @concat(i8* getelementptr inbounds ([302 x i8], [302 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %33 = call i32 @add_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %31, i8* %32)
  %34 = load i32, i32* @class_files, align 4
  %35 = load i32, i32* @forward_search_command, align 4
  %36 = call i32 @add_com(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %34, i32 %35, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.13, i64 0, i64 0))
  %37 = load i32, i32* @class_files, align 4
  %38 = call i32 @add_com_alias(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %37, i32 0)
  %39 = load i32, i32* @class_files, align 4
  %40 = load i32, i32* @reverse_search_command, align 4
  %41 = call i32 @add_com(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %39, i32 %40, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.16, i64 0, i64 0))
  %42 = load i64, i64* @xdb_commands, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load i32, i32* @class_files, align 4
  %46 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %45, i32 0)
  %47 = load i32, i32* @class_files, align 4
  %48 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %47, i32 0)
  br label %49

49:                                               ; preds = %44, %28
  %50 = load i32, i32* @class_support, align 4
  %51 = load i32, i32* @var_uinteger, align 4
  %52 = call i32 @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %50, i32 %51, i8* bitcast (i32* @lines_to_list to i8*), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i32* @setlist)
  %53 = call i32 @add_show_from_set(i32 %52, i32* @showlist)
  ret void
}

declare dso_local i32 @init_source_path(...) #1

declare dso_local i32 @re_set_syntax(i32) #1

declare dso_local %struct.cmd_list_element* @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

declare dso_local i32 @set_cmd_completer(%struct.cmd_list_element*, i32) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i8* @concat(i8*, i8*, i32*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
