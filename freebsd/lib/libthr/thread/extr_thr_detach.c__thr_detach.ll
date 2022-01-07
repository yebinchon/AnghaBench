; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_detach.c__thr_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_detach.c__thr_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.pthread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THR_FLAGS_DETACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_detach(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %6, %struct.pthread** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.pthread*, %struct.pthread** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i32 @_thr_find_thread(%struct.pthread* %12, %struct.TYPE_6__* %13, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @THR_FLAGS_DETACHED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %18
  %31 = load %struct.pthread*, %struct.pthread** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %31, %struct.TYPE_6__* %32)
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %25
  %36 = load i32, i32* @THR_FLAGS_DETACHED, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.pthread*, %struct.pthread** %4, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = call i32 @_thr_try_gc(%struct.pthread* %41, %struct.TYPE_6__* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %30, %16, %9
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_thr_find_thread(%struct.pthread*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.TYPE_6__*) #1

declare dso_local i32 @_thr_try_gc(%struct.pthread*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
