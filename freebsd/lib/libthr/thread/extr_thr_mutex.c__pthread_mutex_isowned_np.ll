; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__pthread_mutex_isowned_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__pthread_mutex_isowned_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i32 }

@THR_PSHARED_PTR = common dso_local global %struct.pthread_mutex* null, align 8
@THR_MUTEX_DESTROYED = common dso_local global %struct.pthread_mutex* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_mutex_isowned_np(%struct.pthread_mutex** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pthread_mutex**, align 8
  %4 = alloca %struct.pthread_mutex*, align 8
  store %struct.pthread_mutex** %0, %struct.pthread_mutex*** %3, align 8
  %5 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %6 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %7 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_PSHARED_PTR, align 8
  %8 = icmp eq %struct.pthread_mutex* %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %11 = call %struct.pthread_mutex* @__thr_pshared_offpage(%struct.pthread_mutex** %10, i32 0)
  store %struct.pthread_mutex* %11, %struct.pthread_mutex** %4, align 8
  %12 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %13 = icmp eq %struct.pthread_mutex* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %33

15:                                               ; preds = %9
  %16 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %17 = call i32 @shared_mutex_init(%struct.pthread_mutex* %16, i32* null)
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %20 = load %struct.pthread_mutex*, %struct.pthread_mutex** %19, align 8
  store %struct.pthread_mutex* %20, %struct.pthread_mutex** %4, align 8
  %21 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %22 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_MUTEX_DESTROYED, align 8
  %23 = icmp ule %struct.pthread_mutex* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %33

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %28 = call i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex* %27)
  %29 = call i32 (...) @_get_curthread()
  %30 = call i64 @TID(i32 %29)
  %31 = icmp eq i64 %28, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %24, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.pthread_mutex* @__thr_pshared_offpage(%struct.pthread_mutex**, i32) #1

declare dso_local i32 @shared_mutex_init(%struct.pthread_mutex*, i32*) #1

declare dso_local i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex*) #1

declare dso_local i64 @TID(i32) #1

declare dso_local i32 @_get_curthread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
