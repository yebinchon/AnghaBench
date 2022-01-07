; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_spinlock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pthread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.pthread_spinlock* null, align 8
@SPIN_COUNT = common dso_local global i32 0, align 4
@_thr_is_smp = common dso_local global i32 0, align 4
@CPU_SPINWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_spin_lock(%struct.pthread_spinlock** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pthread_spinlock**, align 8
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca %struct.pthread_spinlock*, align 8
  %6 = alloca i32, align 4
  store %struct.pthread_spinlock** %0, %struct.pthread_spinlock*** %3, align 8
  %7 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %8 = icmp eq %struct.pthread_spinlock** %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %13 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %12, align 8
  %14 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** @THR_PSHARED_PTR, align 8
  %15 = icmp eq %struct.pthread_spinlock* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %18 = call %struct.pthread_spinlock* @__thr_pshared_offpage(%struct.pthread_spinlock** %17, i32 0)
  br label %22

19:                                               ; preds = %11
  %20 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %21 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %20, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi %struct.pthread_spinlock* [ %18, %16 ], [ %21, %19 ]
  store %struct.pthread_spinlock* %23, %struct.pthread_spinlock** %5, align 8
  %24 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %5, align 8
  %25 = icmp eq %struct.pthread_spinlock* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %22
  %29 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %29, %struct.pthread** %4, align 8
  %30 = load i32, i32* @SPIN_COUNT, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %59, %28
  %32 = load %struct.pthread*, %struct.pthread** %4, align 8
  %33 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %5, align 8
  %34 = getelementptr inbounds %struct.pthread_spinlock, %struct.pthread_spinlock* %33, i32 0, i32 0
  %35 = call i64 @THR_UMUTEX_TRYLOCK(%struct.pthread* %32, %struct.TYPE_2__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %58, %37
  %39 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %5, align 8
  %40 = getelementptr inbounds %struct.pthread_spinlock, %struct.pthread_spinlock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load i32, i32* @_thr_is_smp, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (...) @_pthread_yield()
  br label %58

49:                                               ; preds = %44
  %50 = load i32, i32* @CPU_SPINWAIT, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @SPIN_COUNT, align 4
  store i32 %55, i32* %6, align 4
  %56 = call i32 (...) @_pthread_yield()
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %47
  br label %38

59:                                               ; preds = %38
  br label %31

60:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %26, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.pthread_spinlock* @__thr_pshared_offpage(%struct.pthread_spinlock**, i32) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i64 @THR_UMUTEX_TRYLOCK(%struct.pthread*, %struct.TYPE_2__*) #1

declare dso_local i32 @_pthread_yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
