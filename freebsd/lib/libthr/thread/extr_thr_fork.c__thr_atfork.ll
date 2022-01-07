; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_fork.c__thr_atfork.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_fork.c__thr_atfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }
%struct.pthread_atfork = type { void (...)*, void (...)*, void (...)* }

@ENOMEM = common dso_local global i32 0, align 4
@_thr_atfork_lock = common dso_local global i32 0, align 4
@_thr_atfork_list = common dso_local global i32 0, align 4
@qe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_thr_atfork(void ()* %0, void ()* %1, void ()* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca void ()*, align 8
  %6 = alloca void ()*, align 8
  %7 = alloca void ()*, align 8
  %8 = alloca %struct.pthread*, align 8
  %9 = alloca %struct.pthread_atfork*, align 8
  store void ()* %0, void ()** %5, align 8
  store void ()* %1, void ()** %6, align 8
  store void ()* %2, void ()** %7, align 8
  %10 = call i32 (...) @_thr_check_init()
  %11 = call %struct.pthread_atfork* @malloc(i32 24)
  store %struct.pthread_atfork* %11, %struct.pthread_atfork** %9, align 8
  %12 = icmp eq %struct.pthread_atfork* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %4, align 4
  br label %38

15:                                               ; preds = %3
  %16 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %16, %struct.pthread** %8, align 8
  %17 = load void ()*, void ()** %5, align 8
  %18 = bitcast void ()* %17 to void (...)*
  %19 = load %struct.pthread_atfork*, %struct.pthread_atfork** %9, align 8
  %20 = getelementptr inbounds %struct.pthread_atfork, %struct.pthread_atfork* %19, i32 0, i32 0
  store void (...)* %18, void (...)** %20, align 8
  %21 = load void ()*, void ()** %6, align 8
  %22 = bitcast void ()* %21 to void (...)*
  %23 = load %struct.pthread_atfork*, %struct.pthread_atfork** %9, align 8
  %24 = getelementptr inbounds %struct.pthread_atfork, %struct.pthread_atfork* %23, i32 0, i32 1
  store void (...)* %22, void (...)** %24, align 8
  %25 = load void ()*, void ()** %7, align 8
  %26 = bitcast void ()* %25 to void (...)*
  %27 = load %struct.pthread_atfork*, %struct.pthread_atfork** %9, align 8
  %28 = getelementptr inbounds %struct.pthread_atfork, %struct.pthread_atfork* %27, i32 0, i32 2
  store void (...)* %26, void (...)** %28, align 8
  %29 = load %struct.pthread*, %struct.pthread** %8, align 8
  %30 = call i32 @THR_CRITICAL_ENTER(%struct.pthread* %29)
  %31 = call i32 @_thr_rwl_wrlock(i32* @_thr_atfork_lock)
  %32 = load %struct.pthread_atfork*, %struct.pthread_atfork** %9, align 8
  %33 = load i32, i32* @qe, align 4
  %34 = call i32 @TAILQ_INSERT_TAIL(i32* @_thr_atfork_list, %struct.pthread_atfork* %32, i32 %33)
  %35 = call i32 @_thr_rwl_unlock(i32* @_thr_atfork_lock)
  %36 = load %struct.pthread*, %struct.pthread** %8, align 8
  %37 = call i32 @THR_CRITICAL_LEAVE(%struct.pthread* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %15, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @_thr_check_init(...) #1

declare dso_local %struct.pthread_atfork* @malloc(i32) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_CRITICAL_ENTER(%struct.pthread*) #1

declare dso_local i32 @_thr_rwl_wrlock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pthread_atfork*, i32) #1

declare dso_local i32 @_thr_rwl_unlock(i32*) #1

declare dso_local i32 @THR_CRITICAL_LEAVE(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
