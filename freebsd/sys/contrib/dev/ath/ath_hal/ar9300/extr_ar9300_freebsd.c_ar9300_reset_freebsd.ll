; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_reset_freebsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_reset_freebsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ath_hal_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HAL_HT_MACMODE_2040 = common dso_local global i32 0, align 4
@HAL_HT_MACMODE_20 = common dso_local global i32 0, align 4
@HAL_HT_EXTPROTSPACING_20 = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_reset_freebsd(%struct.ath_hal* %0, i32 %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ath_hal_private*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %17 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %16)
  store %struct.ath_hal_private* %17, %struct.ath_hal_private** %15, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %19 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @HAL_HT_MACMODE_2040, align 4
  br label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @HAL_HT_MACMODE_20, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %14, align 4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.ath_hal_private*, %struct.ath_hal_private** %15, align 8
  %32 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ath_hal_private*, %struct.ath_hal_private** %15, align 8
  %36 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HAL_HT_EXTPROTSPACING_20, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* @AH_FALSE, align 4
  %43 = call i32 @ar9300_reset(%struct.ath_hal* %27, i32 %28, %struct.ieee80211_channel* %29, i32 %30, i32 %34, i32 %38, i32 %39, i32 %40, i32* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  ret i32 %44
}

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar9300_reset(%struct.ath_hal*, i32, %struct.ieee80211_channel*, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
