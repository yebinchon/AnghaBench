; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_init_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_init_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_PHY_RX_DELAY = common dso_local global i32 0, align 4
@AR_PHY_RX_DELAY_DELAY = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE = common dso_local global i32 0, align 4
@AR_PHY_ACTIVE_EN = common dso_local global i32 0, align 4
@BASE_ACTIVATE_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9300_init_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_init_bb(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_PHY_RX_DELAY, align 4
  %8 = call i32 @OS_REG_READ(%struct.ath_hal* %6, i32 %7)
  %9 = load i32, i32* @AR_PHY_RX_DELAY_DELAY, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %12 = call i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 4, %15
  %17 = sdiv i32 %16, 22
  store i32 %17, i32* %5, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 10
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = load i32, i32* @AR_PHY_ACTIVE, align 4
  %24 = load i32, i32* @AR_PHY_ACTIVE_EN, align 4
  %25 = call i32 @OS_REG_WRITE(%struct.ath_hal* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @BASE_ACTIVATE_DELAY, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @OS_DELAY(i64 %29)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_CCK(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_DELAY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
