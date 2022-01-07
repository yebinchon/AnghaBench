; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_arm_tmr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_arm_tmr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i32, %struct.arm_tmr_softc* }
%struct.arm_tmr_softc = type { i32 }

@PRV_TIMER_CTRL = common dso_local global i32 0, align 4
@PRV_TIMER_INTR = common dso_local global i32 0, align 4
@PRV_TIMER_INTR_EVENT = common dso_local global i32 0, align 4
@PRV_TIMER_CTRL_IRQ_ENABLE = common dso_local global i32 0, align 4
@PRV_TIMER_CTRL_TIMER_ENABLE = common dso_local global i32 0, align 4
@PRV_TIMER_CTRL_AUTO_RELOAD = common dso_local global i32 0, align 4
@PRV_TIMER_LOAD = common dso_local global i32 0, align 4
@PRV_TIMER_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @arm_tmr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_tmr_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arm_tmr_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %12 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %11, i32 0, i32 1
  %13 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %12, align 8
  store %struct.arm_tmr_softc* %13, %struct.arm_tmr_softc** %7, align 8
  %14 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %7, align 8
  %15 = load i32, i32* @PRV_TIMER_CTRL, align 4
  %16 = call i32 @tmr_prv_write_4(%struct.arm_tmr_softc* %14, i32 %15, i32 0)
  %17 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %7, align 8
  %18 = load i32, i32* @PRV_TIMER_INTR, align 4
  %19 = load i32, i32* @PRV_TIMER_INTR_EVENT, align 4
  %20 = call i32 @tmr_prv_write_4(%struct.arm_tmr_softc* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @PRV_TIMER_CTRL_IRQ_ENABLE, align 4
  %22 = load i32, i32* @PRV_TIMER_CTRL_TIMER_ENABLE, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %28 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %29, %30
  %32 = ashr i32 %31, 32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @PRV_TIMER_CTRL_AUTO_RELOAD, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %42 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %43, %44
  %46 = ashr i32 %45, 32
  store i32 %46, i32* %9, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %7, align 8
  %51 = load i32, i32* @PRV_TIMER_LOAD, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @tmr_prv_write_4(%struct.arm_tmr_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %7, align 8
  %55 = load i32, i32* @PRV_TIMER_COUNT, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @tmr_prv_write_4(%struct.arm_tmr_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %7, align 8
  %59 = load i32, i32* @PRV_TIMER_CTRL, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @tmr_prv_write_4(%struct.arm_tmr_softc* %58, i32 %59, i32 %60)
  ret i32 0
}

declare dso_local i32 @tmr_prv_write_4(%struct.arm_tmr_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
