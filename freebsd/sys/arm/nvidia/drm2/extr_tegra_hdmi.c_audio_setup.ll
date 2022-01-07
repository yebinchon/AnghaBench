; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_audio_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_audio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_softc = type { i32, i32, i32, i32, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported audio frequency.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot get hdmi frequency: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot compute audio coefs: %d\0A\00", align 1
@HDMI_NV_PDISP_SOR_AUDIO_CNTRL0 = common dso_local global i32 0, align 4
@SOR_AUDIO_CNTRL0_INJECT_NULLSMPL = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_SOR_AUDIO_SPARE0 = common dso_local global i32 0, align 4
@SOR_AUDIO_SPARE0_HBR_ENABLE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_ACR_CTRL = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_AUDIO_N = common dso_local global i32 0, align 4
@AUDIO_N_RESETF = common dso_local global i32 0, align 4
@AUDIO_N_GENERATE_ALTERNATE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH = common dso_local global i32 0, align 4
@ACR_ENABLE = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW = common dso_local global i32 0, align 4
@HDMI_NV_PDISP_HDMI_SPARE = common dso_local global i32 0, align 4
@SPARE_HW_CTS = common dso_local global i32 0, align 4
@SPARE_FORCE_SW_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_softc*)* @audio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_setup(%struct.hdmi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdmi_softc* %0, %struct.hdmi_softc** %3, align 8
  %11 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOTSUP, align 4
  store i32 %16, i32* %2, align 4
  br label %129

17:                                               ; preds = %1
  %18 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @get_audio_regs(i32 %20, i32* null, i32* null, i32* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %2, align 4
  br label %129

30:                                               ; preds = %17
  %31 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_get_freq(i32 %33, i32* %8)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %2, align 4
  br label %129

44:                                               ; preds = %30
  %45 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %46 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @get_hda_cts_n(i32 %47, i32 %48, i32* %6, i32* %5, i32* %7)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %54 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %2, align 4
  br label %129

59:                                               ; preds = %44
  %60 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %61 = call i32 @audio_setup_infoframe(%struct.hdmi_softc* %60)
  %62 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %63 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_CNTRL0, align 4
  %64 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @SOR_AUDIO_CNTRL0_SOURCE_SELECT(i32 %66)
  %68 = load i32, i32* @SOR_AUDIO_CNTRL0_INJECT_NULLSMPL, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @WR4(%struct.hdmi_softc* %62, i32 %63, i32 %69)
  %71 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %72 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_SPARE0, align 4
  %73 = call i32 @RD4(%struct.hdmi_softc* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @SOR_AUDIO_SPARE0_HBR_ENABLE, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %78 = load i32, i32* @HDMI_NV_PDISP_SOR_AUDIO_SPARE0, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @WR4(%struct.hdmi_softc* %77, i32 %78, i32 %79)
  %81 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %82 = load i32, i32* @HDMI_NV_PDISP_HDMI_ACR_CTRL, align 4
  %83 = call i32 @WR4(%struct.hdmi_softc* %81, i32 %82, i32 0)
  %84 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %85 = load i32, i32* @HDMI_NV_PDISP_AUDIO_N, align 4
  %86 = load i32, i32* @AUDIO_N_RESETF, align 4
  %87 = load i32, i32* @AUDIO_N_GENERATE_ALTERNATE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @AUDIO_N_VALUE(i32 %90)
  %92 = or i32 %88, %91
  %93 = call i32 @WR4(%struct.hdmi_softc* %84, i32 %85, i32 %92)
  %94 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %95 = load i32, i32* @HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @ACR_SUBPACK_N(i32 %96)
  %98 = load i32, i32* @ACR_ENABLE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @WR4(%struct.hdmi_softc* %94, i32 %95, i32 %99)
  %101 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %102 = load i32, i32* @HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ACR_SUBPACK_CTS(i32 %103)
  %105 = call i32 @WR4(%struct.hdmi_softc* %101, i32 %102, i32 %104)
  %106 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %107 = load i32, i32* @HDMI_NV_PDISP_HDMI_SPARE, align 4
  %108 = load i32, i32* @SPARE_HW_CTS, align 4
  %109 = load i32, i32* @SPARE_FORCE_SW_CTS, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @SPARE_CTS_RESET_VAL(i32 1)
  %112 = or i32 %110, %111
  %113 = call i32 @WR4(%struct.hdmi_softc* %106, i32 %107, i32 %112)
  %114 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %115 = load i32, i32* @HDMI_NV_PDISP_AUDIO_N, align 4
  %116 = call i32 @RD4(%struct.hdmi_softc* %114, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* @AUDIO_N_RESETF, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %4, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %4, align 4
  %121 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %122 = load i32, i32* @HDMI_NV_PDISP_AUDIO_N, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @WR4(%struct.hdmi_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.hdmi_softc*, %struct.hdmi_softc** %3, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @WR4(%struct.hdmi_softc* %125, i32 %126, i32 %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %59, %52, %37, %24, %15
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @get_audio_regs(i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @get_hda_cts_n(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @audio_setup_infoframe(%struct.hdmi_softc*) #1

declare dso_local i32 @WR4(%struct.hdmi_softc*, i32, i32) #1

declare dso_local i32 @SOR_AUDIO_CNTRL0_SOURCE_SELECT(i32) #1

declare dso_local i32 @RD4(%struct.hdmi_softc*, i32) #1

declare dso_local i32 @AUDIO_N_VALUE(i32) #1

declare dso_local i32 @ACR_SUBPACK_N(i32) #1

declare dso_local i32 @ACR_SUBPACK_CTS(i32) #1

declare dso_local i32 @SPARE_CTS_RESET_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
