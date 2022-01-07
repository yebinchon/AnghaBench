; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_tx_power_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_tx_power_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }
%struct.ath_hal_private = type { i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@AH_FALSE = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_set_tx_power_limit(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_hal_9300*, align 8
  %11 = alloca %struct.ath_hal_private*, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  %13 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %15 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %14)
  store %struct.ath_hal_9300* %15, %struct.ath_hal_9300** %10, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %17 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %16)
  store %struct.ath_hal_private* %17, %struct.ath_hal_private** %11, align 8
  %18 = load %struct.ath_hal_private*, %struct.ath_hal_private** %11, align 8
  %19 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %18, i32 0, i32 2
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  store %struct.ieee80211_channel* %20, %struct.ieee80211_channel** %12, align 8
  %21 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %23 = call i32* @ath_hal_checkchannel(%struct.ath_hal* %21, %struct.ieee80211_channel* %22)
  store i32* %23, i32** %13, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %25 = icmp eq %struct.ieee80211_channel* null, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @AH_FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %68

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MAX_RATE_POWER, align 4
  %31 = call i32 @AH_MIN(i32 %29, i32 %30)
  %32 = load %struct.ath_hal_private*, %struct.ath_hal_private** %11, align 8
  %33 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ath_hal_private*, %struct.ath_hal_private** %11, align 8
  %36 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %38 = icmp eq %struct.ieee80211_channel* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @AH_FALSE, align 4
  store i32 %40, i32* %5, align 4
  br label %68

41:                                               ; preds = %28
  %42 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %43 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %44 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %43, i32 0, i32 0
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %46 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %48 = call i32 @ath_hal_getctl(%struct.ath_hal* %46, %struct.ieee80211_channel* %47)
  %49 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %51 = call i32 @ath_hal_getantennaallowed(%struct.ath_hal* %49, %struct.ieee80211_channel* %50)
  %52 = load %struct.ath_hal_private*, %struct.ath_hal_private** %11, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %55 = call i32 @ath_hal_get_twice_max_regpower(%struct.ath_hal_private* %52, i32* %53, %struct.ieee80211_channel* %54)
  %56 = load i32, i32* @MAX_RATE_POWER, align 4
  %57 = load %struct.ath_hal_private*, %struct.ath_hal_private** %11, align 8
  %58 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @AH_MIN(i32 %56, i32 %59)
  %61 = call i64 @ar9300_eeprom_set_transmit_power(%struct.ath_hal* %42, i32* %44, %struct.ieee80211_channel* %45, i32 %48, i32 %51, i32 %55, i32 %60)
  %62 = load i64, i64* @HAL_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %41
  %65 = load i32, i32* @AH_FALSE, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %41
  %67 = load i32, i32* @AH_TRUE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %64, %39, %26
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32* @ath_hal_checkchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AH_MIN(i32, i32) #1

declare dso_local i64 @ar9300_eeprom_set_transmit_power(%struct.ath_hal*, i32*, %struct.ieee80211_channel*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_hal_getctl(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath_hal_getantennaallowed(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath_hal_get_twice_max_regpower(%struct.ath_hal_private*, i32*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
