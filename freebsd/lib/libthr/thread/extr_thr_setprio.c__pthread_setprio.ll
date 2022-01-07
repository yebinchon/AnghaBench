; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_setprio.c__pthread_setprio.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_setprio.c__pthread_setprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.sched_param = type { i32 }

@SCHED_OTHER = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_setprio(%struct.pthread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pthread*, align 8
  %7 = alloca %struct.sched_param, align 4
  %8 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %9, %struct.pthread** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.pthread*, %struct.pthread** %4, align 8
  %13 = load %struct.pthread*, %struct.pthread** %6, align 8
  %14 = icmp eq %struct.pthread* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.pthread*, %struct.pthread** %6, align 8
  %17 = call i32 @THR_LOCK(%struct.pthread* %16)
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.pthread*, %struct.pthread** %6, align 8
  %20 = load %struct.pthread*, %struct.pthread** %4, align 8
  %21 = call i32 @_thr_find_thread(%struct.pthread* %19, %struct.pthread* %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.pthread*, %struct.pthread** %4, align 8
  %28 = getelementptr inbounds %struct.pthread, %struct.pthread* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCHED_OTHER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.pthread*, %struct.pthread** %4, align 8
  %35 = getelementptr inbounds %struct.pthread, %struct.pthread* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33, %26
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.pthread*, %struct.pthread** %4, align 8
  %43 = getelementptr inbounds %struct.pthread, %struct.pthread* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  store i32 0, i32* %8, align 4
  br label %64

45:                                               ; preds = %33
  %46 = load %struct.pthread*, %struct.pthread** %4, align 8
  %47 = getelementptr inbounds %struct.pthread, %struct.pthread* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pthread*, %struct.pthread** %4, align 8
  %50 = getelementptr inbounds %struct.pthread, %struct.pthread* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @_thr_setscheduler(i32 %48, i64 %52, %struct.sched_param* %7)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @errno, align 4
  store i32 %57, i32* %8, align 4
  br label %63

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.pthread*, %struct.pthread** %4, align 8
  %61 = getelementptr inbounds %struct.pthread, %struct.pthread* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %56
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.pthread*, %struct.pthread** %6, align 8
  %66 = load %struct.pthread*, %struct.pthread** %4, align 8
  %67 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %65, %struct.pthread* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %23
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_LOCK(%struct.pthread*) #1

declare dso_local i32 @_thr_find_thread(%struct.pthread*, %struct.pthread*, i32) #1

declare dso_local i32 @_thr_setscheduler(i32, i64, %struct.sched_param*) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
