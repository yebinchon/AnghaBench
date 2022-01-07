; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_get_spectral_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_get_spectral_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@HAL_PM_FULL_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_get_spectral_config(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal_9300*, align 8
  %5 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %4, align 8
  %8 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %9 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %8, i32 0, i32 0
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
  %30 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %31 = call i64 @AR_SREV_WASP(%struct.ath_hal* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %35 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33, %26
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %42 = load i32, i32* @HAL_PM_FULL_SLEEP, align 4
  %43 = load i32, i32* @AH_TRUE, align 4
  %44 = call i32 @ar9300_set_power_mode(%struct.ath_hal* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %37, %33
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_set_power_mode(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
