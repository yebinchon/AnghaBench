; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__mutex_owned.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c__mutex_owned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i32 }
%struct.pthread = type { i32 }

@THR_MUTEX_DESTROYED = common dso_local global %struct.pthread_mutex* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mutex_owned(%struct.pthread* %0, %struct.pthread_mutex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca %struct.pthread_mutex*, align 8
  store %struct.pthread* %0, %struct.pthread** %4, align 8
  store %struct.pthread_mutex* %1, %struct.pthread_mutex** %5, align 8
  %6 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %7 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_MUTEX_DESTROYED, align 8
  %8 = icmp ule %struct.pthread_mutex* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @__predict_false(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %14 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_MUTEX_DESTROYED, align 8
  %15 = icmp eq %struct.pthread_mutex* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %12
  %19 = load i32, i32* @EPERM, align 4
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %22 = call i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex* %21)
  %23 = load %struct.pthread*, %struct.pthread** %4, align 8
  %24 = call i64 @TID(%struct.pthread* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EPERM, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26, %18, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex*) #1

declare dso_local i64 @TID(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
