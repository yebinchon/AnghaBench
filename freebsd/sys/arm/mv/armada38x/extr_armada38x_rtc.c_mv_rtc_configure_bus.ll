; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_rtc.c_mv_rtc_configure_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_rtc.c_mv_rtc_configure_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_rtc_softc = type { i32* }

@RTC_SOC_RES = common dso_local global i64 0, align 8
@RTC_BRIDGE_TIMING_CTRL = common dso_local global i32 0, align 4
@RTC_WRCLK_PERIOD_MASK = common dso_local global i32 0, align 4
@RTC_READ_OUTPUT_DELAY_MASK = common dso_local global i32 0, align 4
@RTC_WRCLK_PERIOD_MAX = common dso_local global i32 0, align 4
@RTC_WRCLK_PERIOD_SHIFT = common dso_local global i32 0, align 4
@RTC_READ_OUTPUT_DELAY_MAX = common dso_local global i32 0, align 4
@RTC_READ_OUTPUT_DELAY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_rtc_softc*)* @mv_rtc_configure_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_rtc_configure_bus(%struct.mv_rtc_softc* %0) #0 {
  %2 = alloca %struct.mv_rtc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_rtc_softc* %0, %struct.mv_rtc_softc** %2, align 8
  %4 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mv_rtc_softc, %struct.mv_rtc_softc* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @RTC_SOC_RES, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RTC_BRIDGE_TIMING_CTRL, align 4
  %11 = call i32 @bus_read_4(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @RTC_WRCLK_PERIOD_MASK, align 4
  %13 = load i32, i32* @RTC_READ_OUTPUT_DELAY_MASK, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @RTC_WRCLK_PERIOD_MAX, align 4
  %19 = load i32, i32* @RTC_WRCLK_PERIOD_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @RTC_READ_OUTPUT_DELAY_MAX, align 4
  %24 = load i32, i32* @RTC_READ_OUTPUT_DELAY_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %2, align 8
  %29 = getelementptr inbounds %struct.mv_rtc_softc, %struct.mv_rtc_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @RTC_SOC_RES, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RTC_BRIDGE_TIMING_CTRL, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @bus_write_4(i32 %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
