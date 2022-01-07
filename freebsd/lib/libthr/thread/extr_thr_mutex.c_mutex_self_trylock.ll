; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_self_trylock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_self_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_mutex*)* @mutex_self_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mutex_self_trylock(%struct.pthread_mutex* %0) #0 {
  %2 = alloca %struct.pthread_mutex*, align 8
  %3 = alloca i32, align 4
  store %struct.pthread_mutex* %0, %struct.pthread_mutex** %2, align 8
  %4 = load %struct.pthread_mutex*, %struct.pthread_mutex** %2, align 8
  %5 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @PMUTEX_TYPE(i32 %6)
  switch i32 %7, label %24 [
    i32 130, label %8
    i32 129, label %8
    i32 131, label %8
    i32 128, label %10
  ]

8:                                                ; preds = %1, %1, %1
  %9 = load i32, i32* @EBUSY, align 4
  store i32 %9, i32* %3, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.pthread_mutex*, %struct.pthread_mutex** %2, align 8
  %12 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.pthread_mutex*, %struct.pthread_mutex** %2, align 8
  %18 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %23

21:                                               ; preds = %10
  %22 = load i32, i32* @EAGAIN, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %16
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %23, %8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @PMUTEX_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
