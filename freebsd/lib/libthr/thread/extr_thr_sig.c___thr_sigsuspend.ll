; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c___thr_sigsuspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c___thr_sigsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, i64 }

@SIGCANCEL = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__thr_sigsuspend(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %7, %struct.pthread** %3, align 8
  %8 = load %struct.pthread*, %struct.pthread** %3, align 8
  %9 = getelementptr inbounds %struct.pthread, %struct.pthread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pthread*, %struct.pthread** %3, align 8
  %12 = getelementptr inbounds %struct.pthread, %struct.pthread* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.pthread*, %struct.pthread** %3, align 8
  %14 = call i32 @_thr_cancel_enter(%struct.pthread* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @thr_remove_thr_signals(i32* %15, i32* %4)
  %17 = call i32 @__sys_sigsuspend(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.pthread*, %struct.pthread** %3, align 8
  %19 = call i32 @_thr_cancel_leave(%struct.pthread* %18, i32 1)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pthread*, %struct.pthread** %3, align 8
  %22 = getelementptr inbounds %struct.pthread, %struct.pthread* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pthread*, %struct.pthread** %3, align 8
  %24 = getelementptr inbounds %struct.pthread, %struct.pthread* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.pthread*, %struct.pthread** %3, align 8
  %29 = getelementptr inbounds %struct.pthread, %struct.pthread* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SIGEMPTYSET(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @SIGCANCEL, align 4
  %34 = call i32 @SIGADDSET(i32 %32, i32 %33)
  %35 = load i32, i32* @SIG_UNBLOCK, align 4
  %36 = call i32 @__sys_sigprocmask(i32 %35, i32* %4, i32* null)
  br label %37

37:                                               ; preds = %27, %1
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_thr_cancel_enter(%struct.pthread*) #1

declare dso_local i32 @__sys_sigsuspend(i32) #1

declare dso_local i32 @thr_remove_thr_signals(i32*, i32*) #1

declare dso_local i32 @_thr_cancel_leave(%struct.pthread*, i32) #1

declare dso_local i32 @SIGEMPTYSET(i32) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

declare dso_local i32 @__sys_sigprocmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
