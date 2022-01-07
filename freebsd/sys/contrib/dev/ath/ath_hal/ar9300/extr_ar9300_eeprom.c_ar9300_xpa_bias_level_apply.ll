; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_xpa_bias_level_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_xpa_bias_level_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_HORNET_CH0_TOP2 = common dso_local global i32 0, align 4
@AR_HORNET_CH0_TOP2_XPABIASLVL = common dso_local global i32 0, align 4
@AR_SCORPION_CH0_TOP = common dso_local global i32 0, align 4
@AR_SCORPION_CH0_TOP_XPABIASLVL = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TOP_JUPITER = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TOP_XPABIASLVL = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_TOP = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_THERM = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_THERM_XPABIASLVL_MSB = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_THERM_XPASHORT2GND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_xpa_bias_level_apply(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ar9300_xpa_bias_level_get(%struct.ath_hal* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %10 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = call i64 @AR_SREV_WASP(%struct.ath_hal* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %12, %2
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = load i32, i32* @AR_HORNET_CH0_TOP2, align 4
  %23 = load i32, i32* @AR_HORNET_CH0_TOP2_XPABIASLVL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %21, i32 %22, i32 %23, i32 %24)
  br label %68

26:                                               ; preds = %16
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %32 = load i32, i32* @AR_SCORPION_CH0_TOP, align 4
  %33 = load i32, i32* @AR_SCORPION_CH0_TOP_XPABIASLVL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %31, i32 %32, i32 %33, i32 %34)
  br label %67

36:                                               ; preds = %26
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %36
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = load i32, i32* @AR_PHY_65NM_CH0_TOP_JUPITER, align 4
  %47 = load i32, i32* @AR_PHY_65NM_CH0_TOP_XPABIASLVL, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %45, i32 %46, i32 %47, i32 %48)
  br label %66

50:                                               ; preds = %40
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = load i32, i32* @AR_PHY_65NM_CH0_TOP, align 4
  %53 = load i32, i32* @AR_PHY_65NM_CH0_TOP_XPABIASLVL, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %57 = load i32, i32* @AR_PHY_65NM_CH0_THERM, align 4
  %58 = load i32, i32* @AR_PHY_65NM_CH0_THERM_XPABIASLVL_MSB, align 4
  %59 = load i32, i32* %5, align 4
  %60 = ashr i32 %59, 2
  %61 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %56, i32 %57, i32 %58, i32 %60)
  %62 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %63 = load i32, i32* @AR_PHY_65NM_CH0_THERM, align 4
  %64 = load i32, i32* @AR_PHY_65NM_CH0_THERM_XPASHORT2GND, align 4
  %65 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %62, i32 %63, i32 %64, i32 1)
  br label %66

66:                                               ; preds = %50, %44
  br label %67

67:                                               ; preds = %66, %30
  br label %68

68:                                               ; preds = %67, %20
  ret i32 0
}

declare dso_local i32 @ar9300_xpa_bias_level_get(%struct.ath_hal*, i32) #1

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
