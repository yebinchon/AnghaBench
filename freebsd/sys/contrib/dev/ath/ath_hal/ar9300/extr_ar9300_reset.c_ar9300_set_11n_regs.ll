; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_11n_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_11n_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_PHY_GEN_CTRL = common dso_local global i32 0, align 4
@AR_PHY_GC_ENABLE_DAC_FIFO = common dso_local global i32 0, align 4
@AR_PHY_GC_HT_EN = common dso_local global i32 0, align 4
@AR_PHY_GC_SINGLE_HT_LTF1 = common dso_local global i32 0, align 4
@AR_PHY_GC_SHORT_GI_40 = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_EN = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@AR_PHY_GC_GF_DETECT_EN = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@AR_PHY_MS_HALF_RATE = common dso_local global i32 0, align 4
@AR_PHY_MS_QUARTER_RATE = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL = common dso_local global i32 0, align 4
@AR_PHY_FRAME_CTL_CF_OVERLAP_WINDOW = common dso_local global i32 0, align 4
@AR_GTXTO = common dso_local global i32 0, align 4
@AR_GTXTO_TIMEOUT_LIMIT_S = common dso_local global i32 0, align 4
@AR_CST = common dso_local global i32 0, align 4
@AR_CST_TIMEOUT_LIMIT_S = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_EXT_CH = common dso_local global i32 0, align 4
@HAL_HT_EXTPROTSPACING_25 = common dso_local global i64 0, align 8
@ahp = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*, i32)* @ar9300_set_11n_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_set_11n_regs(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %12 = call i32 @OS_REG_READ(%struct.ath_hal* %10, i32 %11)
  %13 = load i32, i32* @AR_PHY_GC_ENABLE_DAC_FIFO, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @AR_PHY_GC_HT_EN, align 4
  %16 = load i32, i32* @AR_PHY_GC_SINGLE_HT_LTF1, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @AR_PHY_GC_SHORT_GI_40, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %23 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load i32, i32* @AR_PHY_GC_DYN2040_EN, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %39 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %40 = call i32 @OS_REG_READ(%struct.ath_hal* %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @AR_PHY_GC_GF_DETECT_EN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %48 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @OS_REG_WRITE(%struct.ath_hal* %47, i32 %48, i32 %49)
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %52 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %37
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %56 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %54, %37
  %59 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %60 = load i32, i32* @AR_PHY_MODE, align 4
  %61 = call i32 @OS_REG_READ(%struct.ath_hal* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %63 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @AR_PHY_MS_HALF_RATE, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %78

69:                                               ; preds = %58
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %71 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @AR_PHY_MS_QUARTER_RATE, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %80 = load i32, i32* @AR_PHY_MODE, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @OS_REG_WRITE(%struct.ath_hal* %79, i32 %80, i32 %81)
  %83 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %85 = call i32 @ar9300_set_ifs_timing(%struct.ath_hal* %83, %struct.ieee80211_channel* %84)
  %86 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %87 = load i32, i32* @AR_PHY_FRAME_CTL, align 4
  %88 = load i32, i32* @AR_PHY_FRAME_CTL_CF_OVERLAP_WINDOW, align 4
  %89 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %86, i32 %87, i32 %88, i32 3)
  br label %90

90:                                               ; preds = %78, %54
  %91 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ar9300_set_11n_mac2040(%struct.ath_hal* %91, i32 %92)
  %94 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %95 = load i32, i32* @AR_GTXTO, align 4
  %96 = load i32, i32* @AR_GTXTO_TIMEOUT_LIMIT_S, align 4
  %97 = shl i32 25, %96
  %98 = call i32 @OS_REG_WRITE(%struct.ath_hal* %94, i32 %95, i32 %97)
  %99 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %100 = load i32, i32* @AR_CST, align 4
  %101 = load i32, i32* @AR_CST_TIMEOUT_LIMIT_S, align 4
  %102 = shl i32 15, %101
  %103 = call i32 @OS_REG_WRITE(%struct.ath_hal* %99, i32 %100, i32 %102)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40U(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar9300_set_ifs_timing(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @ar9300_set_11n_mac2040(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
