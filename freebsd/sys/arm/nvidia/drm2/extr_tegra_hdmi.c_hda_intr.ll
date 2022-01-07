; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hda_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hda_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32, i32, i32 }

@HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%d channel(s) at %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_softc*)* @hda_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_intr(%struct.hdmi_softc* %0) #0 {
  %2 = alloca %struct.hdmi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %2, align 8
  %5 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %12 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0, align 4
  %13 = call i32 @RD4(%struct.hdmi_softc* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1073741824
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %19 = call i32 @audio_disable(%struct.hdmi_softc* %18)
  br label %47

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 16777215
  %23 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %24 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 15
  %28 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %31 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %38 = call i32 @audio_setup(%struct.hdmi_softc* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %43 = call i32 @audio_disable(%struct.hdmi_softc* %42)
  br label %47

44:                                               ; preds = %20
  %45 = load %struct.hdmi_softc*, %struct.hdmi_softc** %2, align 8
  %46 = call i32 @audio_enable(%struct.hdmi_softc* %45)
  br label %47

47:                                               ; preds = %44, %41, %17, %9
  ret void
}

declare dso_local i32 @RD4(%struct.hdmi_softc*, i32) #1

declare dso_local i32 @audio_disable(%struct.hdmi_softc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @audio_setup(%struct.hdmi_softc*) #1

declare dso_local i32 @audio_enable(%struct.hdmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
