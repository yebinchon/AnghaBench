; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_reset_all_timers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_reset_all_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i32 }

@t301 = common dso_local global i32 0, align 4
@t303 = common dso_local global i32 0, align 4
@t308 = common dso_local global i32 0, align 4
@t310 = common dso_local global i32 0, align 4
@t313 = common dso_local global i32 0, align 4
@t322 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*)* @reset_all_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_all_timers(%struct.call* %0) #0 {
  %2 = alloca %struct.call*, align 8
  store %struct.call* %0, %struct.call** %2, align 8
  %3 = load %struct.call*, %struct.call** %2, align 8
  %4 = load i32, i32* @t301, align 4
  %5 = call i32 @TIMER_STOP_CALL(%struct.call* %3, i32 %4)
  %6 = load %struct.call*, %struct.call** %2, align 8
  %7 = load i32, i32* @t303, align 4
  %8 = call i32 @TIMER_STOP_CALL(%struct.call* %6, i32 %7)
  %9 = load %struct.call*, %struct.call** %2, align 8
  %10 = load i32, i32* @t308, align 4
  %11 = call i32 @TIMER_STOP_CALL(%struct.call* %9, i32 %10)
  %12 = load %struct.call*, %struct.call** %2, align 8
  %13 = load i32, i32* @t310, align 4
  %14 = call i32 @TIMER_STOP_CALL(%struct.call* %12, i32 %13)
  %15 = load %struct.call*, %struct.call** %2, align 8
  %16 = load i32, i32* @t313, align 4
  %17 = call i32 @TIMER_STOP_CALL(%struct.call* %15, i32 %16)
  %18 = load %struct.call*, %struct.call** %2, align 8
  %19 = load i32, i32* @t322, align 4
  %20 = call i32 @TIMER_STOP_CALL(%struct.call* %18, i32 %19)
  ret void
}

declare dso_local i32 @TIMER_STOP_CALL(%struct.call*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
