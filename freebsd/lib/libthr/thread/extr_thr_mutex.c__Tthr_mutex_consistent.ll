; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__Tthr_mutex_consistent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__Tthr_mutex_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pthread = type { i32 }

@THR_PSHARED_PTR = common dso_local global %struct.pthread_mutex* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@THR_MUTEX_DESTROYED = common dso_local global %struct.pthread_mutex* null, align 8
@UMUTEX_ROBUST = common dso_local global i32 0, align 4
@UMUTEX_NONCONSISTENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Tthr_mutex_consistent(%struct.pthread_mutex** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pthread_mutex**, align 8
  %4 = alloca %struct.pthread_mutex*, align 8
  %5 = alloca %struct.pthread*, align 8
  store %struct.pthread_mutex** %0, %struct.pthread_mutex*** %3, align 8
  %6 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %7 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %8 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_PSHARED_PTR, align 8
  %9 = icmp eq %struct.pthread_mutex* %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %12 = call %struct.pthread_mutex* @__thr_pshared_offpage(%struct.pthread_mutex** %11, i32 0)
  store %struct.pthread_mutex* %12, %struct.pthread_mutex** %4, align 8
  %13 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %14 = icmp eq %struct.pthread_mutex* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %61

17:                                               ; preds = %10
  %18 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %19 = call i32 @shared_mutex_init(%struct.pthread_mutex* %18, i32* null)
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %22 = load %struct.pthread_mutex*, %struct.pthread_mutex** %21, align 8
  store %struct.pthread_mutex* %22, %struct.pthread_mutex** %4, align 8
  %23 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %24 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_MUTEX_DESTROYED, align 8
  %25 = icmp ule %struct.pthread_mutex* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %17
  %30 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %30, %struct.pthread** %5, align 8
  %31 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %32 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UMUTEX_ROBUST, align 4
  %36 = load i32, i32* @UMUTEX_NONCONSISTENT, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @UMUTEX_ROBUST, align 4
  %40 = load i32, i32* @UMUTEX_NONCONSISTENT, align 4
  %41 = or i32 %39, %40
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %2, align 4
  br label %61

45:                                               ; preds = %29
  %46 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %47 = call i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex* %46)
  %48 = load %struct.pthread*, %struct.pthread** %5, align 8
  %49 = call i64 @TID(%struct.pthread* %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EPERM, align 4
  store i32 %52, i32* %2, align 4
  br label %61

53:                                               ; preds = %45
  %54 = load i32, i32* @UMUTEX_NONCONSISTENT, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %57 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %51, %43, %26, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.pthread_mutex* @__thr_pshared_offpage(%struct.pthread_mutex**, i32) #1

declare dso_local i32 @shared_mutex_init(%struct.pthread_mutex*, i32*) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex*) #1

declare dso_local i64 @TID(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
