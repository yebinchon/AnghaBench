; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_get_rx_nf_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_get_rx_nf_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AH_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@OSPREY_MAX_CHAINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_get_rx_nf_offset(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %16 = call %struct.TYPE_4__* @ath_hal_checkchannel(%struct.ath_hal* %14, %struct.ieee80211_channel* %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AH_NULL, align 8
  %19 = icmp eq %struct.TYPE_4__* %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @OSPREY_MAX_CHAINS, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @OS_MEMZERO(i32* %21, i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @OSPREY_MAX_CHAINS, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @OS_MEMZERO(i32* %27, i32 %31)
  store i32 -1, i32* %5, align 4
  br label %83

33:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %79, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @OSPREY_MAX_CHAINS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %34
  %39 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ar9300_noise_floor_cal_or_power_get(%struct.ath_hal* %39, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %11, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 0, i32* %50, align 4
  br label %58

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @NOISE_PWR_DBM_2_INT(i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @ar9300_noise_floor_cal_or_power_get(%struct.ath_hal* %59, i32 %62, i32 %63, i32 1)
  store i32 %64, i32* %12, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 0, i32* %70, align 4
  br label %78

71:                                               ; preds = %58
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @NOISE_PWR_DBM_2_INT(i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %34

82:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %20
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_4__* @ath_hal_checkchannel(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @OS_MEMZERO(i32*, i32) #1

declare dso_local i32 @ar9300_noise_floor_cal_or_power_get(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @NOISE_PWR_DBM_2_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
