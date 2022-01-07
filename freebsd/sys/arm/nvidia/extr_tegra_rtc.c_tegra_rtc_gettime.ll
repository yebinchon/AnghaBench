; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_rtc.c_tegra_rtc_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_rtc.c_tegra_rtc_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.tegra_rtc_softc = type { i32 }
%struct.timeval = type { i32, i32 }

@RTC_MILLI_SECONDS = common dso_local global i32 0, align 4
@RTC_SHADOW_SECONDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @tegra_rtc_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.tegra_rtc_softc*, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.tegra_rtc_softc* @device_get_softc(i32 %9)
  store %struct.tegra_rtc_softc* %10, %struct.tegra_rtc_softc** %5, align 8
  %11 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %5, align 8
  %12 = call i32 @LOCK(%struct.tegra_rtc_softc* %11)
  %13 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %5, align 8
  %14 = load i32, i32* @RTC_MILLI_SECONDS, align 4
  %15 = call i32 @RD4(%struct.tegra_rtc_softc* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %5, align 8
  %17 = load i32, i32* @RTC_SHADOW_SECONDS, align 4
  %18 = call i32 @RD4(%struct.tegra_rtc_softc* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %5, align 8
  %20 = call i32 @UNLOCK(%struct.tegra_rtc_softc* %19)
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.timespec*, %struct.timespec** %4, align 8
  %27 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %6, %struct.timespec* %26)
  ret i32 0
}

declare dso_local %struct.tegra_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @LOCK(%struct.tegra_rtc_softc*) #1

declare dso_local i32 @RD4(%struct.tegra_rtc_softc*, i32) #1

declare dso_local i32 @UNLOCK(%struct.tegra_rtc_softc*) #1

declare dso_local i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
