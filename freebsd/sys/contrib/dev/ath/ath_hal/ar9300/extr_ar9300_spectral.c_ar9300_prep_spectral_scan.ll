; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_prep_spectral_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_spectral.c_ar9300_prep_spectral_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i64 }

@AR_PHY_ERR = common dso_local global i32 0, align 4
@HAL_PHYERR_SPECTRAL = common dso_local global i32 0, align 4
@MAX_CCA_THRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_prep_spectral_scan(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %3 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %4 = call i32 @ar9300_disable_radar(%struct.ath_hal* %3)
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call i32 @ar9300_classify_strong_bins(%struct.ath_hal* %5)
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = call i32 @ar9300_disable_dc_offset(%struct.ath_hal* %7)
  %9 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %10 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %17 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal* %15, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %24 = call i32 @ar9300_enable_cck_detect(%struct.ath_hal* %23)
  br label %25

25:                                               ; preds = %22, %14, %1
  %26 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %27 = load i32, i32* @AR_PHY_ERR, align 4
  %28 = load i32, i32* @HAL_PHYERR_SPECTRAL, align 4
  %29 = call i32 @OS_REG_WRITE(%struct.ath_hal* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @ar9300_disable_radar(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_classify_strong_bins(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_disable_dc_offset(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IS_5GHZ_FAST_CLOCK_EN(%struct.ath_hal*, i64) #1

declare dso_local i32 @ar9300_enable_cck_detect(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
