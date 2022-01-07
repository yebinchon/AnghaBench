; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_restore_something.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_eeprom_restore_something.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i64, i8* }

@calibration_data_none = common dso_local global i8* null, align 8
@Ar9300_eeprom_template_preference = common dso_local global i32 0, align 4
@ar9300_eeprom_template_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32*, i32)* @ar9300_eeprom_restore_something to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_eeprom_restore_something(%struct.ath_hal* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i8*, i8** @calibration_data_none, align 8
  %14 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %15 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i8* %13, i8** %16, align 8
  %17 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %18 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @Ar9300_eeprom_template_preference, align 4
  %21 = call i32* @ar9300_eeprom_struct_default_find_by_id(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @OS_MEMCPY(i32* %25, i32* %26, i32 %27)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %24, %12
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i8*, i8** @calibration_data_none, align 8
  %35 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %36 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %39 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @ar9300_eeprom_template_default, align 4
  %42 = call i32* @ar9300_eeprom_struct_default_find_by_id(i32 %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @OS_MEMCPY(i32* %46, i32* %47, i32 %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %33
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = load i8*, i8** @calibration_data_none, align 8
  %56 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %57 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %60 = call %struct.TYPE_2__* @AH9300(%struct.ath_hal* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = call i32 (...) @ar9300_eeprom_struct_default_many()
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %78, %54
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = call i32* @ar9300_eeprom_struct_default(i32 %68)
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @OS_MEMCPY(i32* %73, i32* %74, i32 %75)
  store i32 0, i32* %9, align 4
  br label %81

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %7, align 4
  br label %64

81:                                               ; preds = %72, %64
  br label %82

82:                                               ; preds = %81, %51
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_2__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32* @ar9300_eeprom_struct_default_find_by_id(i32) #1

declare dso_local i32 @OS_MEMCPY(i32*, i32*, i32) #1

declare dso_local i32 @ar9300_eeprom_struct_default_many(...) #1

declare dso_local i32* @ar9300_eeprom_struct_default(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
