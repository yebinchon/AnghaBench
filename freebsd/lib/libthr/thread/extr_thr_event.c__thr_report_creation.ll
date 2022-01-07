; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_event.c__thr_report_creation.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_event.c__thr_report_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@TD_CREATE = common dso_local global i32 0, align 4
@_thr_event_lock = common dso_local global i32 0, align 4
@_thread_last_event = common dso_local global %struct.pthread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_report_creation(%struct.pthread* %0, %struct.pthread* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store %struct.pthread* %1, %struct.pthread** %4, align 8
  %5 = load i32, i32* @TD_CREATE, align 4
  %6 = load %struct.pthread*, %struct.pthread** %3, align 8
  %7 = getelementptr inbounds %struct.pthread, %struct.pthread* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store i32 %5, i32* %8, align 8
  %9 = load %struct.pthread*, %struct.pthread** %4, align 8
  %10 = ptrtoint %struct.pthread* %9 to i64
  %11 = load %struct.pthread*, %struct.pthread** %3, align 8
  %12 = getelementptr inbounds %struct.pthread, %struct.pthread* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %10, i64* %13, align 8
  %14 = load %struct.pthread*, %struct.pthread** %3, align 8
  %15 = getelementptr inbounds %struct.pthread, %struct.pthread* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.pthread*, %struct.pthread** %3, align 8
  %18 = call i32 @THR_UMUTEX_LOCK(%struct.pthread* %17, i32* @_thr_event_lock)
  %19 = load %struct.pthread*, %struct.pthread** %3, align 8
  store %struct.pthread* %19, %struct.pthread** @_thread_last_event, align 8
  %20 = call i32 (...) @_thread_bp_create()
  store %struct.pthread* null, %struct.pthread** @_thread_last_event, align 8
  %21 = load %struct.pthread*, %struct.pthread** %3, align 8
  %22 = call i32 @THR_UMUTEX_UNLOCK(%struct.pthread* %21, i32* @_thr_event_lock)
  ret void
}

declare dso_local i32 @THR_UMUTEX_LOCK(%struct.pthread*, i32*) #1

declare dso_local i32 @_thread_bp_create(...) #1

declare dso_local i32 @THR_UMUTEX_UNLOCK(%struct.pthread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
