; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_tmds_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_tmds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32 }
%struct.tmds_config = type { i32, i32, i32, i32, i32, i32 }

@HDMI_NV_PDISP_SOR_PLL0 = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_PLL1 = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_PE_CURRENT = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_PAD_CTLS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_softc*, %struct.tmds_config*)* @tmds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmds_init(%struct.hdmi_softc* %0, %struct.tmds_config* %1) #0 {
  %3 = alloca %struct.hdmi_softc*, align 8
  %4 = alloca %struct.tmds_config*, align 8
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %3, align 8
  store %struct.tmds_config* %1, %struct.tmds_config** %4, align 8
  %5 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %6 = load i32, i32* @HDMI_NV_PDISP_SOR_PLL0, align 4
  %7 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %8 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @WR4(%struct.hdmi_softc* %5, i32 %6, i32 %9)
  %11 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %12 = load i32, i32* @HDMI_NV_PDISP_SOR_PLL1, align 4
  %13 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %14 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WR4(%struct.hdmi_softc* %11, i32 %12, i32 %15)
  %17 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %18 = load i32, i32* @HDMI_NV_PDISP_PE_CURRENT, align 4
  %19 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %20 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WR4(%struct.hdmi_softc* %17, i32 %18, i32 %21)
  %23 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %24 = load i32, i32* @HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT, align 4
  %25 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %26 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WR4(%struct.hdmi_softc* %23, i32 %24, i32 %27)
  %29 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %30 = load i32, i32* @HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT, align 4
  %31 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %32 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WR4(%struct.hdmi_softc* %29, i32 %30, i32 %33)
  %35 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %36 = load i32, i32* @HDMI_NV_PDISP_SOR_PAD_CTLS0, align 4
  %37 = load %struct.tmds_config*, %struct.tmds_config** %4, align 8
  %38 = getelementptr inbounds %struct.tmds_config, %struct.tmds_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @WR4(%struct.hdmi_softc* %35, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @WR4(%struct.hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
