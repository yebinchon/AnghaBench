; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__mutex_cv_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__mutex_cv_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i32, i32 }
%struct.pthread = type { i64, i32 }

@PMUTEX_FLAG_DEFERRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mutex_cv_detach(%struct.pthread_mutex* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pthread_mutex*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pthread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pthread_mutex* %0, %struct.pthread_mutex** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %9, %struct.pthread** %6, align 8
  %10 = load %struct.pthread*, %struct.pthread** %6, align 8
  %11 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %12 = call i32 @_mutex_owned(%struct.pthread* %10, %struct.pthread_mutex* %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %18 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %22 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.pthread*, %struct.pthread** %6, align 8
  %24 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %25 = call i32 @dequeue_mutex(%struct.pthread* %23, %struct.pthread_mutex* %24)
  %26 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %27 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PMUTEX_FLAG_DEFERRED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  %33 = load i32, i32* @PMUTEX_FLAG_DEFERRED, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.pthread_mutex*, %struct.pthread_mutex** %4, align 8
  %36 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %40

39:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.pthread*, %struct.pthread** %6, align 8
  %45 = getelementptr inbounds %struct.pthread, %struct.pthread* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pthread*, %struct.pthread** %6, align 8
  %48 = getelementptr inbounds %struct.pthread, %struct.pthread* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @_thr_wake_all(i32 %46, i64 %49)
  %51 = load %struct.pthread*, %struct.pthread** %6, align 8
  %52 = getelementptr inbounds %struct.pthread, %struct.pthread* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %43, %40
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_mutex_owned(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @dequeue_mutex(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @_thr_wake_all(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
