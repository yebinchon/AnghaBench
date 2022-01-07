; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_selfgen_tpc_reg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_selfgen_tpc_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@ALL_TARGET_LEGACY_1L_5L = common dso_local global i64 0, align 8
@AR_TPC_ACK = common dso_local global i32 0, align 4
@AR_TPC_CTS = common dso_local global i32 0, align 4
@AR_TPC_CHIRP = common dso_local global i32 0, align 4
@AR_TPC_RPT = common dso_local global i32 0, align 4
@ALL_TARGET_LEGACY_6_24 = common dso_local global i64 0, align 8
@AR_TPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*, i32*)* @ar9300_selfgen_tpc_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_selfgen_tpc_reg_write(%struct.ath_hal* %0, %struct.ieee80211_channel* %1, i32* %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %9 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* @ALL_TARGET_LEGACY_1L_5L, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AR_TPC_ACK, align 4
  %17 = call i32 @SM(i32 %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* @ALL_TARGET_LEGACY_1L_5L, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AR_TPC_CTS, align 4
  %23 = call i32 @SM(i32 %21, i32 %22)
  %24 = or i32 %17, %23
  %25 = load i32, i32* @AR_TPC_CHIRP, align 4
  %26 = call i32 @SM(i32 63, i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @AR_TPC_RPT, align 4
  %29 = call i32 @SM(i32 63, i32 %28)
  %30 = or i32 %27, %29
  store i32 %30, i32* %7, align 4
  br label %51

31:                                               ; preds = %3
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* @ALL_TARGET_LEGACY_6_24, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AR_TPC_ACK, align 4
  %37 = call i32 @SM(i32 %35, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i64, i64* @ALL_TARGET_LEGACY_6_24, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AR_TPC_CTS, align 4
  %43 = call i32 @SM(i32 %41, i32 %42)
  %44 = or i32 %37, %43
  %45 = load i32, i32* @AR_TPC_CHIRP, align 4
  %46 = call i32 @SM(i32 63, i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* @AR_TPC_RPT, align 4
  %49 = call i32 @SM(i32 63, i32 %48)
  %50 = or i32 %47, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %31, %11
  %52 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %53 = load i32, i32* @AR_TPC, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @OS_REG_WRITE(%struct.ath_hal* %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
