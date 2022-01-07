; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_set_verbose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_set_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@showlist = common dso_local global i32 0, align 4
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Set verbose printing of informational messages.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Show verbose printing of informational messages.\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Set verbosity.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Show verbosity.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_verbose(i8* %0, i32 %1, %struct.cmd_list_element* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_list_element*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cmd_list_element*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cmd_list_element* %2, %struct.cmd_list_element** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = load i32, i32* @showlist, align 4
  %10 = call %struct.cmd_list_element* @lookup_cmd_1(i8** %7, i32 %9, i32* null, i32 1)
  store %struct.cmd_list_element* %10, %struct.cmd_list_element** %8, align 8
  %11 = load i64, i64* @info_verbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %15 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %16 = load %struct.cmd_list_element*, %struct.cmd_list_element** %8, align 8
  %17 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.cmd_list_element*, %struct.cmd_list_element** %6, align 8
  %20 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.cmd_list_element*, %struct.cmd_list_element** %8, align 8
  %22 = getelementptr inbounds %struct.cmd_list_element, %struct.cmd_list_element* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %22, align 8
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

declare dso_local %struct.cmd_list_element* @lookup_cmd_1(i8**, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
