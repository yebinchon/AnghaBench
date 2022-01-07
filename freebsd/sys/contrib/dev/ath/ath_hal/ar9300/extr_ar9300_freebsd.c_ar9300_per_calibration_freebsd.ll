; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_per_calibration_freebsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_freebsd.c_ar9300_per_calibration_freebsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_per_calibration_freebsd(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 268435455, i32* %11, align 4
  %12 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %15 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @ar9300_calibration(%struct.ath_hal* %12, %struct.ieee80211_channel* %13, i32 %18, i32 %19, i32* %20, i32 0, i32* %11)
  ret i32 %21
}

declare dso_local i32 @ar9300_calibration(%struct.ath_hal*, %struct.ieee80211_channel*, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
