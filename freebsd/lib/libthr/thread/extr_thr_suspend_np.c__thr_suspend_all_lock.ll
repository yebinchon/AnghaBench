; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_suspend_np.c__thr_suspend_all_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_suspend_np.c__thr_suspend_all_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@_suspend_all_lock = common dso_local global i32 0, align 4
@_single_thread = common dso_local global %struct.pthread* null, align 8
@_suspend_all_cycle = common dso_local global i32 0, align 4
@_suspend_all_waiters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_suspend_all_lock(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  %3 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %4 = load %struct.pthread*, %struct.pthread** %2, align 8
  %5 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %4, i32* @_suspend_all_lock)
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.pthread*, %struct.pthread** @_single_thread, align 8
  %8 = icmp ne %struct.pthread* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* @_suspend_all_cycle, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @_suspend_all_waiters, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @_suspend_all_waiters, align 4
  %13 = load %struct.pthread*, %struct.pthread** %2, align 8
  %14 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %13, i32* @_suspend_all_lock)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @_thr_umtx_wait_uint(i32* @_suspend_all_cycle, i32 %15, i32* null, i32 0)
  %17 = load %struct.pthread*, %struct.pthread** %2, align 8
  %18 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %17, i32* @_suspend_all_lock)
  %19 = load i32, i32* @_suspend_all_waiters, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @_suspend_all_waiters, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.pthread*, %struct.pthread** %2, align 8
  store %struct.pthread* %22, %struct.pthread** @_single_thread, align 8
  %23 = load %struct.pthread*, %struct.pthread** %2, align 8
  %24 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %23, i32* @_suspend_all_lock)
  ret void
}

declare dso_local i32 @THR_LOCK_ACQUIRE(%struct.pthread*, i32*) #1

declare dso_local i32 @THR_LOCK_RELEASE(%struct.pthread*, i32*) #1

declare dso_local i32 @_thr_umtx_wait_uint(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
