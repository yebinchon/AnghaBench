; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_x_lNA_bias_strength_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_x_lNA_bias_strength_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }

@AR_PHY_65NM_CH0_RXTX4 = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXTX4_XLNA_BIAS = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH1_RXTX4 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH2_RXTX4 = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar9300_x_lNA_bias_strength_apply(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = call %struct.TYPE_10__* @AH9300(%struct.ath_hal* %8)
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 64
  %16 = ashr i32 %15, 6
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %2
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = call i64 @AR_SREV_OSPREY(%struct.ath_hal* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 3
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4, align 4
  %40 = load i32, i32* @AR_PHY_65NM_RXTX4_XLNA_BIAS, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 2
  %45 = and i32 %44, 3
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = load i32, i32* @AR_PHY_65NM_CH1_RXTX4, align 4
  %48 = load i32, i32* @AR_PHY_65NM_RXTX4_XLNA_BIAS, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 4
  %53 = and i32 %52, 3
  store i32 %53, i32* %6, align 4
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = load i32, i32* @AR_PHY_65NM_CH2_RXTX4, align 4
  %56 = load i32, i32* @AR_PHY_65NM_RXTX4_XLNA_BIAS, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %35, %18
  br label %60

60:                                               ; preds = %59, %2
  %61 = load i64, i64* @AH_TRUE, align 8
  ret i64 %61
}

declare dso_local %struct.TYPE_10__* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_OSPREY(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
