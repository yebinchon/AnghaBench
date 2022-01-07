; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_suspend_np.c__thr_suspend_all_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_suspend_np.c__thr_suspend_all_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@_suspend_all_lock = common dso_local global i32 0, align 4
@_single_thread = common dso_local global i32* null, align 8
@_suspend_all_waiters = common dso_local global i64 0, align 8
@_suspend_all_cycle = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_suspend_all_unlock(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %3 = load %struct.pthread*, %struct.pthread** %2, align 8
  %4 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %3, i32* @_suspend_all_lock)
  store i32* null, i32** @_single_thread, align 8
  %5 = load i64, i64* @_suspend_all_waiters, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @_suspend_all_cycle, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @_suspend_all_cycle, align 4
  %10 = load i32, i32* @INT_MAX, align 4
  %11 = call i32 @_thr_umtx_wake(i32* @_suspend_all_cycle, i32 %10, i32 0)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.pthread*, %struct.pthread** %2, align 8
  %14 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %13, i32* @_suspend_all_lock)
  ret void
}

declare dso_local i32 @THR_LOCK_ACQUIRE(%struct.pthread*, i32*) #1

declare dso_local i32 @_thr_umtx_wake(i32*, i32, i32) #1

declare dso_local i32 @THR_LOCK_RELEASE(%struct.pthread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
