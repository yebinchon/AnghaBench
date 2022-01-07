; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_set_board_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_eeprom_set_board_values(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %8 = call %struct.TYPE_3__* @ath_hal_checkchannel(%struct.ath_hal* %6, %struct.ieee80211_channel* %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %11 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %10)
  %12 = call i32 @ar9300_xpa_bias_level_apply(%struct.ath_hal* %9, i32 %11)
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %14)
  %16 = call i32 @ar9300_xpa_timing_control_apply(%struct.ath_hal* %13, i32 %15)
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %19 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %18)
  %20 = call i32 @ar9300_ant_ctrl_apply(%struct.ath_hal* %17, i32 %19)
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = call i32 @ar9300_drive_strength_apply(%struct.ath_hal* %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %24)
  %26 = call i32 @ar9300_x_lNA_bias_strength_apply(%struct.ath_hal* %23, i32 %25)
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = call i32 @AR_SREV_HORNET(%struct.ath_hal* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %2
  %31 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %32 = call i32 @AR_SREV_WASP(%struct.ath_hal* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %36 = call i32 @AR_SREV_HONEYBEE(%struct.ath_hal* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = call i32 @ar9300_internal_regulator_apply(%struct.ath_hal* %39)
  br label %41

41:                                               ; preds = %38, %34, %30, %2
  %42 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ar9300_attenuation_apply(%struct.ath_hal* %42, i32 %45)
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ar9300_quick_drop_apply(%struct.ath_hal* %47, i32 %50)
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = call i32 @ar9300_thermometer_apply(%struct.ath_hal* %52)
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = call i32 @AR_SREV_WASP(%struct.ath_hal* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %41
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = call i32 @ar9300_tuning_caps_apply(%struct.ath_hal* %58)
  br label %60

60:                                               ; preds = %57, %41
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ar9300_tx_end_to_xpab_off_apply(%struct.ath_hal* %61, i32 %64)
  %66 = load i32, i32* @AH_TRUE, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_3__* @ath_hal_checkchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ar9300_xpa_bias_level_apply(%struct.ath_hal*, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar9300_xpa_timing_control_apply(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_ant_ctrl_apply(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_drive_strength_apply(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_x_lNA_bias_strength_apply(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_internal_regulator_apply(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_attenuation_apply(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_quick_drop_apply(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_thermometer_apply(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_tuning_caps_apply(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_tx_end_to_xpab_off_apply(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
