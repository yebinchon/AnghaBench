; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_delta_slope.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_delta_slope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_3__ = type { i32 }

@COEFF = common dso_local global i32 0, align 4
@AR_PHY_TIMING3 = common dso_local global i32 0, align 4
@AR_PHY_TIMING3_DSC_MAN = common dso_local global i32 0, align 4
@AR_PHY_TIMING3_DSC_EXP = common dso_local global i32 0, align 4
@AR_PHY_SGI_DELTA = common dso_local global i32 0, align 4
@AR_PHY_SGI_DSC_MAN = common dso_local global i32 0, align 4
@AR_PHY_SGI_DSC_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9300_set_delta_slope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_set_delta_slope(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %11 = load i32, i32* @COEFF, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = mul nsw i32 16777216, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %15 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %22 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %17
  %29 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %31 = call i32 @ar9300_get_channel_centers(%struct.ath_hal* %29, %struct.ieee80211_channel* %30, %struct.TYPE_3__* %10)
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %32, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ar9300_get_delta_slope_values(%struct.ath_hal* %36, i32 %37, i32* %7, i32* %6)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load i32, i32* @AR_PHY_TIMING3, align 4
  %41 = load i32, i32* @AR_PHY_TIMING3_DSC_MAN, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %45 = load i32, i32* @AR_PHY_TIMING3, align 4
  %46 = load i32, i32* @AR_PHY_TIMING3_DSC_EXP, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 9, %49
  %51 = sdiv i32 %50, 10
  store i32 %51, i32* %5, align 4
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ar9300_get_delta_slope_values(%struct.ath_hal* %52, i32 %53, i32* %7, i32* %6)
  %55 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %56 = load i32, i32* @AR_PHY_SGI_DELTA, align 4
  %57 = load i32, i32* @AR_PHY_SGI_DSC_MAN, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %61 = load i32, i32* @AR_PHY_SGI_DELTA, align 4
  %62 = load i32, i32* @AR_PHY_SGI_DSC_EXP, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %60, i32 %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i32 @ar9300_get_channel_centers(%struct.ath_hal*, %struct.ieee80211_channel*, %struct.TYPE_3__*) #1

declare dso_local i32 @ar9300_get_delta_slope_values(%struct.ath_hal*, i32, i32*, i32*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
