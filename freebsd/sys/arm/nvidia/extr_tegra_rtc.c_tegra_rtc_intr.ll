; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_rtc.c_tegra_rtc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_rtc.c_tegra_rtc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_rtc_softc = type { i32 }

@RTC_INTR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tegra_rtc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_rtc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tegra_rtc_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.tegra_rtc_softc*
  store %struct.tegra_rtc_softc* %6, %struct.tegra_rtc_softc** %3, align 8
  %7 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %8 = call i32 @LOCK(%struct.tegra_rtc_softc* %7)
  %9 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %10 = load i32, i32* @RTC_INTR_STATUS, align 4
  %11 = call i32 @RD4(%struct.tegra_rtc_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %13 = load i32, i32* @RTC_INTR_STATUS, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @WR4(%struct.tegra_rtc_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.tegra_rtc_softc*, %struct.tegra_rtc_softc** %3, align 8
  %17 = call i32 @UNLOCK(%struct.tegra_rtc_softc* %16)
  ret void
}

declare dso_local i32 @LOCK(%struct.tegra_rtc_softc*) #1

declare dso_local i32 @RD4(%struct.tegra_rtc_softc*, i32) #1

declare dso_local i32 @WR4(%struct.tegra_rtc_softc*, i32, i32) #1

declare dso_local i32 @UNLOCK(%struct.tegra_rtc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
