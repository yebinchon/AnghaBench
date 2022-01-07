; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_drive_strength_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_drive_strength_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }

@EEP_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_BIAS1 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_BIAS2 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_BIAS4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_drive_strength_apply(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_9300*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %6)
  store %struct.ath_hal_9300* %7, %struct.ath_hal_9300** %3, align 8
  %8 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %3, align 8
  %9 = load i32, i32* @EEP_DRIVE_STRENGTH, align 4
  %10 = call i32 @ar9300_eeprom_get(%struct.ath_hal_9300* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %77

13:                                               ; preds = %1
  %14 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %15 = load i32, i32* @AR_PHY_65NM_CH0_BIAS1, align 4
  %16 = call i64 @OS_REG_READ(%struct.ath_hal* %14, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, -16777153
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %19, 10485760
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = or i64 %21, 1310720
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = or i64 %23, 163840
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = or i64 %25, 20480
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %27, 2560
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = or i64 %29, 320
  store i64 %30, i64* %5, align 8
  %31 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %32 = load i32, i32* @AR_PHY_65NM_CH0_BIAS1, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 %32, i64 %33)
  %35 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %36 = load i32, i32* @AR_PHY_65NM_CH0_BIAS2, align 4
  %37 = call i64 @OS_REG_READ(%struct.ath_hal* %35, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %38, 31
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = or i64 %40, -1610612736
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = or i64 %42, 335544320
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = or i64 %44, 41943040
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = or i64 %46, 5242880
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = or i64 %48, 655360
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = or i64 %50, 81920
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = or i64 %52, 10240
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = or i64 %54, 1280
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = or i64 %56, 160
  store i64 %57, i64* %5, align 8
  %58 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %59 = load i32, i32* @AR_PHY_65NM_CH0_BIAS2, align 4
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @OS_REG_WRITE(%struct.ath_hal* %58, i32 %59, i64 %60)
  %62 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %63 = load i32, i32* @AR_PHY_65NM_CH0_BIAS4, align 4
  %64 = call i64 @OS_REG_READ(%struct.ath_hal* %62, i32 %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = and i64 %65, 8388607
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = or i64 %67, -1610612736
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = or i64 %69, 335544320
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = or i64 %71, 41943040
  store i64 %72, i64* %5, align 8
  %73 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %74 = load i32, i32* @AR_PHY_65NM_CH0_BIAS4, align 4
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @OS_REG_WRITE(%struct.ath_hal* %73, i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_eeprom_get(%struct.ath_hal_9300*, i32) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
