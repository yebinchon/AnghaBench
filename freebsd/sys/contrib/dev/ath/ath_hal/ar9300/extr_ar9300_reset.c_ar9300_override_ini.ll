; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_override_ini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_override_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4
@AR_DIAG_RX_ABORT = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_ADHOC_MCAST_KEYID_ENABLE = common dso_local global i32 0, align 4
@AR_BUG_58603_FIX_ENABLE = common dso_local global i32 0, align 4
@AR_AGG_WEP_ENABLE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i64 0, align 8
@AR_CFG = common dso_local global i32 0, align 4
@AR_CFG_MISSING_TX_INTR_FIX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar9300_override_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_override_ini(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = load i32, i32* @AR_DIAG_SW, align 4
  %12 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %13 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %10, i32 %11, i32 %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %18 = call i32 @OS_REG_READ(%struct.ath_hal* %16, i32 %17)
  %19 = load i32, i32* @AR_ADHOC_MCAST_KEYID_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AR_BUG_58603_FIX_ENABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AR_AGG_WEP_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @OS_REG_WRITE(%struct.ath_hal* %22, i32 %23, i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AH_FALSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %37 = load i32, i32* @AR_CFG, align 4
  %38 = load i32, i32* @AR_CFG_MISSING_TX_INTR_FIX_ENABLE, align 4
  %39 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %2
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = call i32 @ar9300_hwgreentx_set_pal_spare(%struct.ath_hal* %41, i32 1)
  ret void
}

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar9300_hwgreentx_set_pal_spare(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
