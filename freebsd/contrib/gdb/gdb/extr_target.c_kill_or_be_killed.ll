; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_kill_or_be_killed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_kill_or_be_killed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_has_execution = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"You are already running a program:\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Kill it? \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Killing the program did not help.\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Program not killed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kill_or_be_killed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_or_be_killed(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @target_has_execution, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @target_files_info()
  %8 = call i64 @query(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = call i32 (...) @target_kill()
  %12 = load i64, i64* @target_has_execution, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  br label %22

17:                                               ; preds = %5
  %18 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %1
  %21 = call i32 (...) @tcomplain()
  br label %22

22:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*) #1

declare dso_local i32 @target_files_info(...) #1

declare dso_local i64 @query(i8*) #1

declare dso_local i32 @target_kill(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @tcomplain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
