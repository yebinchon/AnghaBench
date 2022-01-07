; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fm_rtc.c_CheckInitParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fm_rtc.c_CheckInitParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.rtc_cfg* }
%struct.rtc_cfg = type { i64, i64*, i64* }

@E_FMAN_RTC_SOURCE_CLOCK_EXTERNAL = common dso_local global i64 0, align 8
@E_FMAN_RTC_SOURCE_CLOCK_SYSTEM = common dso_local global i64 0, align 8
@E_FMAN_RTC_SOURCE_CLOCK_OSCILATOR = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Source clock undefined\00", align 1
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Divisor for output clock (should be positive)\00", align 1
@FM_RTC_NUM_OF_ALARMS = common dso_local global i32 0, align 4
@E_FMAN_RTC_ALARM_POLARITY_ACTIVE_LOW = common dso_local global i64 0, align 8
@E_FMAN_RTC_ALARM_POLARITY_ACTIVE_HIGH = common dso_local global i64 0, align 8
@E_INVALID_SELECTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Alarm %d signal polarity\00", align 1
@FM_RTC_NUM_OF_EXT_TRIGGERS = common dso_local global i32 0, align 4
@E_FMAN_RTC_TRIGGER_ON_FALLING_EDGE = common dso_local global i64 0, align 8
@E_FMAN_RTC_TRIGGER_ON_RISING_EDGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Trigger %d signal polarity\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @CheckInitParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckInitParameters(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.rtc_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load %struct.rtc_cfg*, %struct.rtc_cfg** %6, align 8
  store %struct.rtc_cfg* %7, %struct.rtc_cfg** %3, align 8
  %8 = load %struct.rtc_cfg*, %struct.rtc_cfg** %3, align 8
  %9 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @E_FMAN_RTC_SOURCE_CLOCK_EXTERNAL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.rtc_cfg*, %struct.rtc_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @E_FMAN_RTC_SOURCE_CLOCK_SYSTEM, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.rtc_cfg*, %struct.rtc_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @E_FMAN_RTC_SOURCE_CLOCK_OSCILATOR, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @MAJOR, align 4
  %27 = load i32, i32* @E_INVALID_CLOCK, align 4
  %28 = call i32 @RETURN_ERROR(i32 %26, i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %19, %13, %1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i32, i32* @E_INVALID_VALUE, align 4
  %37 = call i32 @RETURN_ERROR(i32 %35, i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %29
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @FM_RTC_NUM_OF_ALARMS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = load %struct.rtc_cfg*, %struct.rtc_cfg** %3, align 8
  %45 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @E_FMAN_RTC_ALARM_POLARITY_ACTIVE_LOW, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %43
  %54 = load %struct.rtc_cfg*, %struct.rtc_cfg** %3, align 8
  %55 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @E_FMAN_RTC_ALARM_POLARITY_ACTIVE_HIGH, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load i32, i32* @MAJOR, align 4
  %65 = load i32, i32* @E_INVALID_SELECTION, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @RETURN_ERROR(i32 %64, i32 %65, i8* %68)
  br label %70

70:                                               ; preds = %63, %53, %43
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %39

74:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %107, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @FM_RTC_NUM_OF_EXT_TRIGGERS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %75
  %80 = load %struct.rtc_cfg*, %struct.rtc_cfg** %3, align 8
  %81 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @E_FMAN_RTC_TRIGGER_ON_FALLING_EDGE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %79
  %90 = load %struct.rtc_cfg*, %struct.rtc_cfg** %3, align 8
  %91 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @E_FMAN_RTC_TRIGGER_ON_RISING_EDGE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load i32, i32* @MAJOR, align 4
  %101 = load i32, i32* @E_INVALID_SELECTION, align 4
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @RETURN_ERROR(i32 %100, i32 %101, i8* %104)
  br label %106

106:                                              ; preds = %99, %89, %79
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %75

110:                                              ; preds = %75
  %111 = load i32, i32* @E_OK, align 4
  ret i32 %111
}

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
