; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_rf_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_rf_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AH_NULL = common dso_local global %struct.ieee80211_channel* null, align 8
@AR_PHY_MODE_DYNAMIC = common dso_local global i32 0, align 4
@AR_PHY_MODE_OFDM = common dso_local global i32 0, align 4
@AR_PHY_MODE_DYN_CCK_DISABLE = common dso_local global i32 0, align 4
@AR_PHY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9300_set_rf_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_set_rf_mode(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @AH_NULL, align 8
  %8 = icmp eq %struct.ieee80211_channel* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %49

10:                                               ; preds = %2
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %31 [
    i32 128, label %15
  ]

15:                                               ; preds = %10
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %17 = call i32 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %21 = call i32 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @AR_PHY_MODE_OFDM, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %10
  %32 = call i32 @HALASSERT(i32 0)
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %36 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %34, %struct.ieee80211_channel* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @AR_PHY_MODE_DYNAMIC, align 4
  %40 = load i32, i32* @AR_PHY_MODE_DYN_CCK_DISABLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = load i32, i32* @AR_PHY_MODE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @OS_REG_WRITE(%struct.ath_hal* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %9
  ret void
}

declare dso_local %struct.TYPE_2__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
