; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c__initialize_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c__initialize_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@variables_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"All global and static variable names, or those matching REGEXP.\00", align 1
@dbx_commands = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"whereis\00", align 1
@class_info = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@functions_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"All function names, or those matching REGEXP.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@types_info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"All type names, or those matching REGEXP.\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"sources\00", align 1
@sources_info = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Source files in the program.\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"rbreak\00", align 1
@class_breakpoint = common dso_local global i32 0, align 4
@rbreak_command = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"Set a breakpoint for all functions matching REGEXP.\00", align 1
@xdb_commands = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"lf\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Source files in the program\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"lg\00", align 1
@TYPE_CODE_ERROR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"<unknown type>\00", align 1
@builtin_type_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_symtab() #0 {
  %1 = load i32, i32* @variables_info, align 4
  %2 = call i32 @add_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i64, i64* @dbx_commands, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @class_info, align 4
  %7 = load i32, i32* @variables_info, align 4
  %8 = call i32 @add_com(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %6, i32 %7, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @functions_info, align 4
  %11 = call i32 @add_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* @types_info, align 4
  %13 = call i32 @add_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %14 = load i32, i32* @sources_info, align 4
  %15 = call i32 @add_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %16 = load i32, i32* @class_breakpoint, align 4
  %17 = load i32, i32* @rbreak_command, align 4
  %18 = call i32 @add_com(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %16, i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %19 = load i64, i64* @xdb_commands, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load i32, i32* @class_info, align 4
  %23 = load i32, i32* @sources_info, align 4
  %24 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %22, i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %25 = load i32, i32* @class_info, align 4
  %26 = load i32, i32* @variables_info, align 4
  %27 = call i32 @add_com(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %25, i32 %26, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %21, %9
  %29 = load i32, i32* @TYPE_CODE_ERROR, align 4
  %30 = call i32 @init_type(i32 %29, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), %struct.objfile* null)
  store i32 %30, i32* @builtin_type_error, align 4
  ret void
}

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @init_type(i32, i32, i32, i8*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
