; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_rtc.c_as3722_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_rtc.c_as3722_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.as3722_softc = type { i32 }
%struct.clocktime = type { i64, i64, i64, i64, i64, i64 }

@AS3722_RTC_START_YEAR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AS3722_RTC_SECOND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to write RTC data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_rtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.as3722_softc*, align 8
  %7 = alloca %struct.clocktime, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.as3722_softc* @device_get_softc(i32 %10)
  store %struct.as3722_softc* %11, %struct.as3722_softc** %6, align 8
  %12 = load %struct.timespec*, %struct.timespec** %5, align 8
  %13 = call i32 @clock_ts_to_ct(%struct.timespec* %12, %struct.clocktime* %7)
  %14 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AS3722_RTC_START_YEAR, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @bin2bcd(i64 %22)
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  store i32 %23, i32* %24, align 16
  %25 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @bin2bcd(i64 %26)
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bin2bcd(i64 %30)
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bin2bcd(i64 %34)
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @bin2bcd(i64 %38)
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  store i32 %39, i32* %40, align 16
  %41 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AS3722_RTC_START_YEAR, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i32 @bin2bcd(i64 %44)
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  store i32 %45, i32* %46, align 4
  %47 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %48 = load i32, i32* @AS3722_RTC_SECOND, align 4
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %50 = call i32 @as3722_write_buf(%struct.as3722_softc* %47, i32 %48, i32* %49, i32 6)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %20
  %54 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %55 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %53, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.as3722_softc* @device_get_softc(i32) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @as3722_write_buf(%struct.as3722_softc*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
