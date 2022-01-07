; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_timer.c_a23_timer_timecounter_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_timer.c_a23_timer_timecounter_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.a10_timer_softc* }
%struct.a10_timer_softc = type { i32 }

@TIMER_CTRL_PRESCALAR_MASK = common dso_local global i32 0, align 4
@TIMER_CTRL_MODE_MASK = common dso_local global i32 0, align 4
@TIMER_CTRL_CLKSRC_MASK = common dso_local global i32 0, align 4
@TIMER_CTRL_OSC24M = common dso_local global i32 0, align 4
@TIMER_CTRL_AUTORELOAD = common dso_local global i32 0, align 4
@TIMER_CTRL_START = common dso_local global i32 0, align 4
@a23_timer_timecounter = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10_timer_softc*)* @a23_timer_timecounter_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a23_timer_timecounter_setup(%struct.a10_timer_softc* %0) #0 {
  %2 = alloca %struct.a10_timer_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.a10_timer_softc* %0, %struct.a10_timer_softc** %2, align 8
  %4 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  %5 = call i32 @TIMER_CTRL_REG(i32 0)
  %6 = call i32 @timer_read_4(%struct.a10_timer_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @TIMER_CTRL_PRESCALAR_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* @TIMER_CTRL_MODE_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = or i32 %8, %10
  %12 = load i32, i32* @TIMER_CTRL_CLKSRC_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = or i32 %11, %13
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = call i32 @TIMER_CTRL_PRESCALAR(i32 1)
  %18 = load i32, i32* @TIMER_CTRL_OSC24M, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  %23 = call i32 @TIMER_CTRL_REG(i32 0)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @timer_write_4(%struct.a10_timer_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  %27 = call i32 @TIMER_INTV_REG(i32 0)
  %28 = call i32 @timer_write_4(%struct.a10_timer_softc* %26, i32 %27, i32 -1)
  %29 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  %30 = call i32 @TIMER_INTV_REG(i32 0)
  %31 = call i32 @timer_read_4(%struct.a10_timer_softc* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  %33 = call i32 @TIMER_CTRL_REG(i32 0)
  %34 = call i32 @timer_read_4(%struct.a10_timer_softc* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @TIMER_CTRL_AUTORELOAD, align 4
  %36 = load i32, i32* @TIMER_CTRL_START, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  %41 = call i32 @TIMER_CTRL_REG(i32 0)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @timer_write_4(%struct.a10_timer_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  %45 = call i32 @TIMER_CURV_REG(i32 0)
  %46 = call i32 @timer_read_4(%struct.a10_timer_softc* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  store %struct.a10_timer_softc* %47, %struct.a10_timer_softc** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @a23_timer_timecounter, i32 0, i32 1), align 8
  %48 = load %struct.a10_timer_softc*, %struct.a10_timer_softc** %2, align 8
  %49 = getelementptr inbounds %struct.a10_timer_softc, %struct.a10_timer_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @a23_timer_timecounter, i32 0, i32 0), align 8
  %51 = call i32 @tc_init(%struct.TYPE_3__* @a23_timer_timecounter)
  ret void
}

declare dso_local i32 @timer_read_4(%struct.a10_timer_softc*, i32) #1

declare dso_local i32 @TIMER_CTRL_REG(i32) #1

declare dso_local i32 @TIMER_CTRL_PRESCALAR(i32) #1

declare dso_local i32 @timer_write_4(%struct.a10_timer_softc*, i32, i32) #1

declare dso_local i32 @TIMER_INTV_REG(i32) #1

declare dso_local i32 @TIMER_CURV_REG(i32) #1

declare dso_local i32 @tc_init(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
