; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_setup_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_setup_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@DC_DISP_DISP_TIMING_OPTIONS = common dso_local global i32 0, align 4
@DC_DISP_DISP_COLOR_CONTROL = common dso_local global i32 0, align 4
@DITHER_DISABLE = common dso_local global i32 0, align 4
@SIZE_BASE888 = common dso_local global i32 0, align 4
@DC_DISP_DISP_SIGNAL_OPTIONS0 = common dso_local global i32 0, align 4
@H_PULSE2_ENABLE = common dso_local global i32 0, align 4
@DC_DISP_H_PULSE2_CONTROL = common dso_local global i32 0, align 4
@QUAL_VACTIVE = common dso_local global i32 0, align 4
@LAST_END_A = common dso_local global i32 0, align 4
@DC_DISP_H_PULSE2_POSITION_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dc_setup_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_setup_timing(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.dc_softc* @device_get_softc(i32 %6)
  store %struct.dc_softc* %7, %struct.dc_softc** %5, align 8
  %8 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %9 = load i32, i32* @DC_DISP_DISP_TIMING_OPTIONS, align 4
  %10 = call i32 @VSYNC_H_POSITION(i32 1)
  %11 = call i32 @WR4(%struct.dc_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %13 = load i32, i32* @DC_DISP_DISP_COLOR_CONTROL, align 4
  %14 = load i32, i32* @DITHER_DISABLE, align 4
  %15 = call i32 @DITHER_CONTROL(i32 %14)
  %16 = load i32, i32* @SIZE_BASE888, align 4
  %17 = call i32 @BASE_COLOR_SIZE(i32 %16)
  %18 = or i32 %15, %17
  %19 = call i32 @WR4(%struct.dc_softc* %12, i32 %13, i32 %18)
  %20 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %21 = load i32, i32* @DC_DISP_DISP_SIGNAL_OPTIONS0, align 4
  %22 = load i32, i32* @H_PULSE2_ENABLE, align 4
  %23 = call i32 @WR4(%struct.dc_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %25 = load i32, i32* @DC_DISP_H_PULSE2_CONTROL, align 4
  %26 = load i32, i32* @QUAL_VACTIVE, align 4
  %27 = call i32 @PULSE_CONTROL_QUAL(i32 %26)
  %28 = load i32, i32* @LAST_END_A, align 4
  %29 = call i32 @PULSE_CONTROL_LAST(i32 %28)
  %30 = or i32 %27, %29
  %31 = call i32 @WR4(%struct.dc_softc* %24, i32 %25, i32 %30)
  %32 = load %struct.dc_softc*, %struct.dc_softc** %5, align 8
  %33 = load i32, i32* @DC_DISP_H_PULSE2_POSITION_A, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @PULSE_START(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 8
  %38 = call i32 @PULSE_END(i32 %37)
  %39 = or i32 %35, %38
  %40 = call i32 @WR4(%struct.dc_softc* %32, i32 %33, i32 %39)
  ret void
}

declare dso_local %struct.dc_softc* @device_get_softc(i32) #1

declare dso_local i32 @WR4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @VSYNC_H_POSITION(i32) #1

declare dso_local i32 @DITHER_CONTROL(i32) #1

declare dso_local i32 @BASE_COLOR_SIZE(i32) #1

declare dso_local i32 @PULSE_CONTROL_QUAL(i32) #1

declare dso_local i32 @PULSE_CONTROL_LAST(i32) #1

declare dso_local i32 @PULSE_START(i32) #1

declare dso_local i32 @PULSE_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
