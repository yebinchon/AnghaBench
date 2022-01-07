; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_audio_setup_infoframe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_audio_setup_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32, i32 }
%struct.hdmi_audio_infoframe = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Cannot pack audio infoframe\0A\00", align 1
@HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_HEADER = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_LOW = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_HIGH = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL = common dso_local global i32 0, align 4
@AUDIO_INFOFRAME_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_softc*)* @audio_setup_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_setup_infoframe(%struct.hdmi_softc* %0) #0 {
  %2 = alloca %struct.hdmi_softc*, align 8
  %3 = alloca %struct.hdmi_audio_infoframe, align 4
  %4 = alloca [14 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %2, align 8
  %8 = call i64 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %3)
  store i64 %8, i64* %7, align 8
  %9 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 0
  %14 = call i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %3, i32* %13, i32 56)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %82

22:                                               ; preds = %1
  %23 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 0
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32* %24, i32** %5, align 8
  %25 = getelementptr inbounds [14 x i32], [14 x i32]* %4, i64 0, i64 0
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  store i32* %26, i32** %6, align 8
  %27 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %28 = load i32, i32* @HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_HEADER, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 0
  %42 = or i32 %37, %41
  %43 = call i32 @WR4(%struct.hdmi_softc* %27, i32 %28, i32 %42)
  %44 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %45 = load i32, i32* @HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_LOW, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 24
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %49, %53
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %54, %58
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 0
  %64 = or i32 %59, %63
  %65 = call i32 @WR4(%struct.hdmi_softc* %44, i32 %45, i32 %64)
  %66 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %67 = load i32, i32* @HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_HIGH, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 0
  %76 = or i32 %71, %75
  %77 = call i32 @WR4(%struct.hdmi_softc* %66, i32 %67, i32 %76)
  %78 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %79 = load i32, i32* @HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL, align 4
  %80 = load i32, i32* @AUDIO_INFOFRAME_CTRL_ENABLE, align 4
  %81 = call i32 @WR4(%struct.hdmi_softc* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %22, %17
  ret void
}

declare dso_local i64 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #1

declare dso_local i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @WR4(%struct.hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
