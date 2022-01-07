; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_init_hda_eld.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_init_hda_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@HDMI_ELD_BUFFER_SIZE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE = common dso_local global i32 0, align 4
@SOR_AUDIO_HDA_PRESENSE_VALID = common dso_local global i32 0, align 4
@SOR_AUDIO_HDA_PRESENSE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_softc*)* @init_hda_eld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hda_eld(%struct.hdmi_softc* %0) #0 {
  %2 = alloca %struct.hdmi_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %2, align 8
  %6 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @drm_eld_size(i32* %10)
  store i64 %11, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @HDMI_ELD_BUFFER_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 8
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %3, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %25 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %23, %16
  %36 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %37 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @WR4(%struct.hdmi_softc* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %45 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE, align 4
  %46 = load i32, i32* @SOR_AUDIO_HDA_PRESENSE_VALID, align 4
  %47 = load i32, i32* @SOR_AUDIO_HDA_PRESENSE_PRESENT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @WR4(%struct.hdmi_softc* %44, i32 %45, i32 %48)
  ret void
}

declare dso_local i64 @drm_eld_size(i32*) #1

declare dso_local i32 @WR4(%struct.hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
