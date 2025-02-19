; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libstdthreads/extr_mtx.c_mtx_timedlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libstdthreads/extr_mtx.c_mtx_timedlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@thrd_success = common dso_local global i32 0, align 4
@thrd_timedout = common dso_local global i32 0, align 4
@thrd_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtx_timedlock(i32* noalias %0, %struct.timespec* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.timespec*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.timespec*, %struct.timespec** %5, align 8
  %8 = call i32 @pthread_mutex_timedlock(i32* %6, %struct.timespec* %7)
  switch i32 %8, label %13 [
    i32 0, label %9
    i32 128, label %11
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @thrd_success, align 4
  store i32 %10, i32* %3, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @thrd_timedout, align 4
  store i32 %12, i32* %3, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @thrd_error, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %11, %9
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @pthread_mutex_timedlock(i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
