; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_init_static.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_init_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@_mutex_static_lock = common dso_local global i32 0, align 4
@THR_MUTEX_INITIALIZER = common dso_local global i64 0, align 8
@_pthread_mutexattr_default = common dso_local global i32 0, align 4
@__thr_calloc = common dso_local global i32 0, align 4
@THR_ADAPTIVE_MUTEX_INITIALIZER = common dso_local global i64 0, align 8
@_pthread_mutexattr_adaptive_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread*, i64*)* @init_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_static(%struct.pthread* %0, i64* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.pthread*, %struct.pthread** %3, align 8
  %7 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %6, i32* @_mutex_static_lock)
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @THR_MUTEX_INITIALIZER, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* @__thr_calloc, align 4
  %15 = call i32 @mutex_init(i64* %13, i32* @_pthread_mutexattr_default, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @THR_ADAPTIVE_MUTEX_INITIALIZER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64*, i64** %4, align 8
  %23 = load i32, i32* @__thr_calloc, align 4
  %24 = call i32 @mutex_init(i64* %22, i32* @_pthread_mutexattr_adaptive_default, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %21
  br label %27

27:                                               ; preds = %26, %12
  %28 = load %struct.pthread*, %struct.pthread** %3, align 8
  %29 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %28, i32* @_mutex_static_lock)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @THR_LOCK_ACQUIRE(%struct.pthread*, i32*) #1

declare dso_local i32 @mutex_init(i64*, i32*, i32) #1

declare dso_local i32 @THR_LOCK_RELEASE(%struct.pthread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
