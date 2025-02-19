; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_waitstatus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @child_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target_waitstatus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @PIDGET(i32 %8)
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %2, %26
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %13 = call i32 @get_child_debug_event(i32 %11, %struct.target_waitstatus* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pid_to_ptid(i32 %17)
  ret i32 %18

19:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  %20 = call i32 @ui_loop_hook(i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @child_kill_inferior()
  br label %25

25:                                               ; preds = %23, %19
  br label %26

26:                                               ; preds = %25
  br label %10
}

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @get_child_debug_event(i32, %struct.target_waitstatus*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @ui_loop_hook(i32) #1

declare dso_local i32 @child_kill_inferior(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
