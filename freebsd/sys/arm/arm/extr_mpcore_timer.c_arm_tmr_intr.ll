; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_arm_tmr_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_arm_tmr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_tmr_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)*, i64 }

@PRV_TIMER_INTR = common dso_local global i32 0, align 4
@PRV_TIMER_INTR_EVENT = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @arm_tmr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_tmr_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.arm_tmr_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.arm_tmr_softc*
  store %struct.arm_tmr_softc* %5, %struct.arm_tmr_softc** %3, align 8
  %6 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %7 = load i32, i32* @PRV_TIMER_INTR, align 4
  %8 = load i32, i32* @PRV_TIMER_INTR_EVENT, align 4
  %9 = call i32 @tmr_prv_write_4(%struct.arm_tmr_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %11 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %17 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %18, align 8
  %20 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %21 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %20, i32 0, i32 0
  %22 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %23 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %19(%struct.TYPE_2__* %21, i32 %25)
  br label %27

27:                                               ; preds = %15, %1
  %28 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %28
}

declare dso_local i32 @tmr_prv_write_4(%struct.arm_tmr_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
