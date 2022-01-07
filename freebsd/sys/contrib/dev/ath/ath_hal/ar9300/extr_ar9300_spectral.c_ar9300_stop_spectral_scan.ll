; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_stop_spectral_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_stop_spectral_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_ACTIVE = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_1_CF_BIN_THRESH = common dso_local global i32 0, align 4
@AR_PHY_TIMING2 = common dso_local global i32 0, align 4
@AR_PHY_TIMING2_DC_OFFSET = common dso_local global i32 0, align 4
@AR_PHY_ERR = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@AR_PHY_MODE_DISABLE_CCK = common dso_local global i32 0, align 4
@AR_PHY_ERR_MASK_REG = common dso_local global i32 0, align 4
@AR_PHY_ERR_RADAR = common dso_local global i32 0, align 4
@HAL_PM_FULL_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_stop_spectral_scan(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal_9300*, align 8
  %5 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %4, align 8
  %8 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %9 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = call i64 @AR_SREV_WASP(%struct.ath_hal* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %16 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14, %1
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %23 = load i32, i32* @HAL_PM_AWAKE, align 4
  %24 = load i32, i32* @AH_TRUE, align 4
  %25 = call i32 @ar9300_set_power_mode(%struct.ath_hal* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %18, %14
  %27 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %28 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %29 = call i32 @OS_REG_READ(%struct.ath_hal* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ACTIVE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %35 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @OS_REG_WRITE(%struct.ath_hal* %34, i32 %35, i32 %36)
  %38 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %39 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %40 = call i32 @OS_REG_READ(%struct.ath_hal* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %42 = load i32, i32* @AR_PHY_RADAR_1, align 4
  %43 = load i32, i32* @AR_PHY_RADAR_1_CF_BIN_THRESH, align 4
  %44 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %45 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %41, i32 %42, i32 %43, i32 %46)
  %48 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %49 = load i32, i32* @AR_PHY_TIMING2, align 4
  %50 = load i32, i32* @AR_PHY_TIMING2_DC_OFFSET, align 4
  %51 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %52 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %48, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %56 = load i32, i32* @AR_PHY_ERR, align 4
  %57 = call i32 @OS_REG_WRITE(%struct.ath_hal* %55, i32 %56, i32 0)
  %58 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %59 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %26
  %64 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %65 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %66 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %64, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %73 = load i32, i32* @AR_PHY_MODE, align 4
  %74 = load i32, i32* @AR_PHY_MODE_DISABLE_CCK, align 4
  %75 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %76 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %72, i32 %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %63, %26
  %80 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %81 = load i32, i32* @AR_PHY_ERR, align 4
  %82 = call i32 @OS_REG_READ(%struct.ath_hal* %80, i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %84 = load i32, i32* @AR_PHY_ERR_MASK_REG, align 4
  %85 = call i32 @OS_REG_READ(%struct.ath_hal* %83, i32 %84)
  %86 = load i32, i32* @AR_PHY_ERR_RADAR, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  store i32 %88, i32* %3, align 4
  %89 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %90 = load i32, i32* @AR_PHY_ERR_MASK_REG, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @OS_REG_WRITE(%struct.ath_hal* %89, i32 %90, i32 %91)
  %93 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %94 = call i64 @AR_SREV_WASP(%struct.ath_hal* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %79
  %97 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %98 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96, %79
  %101 = load i64, i64* %5, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %105 = load i32, i32* @HAL_PM_FULL_SLEEP, align 4
  %106 = load i32, i32* @AH_TRUE, align 4
  %107 = call i32 @ar9300_set_power_mode(%struct.ath_hal* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %100, %96
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_set_power_mode(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
