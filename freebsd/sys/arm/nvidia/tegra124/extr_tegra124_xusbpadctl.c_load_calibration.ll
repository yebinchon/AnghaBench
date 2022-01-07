; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_load_calibration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_load_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32, i32, i32, i32, i32 }

@FUSE_XUSB_CALIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.padctl_softc*)* @load_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_calibration(%struct.padctl_softc* %0) #0 {
  %2 = alloca %struct.padctl_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %2, align 8
  %4 = load i32, i32* @FUSE_XUSB_CALIB, align 4
  %5 = call i32 @tegra_fuse_read_4(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @FUSE_XUSB_CALIB_HS_CURR_LEVEL_0(i32 %6)
  %8 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %9 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @FUSE_XUSB_CALIB_HS_CURR_LEVEL_123(i32 %10)
  %12 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %13 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @FUSE_XUSB_CALIB_HS_IREF_CAP(i32 %14)
  %16 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %17 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @FUSE_XUSB_CALIB_HS_SQUELCH_LEVEL(i32 %18)
  %20 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %21 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @FUSE_XUSB_CALIB_HS_TERM_RANGE_ADJ(i32 %22)
  %24 = load %struct.padctl_softc*, %struct.padctl_softc** %2, align 8
  %25 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @tegra_fuse_read_4(i32) #1

declare dso_local i32 @FUSE_XUSB_CALIB_HS_CURR_LEVEL_0(i32) #1

declare dso_local i32 @FUSE_XUSB_CALIB_HS_CURR_LEVEL_123(i32) #1

declare dso_local i32 @FUSE_XUSB_CALIB_HS_IREF_CAP(i32) #1

declare dso_local i32 @FUSE_XUSB_CALIB_HS_SQUELCH_LEVEL(i32) #1

declare dso_local i32 @FUSE_XUSB_CALIB_HS_TERM_RANGE_ADJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
