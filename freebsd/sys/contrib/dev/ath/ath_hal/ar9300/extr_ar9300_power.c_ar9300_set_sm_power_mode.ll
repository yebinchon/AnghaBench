; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_power.c_ar9300_set_sm_power_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_power.c_ar9300_set_sm_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32, i32 }

@HAL_CAP_DYNAMIC_SMPS = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@AR_PCU_SMPS_LPWR_CHNMSK_VAL = common dso_local global i32 0, align 4
@AR_PCU_SMPS_LPWR_CHNMSK = common dso_local global i32 0, align 4
@AR_PCU_SMPS_HPWR_CHNMSK = common dso_local global i32 0, align 4
@AR_PCU_SMPS_MAC_CHAINMASK = common dso_local global i32 0, align 4
@AR_PCU_SMPS = common dso_local global i32 0, align 4
@AR_PCU_SMPS_SW_CTRL_HPWR = common dso_local global i32 0, align 4
@AR_PCU_SMPS_HW_CTRL_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_set_sm_power_mode(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %7)
  store %struct.ath_hal_9300* %8, %struct.ath_hal_9300** %6, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = load i32, i32* @HAL_CAP_DYNAMIC_SMPS, align 4
  %11 = load i32, i32* @AH_NULL, align 4
  %12 = call i64 @ar9300_get_capability(%struct.ath_hal* %9, i32 %10, i32 0, i32 %11)
  %13 = load i64, i64* @HAL_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %57

16:                                               ; preds = %2
  %17 = load i32, i32* @AR_PCU_SMPS_LPWR_CHNMSK_VAL, align 4
  %18 = load i32, i32* @AR_PCU_SMPS_LPWR_CHNMSK, align 4
  %19 = call i32 @SM(i32 %17, i32 %18)
  %20 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %21 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AR_PCU_SMPS_HPWR_CHNMSK, align 4
  %24 = call i32 @SM(i32 %22, i32 %23)
  %25 = or i32 %19, %24
  %26 = load i32, i32* @AR_PCU_SMPS_MAC_CHAINMASK, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %52 [
    i32 128, label %29
    i32 129, label %34
    i32 130, label %41
    i32 131, label %48
  ]

29:                                               ; preds = %16
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* @AR_PCU_SMPS, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 %32)
  br label %53

34:                                               ; preds = %16
  %35 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %36 = load i32, i32* @AR_PCU_SMPS, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @AR_PCU_SMPS_SW_CTRL_HPWR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @OS_REG_WRITE(%struct.ath_hal* %35, i32 %36, i32 %39)
  br label %53

41:                                               ; preds = %16
  %42 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %43 = load i32, i32* @AR_PCU_SMPS, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AR_PCU_SMPS_HW_CTRL_EN, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @OS_REG_WRITE(%struct.ath_hal* %42, i32 %43, i32 %46)
  br label %53

48:                                               ; preds = %16
  %49 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %50 = load i32, i32* @AR_PCU_SMPS, align 4
  %51 = call i32 @OS_REG_WRITE(%struct.ath_hal* %49, i32 %50, i32 0)
  br label %53

52:                                               ; preds = %16
  br label %53

53:                                               ; preds = %52, %48, %41, %34, %29
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %56 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %15
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @ar9300_get_capability(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
