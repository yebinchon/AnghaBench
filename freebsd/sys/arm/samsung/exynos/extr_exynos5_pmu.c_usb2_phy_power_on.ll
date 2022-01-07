; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pmu.c_usb2_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pmu.c_usb2_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32 }

@pmu_sc = common dso_local global %struct.pmu_softc* null, align 8
@EXYNOS5_PWR_USBHOST_PHY = common dso_local global i32 0, align 4
@PHY_POWER_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb2_phy_power_on() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pmu_softc*, align 8
  %3 = load %struct.pmu_softc*, %struct.pmu_softc** @pmu_sc, align 8
  store %struct.pmu_softc* %3, %struct.pmu_softc** %2, align 8
  %4 = load %struct.pmu_softc*, %struct.pmu_softc** %2, align 8
  %5 = icmp eq %struct.pmu_softc* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %12

7:                                                ; preds = %0
  %8 = load %struct.pmu_softc*, %struct.pmu_softc** %2, align 8
  %9 = load i32, i32* @EXYNOS5_PWR_USBHOST_PHY, align 4
  %10 = load i32, i32* @PHY_POWER_ON, align 4
  %11 = call i32 @WRITE4(%struct.pmu_softc* %8, i32 %9, i32 %10)
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %7, %6
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @WRITE4(%struct.pmu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
