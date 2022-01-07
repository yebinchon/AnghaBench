; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_tx_force_gain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_paprd.c_ar9300_tx_force_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32* }

@AR_PHY_TX_FORCED_GAIN = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_TXBB1DBGAIN = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_TXBB6DBGAIN = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_TXMXRGAIN = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNA = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNB = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNC = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGND = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCED_ENABLE_PAL = common dso_local global i32 0, align 4
@AR_PHY_TX_FORCED_GAIN_FORCE_TX_GAIN = common dso_local global i32 0, align 4
@AR_PHY_TPC_1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_1_FORCED_DAC_GAIN = common dso_local global i32 0, align 4
@AR_PHY_TPC_1_FORCE_DAC_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32)* @ar9300_tx_force_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_tx_force_gain(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 3
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 5
  %30 = and i32 %29, 15
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 9
  %33 = and i32 %32, 15
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 13
  %36 = and i32 %35, 15
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 17
  %39 = and i32 %38, 15
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 21
  %42 = and i32 %41, 3
  store i32 %42, i32* %12, align 4
  %43 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %44 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %45 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_TXBB1DBGAIN, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %49 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %50 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_TXBB6DBGAIN, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %55 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_TXMXRGAIN, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %60 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNA, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %64 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %65 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNB, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %69 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %70 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGNC, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %74 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %75 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_PADRVGND, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %79 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %80 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCED_ENABLE_PAL, align 4
  %81 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %78, i32 %79, i32 %80, i32 0)
  %82 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %83 = load i32, i32* @AR_PHY_TX_FORCED_GAIN, align 4
  %84 = load i32, i32* @AR_PHY_TX_FORCED_GAIN_FORCE_TX_GAIN, align 4
  %85 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %87 = load i32, i32* @AR_PHY_TPC_1, align 4
  %88 = load i32, i32* @AR_PHY_TPC_1_FORCED_DAC_GAIN, align 4
  %89 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %91 = load i32, i32* @AR_PHY_TPC_1, align 4
  %92 = load i32, i32* @AR_PHY_TPC_1_FORCE_DAC_GAIN, align 4
  %93 = call i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal* %90, i32 %91, i32 %92, i32 0)
  ret void
}

declare dso_local %struct.TYPE_2__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD_ALT(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
