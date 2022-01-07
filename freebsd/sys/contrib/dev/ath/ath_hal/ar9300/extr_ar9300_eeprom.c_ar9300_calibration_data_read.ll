; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_calibration_data_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_calibration_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_calibration_data_read(%struct.ath_hal* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %11 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %32 [
    i32 130, label %14
    i32 131, label %20
    i32 128, label %26
  ]

14:                                               ; preds = %4
  %15 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @ar9300_calibration_data_read_flash(%struct.ath_hal* %15, i64 %16, i32* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %34

20:                                               ; preds = %4
  %21 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ar9300_calibration_data_read_eeprom(%struct.ath_hal* %21, i64 %22, i32* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %34

26:                                               ; preds = %4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ar9300_calibration_data_read_otp(%struct.ath_hal* %27, i64 %28, i32* %29, i32 %30, i32 1)
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @AH_FALSE, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %26, %20, %14
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_2__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_calibration_data_read_flash(%struct.ath_hal*, i64, i32*, i32) #1

declare dso_local i32 @ar9300_calibration_data_read_eeprom(%struct.ath_hal*, i64, i32*, i32) #1

declare dso_local i32 @ar9300_calibration_data_read_otp(%struct.ath_hal*, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
