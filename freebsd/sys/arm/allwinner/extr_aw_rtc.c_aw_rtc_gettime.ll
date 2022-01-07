; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rtc.c_aw_rtc_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rtc.c_aw_rtc_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.aw_rtc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.clocktime = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@TIME_MASK = common dso_local global i32 0, align 4
@YEAR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @aw_rtc_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_rtc_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.aw_rtc_softc*, align 8
  %6 = alloca %struct.clocktime, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.aw_rtc_softc* @device_get_softc(i32 %9)
  store %struct.aw_rtc_softc* %10, %struct.aw_rtc_softc** %5, align 8
  %11 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %5, align 8
  %12 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %5, align 8
  %13 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RTC_READ(%struct.aw_rtc_softc* %11, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %5, align 8
  %19 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %5, align 8
  %20 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @RTC_READ(%struct.aw_rtc_softc* %18, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TIME_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %5, align 8
  %31 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %5, align 8
  %32 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @RTC_READ(%struct.aw_rtc_softc* %30, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %29, %2
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @GET_SEC_VALUE(i32 %38)
  %40 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 7
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @GET_MIN_VALUE(i32 %41)
  %43 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @GET_HOUR_VALUE(i32 %44)
  %46 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 5
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @GET_DAY_VALUE(i32 %47)
  %49 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @GET_MON_VALUE(i32 %50)
  %52 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @GET_YEAR_VALUE(i32 %53)
  %55 = load i64, i64* @YEAR_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 2
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  %59 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %6, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.timespec*, %struct.timespec** %4, align 8
  %61 = call i32 @clock_ct_to_ts(%struct.clocktime* %6, %struct.timespec* %60)
  ret i32 %61
}

declare dso_local %struct.aw_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @RTC_READ(%struct.aw_rtc_softc*, i32) #1

declare dso_local i32 @GET_SEC_VALUE(i32) #1

declare dso_local i32 @GET_MIN_VALUE(i32) #1

declare dso_local i32 @GET_HOUR_VALUE(i32) #1

declare dso_local i32 @GET_DAY_VALUE(i32) #1

declare dso_local i32 @GET_MON_VALUE(i32) #1

declare dso_local i64 @GET_YEAR_VALUE(i32) #1

declare dso_local i32 @clock_ct_to_ts(%struct.clocktime*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
