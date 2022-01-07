; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_sata_powerdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_sata_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }
%struct.padctl_lane = type { i32 }

@XUSB_PADCTL_USB3_PAD_MUX = common dso_local global i32 0, align 4
@USB3_PAD_MUX_SATA_IDDQ_DISABLE = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1 = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL_RST_L = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL1_MODE = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL_IDDQ = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 = common dso_local global i32 0, align 4
@IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD = common dso_local global i32 0, align 4
@IOPHY_MISC_PAD_S0_CTL1_IDDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*, %struct.padctl_lane*)* @sata_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_powerdown(%struct.padctl_softc* %0, %struct.padctl_lane* %1) #0 {
  %3 = alloca %struct.padctl_softc*, align 8
  %4 = alloca %struct.padctl_lane*, align 8
  %5 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %3, align 8
  store %struct.padctl_lane* %1, %struct.padctl_lane** %4, align 8
  %6 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %7 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %8 = call i32 @RD4(%struct.padctl_softc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @USB3_PAD_MUX_SATA_IDDQ_DISABLE, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %14 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @WR4(%struct.padctl_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %18 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %19 = call i32 @RD4(%struct.padctl_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL_RST_L, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %25 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @WR4(%struct.padctl_softc* %24, i32 %25, i32 %26)
  %28 = call i32 @DELAY(i32 100)
  %29 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %30 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %31 = call i32 @RD4(%struct.padctl_softc* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL1_MODE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %37 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @WR4(%struct.padctl_softc* %36, i32 %37, i32 %38)
  %40 = call i32 @DELAY(i32 100)
  %41 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %42 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %43 = call i32 @RD4(%struct.padctl_softc* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL_IDDQ, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %51 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @WR4(%struct.padctl_softc* %50, i32 %51, i32 %52)
  %54 = call i32 @DELAY(i32 100)
  %55 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %56 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %57 = call i32 @RD4(%struct.padctl_softc* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @IOPHY_MISC_PAD_S0_CTL1_IDDQ, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %65 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @WR4(%struct.padctl_softc* %64, i32 %65, i32 %66)
  %68 = call i32 @DELAY(i32 100)
  ret i32 0
}

declare dso_local i32 @RD4(%struct.padctl_softc*, i32) #1

declare dso_local i32 @WR4(%struct.padctl_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
