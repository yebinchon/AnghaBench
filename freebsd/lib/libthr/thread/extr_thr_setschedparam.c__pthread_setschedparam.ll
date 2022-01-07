; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_setschedparam.c__pthread_setschedparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_setschedparam.c__pthread_setschedparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.sched_param = type { i64 }

@SCHED_OTHER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_setschedparam(%struct.pthread* %0, i32 %1, %struct.sched_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pthread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sched_param*, align 8
  %8 = alloca %struct.pthread*, align 8
  %9 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sched_param* %2, %struct.sched_param** %7, align 8
  %10 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %10, %struct.pthread** %8, align 8
  %11 = load %struct.pthread*, %struct.pthread** %5, align 8
  %12 = load %struct.pthread*, %struct.pthread** %8, align 8
  %13 = icmp eq %struct.pthread* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.pthread*, %struct.pthread** %8, align 8
  %16 = call i32 @THR_LOCK(%struct.pthread* %15)
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.pthread*, %struct.pthread** %8, align 8
  %19 = load %struct.pthread*, %struct.pthread** %5, align 8
  %20 = call i32 @_thr_find_thread(%struct.pthread* %18, %struct.pthread* %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %82

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %14
  %26 = load %struct.pthread*, %struct.pthread** %5, align 8
  %27 = getelementptr inbounds %struct.pthread, %struct.pthread* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SCHED_OTHER, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load %struct.pthread*, %struct.pthread** %5, align 8
  %38 = getelementptr inbounds %struct.pthread, %struct.pthread* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %42 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36, %32
  %46 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %47 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pthread*, %struct.pthread** %5, align 8
  %50 = getelementptr inbounds %struct.pthread, %struct.pthread* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  %52 = load %struct.pthread*, %struct.pthread** %8, align 8
  %53 = load %struct.pthread*, %struct.pthread** %5, align 8
  %54 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %52, %struct.pthread* %53)
  store i32 0, i32* %4, align 4
  br label %82

55:                                               ; preds = %36, %25
  %56 = load %struct.pthread*, %struct.pthread** %5, align 8
  %57 = getelementptr inbounds %struct.pthread, %struct.pthread* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %61 = call i32 @_thr_setscheduler(i32 %58, i32 %59, %struct.sched_param* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %9, align 4
  br label %77

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.pthread*, %struct.pthread** %5, align 8
  %69 = getelementptr inbounds %struct.pthread, %struct.pthread* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %72 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pthread*, %struct.pthread** %5, align 8
  %75 = getelementptr inbounds %struct.pthread, %struct.pthread* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %66, %64
  %78 = load %struct.pthread*, %struct.pthread** %8, align 8
  %79 = load %struct.pthread*, %struct.pthread** %5, align 8
  %80 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %78, %struct.pthread* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %45, %22
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_LOCK(%struct.pthread*) #1

declare dso_local i32 @_thr_find_thread(%struct.pthread*, %struct.pthread*, i32) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @_thr_setscheduler(i32, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
