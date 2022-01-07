; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_trylock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_spinlock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.pthread_spinlock* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_spin_trylock(%struct.pthread_spinlock** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pthread_spinlock**, align 8
  %4 = alloca %struct.pthread_spinlock*, align 8
  store %struct.pthread_spinlock** %0, %struct.pthread_spinlock*** %3, align 8
  %5 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %6 = icmp eq %struct.pthread_spinlock** %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %9 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %8, align 8
  %10 = icmp eq %struct.pthread_spinlock* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %7
  %14 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %15 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %14, align 8
  %16 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** @THR_PSHARED_PTR, align 8
  %17 = icmp eq %struct.pthread_spinlock* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %20 = call %struct.pthread_spinlock* @__thr_pshared_offpage(%struct.pthread_spinlock** %19, i32 0)
  br label %24

21:                                               ; preds = %13
  %22 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %3, align 8
  %23 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %22, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi %struct.pthread_spinlock* [ %20, %18 ], [ %23, %21 ]
  store %struct.pthread_spinlock* %25, %struct.pthread_spinlock** %4, align 8
  %26 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %4, align 8
  %27 = icmp eq %struct.pthread_spinlock* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %24
  %31 = call i32 (...) @_get_curthread()
  %32 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %4, align 8
  %33 = getelementptr inbounds %struct.pthread_spinlock, %struct.pthread_spinlock* %32, i32 0, i32 0
  %34 = call i32 @THR_UMUTEX_TRYLOCK(i32 %31, i32* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %28, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.pthread_spinlock* @__thr_pshared_offpage(%struct.pthread_spinlock**, i32) #1

declare dso_local i32 @THR_UMUTEX_TRYLOCK(i32, i32*) #1

declare dso_local i32 @_get_curthread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
