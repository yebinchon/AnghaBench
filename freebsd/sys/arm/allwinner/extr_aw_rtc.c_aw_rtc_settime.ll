; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rtc.c_aw_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rtc.c_aw_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }
%struct.aw_rtc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.clocktime = type { i64, i32, i32, i32, i32, i32 }

@HALF_OF_SEC_NS = common dso_local global i64 0, align 8
@YEAR_MIN = common dso_local global i64 0, align 8
@YEAR_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"could not set time, year out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOSC_CTRL_REG = common dso_local global i32 0, align 4
@LOSC_BUSY_MASK = common dso_local global i32 0, align 4
@RTC_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not set time, RTC busy\0A\00", align 1
@YEAR_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"could not set date, RTC busy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @aw_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_rtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.aw_rtc_softc*, align 8
  %7 = alloca %struct.clocktime, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.aw_rtc_softc* @device_get_softc(i32 %11)
  store %struct.aw_rtc_softc* %12, %struct.aw_rtc_softc** %6, align 8
  %13 = load %struct.timespec*, %struct.timespec** %5, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HALF_OF_SEC_NS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.timespec*, %struct.timespec** %5, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.timespec*, %struct.timespec** %5, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.timespec*, %struct.timespec** %5, align 8
  %27 = call i32 @clock_ts_to_ct(%struct.timespec* %26, %struct.clocktime* %7)
  %28 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @YEAR_MIN, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @YEAR_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %23
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %159

41:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %44 = load i32, i32* @LOSC_CTRL_REG, align 4
  %45 = call i32 @RTC_READ(%struct.aw_rtc_softc* %43, i32 %44)
  %46 = load i32, i32* @LOSC_BUSY_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @RTC_TIMEOUT, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %159

57:                                               ; preds = %49
  %58 = call i32 @DELAY(i32 1)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %64 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %65 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @RTC_WRITE(%struct.aw_rtc_softc* %63, i32 %68, i32 0)
  %70 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SET_DAY_VALUE(i32 %71)
  %73 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SET_MON_VALUE(i32 %74)
  %76 = or i32 %72, %75
  %77 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @YEAR_OFFSET, align 8
  %80 = sub nsw i64 %78, %79
  %81 = call i32 @SET_YEAR_VALUE(i64 %80)
  %82 = or i32 %76, %81
  %83 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @IS_LEAP_YEAR(i64 %84)
  %86 = call i32 @SET_LEAP_VALUE(i32 %85)
  %87 = or i32 %82, %86
  store i32 %87, i32* %9, align 4
  %88 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @SET_SEC_VALUE(i32 %89)
  %91 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SET_MIN_VALUE(i32 %92)
  %94 = or i32 %90, %93
  %95 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @SET_HOUR_VALUE(i32 %96)
  %98 = or i32 %94, %97
  store i32 %98, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %116, %62
  %100 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %101 = load i32, i32* @LOSC_CTRL_REG, align 4
  %102 = call i32 @RTC_READ(%struct.aw_rtc_softc* %100, i32 %101)
  %103 = load i32, i32* @LOSC_BUSY_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @RTC_TIMEOUT, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %3, align 4
  br label %159

114:                                              ; preds = %106
  %115 = call i32 @DELAY(i32 1)
  br label %116

116:                                              ; preds = %114
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %99

119:                                              ; preds = %99
  %120 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %121 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %122 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @RTC_WRITE(%struct.aw_rtc_softc* %120, i32 %125, i32 %126)
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %145, %119
  %129 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %130 = load i32, i32* @LOSC_CTRL_REG, align 4
  %131 = call i32 @RTC_READ(%struct.aw_rtc_softc* %129, i32 %130)
  %132 = load i32, i32* @LOSC_BUSY_MASK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %128
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @RTC_TIMEOUT, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  store i32 %142, i32* %3, align 4
  br label %159

143:                                              ; preds = %135
  %144 = call i32 @DELAY(i32 1)
  br label %145

145:                                              ; preds = %143
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %128

148:                                              ; preds = %128
  %149 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %150 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %6, align 8
  %151 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @RTC_WRITE(%struct.aw_rtc_softc* %149, i32 %154, i32 %155)
  %157 = load i32, i32* @RTC_TIMEOUT, align 4
  %158 = call i32 @DELAY(i32 %157)
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %148, %139, %110, %53, %37
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.aw_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RTC_READ(%struct.aw_rtc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @RTC_WRITE(%struct.aw_rtc_softc*, i32, i32) #1

declare dso_local i32 @SET_DAY_VALUE(i32) #1

declare dso_local i32 @SET_MON_VALUE(i32) #1

declare dso_local i32 @SET_YEAR_VALUE(i64) #1

declare dso_local i32 @SET_LEAP_VALUE(i32) #1

declare dso_local i32 @IS_LEAP_YEAR(i64) #1

declare dso_local i32 @SET_SEC_VALUE(i32) #1

declare dso_local i32 @SET_MIN_VALUE(i32) #1

declare dso_local i32 @SET_HOUR_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
