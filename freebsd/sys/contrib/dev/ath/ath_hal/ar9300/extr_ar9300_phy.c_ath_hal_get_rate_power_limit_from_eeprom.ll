; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_phy.c_ath_hal_get_rate_power_limit_from_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_phy.c_ath_hal_get_rate_power_limit_from_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i64 }

@AR9300_MAGIC = common dso_local global i64 0, align 8
@ar9300_rate_size = common dso_local global i32 0, align 4
@AR9300_MAX_RATE_POWER = common dso_local global i64 0, align 8
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_get_rate_power_limit_from_eeprom(%struct.ath_hal* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AR9300_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %4
  %18 = load i32, i32* @ar9300_rate_size, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i64*, i64** %7, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @AR9300_MAX_RATE_POWER, align 8
  %24 = load i64*, i64** %8, align 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ar9300_set_target_power_from_eeprom(%struct.ath_hal* %25, i32 %26, i64* %21)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %61, %17
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ar9300_rate_size, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %21, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %21, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %7, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %32
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %21, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %21, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %8, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %28

64:                                               ; preds = %28
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  br label %69

66:                                               ; preds = %4
  %67 = load i64*, i64** %7, align 8
  store i64 0, i64* %67, align 8
  %68 = load i64*, i64** %8, align 8
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %64
  %70 = load i32, i32* @HAL_OK, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ar9300_set_target_power_from_eeprom(%struct.ath_hal*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
