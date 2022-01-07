; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c___thr_sigtimedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c___thr_sigtimedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.pthread = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__thr_sigtimedwait(i32* %0, i32* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca %struct.pthread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %10 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %10, %struct.pthread** %7, align 8
  %11 = load %struct.pthread*, %struct.pthread** %7, align 8
  %12 = call i32 @_thr_cancel_enter(%struct.pthread* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @thr_remove_thr_signals(i32* %13, i32* %8)
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.timespec*, %struct.timespec** %6, align 8
  %17 = call i32 @__sys_sigtimedwait(i32 %14, i32* %15, %struct.timespec* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.pthread*, %struct.pthread** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, -1
  %21 = zext i1 %20 to i32
  %22 = call i32 @_thr_cancel_leave(%struct.pthread* %18, i32 %21)
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_thr_cancel_enter(%struct.pthread*) #1

declare dso_local i32 @__sys_sigtimedwait(i32, i32*, %struct.timespec*) #1

declare dso_local i32 @thr_remove_thr_signals(i32*, i32*) #1

declare dso_local i32 @_thr_cancel_leave(%struct.pthread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
