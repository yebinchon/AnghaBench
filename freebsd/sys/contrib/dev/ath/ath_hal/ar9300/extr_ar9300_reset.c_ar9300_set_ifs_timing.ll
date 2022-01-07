; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_ifs_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_ifs_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_USEC = common dso_local global i32 0, align 4
@AR_USEC_RX_LATENCY = common dso_local global i32 0, align 4
@AR_USEC_TX_LATENCY = common dso_local global i32 0, align 4
@AR_USEC_USEC = common dso_local global i32 0, align 4
@AR_SLOT_HALF = common dso_local global i32 0, align 4
@AR_EIFS_HALF = common dso_local global i32 0, align 4
@AR_RX_LATENCY_HALF_FAST_CLOCK = common dso_local global i32 0, align 4
@AR_TX_LATENCY_HALF_FAST_CLOCK = common dso_local global i32 0, align 4
@AR_USEC_HALF_FAST_CLOCK = common dso_local global i32 0, align 4
@AR_RX_LATENCY_HALF = common dso_local global i32 0, align 4
@AR_TX_LATENCY_HALF = common dso_local global i32 0, align 4
@AR_USEC_HALF = common dso_local global i32 0, align 4
@AR_SLOT_QUARTER = common dso_local global i32 0, align 4
@AR_EIFS_QUARTER = common dso_local global i32 0, align 4
@AR_RX_LATENCY_QUARTER_FAST_CLOCK = common dso_local global i32 0, align 4
@AR_TX_LATENCY_QUARTER_FAST_CLOCK = common dso_local global i32 0, align 4
@AR_USEC_QUARTER_FAST_CLOCK = common dso_local global i32 0, align 4
@AR_RX_LATENCY_QUARTER = common dso_local global i32 0, align 4
@AR_TX_LATENCY_QUARTER = common dso_local global i32 0, align 4
@AR_USEC_QUARTER = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_SLOT = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_EIFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9300_set_ifs_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_set_ifs_timing(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = load i32, i32* @AR_USEC, align 4
  %13 = call i32 @OS_REG_READ(%struct.ath_hal* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @AR_USEC_RX_LATENCY, align 4
  %15 = load i32, i32* @AR_USEC_TX_LATENCY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AR_USEC_USEC, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %23 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %2
  %26 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %27 = load i32, i32* @AR_SLOT_HALF, align 4
  %28 = call i32 @ar9300_mac_to_clks(%struct.ath_hal* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = load i32, i32* @AR_EIFS_HALF, align 4
  %31 = call i32 @ar9300_mac_to_clks(%struct.ath_hal* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %34 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %32, %struct.ieee80211_channel* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load i32, i32* @AR_RX_LATENCY_HALF_FAST_CLOCK, align 4
  %38 = load i32, i32* @AR_USEC_RX_LATENCY, align 4
  %39 = call i32 @SM(i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @AR_TX_LATENCY_HALF_FAST_CLOCK, align 4
  %41 = load i32, i32* @AR_USEC_TX_LATENCY, align 4
  %42 = call i32 @SM(i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @AR_USEC_HALF_FAST_CLOCK, align 4
  %44 = load i32, i32* @AR_USEC_USEC, align 4
  %45 = call i32 @SM(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %56

46:                                               ; preds = %25
  %47 = load i32, i32* @AR_RX_LATENCY_HALF, align 4
  %48 = load i32, i32* @AR_USEC_RX_LATENCY, align 4
  %49 = call i32 @SM(i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @AR_TX_LATENCY_HALF, align 4
  %51 = load i32, i32* @AR_USEC_TX_LATENCY, align 4
  %52 = call i32 @SM(i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @AR_USEC_HALF, align 4
  %54 = load i32, i32* @AR_USEC_USEC, align 4
  %55 = call i32 @SM(i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %46, %36
  br label %89

57:                                               ; preds = %2
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_SLOT_QUARTER, align 4
  %60 = call i32 @ar9300_mac_to_clks(%struct.ath_hal* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = load i32, i32* @AR_EIFS_QUARTER, align 4
  %63 = call i32 @ar9300_mac_to_clks(%struct.ath_hal* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %66 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %64, %struct.ieee80211_channel* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %57
  %69 = load i32, i32* @AR_RX_LATENCY_QUARTER_FAST_CLOCK, align 4
  %70 = load i32, i32* @AR_USEC_RX_LATENCY, align 4
  %71 = call i32 @SM(i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @AR_TX_LATENCY_QUARTER_FAST_CLOCK, align 4
  %73 = load i32, i32* @AR_USEC_TX_LATENCY, align 4
  %74 = call i32 @SM(i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @AR_USEC_QUARTER_FAST_CLOCK, align 4
  %76 = load i32, i32* @AR_USEC_USEC, align 4
  %77 = call i32 @SM(i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %88

78:                                               ; preds = %57
  %79 = load i32, i32* @AR_RX_LATENCY_QUARTER, align 4
  %80 = load i32, i32* @AR_USEC_RX_LATENCY, align 4
  %81 = call i32 @SM(i32 %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @AR_TX_LATENCY_QUARTER, align 4
  %83 = load i32, i32* @AR_USEC_TX_LATENCY, align 4
  %84 = call i32 @SM(i32 %82, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @AR_USEC_QUARTER, align 4
  %86 = load i32, i32* @AR_USEC_USEC, align 4
  %87 = call i32 @SM(i32 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %78, %68
  br label %89

89:                                               ; preds = %88, %56
  %90 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %91 = load i32, i32* @AR_USEC, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @OS_REG_WRITE(%struct.ath_hal* %90, i32 %91, i32 %98)
  %100 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %101 = load i32, i32* @AR_D_GBL_IFS_SLOT, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @OS_REG_WRITE(%struct.ath_hal* %100, i32 %101, i32 %102)
  %104 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %105 = load i32, i32* @AR_D_GBL_IFS_EIFS, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @OS_REG_WRITE(%struct.ath_hal* %104, i32 %105, i32 %106)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar9300_mac_to_clks(%struct.ath_hal*, i32) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
