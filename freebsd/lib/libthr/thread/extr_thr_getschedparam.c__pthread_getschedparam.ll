; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_getschedparam.c__pthread_getschedparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_getschedparam.c__pthread_getschedparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sched_param = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_getschedparam(%struct.pthread* %0, i32* noalias %1, %struct.sched_param* noalias %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pthread*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sched_param*, align 8
  %8 = alloca %struct.pthread*, align 8
  %9 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sched_param* %2, %struct.sched_param** %7, align 8
  %10 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %10, %struct.pthread** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %15 = icmp eq %struct.sched_param* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %13
  %19 = load %struct.pthread*, %struct.pthread** %5, align 8
  %20 = load %struct.pthread*, %struct.pthread** %8, align 8
  %21 = icmp eq %struct.pthread* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.pthread*, %struct.pthread** %8, align 8
  %24 = call i32 @THR_LOCK(%struct.pthread* %23)
  br label %33

25:                                               ; preds = %18
  %26 = load %struct.pthread*, %struct.pthread** %8, align 8
  %27 = load %struct.pthread*, %struct.pthread** %5, align 8
  %28 = call i32 @_thr_find_thread(%struct.pthread* %26, %struct.pthread* %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.pthread*, %struct.pthread** %5, align 8
  %35 = getelementptr inbounds %struct.pthread, %struct.pthread* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.pthread*, %struct.pthread** %5, align 8
  %40 = getelementptr inbounds %struct.pthread, %struct.pthread* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %44 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pthread*, %struct.pthread** %8, align 8
  %46 = load %struct.pthread*, %struct.pthread** %5, align 8
  %47 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %45, %struct.pthread* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %33, %30, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_LOCK(%struct.pthread*) #1

declare dso_local i32 @_thr_find_thread(%struct.pthread*, %struct.pthread*, i32) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
