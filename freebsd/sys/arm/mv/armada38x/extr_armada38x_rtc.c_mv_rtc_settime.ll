; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_rtc.c_mv_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_rtc.c_mv_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }
%struct.mv_rtc_softc = type { i32 }

@HALF_OF_SEC_NS = common dso_local global i64 0, align 8
@RTC_CLOCK_CORR = common dso_local global i32 0, align 4
@RTC_NOMINAL_TIMING_MASK = common dso_local global i32 0, align 4
@RTC_NOMINAL_TIMING = common dso_local global i32 0, align 4
@RTC_STATUS = common dso_local global i32 0, align 4
@RTC_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @mv_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_rtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.mv_rtc_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mv_rtc_softc* @device_get_softc(i32 %6)
  store %struct.mv_rtc_softc* %7, %struct.mv_rtc_softc** %5, align 8
  %8 = load %struct.timespec*, %struct.timespec** %4, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HALF_OF_SEC_NS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.timespec*, %struct.timespec** %4, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.timespec*, %struct.timespec** %4, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %5, align 8
  %22 = call i32 @MV_RTC_LOCK(%struct.mv_rtc_softc* %21)
  %23 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %5, align 8
  %24 = load i32, i32* @RTC_CLOCK_CORR, align 4
  %25 = call i32 @mv_rtc_reg_read(%struct.mv_rtc_softc* %23, i32 %24)
  %26 = load i32, i32* @RTC_NOMINAL_TIMING_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @RTC_NOMINAL_TIMING, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @mv_rtc_reset(i32 %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %5, align 8
  %35 = load i32, i32* @RTC_STATUS, align 4
  %36 = call i32 @mv_rtc_reg_write(%struct.mv_rtc_softc* %34, i32 %35, i32 0)
  %37 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %5, align 8
  %38 = load i32, i32* @RTC_STATUS, align 4
  %39 = call i32 @mv_rtc_reg_write(%struct.mv_rtc_softc* %37, i32 %38, i32 0)
  %40 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %5, align 8
  %41 = load i32, i32* @RTC_TIME, align 4
  %42 = load %struct.timespec*, %struct.timespec** %4, align 8
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mv_rtc_reg_write(%struct.mv_rtc_softc* %40, i32 %41, i32 %44)
  %46 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %5, align 8
  %47 = call i32 @MV_RTC_UNLOCK(%struct.mv_rtc_softc* %46)
  ret i32 0
}

declare dso_local %struct.mv_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @MV_RTC_LOCK(%struct.mv_rtc_softc*) #1

declare dso_local i32 @mv_rtc_reg_read(%struct.mv_rtc_softc*, i32) #1

declare dso_local i32 @mv_rtc_reset(i32) #1

declare dso_local i32 @mv_rtc_reg_write(%struct.mv_rtc_softc*, i32, i32) #1

declare dso_local i32 @MV_RTC_UNLOCK(%struct.mv_rtc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
