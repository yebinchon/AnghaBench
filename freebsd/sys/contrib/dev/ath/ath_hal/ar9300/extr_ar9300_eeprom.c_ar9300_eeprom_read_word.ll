; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_read_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR9300_EEPROM_OFFSET = common dso_local global i64 0, align 8
@AR9300_EEPROM_S = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_BUSY = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_PROT_ACCESS = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_VAL = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_eeprom_read_word(%struct.ath_hal* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %9 = call i64 @AR_SREV_OSPREY(%struct.ath_hal* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %13 = call i64 @AR_SREV_POSEIDON(%struct.ath_hal* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %11, %3
  %16 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %17 = load i64, i64* @AR9300_EEPROM_OFFSET, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @AR9300_EEPROM_S, align 4
  %20 = shl i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = call i32 @OS_REG_READ(%struct.ath_hal* %16, i64 %22)
  %24 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %25 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %26 = load i32, i32* @AR_EEPROM_STATUS_DATA, align 4
  %27 = call i64 @AR_HOSTIF_REG(%struct.ath_hal* %25, i32 %26)
  %28 = load i32, i32* @AR_EEPROM_STATUS_DATA_BUSY, align 4
  %29 = load i32, i32* @AR_EEPROM_STATUS_DATA_PROT_ACCESS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ath_hal_wait(%struct.ath_hal* %24, i64 %27, i32 %30, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %15
  %34 = load i32, i32* @AH_FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %48

35:                                               ; preds = %15
  %36 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %37 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %38 = load i32, i32* @AR_EEPROM_STATUS_DATA, align 4
  %39 = call i64 @AR_HOSTIF_REG(%struct.ath_hal* %37, i32 %38)
  %40 = call i32 @OS_REG_READ(%struct.ath_hal* %36, i64 %39)
  %41 = load i32, i32* @AR_EEPROM_STATUS_DATA_VAL, align 4
  %42 = call i64 @MS(i32 %40, i32 %41)
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* @AH_TRUE, align 4
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %11
  %46 = load i64*, i64** %7, align 8
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @AH_FALSE, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %35, %33
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @AR_SREV_OSPREY(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i32 @ath_hal_wait(%struct.ath_hal*, i64, i32, i32) #1

declare dso_local i64 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i64 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
