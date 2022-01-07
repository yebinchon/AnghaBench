; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_affinity.c__pthread_getaffinity_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_affinity.c__pthread_getaffinity_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@CPU_LEVEL_WHICH = common dso_local global i32 0, align 4
@CPU_WHICH_TID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_getaffinity_np(%struct.pthread* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pthread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %10, %struct.pthread** %7, align 8
  %11 = load %struct.pthread*, %struct.pthread** %4, align 8
  %12 = load %struct.pthread*, %struct.pthread** %7, align 8
  %13 = icmp eq %struct.pthread* %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, i32* @CPU_LEVEL_WHICH, align 4
  %16 = load i32, i32* @CPU_WHICH_TID, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @cpuset_getaffinity(i32 %15, i32 %16, i32 -1, i64 %17, i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %22, %14
  br label %48

25:                                               ; preds = %3
  %26 = load %struct.pthread*, %struct.pthread** %7, align 8
  %27 = load %struct.pthread*, %struct.pthread** %4, align 8
  %28 = call i32 @_thr_find_thread(%struct.pthread* %26, %struct.pthread* %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.pthread*, %struct.pthread** %4, align 8
  %32 = call i32 @TID(%struct.pthread* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @CPU_LEVEL_WHICH, align 4
  %34 = load i32, i32* @CPU_WHICH_TID, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i64, i64* %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @cpuset_getaffinity(i32 %33, i32 %34, i32 %35, i64 %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %30
  %44 = load %struct.pthread*, %struct.pthread** %7, align 8
  %45 = load %struct.pthread*, %struct.pthread** %4, align 8
  %46 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %44, %struct.pthread* %45)
  br label %47

47:                                               ; preds = %43, %25
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @cpuset_getaffinity(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @_thr_find_thread(%struct.pthread*, %struct.pthread*, i32) #1

declare dso_local i32 @TID(%struct.pthread*) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
