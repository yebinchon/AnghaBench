; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_sata_powerup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_sata_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }
%struct.padctl_lane = type { i32 }

@XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 = common dso_local global i32 0, align 4
@IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD = common dso_local global i32 0, align 4
@IOPHY_MISC_PAD_S0_CTL1_IDDQ = common dso_local global i32 0, align 4
@XUSB_PADCTL_IOPHY_PLL_S0_CTL1 = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL_IDDQ = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL1_MODE = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL_RST_L = common dso_local global i32 0, align 4
@IOPHY_PLL_S0_CTL1_PLL1_LOCKDET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to power up SATA phy\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@XUSB_PADCTL_USB3_PAD_MUX = common dso_local global i32 0, align 4
@USB3_PAD_MUX_SATA_IDDQ_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*, %struct.padctl_lane*)* @sata_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_powerup(%struct.padctl_softc* %0, %struct.padctl_lane* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca %struct.padctl_lane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %4, align 8
  store %struct.padctl_lane* %1, %struct.padctl_lane** %5, align 8
  %8 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %9 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %10 = call i32 @RD4(%struct.padctl_softc* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @IOPHY_MISC_PAD_S0_CTL1_IDDQ, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %20 = load i32, i32* @XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @WR4(%struct.padctl_softc* %19, i32 %20, i32 %21)
  %23 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %24 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %25 = call i32 @RD4(%struct.padctl_softc* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL_IDDQ, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %35 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @WR4(%struct.padctl_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %39 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %40 = call i32 @RD4(%struct.padctl_softc* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL1_MODE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %45 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WR4(%struct.padctl_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %49 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %50 = call i32 @RD4(%struct.padctl_softc* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL_RST_L, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %55 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @WR4(%struct.padctl_softc* %54, i32 %55, i32 %56)
  store i32 100, i32* %7, align 4
  br label %58

58:                                               ; preds = %72, %2
  %59 = load i32, i32* %7, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %63 = load i32, i32* @XUSB_PADCTL_IOPHY_PLL_S0_CTL1, align 4
  %64 = call i32 @RD4(%struct.padctl_softc* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL1_LOCKDET, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %75

70:                                               ; preds = %61
  %71 = call i32 @DELAY(i32 100)
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  br label %58

75:                                               ; preds = %69, %58
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %80 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %83, i32* %3, align 4
  br label %105

84:                                               ; preds = %75
  %85 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %86 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %87 = call i32 @RD4(%struct.padctl_softc* %85, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @IOPHY_PLL_S0_CTL1_PLL_RST_L, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %92 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @WR4(%struct.padctl_softc* %91, i32 %92, i32 %93)
  %95 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %96 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %97 = call i32 @RD4(%struct.padctl_softc* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @USB3_PAD_MUX_SATA_IDDQ_DISABLE, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %102 = load i32, i32* @XUSB_PADCTL_USB3_PAD_MUX, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @WR4(%struct.padctl_softc* %101, i32 %102, i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %84, %78
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @RD4(%struct.padctl_softc*, i32) #1

declare dso_local i32 @WR4(%struct.padctl_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
