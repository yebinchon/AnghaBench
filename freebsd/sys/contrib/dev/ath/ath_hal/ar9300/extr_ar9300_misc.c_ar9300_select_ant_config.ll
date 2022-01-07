; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_select_ant_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_select_ant_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ieee80211_channel* }

@HAL_OK = common dso_local global i64 0, align 8
@AR_PHY_SWITCH_COM = common dso_local global i32 0, align 4
@HAL_EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar9300_select_ant_config(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_hal_9300*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %12)
  store %struct.ath_hal_9300* %13, %struct.ath_hal_9300** %6, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %15 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  store %struct.ieee80211_channel* %17, %struct.ieee80211_channel** %7, align 8
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %20 = call i32* @ath_hal_checkchannel(%struct.ath_hal* %18, %struct.ieee80211_channel* %19)
  store i32* %20, i32** %8, align 8
  %21 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %22 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @IS_CHAN_2GHZ(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i64 [ %30, %27 ], [ %34, %31 ]
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i64, i64* @HAL_OK, align 8
  %42 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @ar9300_eeprom_get_ant_cfg(%struct.ath_hal_9300* %42, %struct.ieee80211_channel* %43, i64 %44, i32* %10)
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %49 = load i32, i32* @AR_PHY_SWITCH_COM, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @OS_REG_WRITE(%struct.ath_hal* %48, i32 %49, i32 %50)
  %52 = load i64, i64* @HAL_OK, align 8
  store i64 %52, i64* %3, align 8
  br label %56

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i64, i64* @HAL_EINVAL, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32* @ath_hal_checkchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i64 @IS_CHAN_2GHZ(i32*) #1

declare dso_local i64 @ar9300_eeprom_get_ant_cfg(%struct.ath_hal_9300*, %struct.ieee80211_channel*, i64, i32*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
