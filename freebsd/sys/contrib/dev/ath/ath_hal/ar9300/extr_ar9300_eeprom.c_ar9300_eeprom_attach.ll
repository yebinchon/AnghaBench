; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i64, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }

@calibration_data_none = common dso_local global i32 0, align 4
@calibration_data_try = common dso_local global i32 0, align 4
@ar9300_eeprom_get_spur_chan = common dso_local global i32 0, align 4
@HAL_EIO = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4
@AR9300_OPFLAGS_11G = common dso_local global i8* null, align 8
@FLASH_BASE_CALDATA_OFFSET = common dso_local global i32 0, align 4
@ar9300_eeprom_template_default = common dso_local global i64 0, align 8
@ar9300_template_ap121 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ar9300_template_generic = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@calibration_data_flash = common dso_local global i32 0, align 4
@calibration_data_source = common dso_local global i32 0, align 4
@default9300 = common dso_local global %struct.TYPE_12__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_eeprom_attach(%struct.ath_hal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ath_hal_9300*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %5)
  store %struct.ath_hal_9300* %6, %struct.ath_hal_9300** %4, align 8
  %7 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %8 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %12 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %11, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %14 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %13, i32 0, i32 4
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @calibration_data_none, align 4
  %16 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %17 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %19 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %18, i32 0, i32 9
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @calibration_data_try, align 4
  %21 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %22 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %24 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = call i32 @ar9300_flash_map(%struct.ath_hal* %25)
  %27 = load i32, i32* @ar9300_eeprom_get_spur_chan, align 4
  %28 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %29 = call %struct.TYPE_13__* @AH_PRIVATE(%struct.ath_hal* %28)
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %32 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %31, i32 0, i32 5
  store i32 1, i32* %32, align 4
  %33 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %34 = call i64 @AR_SREV_HORNET(%struct.ath_hal* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %1
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = call i64 @AR_SREV_WASP(%struct.ath_hal* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40, %36, %1
  %49 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %50 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %57 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %60 = call i32 @ar9300_eeprom_restore(%struct.ath_hal* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @HAL_EIO, align 4
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @HAL_OK, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_flash_map(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_13__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_eeprom_restore(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
