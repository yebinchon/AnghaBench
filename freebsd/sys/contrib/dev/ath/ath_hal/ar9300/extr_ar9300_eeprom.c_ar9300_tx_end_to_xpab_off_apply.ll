; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_tx_end_to_xpab_off_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_tx_end_to_xpab_off_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_XPA_TIMING_CTL = common dso_local global i32 0, align 4
@AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF = common dso_local global i32 0, align 4
@AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32)* @ar9300_tx_end_to_xpab_off_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_tx_end_to_xpab_off_apply(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ar9300_tx_end_to_xpa_off_get(%struct.ath_hal* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = call i64 @AR_SREV_OSPREY(%struct.ath_hal* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = call i64 @AR_SREV_AR9580(%struct.ath_hal* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = call i64 @AR_SREV_WASP(%struct.ath_hal* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16, %12, %2
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = load i32, i32* @AR_PHY_XPA_TIMING_CTL, align 4
  %23 = load i32, i32* @AR_PHY_XPA_TIMING_CTL_TX_END_XPAB_OFF, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %27 = load i32, i32* @AR_PHY_XPA_TIMING_CTL, align 4
  %28 = load i32, i32* @AR_PHY_XPA_TIMING_CTL_TX_END_XPAA_OFF, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %20, %16
  ret i32 0
}

declare dso_local i32 @ar9300_tx_end_to_xpa_off_get(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_OSPREY(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_AR9580(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
