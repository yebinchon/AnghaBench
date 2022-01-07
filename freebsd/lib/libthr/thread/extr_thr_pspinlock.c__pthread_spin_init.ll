; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_pspinlock.c__pthread_spin_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_spinlock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_SHARED = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.pthread_spinlock* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_spin_init(%struct.pthread_spinlock** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pthread_spinlock**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pthread_spinlock*, align 8
  store %struct.pthread_spinlock** %0, %struct.pthread_spinlock*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %4, align 8
  %8 = icmp eq %struct.pthread_spinlock** %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = call %struct.pthread_spinlock* @malloc(i32 4)
  store %struct.pthread_spinlock* %16, %struct.pthread_spinlock** %6, align 8
  %17 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %6, align 8
  %18 = icmp eq %struct.pthread_spinlock* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %15
  %22 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %6, align 8
  %23 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %4, align 8
  store %struct.pthread_spinlock* %22, %struct.pthread_spinlock** %23, align 8
  br label %41

24:                                               ; preds = %11
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PTHREAD_PROCESS_SHARED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %4, align 8
  %30 = call %struct.pthread_spinlock* @__thr_pshared_offpage(%struct.pthread_spinlock** %29, i32 1)
  store %struct.pthread_spinlock* %30, %struct.pthread_spinlock** %6, align 8
  %31 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %6, align 8
  %32 = icmp eq %struct.pthread_spinlock* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EFAULT, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %28
  %36 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** @THR_PSHARED_PTR, align 8
  %37 = load %struct.pthread_spinlock**, %struct.pthread_spinlock*** %4, align 8
  store %struct.pthread_spinlock* %36, %struct.pthread_spinlock** %37, align 8
  br label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.pthread_spinlock*, %struct.pthread_spinlock** %6, align 8
  %43 = getelementptr inbounds %struct.pthread_spinlock, %struct.pthread_spinlock* %42, i32 0, i32 0
  %44 = call i32 @_thr_umutex_init(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %38, %33, %19, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.pthread_spinlock* @malloc(i32) #1

declare dso_local %struct.pthread_spinlock* @__thr_pshared_offpage(%struct.pthread_spinlock**, i32) #1

declare dso_local i32 @_thr_umutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
