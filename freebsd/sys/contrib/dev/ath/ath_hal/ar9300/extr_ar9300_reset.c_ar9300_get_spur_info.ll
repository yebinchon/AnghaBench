; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_get_spur_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_get_spur_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64** }

@AR_EEPROM_MODAL_SPURS = common dso_local global i32 0, align 4
@AR_NO_SPUR = common dso_local global i64 0, align 8
@HAL_DEBUG_ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"1. get spur %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"2. get spur %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_get_spur_info(%struct.ath_hal* %0, i32* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %20, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i64*, i64** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %25 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %118, %23
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @AR_EEPROM_MODAL_SPURS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %121

33:                                               ; preds = %29
  %34 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %35 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64**, i64*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64*, i64** %37, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AR_NO_SPUR, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %33
  %47 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %48 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64**, i64*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64*, i64** %50, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 %56, i64* %61, align 8
  %62 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %63 = load i32, i32* @HAL_DEBUG_ANI, align 4
  %64 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %65 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64**, i64*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @HALDEBUG(%struct.ath_hal* %62, i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %46, %33
  %76 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %77 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %76)
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64**, i64*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AR_NO_SPUR, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %75
  %89 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %90 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64**, i64*** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64*, i64** %92, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  store i64 %98, i64* %103, align 8
  %104 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %105 = load i32, i32* @HAL_DEBUG_ANI, align 4
  %106 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %107 = call %struct.TYPE_4__* @AH9300(%struct.ath_hal* %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64**, i64*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64*, i64** %109, i64 %111
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @HALDEBUG(%struct.ath_hal* %104, i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %88, %75
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %29

121:                                              ; preds = %29
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @AH9300(%struct.ath_hal*) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
