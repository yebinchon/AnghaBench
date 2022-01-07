; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_avi_setup_infoframe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_avi_setup_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Cannot setup AVI infoframe: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot pack AVI infoframe: %zd\0A\00", align 1
@HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_HEADER = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_LOW = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_HIGH = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_LOW = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_HIGH = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL = common dso_local global i32 0, align 4
@AVI_INFOFRAME_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_softc*, %struct.drm_display_mode*)* @avi_setup_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avi_setup_infoframe(%struct.hdmi_softc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.hdmi_softc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.hdmi_avi_infoframe, align 4
  %6 = alloca [17 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = call i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %5, %struct.drm_display_mode* %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %135

20:                                               ; preds = %2
  %21 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %22 = call i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %5, i32* %21, i32 68)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %135

31:                                               ; preds = %20
  %32 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32* %33, i32** %7, align 8
  %34 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  store i32* %35, i32** %8, align 8
  %36 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %37 = load i32, i32* @HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_HEADER, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %41, %45
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 0
  %51 = or i32 %46, %50
  %52 = call i32 @WR4(%struct.hdmi_softc* %36, i32 %37, i32 %51)
  %53 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %54 = load i32, i32* @HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_LOW, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 24
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %58, %62
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %63, %67
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 0
  %73 = or i32 %68, %72
  %74 = call i32 @WR4(%struct.hdmi_softc* %53, i32 %54, i32 %73)
  %75 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %76 = load i32, i32* @HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_HIGH, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = or i32 %80, %84
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 0
  %90 = or i32 %85, %89
  %91 = call i32 @WR4(%struct.hdmi_softc* %75, i32 %76, i32 %90)
  %92 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %93 = load i32, i32* @HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_LOW, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 10
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 24
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 9
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 16
  %102 = or i32 %97, %101
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 8
  %107 = or i32 %102, %106
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 7
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 0
  %112 = or i32 %107, %111
  %113 = call i32 @WR4(%struct.hdmi_softc* %92, i32 %93, i32 %112)
  %114 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %115 = load i32, i32* @HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_HIGH, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 13
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 16
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 12
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %119, %123
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 11
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 0
  %129 = or i32 %124, %128
  %130 = call i32 @WR4(%struct.hdmi_softc* %114, i32 %115, i32 %129)
  %131 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %132 = load i32, i32* @HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL, align 4
  %133 = load i32, i32* @AVI_INFOFRAME_CTRL_ENABLE, align 4
  %134 = call i32 @WR4(%struct.hdmi_softc* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %31, %25, %14
  ret void
}

declare dso_local i64 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, %struct.drm_display_mode*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @WR4(%struct.hdmi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
