; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_print_gdb_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_print_gdb_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"GNU gdb %s\0A\00", align 1
@version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Copyright 2004 Free Software Foundation, Inc.\0A\00", align 1
@.str.2 = private unnamed_addr constant [275 x i8] c"GDB is free software, covered by the GNU General Public License, and you are\0Awelcome to change it and/or distribute copies of it under certain conditions.\0AType \22show copying\22 to see the conditions.\0AThere is absolutely no warranty for GDB.  Type \22show warranty\22 for details.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"This GDB was configured as \22\00", align 1
@host_name = common dso_local global i32 0, align 4
@target_name = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"--host=%s --target=%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_gdb_version(%struct.ui_file* %0) #0 {
  %2 = alloca %struct.ui_file*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %2, align 8
  %3 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %4 = load i32, i32* @version, align 4
  %5 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %7 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %9 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %8, i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.2, i64 0, i64 0))
  %10 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %11 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @host_name, align 4
  %13 = load i32, i32* @target_name, align 4
  %14 = call i64 @strcmp(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %18 = load i32, i32* @host_name, align 4
  %19 = load i32, i32* @target_name, align 4
  %20 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %19)
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %23 = load i32, i32* @host_name, align 4
  %24 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.ui_file*, %struct.ui_file** %2, align 8
  %27 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
