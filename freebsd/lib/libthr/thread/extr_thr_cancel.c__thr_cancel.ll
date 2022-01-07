; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cancel.c__thr_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cancel.c__thr_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.pthread = type { i32 }

@PS_DEAD = common dso_local global i64 0, align 8
@SIGCANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_cancel(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %5, %struct.pthread** %3, align 8
  %6 = load %struct.pthread*, %struct.pthread** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call i32 @_thr_find_thread(%struct.pthread* %6, %struct.TYPE_6__* %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PS_DEAD, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = load i32, i32* @SIGCANCEL, align 4
  %26 = call i32 @_thr_send_sig(%struct.TYPE_6__* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  br label %28

28:                                               ; preds = %27, %10
  %29 = load %struct.pthread*, %struct.pthread** %3, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %29, %struct.TYPE_6__* %30)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_thr_find_thread(%struct.pthread*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @_thr_send_sig(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
