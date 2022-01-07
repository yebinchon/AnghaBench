; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_setup_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_setup_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm_encoder = type { i32 }
%struct.hdmi_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Cannot disable 'hdmi' clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot disable display clock\0A\00", align 1
@HDMI_DC_CLOCK_MULTIPIER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot set display pixel frequency\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot set parent clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Cannot set display controller frequency\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot enable display clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot enable 'hdmi' clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot get display controller frequency\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"DC frequency: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_drm_encoder*, i32, i32)* @hdmi_setup_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_setup_clock(%struct.tegra_drm_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdmi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_drm_encoder* %0, %struct.tegra_drm_encoder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hdmi_softc* @device_get_softc(i32 %13)
  store %struct.hdmi_softc* %14, %struct.hdmi_softc** %8, align 8
  %15 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %16 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %23 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %133

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @clk_disable(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %34 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %133

38:                                               ; preds = %27
  %39 = load i32, i32* @HDMI_DC_CLOCK_MULTIPIER, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %43 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @clk_set_freq(i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %5, align 8
  %51 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %133

55:                                               ; preds = %38
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %58 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_set_parent_by_clk(i32 %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %5, align 8
  %65 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %133

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @clk_set_freq(i32 %70, i32 %71, i32 0)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %133

81:                                               ; preds = %69
  %82 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %83 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @clk_set_freq(i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %5, align 8
  %91 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %133

95:                                               ; preds = %81
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @clk_enable(i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %102 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %133

106:                                              ; preds = %95
  %107 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %108 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @clk_enable(i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %115 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %4, align 4
  br label %133

119:                                              ; preds = %106
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @clk_get_freq(i32 %120, i32* %9)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %5, align 8
  %126 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %133

130:                                              ; preds = %119
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %124, %113, %100, %89, %75, %63, %49, %32, %21
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_set_parent_by_clk(i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
