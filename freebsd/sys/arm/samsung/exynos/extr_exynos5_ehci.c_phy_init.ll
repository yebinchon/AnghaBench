; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_phy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_ehci_softc = type { i32, i32, i32, i32 }

@GPIO_INPUT = common dso_local global i32 0, align 4
@EXYNOS5_SYSREG_USB2_PHY = common dso_local global i32 0, align 4
@USB2_MODE_HOST = common dso_local global i32 0, align 4
@HOST_CTRL_CLK_MASK = common dso_local global i32 0, align 4
@HOST_CTRL_RESET_PHY = common dso_local global i32 0, align 4
@HOST_CTRL_RESET_PHY_ALL = common dso_local global i32 0, align 4
@HOST_CTRL_SIDDQ = common dso_local global i32 0, align 4
@HOST_CTRL_SUSPEND = common dso_local global i32 0, align 4
@HOST_CTRL_SLEEP = common dso_local global i32 0, align 4
@HOST_CTRL_CLK_24MHZ = common dso_local global i32 0, align 4
@HOST_CTRL_RESET_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/hsichub\00", align 1
@GPIO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_ehci_softc*)* @phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_init(%struct.exynos_ehci_softc* %0) #0 {
  %2 = alloca %struct.exynos_ehci_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.exynos_ehci_softc* %0, %struct.exynos_ehci_softc** %2, align 8
  %5 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %6 = load i32, i32* @GPIO_INPUT, align 4
  %7 = call i32 @gpio_ctrl(%struct.exynos_ehci_softc* %5, i32 %6, i32 1)
  %8 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %9 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %12 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EXYNOS5_SYSREG_USB2_PHY, align 4
  %15 = load i32, i32* @USB2_MODE_HOST, align 4
  %16 = call i32 @bus_space_write_4(i32 %10, i32 %13, i32 %14, i32 %15)
  %17 = call i32 (...) @usb2_phy_power_on()
  %18 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %19 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bus_space_read_4(i32 %20, i32 %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @HOST_CTRL_CLK_MASK, align 4
  %26 = load i32, i32* @HOST_CTRL_RESET_PHY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HOST_CTRL_RESET_PHY_ALL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HOST_CTRL_SIDDQ, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HOST_CTRL_SUSPEND, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @HOST_CTRL_SLEEP, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @HOST_CTRL_CLK_24MHZ, align 4
  %40 = load i32, i32* @HOST_CTRL_RESET_LINK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %45 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %48 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @bus_space_write_4(i32 %46, i32 %49, i32 0, i32 %50)
  %52 = call i32 @DELAY(i32 10)
  %53 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %54 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %57 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bus_space_read_4(i32 %55, i32 %58, i32 0)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @HOST_CTRL_RESET_LINK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %65 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %68 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @bus_space_write_4(i32 %66, i32 %69, i32 0, i32 %70)
  %72 = call i32 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %78

74:                                               ; preds = %1
  %75 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @reset_hsic_hub(%struct.exynos_ehci_softc* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %1
  %79 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %2, align 8
  %80 = load i32, i32* @GPIO_OUTPUT, align 4
  %81 = call i32 @gpio_ctrl(%struct.exynos_ehci_softc* %79, i32 %80, i32 1)
  ret i32 0
}

declare dso_local i32 @gpio_ctrl(%struct.exynos_ehci_softc*, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @usb2_phy_power_on(...) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @reset_hsic_hub(%struct.exynos_ehci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
