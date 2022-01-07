; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_sor_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_sor_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32 }
%struct.drm_display_mode = type { i32 }

@HDMI_NV_PDISP_SOR_PLL0 = common dso_local global i32 0, align 4
@SOR_PLL0_PWR = common dso_local global i32 0, align 4
@SOR_PLL0_VCOPD = common dso_local global i32 0, align 4
@SOR_PLL0_PULLDOWN = common dso_local global i32 0, align 4
@SOR_PLL0_PDBG = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_PWR = common dso_local global i32 0, align 4
@SOR_PWR_SETTING_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Timeouted while enabling SOR power.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ASY_OWNER_HEAD0 = common dso_local global i32 0, align 4
@SUBOWNER_BOTH = common dso_local global i32 0, align 4
@ASY_CRCMODE_COMPLETE = common dso_local global i32 0, align 4
@ASY_PROTOCOL_SINGLE_TMDS_A = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@SOR_STATE2_ASY_HSYNCPOL_NEG = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@SOR_STATE2_ASY_VSYNCPOL_NEG = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_STATE2 = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_STATE1 = common dso_local global i32 0, align 4
@SOR_STATE1_ASY_ORMODE_NORMAL = common dso_local global i32 0, align 4
@ASY_HEAD_OPMODE_AWAKE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_STATE0 = common dso_local global i32 0, align 4
@SOR_STATE0_UPDATE = common dso_local global i32 0, align 4
@SOR_STATE1_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_softc*, %struct.drm_display_mode*)* @hdmi_sor_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_sor_start(%struct.hdmi_softc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_softc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %9 = load i32, i32* @HDMI_NV_PDISP_SOR_PLL0, align 4
  %10 = call i32 @RD4(%struct.hdmi_softc* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @SOR_PLL0_PWR, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @SOR_PLL0_VCOPD, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @SOR_PLL0_PULLDOWN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %24 = load i32, i32* @HDMI_NV_PDISP_SOR_PLL0, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @WR4(%struct.hdmi_softc* %23, i32 %24, i32 %25)
  %27 = call i32 @DELAY(i32 10)
  %28 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %29 = load i32, i32* @HDMI_NV_PDISP_SOR_PLL0, align 4
  %30 = call i32 @RD4(%struct.hdmi_softc* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @SOR_PLL0_PDBG, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %36 = load i32, i32* @HDMI_NV_PDISP_SOR_PLL0, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @WR4(%struct.hdmi_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %40 = load i32, i32* @HDMI_NV_PDISP_SOR_PWR, align 4
  %41 = load i32, i32* @SOR_PWR_SETTING_NEW, align 4
  %42 = call i32 @WR4(%struct.hdmi_softc* %39, i32 %40, i32 %41)
  %43 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %44 = load i32, i32* @HDMI_NV_PDISP_SOR_PWR, align 4
  %45 = call i32 @WR4(%struct.hdmi_softc* %43, i32 %44, i32 0)
  store i32 1000, i32* %6, align 4
  br label %46

46:                                               ; preds = %60, %2
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %51 = load i32, i32* @HDMI_NV_PDISP_SOR_PWR, align 4
  %52 = call i32 @RD4(%struct.hdmi_softc* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SOR_PWR_SETTING_NEW, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %63

58:                                               ; preds = %49
  %59 = call i32 @DELAY(i32 10)
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %6, align 4
  br label %46

63:                                               ; preds = %57, %46
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %71, i32* %3, align 4
  br label %137

72:                                               ; preds = %63
  %73 = load i32, i32* @ASY_OWNER_HEAD0, align 4
  %74 = call i32 @SOR_STATE2_ASY_OWNER(i32 %73)
  %75 = load i32, i32* @SUBOWNER_BOTH, align 4
  %76 = call i32 @SOR_STATE2_ASY_SUBOWNER(i32 %75)
  %77 = or i32 %74, %76
  %78 = load i32, i32* @ASY_CRCMODE_COMPLETE, align 4
  %79 = call i32 @SOR_STATE2_ASY_CRCMODE(i32 %78)
  %80 = or i32 %77, %79
  %81 = load i32, i32* @ASY_PROTOCOL_SINGLE_TMDS_A, align 4
  %82 = call i32 @SOR_STATE2_ASY_PROTOCOL(i32 %81)
  %83 = or i32 %80, %82
  store i32 %83, i32* %7, align 4
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %72
  %91 = load i32, i32* @SOR_STATE2_ASY_HSYNCPOL_NEG, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %90, %72
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @SOR_STATE2_ASY_VSYNCPOL_NEG, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %107 = load i32, i32* @HDMI_NV_PDISP_SOR_STATE2, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @WR4(%struct.hdmi_softc* %106, i32 %107, i32 %108)
  %110 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %111 = load i32, i32* @HDMI_NV_PDISP_SOR_STATE1, align 4
  %112 = load i32, i32* @SOR_STATE1_ASY_ORMODE_NORMAL, align 4
  %113 = load i32, i32* @ASY_HEAD_OPMODE_AWAKE, align 4
  %114 = call i32 @SOR_STATE1_ASY_HEAD_OPMODE(i32 %113)
  %115 = or i32 %112, %114
  %116 = call i32 @WR4(%struct.hdmi_softc* %110, i32 %111, i32 %115)
  %117 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %118 = load i32, i32* @HDMI_NV_PDISP_SOR_STATE0, align 4
  %119 = call i32 @WR4(%struct.hdmi_softc* %117, i32 %118, i32 0)
  %120 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %121 = load i32, i32* @HDMI_NV_PDISP_SOR_STATE0, align 4
  %122 = load i32, i32* @SOR_STATE0_UPDATE, align 4
  %123 = call i32 @WR4(%struct.hdmi_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %125 = load i32, i32* @HDMI_NV_PDISP_SOR_STATE1, align 4
  %126 = call i32 @RD4(%struct.hdmi_softc* %124, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* @SOR_STATE1_ATTACHED, align 4
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %131 = load i32, i32* @HDMI_NV_PDISP_SOR_STATE1, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @WR4(%struct.hdmi_softc* %130, i32 %131, i32 %132)
  %134 = load %struct.hdmi_softc*, %struct.hdmi_softc** %4, align 8
  %135 = load i32, i32* @HDMI_NV_PDISP_SOR_STATE0, align 4
  %136 = call i32 @WR4(%struct.hdmi_softc* %134, i32 %135, i32 0)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %105, %66
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @RD4(%struct.hdmi_softc*, i32) #1

declare dso_local i32 @WR4(%struct.hdmi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @SOR_STATE2_ASY_OWNER(i32) #1

declare dso_local i32 @SOR_STATE2_ASY_SUBOWNER(i32) #1

declare dso_local i32 @SOR_STATE2_ASY_CRCMODE(i32) #1

declare dso_local i32 @SOR_STATE2_ASY_PROTOCOL(i32) #1

declare dso_local i32 @SOR_STATE1_ASY_HEAD_OPMODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
