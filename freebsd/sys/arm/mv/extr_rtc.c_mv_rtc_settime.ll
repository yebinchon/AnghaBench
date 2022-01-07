; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_rtc.c_mv_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_rtc.c_mv_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.clocktime = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.mv_rtc_softc = type { i32 }

@MV_RTC_TIME_REG = common dso_local global i32 0, align 4
@YEAR_BASE = common dso_local global i64 0, align 8
@MV_RTC_DATE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @mv_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_rtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.clocktime, align 8
  %6 = alloca %struct.mv_rtc_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mv_rtc_softc* @device_get_softc(i32 %8)
  store %struct.mv_rtc_softc* %9, %struct.mv_rtc_softc** %6, align 8
  %10 = load %struct.timespec*, %struct.timespec** %4, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 500000000
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.timespec*, %struct.timespec** %4, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.timespec*, %struct.timespec** %4, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.timespec*, %struct.timespec** %4, align 8
  %23 = call i32 @clock_ts_to_ct(%struct.timespec* %22, %struct.clocktime* %5)
  %24 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @TOBCD(i64 %25)
  %27 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @TOBCD(i64 %28)
  %30 = shl i32 %29, 8
  %31 = or i32 %26, %30
  %32 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @TOBCD(i64 %33)
  %35 = shl i32 %34, 16
  %36 = or i32 %31, %35
  %37 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @TOBCD(i64 %39)
  %41 = shl i32 %40, 24
  %42 = or i32 %36, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %6, align 8
  %44 = load i32, i32* @MV_RTC_TIME_REG, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mv_rtc_reg_write(%struct.mv_rtc_softc* %43, i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @TOBCD(i64 %48)
  %50 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @TOBCD(i64 %51)
  %53 = shl i32 %52, 8
  %54 = or i32 %49, %53
  %55 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @YEAR_BASE, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i32 @TOBCD(i64 %58)
  %60 = shl i32 %59, 16
  %61 = or i32 %54, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %6, align 8
  %63 = load i32, i32* @MV_RTC_DATE_REG, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mv_rtc_reg_write(%struct.mv_rtc_softc* %62, i32 %63, i32 %64)
  ret i32 0
}

declare dso_local %struct.mv_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @TOBCD(i64) #1

declare dso_local i32 @mv_rtc_reg_write(%struct.mv_rtc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
