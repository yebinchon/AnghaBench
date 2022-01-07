; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_uw_thread_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_uw_thread_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, %struct.target_waitstatus*)* }
%struct.target_waitstatus = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@base_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TARGET_WAITKIND_STOPPED = common dso_local global i64 0, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @uw_thread_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uw_thread_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target_waitstatus*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @PIDGET(i32 %5)
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @thr_to_lwp(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @PIDGET(i32 %12)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @pid_to_ptid(i32 -1)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32 (i32, %struct.target_waitstatus*)*, i32 (i32, %struct.target_waitstatus*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @base_ops, i32 0, i32 0), align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %21 = call i32 %18(i32 %19, %struct.target_waitstatus* %20)
  store i32 %21, i32* %3, align 4
  %22 = call i32 @CALL_BASE(i32 %21)
  %23 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %24 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TARGET_WAITKIND_STOPPED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %30 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @libthread_stub(i32 %36)
  br label %38

38:                                               ; preds = %35, %28, %17
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @lwp_to_thr(i32 %39)
  ret i32 %40
}

declare dso_local i64 @PIDGET(i32) #1

declare dso_local i32 @thr_to_lwp(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @CALL_BASE(i32) #1

declare dso_local i32 @libthread_stub(i32) #1

declare dso_local i32 @lwp_to_thr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
