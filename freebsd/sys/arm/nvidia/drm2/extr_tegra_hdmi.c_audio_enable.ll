; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_audio_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_audio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32 }

@HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL = common dso_local global i32 0, align 4
@AUDIO_INFOFRAME_CTRL_ENABLE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_GENERIC_CTRL = common dso_local global i32 0, align 4
@GENERIC_CTRL_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_softc*)* @audio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_enable(%struct.hdmi_softc* %0) #0 {
  %2 = alloca %struct.hdmi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %2, align 8
  %4 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %10 = call i32 @audio_disable(%struct.hdmi_softc* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %13 = load i32, i32* @HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL, align 4
  %14 = call i32 @RD4(%struct.hdmi_softc* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @AUDIO_INFOFRAME_CTRL_ENABLE, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %19 = load i32, i32* @HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @WR4(%struct.hdmi_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %23 = load i32, i32* @HDMI_NV_PDISP_HDMI_GENERIC_CTRL, align 4
  %24 = call i32 @RD4(%struct.hdmi_softc* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @GENERIC_CTRL_AUDIO, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %29 = load i32, i32* @HDMI_NV_PDISP_HDMI_GENERIC_CTRL, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @WR4(%struct.hdmi_softc* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @audio_disable(%struct.hdmi_softc*) #1

declare dso_local i32 @RD4(%struct.hdmi_softc*, i32) #1

declare dso_local i32 @WR4(%struct.hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
