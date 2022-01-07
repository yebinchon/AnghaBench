; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_drm_hdmi_avi_infoframe_from_display_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_drm_hdmi_avi_infoframe_from_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_avi_infoframe = type { i32, i64, i64, i32, i32 }
%struct.drm_display_mode = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_NONE = common dso_local global i64 0, align 8
@HDMI_ACTIVE_ASPECT_PICTURE = common dso_local global i32 0, align 4
@HDMI_SCAN_MODE_UNDERSCAN = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_16_9 = common dso_local global i64 0, align 8
@HDMI_PICTURE_ASPECT_4_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_avi_infoframe*, %struct.drm_display_mode*)* @drm_hdmi_avi_infoframe_from_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_avi_infoframe*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  store %struct.hdmi_avi_infoframe* %0, %struct.hdmi_avi_infoframe** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %8 = icmp ne %struct.hdmi_avi_infoframe* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %11 = icmp ne %struct.drm_display_mode* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %9
  %16 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %17 = call i32 @hdmi_avi_infoframe_init(%struct.hdmi_avi_infoframe* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %31 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = call i64 @drm_match_cea_mode(%struct.drm_display_mode* %33)
  %35 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %36 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* @HDMI_PICTURE_ASPECT_NONE, align 8
  %38 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %39 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @HDMI_ACTIVE_ASPECT_PICTURE, align 4
  %41 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %42 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @HDMI_SCAN_MODE_UNDERSCAN, align 4
  %44 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %45 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %32, %20, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @hdmi_avi_infoframe_init(%struct.hdmi_avi_infoframe*) #1

declare dso_local i64 @drm_match_cea_mode(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
