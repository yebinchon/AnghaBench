; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_phy_powerup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_phy_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }

@XUSB_PADCTL_ELPG_PROGRAM = common dso_local global i32 0, align 4
@ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN = common dso_local global i32 0, align 4
@ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN = common dso_local global i32 0, align 4
@ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*)* @phy_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_powerup(%struct.padctl_softc* %0) #0 {
  %2 = alloca %struct.padctl_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %2, align 8
  %4 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %5 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %6 = call i32 @RD4(%struct.padctl_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @ELPG_PROGRAM_AUX_MUX_LP0_VCORE_DOWN, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %12 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @WR4(%struct.padctl_softc* %11, i32 %12, i32 %13)
  %15 = call i32 @DELAY(i32 100)
  %16 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %17 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %18 = call i32 @RD4(%struct.padctl_softc* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %24 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @WR4(%struct.padctl_softc* %23, i32 %24, i32 %25)
  %27 = call i32 @DELAY(i32 100)
  %28 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %29 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %30 = call i32 @RD4(%struct.padctl_softc* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @ELPG_PROGRAM_AUX_MUX_LP0_CLAMP_EN_EARLY, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %36 = load i32, i32* @XUSB_PADCTL_ELPG_PROGRAM, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @WR4(%struct.padctl_softc* %35, i32 %36, i32 %37)
  %39 = call i32 @DELAY(i32 100)
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
