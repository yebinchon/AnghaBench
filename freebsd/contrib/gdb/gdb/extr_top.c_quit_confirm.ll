; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_quit_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_top.c_quit_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@init_ui_hook = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"A debugging session is active.\0ADo you still want to close the debugger?\00", align 1
@attach_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"The program is running.  Quit anyway (and detach it)? \00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"The program is running.  Exit anyway? \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quit_confirm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @inferior_ptid, align 4
  %4 = load i32, i32* @null_ptid, align 4
  %5 = call i32 @ptid_equal(i32 %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @target_has_execution, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i64, i64* @init_ui_hook, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %20

14:                                               ; preds = %10
  %15 = load i64, i64* @attach_flag, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %19

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @query(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %27

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %7, %0
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @query(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
