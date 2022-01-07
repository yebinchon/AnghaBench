; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fm_rtc.c_FM_RTC_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fm_rtc.c_FM_RTC_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.rtc_cfg*, i32, i32, %struct.rtc_regs* }
%struct.rtc_cfg = type { i64, i32, i64, i32 }
%struct.rtc_regs = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Init Parameters are not Valid\00", align 1
@E_FMAN_RTC_SOURCE_CLOCK_SYSTEM = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ACCUMULATOR_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Invalid relation between source and destination clocks. Should be larger than 1.0001\00", align 1
@FM_RTC_NUM_OF_ALARMS = common dso_local global i32 0, align 4
@FM_RTC_NUM_OF_PERIODIC_PULSES = common dso_local global i32 0, align 4
@FM_RTC_NUM_OF_EXT_TRIGGERS = common dso_local global i32 0, align 4
@e_FM_MOD_TMR = common dso_local global i32 0, align 4
@e_FM_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@RtcExceptions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_RTC_Init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.rtc_cfg*, align 8
  %5 = alloca %struct.rtc_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.rtc_cfg*, %struct.rtc_cfg** %13, align 8
  store %struct.rtc_cfg* %14, %struct.rtc_cfg** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load %struct.rtc_regs*, %struct.rtc_regs** %16, align 8
  store %struct.rtc_regs* %17, %struct.rtc_regs** %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = call i64 @CheckInitParameters(%struct.TYPE_4__* %18)
  %20 = load i64, i64* @E_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @MAJOR, align 4
  %24 = load i32, i32* @E_CONFLICT, align 4
  %25 = call i32 @RETURN_ERROR(i32 %23, i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load %struct.rtc_cfg*, %struct.rtc_cfg** %28, align 8
  %30 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @E_FMAN_RTC_SOURCE_CLOCK_SYSTEM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load %struct.rtc_cfg*, %struct.rtc_cfg** %36, align 8
  %38 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %50

42:                                               ; preds = %26
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @FmGetMacClockFreq(i32 %45)
  %47 = trunc i64 %46 to i32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load %struct.rtc_cfg*, %struct.rtc_cfg** %57, align 8
  %59 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 1000, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %82

69:                                               ; preds = %55, %50
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @ACCUMULATOR_OVERFLOW, align 4
  %72 = mul nsw i32 %71, 1000
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %75, %78
  %80 = call i64 @DIV_CEIL(i32 %72, i32 %79)
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %69, %62
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 10000, %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %86, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp sle i32 %91, 10001
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load i32, i32* @MAJOR, align 4
  %95 = load i32, i32* @E_CONFLICT, align 4
  %96 = call i32 @RETURN_ERROR(i32 %94, i32 %95, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %82
  %98 = load %struct.rtc_cfg*, %struct.rtc_cfg** %4, align 8
  %99 = load %struct.rtc_regs*, %struct.rtc_regs** %5, align 8
  %100 = load i32, i32* @FM_RTC_NUM_OF_ALARMS, align 4
  %101 = load i32, i32* @FM_RTC_NUM_OF_PERIODIC_PULSES, align 4
  %102 = load i32, i32* @FM_RTC_NUM_OF_EXT_TRIGGERS, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @fman_rtc_init(%struct.rtc_cfg* %98, %struct.rtc_regs* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @e_FM_MOD_TMR, align 4
  %113 = load i32, i32* @e_FM_INTR_TYPE_NORMAL, align 4
  %114 = load i32, i32* @RtcExceptions, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = call i32 @FmRegisterIntr(i32 %111, i32 %112, i32 0, i32 %113, i32 %114, %struct.TYPE_4__* %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load %struct.rtc_cfg*, %struct.rtc_cfg** %118, align 8
  %120 = call i32 @XX_Free(%struct.rtc_cfg* %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  store %struct.rtc_cfg* null, %struct.rtc_cfg** %122, align 8
  %123 = load i64, i64* @E_OK, align 8
  ret i64 %123
}

declare dso_local i64 @CheckInitParameters(%struct.TYPE_4__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @FmGetMacClockFreq(i32) #1

declare dso_local i64 @DIV_CEIL(i32, i32) #1

declare dso_local i32 @fman_rtc_init(%struct.rtc_cfg*, %struct.rtc_regs*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FmRegisterIntr(i32, i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @XX_Free(%struct.rtc_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
