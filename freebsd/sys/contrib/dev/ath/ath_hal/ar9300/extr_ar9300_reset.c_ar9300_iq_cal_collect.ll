; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_iq_cal_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_iq_cal_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64*, i8**, i8**, i32 }

@HAL_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"%d: Chn %d Reg Offset(0x%04x)pmi=0x%08x; Reg Offset(0x%04x)pmq=0x%08x; Reg Offset (0x%04x)iqcm=0x%08x;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_iq_cal_collect(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_9300*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %7)
  store %struct.ath_hal_9300* %8, %struct.ath_hal_9300** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %82, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %85

13:                                               ; preds = %9
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @AR_PHY_CAL_MEAS_0(i32 %15)
  %17 = call i8* @OS_REG_READ(%struct.ath_hal* %14, i64 %16)
  %18 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %19 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %18, i32 0, i32 2
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* %17, i8** %23, align 8
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @AR_PHY_CAL_MEAS_1(i32 %25)
  %27 = call i8* @OS_REG_READ(%struct.ath_hal* %24, i64 %26)
  %28 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %29 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %27, i8** %33, align 8
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @AR_PHY_CAL_MEAS_2(i32 %35)
  %37 = call i8* @OS_REG_READ(%struct.ath_hal* %34, i64 %36)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %40 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %38, i64* %44, align 8
  %45 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %46 = load i32, i32* @HAL_DEBUG_CALIBRATE, align 4
  %47 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %48 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @AR_PHY_CAL_MEAS_0(i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %55 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @AR_PHY_CAL_MEAS_1(i32 %61)
  %63 = trunc i64 %62 to i32
  %64 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %65 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @AR_PHY_CAL_MEAS_2(i32 %71)
  %73 = trunc i64 %72 to i32
  %74 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %5, align 8
  %75 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @HALDEBUG(%struct.ath_hal* %45, i32 %46, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %53, i8* %60, i32 %63, i8* %70, i32 %73, i64 %80)
  br label %82

82:                                               ; preds = %13
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %9

85:                                               ; preds = %9
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i8* @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i64 @AR_PHY_CAL_MEAS_0(i32) #1

declare dso_local i64 @AR_PHY_CAL_MEAS_1(i32) #1

declare dso_local i64 @AR_PHY_CAL_MEAS_2(i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i32, i32, i32, i8*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
