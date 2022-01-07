; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_defconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_cfg = type { i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }

@DEFAULT_CATASTROPHIC_ERR = common dso_local global i32 0, align 4
@DEFAULT_DMA_ERR = common dso_local global i32 0, align 4
@DEFAULT_HALT_ON_EXTERNAL_ACTIVATION = common dso_local global i32 0, align 4
@DEFAULT_HALT_ON_UNRECOVERABLE_ECC_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@DEFAULT_EXTERNAL_ECC_RAMS_ENABLE = common dso_local global i32 0, align 4
@DEFAULT_AID_OVERRIDE = common dso_local global i32 0, align 4
@DEFAULT_AID_MODE = common dso_local global i32 0, align 4
@DEFAULT_DMA_COMM_Q_LOW = common dso_local global i32 0, align 4
@DEFAULT_DMA_COMM_Q_HIGH = common dso_local global i32 0, align 4
@DEFAULT_CACHE_OVERRIDE = common dso_local global i32 0, align 4
@DEFAULT_DMA_CAM_NUM_OF_ENTRIES = common dso_local global i32 0, align 4
@DEFAULT_DMA_DBG_CNT_MODE = common dso_local global i32 0, align 4
@DEFAULT_DMA_EN_EMERGENCY = common dso_local global i32 0, align 4
@DEFAULT_DMA_SOS_EMERGENCY = common dso_local global i32 0, align 4
@DEFAULT_DMA_WATCHDOG = common dso_local global i32 0, align 4
@DEFAULT_DMA_EN_EMERGENCY_SMOOTHER = common dso_local global i32 0, align 4
@DEFAULT_DMA_EMERGENCY_SWITCH_COUNTER = common dso_local global i32 0, align 4
@DEFAULT_DISP_LIMIT = common dso_local global i32 0, align 4
@DEFAULT_PRS_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_PLCR_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_KG_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_BMI_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_QMI_ENQ_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_QMI_DEQ_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_FM_CTL1_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_FM_CTL2_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_TNUM_AGING_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_defconfig(%struct.fman_cfg* %0, i32 %1) #0 {
  %3 = alloca %struct.fman_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.fman_cfg* %0, %struct.fman_cfg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %6 = call i32 @memset(%struct.fman_cfg* %5, i32 0, i32 152)
  %7 = load i32, i32* @DEFAULT_CATASTROPHIC_ERR, align 4
  %8 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %9 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %8, i32 0, i32 31
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @DEFAULT_DMA_ERR, align 4
  %11 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %12 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %11, i32 0, i32 30
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @DEFAULT_HALT_ON_EXTERNAL_ACTIVATION, align 4
  %14 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %14, i32 0, i32 29
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @DEFAULT_HALT_ON_UNRECOVERABLE_ECC_ERROR, align 4
  %17 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %18 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %17, i32 0, i32 28
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %20, i32 0, i32 27
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @FALSE, align 8
  %23 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %24 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %23, i32 0, i32 26
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @DEFAULT_EXTERNAL_ECC_RAMS_ENABLE, align 4
  %26 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %26, i32 0, i32 25
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %107

31:                                               ; preds = %2
  %32 = load i32, i32* @DEFAULT_AID_OVERRIDE, align 4
  %33 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %34 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %33, i32 0, i32 24
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @DEFAULT_AID_MODE, align 4
  %36 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %37 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %36, i32 0, i32 23
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @DEFAULT_DMA_COMM_Q_LOW, align 4
  %39 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %40 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %39, i32 0, i32 22
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @DEFAULT_DMA_COMM_Q_HIGH, align 4
  %42 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %43 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %42, i32 0, i32 21
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @DEFAULT_CACHE_OVERRIDE, align 4
  %45 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %46 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %45, i32 0, i32 20
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @DEFAULT_DMA_CAM_NUM_OF_ENTRIES, align 4
  %48 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %49 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %48, i32 0, i32 19
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @DEFAULT_DMA_DBG_CNT_MODE, align 4
  %51 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %52 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %51, i32 0, i32 18
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @DEFAULT_DMA_EN_EMERGENCY, align 4
  %54 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %55 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %54, i32 0, i32 17
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @DEFAULT_DMA_SOS_EMERGENCY, align 4
  %57 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %58 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %57, i32 0, i32 16
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @DEFAULT_DMA_WATCHDOG, align 4
  %60 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %61 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %60, i32 0, i32 15
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @DEFAULT_DMA_EN_EMERGENCY_SMOOTHER, align 4
  %63 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %64 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @DEFAULT_DMA_EMERGENCY_SWITCH_COUNTER, align 4
  %66 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %67 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @DEFAULT_DISP_LIMIT, align 4
  %69 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %70 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @DEFAULT_PRS_DISP_TH, align 4
  %72 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %73 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @DEFAULT_PLCR_DISP_TH, align 4
  %75 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %76 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @DEFAULT_KG_DISP_TH, align 4
  %78 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %79 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @DEFAULT_BMI_DISP_TH, align 4
  %81 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %82 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @DEFAULT_QMI_ENQ_DISP_TH, align 4
  %84 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %85 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @DEFAULT_QMI_DEQ_DISP_TH, align 4
  %87 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %88 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @DEFAULT_FM_CTL1_DISP_TH, align 4
  %90 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %91 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @DEFAULT_FM_CTL2_DISP_TH, align 4
  %93 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %94 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** @FALSE, align 8
  %96 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %97 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @DEFAULT_TNUM_AGING_PERIOD, align 4
  %99 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %100 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** @FALSE, align 8
  %102 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %103 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @FALSE, align 8
  %105 = load %struct.fman_cfg*, %struct.fman_cfg** %3, align 8
  %106 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %31, %30
  ret void
}

declare dso_local i32 @memset(%struct.fman_cfg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
