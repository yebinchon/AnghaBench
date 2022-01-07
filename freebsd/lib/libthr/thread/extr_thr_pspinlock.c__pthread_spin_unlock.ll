; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_spinlock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.pthread_spinlock* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_spin_unlock(%struct.pthread_spinlock** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pthread_spinlock**, align 8
  %4 = alloca %struct.pthread_spinlock*, align 8
  store %struct.pthread_spinlock** %0, %struct.pthread_spinlock*** %3, align 8
  %5 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %6 = icmp eq %struct.pthread_spinlock** %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  store i32 %8, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %11 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %10, align 8
  %12 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** @THR_PSHARED_PTR, align 8
  %13 = icmp eq %struct.pthread_spinlock* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %16 = call %struct.pthread_spinlock* @__thr_pshared_offpage(%struct.pthread_spinlock** %15, i32 0)
  br label %20

17:                                               ; preds = %9
  %18 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %19 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %18, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi %struct.pthread_spinlock* [ %16, %14 ], [ %19, %17 ]
  store %struct.pthread_spinlock* %21, %struct.pthread_spinlock** %4, align 8
  %22 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %4, align 8
  %23 = icmp eq %struct.pthread_spinlock* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %20
  %27 = call i32 (...) @_get_curthread()
  %28 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %4, align 8
  %29 = getelementptr inbounds %struct.pthread_spinlock, %struct.pthread_spinlock* %28, i32 0, i32 0
  %30 = call i32 @THR_UMUTEX_UNLOCK(i32 %27, i32* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %24, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.pthread_spinlock* @__thr_pshared_offpage(%struct.pthread_spinlock**, i32) #1

declare dso_local i32 @THR_UMUTEX_UNLOCK(i32, i32*) #1

declare dso_local i32 @_get_curthread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
