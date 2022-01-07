; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_chip_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ath_hal_9300 = type { i64 }

@HAL_RESET_WARM = common dso_local global i32 0, align 4
@AH_MARK_CHIPRESET = common dso_local global i32 0, align 4
@AR_Q_TXE = common dso_local global i32 0, align 4
@AR_CR = common dso_local global i32 0, align 4
@AR_CR_RXE = common dso_local global i32 0, align 4
@HAL_RESET_COLD = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i64 0, align 8
@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar9300_chip_reset(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ath_hal_9300*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %8)
  store %struct.ath_hal_9300* %9, %struct.ath_hal_9300** %6, align 8
  %10 = load i32, i32* @HAL_RESET_WARM, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = load i32, i32* @AH_MARK_CHIPRESET, align 4
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %14 = icmp ne %struct.ieee80211_channel* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  %22 = call i32 @OS_MARK(%struct.ath_hal* %11, i32 %12, i32 %21)
  %23 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %24 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %20
  %28 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %35 = load i32, i32* @AR_Q_TXE, align 4
  %36 = call i32 @OS_REG_READ(%struct.ath_hal* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %40 = load i32, i32* @AR_CR, align 4
  %41 = call i32 @OS_REG_READ(%struct.ath_hal* %39, i32 %40)
  %42 = load i32, i32* @AR_CR_RXE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38, %33, %27, %20
  %46 = load i32, i32* @HAL_RESET_COLD, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %38
  %48 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @ar9300_set_reset_reg(%struct.ath_hal* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @AH_FALSE, align 8
  store i64 %53, i64* %3, align 8
  br label %80

54:                                               ; preds = %47
  %55 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %56 = load i32, i32* @HAL_PM_AWAKE, align 4
  %57 = load i64, i64* @AH_TRUE, align 8
  %58 = call i32 @ar9300_set_power_mode(%struct.ath_hal* %55, i32 %56, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @AH_FALSE, align 8
  store i64 %61, i64* %3, align 8
  br label %80

62:                                               ; preds = %54
  %63 = load i64, i64* @AH_FALSE, align 8
  %64 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %65 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %67 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %71 = call i32 @ar9300_internal_regulator_apply(%struct.ath_hal* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %75 = call i32 @ar9300_init_pll(%struct.ath_hal* %73, %struct.ieee80211_channel* %74)
  %76 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %78 = call i32 @ar9300_set_rf_mode(%struct.ath_hal* %76, %struct.ieee80211_channel* %77)
  %79 = load i64, i64* @AH_TRUE, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %72, %60, %52
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_MARK(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_set_reset_reg(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_set_power_mode(%struct.ath_hal*, i32, i64) #1

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_internal_regulator_apply(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_init_pll(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ar9300_set_rf_mode(%struct.ath_hal*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
