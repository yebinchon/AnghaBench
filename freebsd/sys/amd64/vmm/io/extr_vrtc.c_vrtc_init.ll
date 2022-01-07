; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_vrtc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vrtc.c_vrtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { i32, i32, %struct.rtcdev, i32, i32, %struct.vm* }
%struct.rtcdev = type { i32, i32, i64, i32 }
%struct.vm = type { i32 }

@M_VRTC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"vrtc lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@RTCSB_24HR = common dso_local global i32 0, align 4
@RTCSD_PWR = common dso_local global i32 0, align 4
@RTC_STATUSD = common dso_local global i32 0, align 4
@VRTC_BROKEN_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vrtc* @vrtc_init(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca %struct.vrtc*, align 8
  %4 = alloca %struct.rtcdev*, align 8
  %5 = alloca i64, align 8
  store %struct.vm* %0, %struct.vm** %2, align 8
  %6 = load i32, i32* @M_VRTC, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.vrtc* @malloc(i32 48, i32 %6, i32 %9)
  store %struct.vrtc* %10, %struct.vrtc** %3, align 8
  %11 = load %struct.vm*, %struct.vm** %2, align 8
  %12 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %13 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %12, i32 0, i32 5
  store %struct.vm* %11, %struct.vm** %13, align 8
  %14 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %15 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %14, i32 0, i32 4
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %19 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %18, i32 0, i32 3
  %20 = call i32 @callout_init(i32* %19, i32 1)
  %21 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %22 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %21, i32 0, i32 2
  store %struct.rtcdev* %22, %struct.rtcdev** %4, align 8
  %23 = load %struct.rtcdev*, %struct.rtcdev** %4, align 8
  %24 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %23, i32 0, i32 0
  store i32 32, i32* %24, align 8
  %25 = load i32, i32* @RTCSB_24HR, align 4
  %26 = load %struct.rtcdev*, %struct.rtcdev** %4, align 8
  %27 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.rtcdev*, %struct.rtcdev** %4, align 8
  %29 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @RTCSD_PWR, align 4
  %31 = load %struct.rtcdev*, %struct.rtcdev** %4, align 8
  %32 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @RTC_STATUSD, align 4
  %34 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %35 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  store i64 0, i64* %5, align 8
  %36 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %37 = call i32 @VRTC_LOCK(%struct.vrtc* %36)
  %38 = load i32, i32* @VRTC_BROKEN_TIME, align 4
  %39 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %40 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (...) @sbinuptime()
  %44 = call i32 @vrtc_time_update(%struct.vrtc* %41, i64 %42, i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %47 = call i32 @secs_to_rtc(i64 %45, %struct.vrtc* %46, i32 0)
  %48 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %49 = call i32 @VRTC_UNLOCK(%struct.vrtc* %48)
  %50 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  ret %struct.vrtc* %50
}

declare dso_local %struct.vrtc* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @VRTC_LOCK(%struct.vrtc*) #1

declare dso_local i32 @vrtc_time_update(%struct.vrtc*, i64, i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @secs_to_rtc(i64, %struct.vrtc*, i32) #1

declare dso_local i32 @VRTC_UNLOCK(%struct.vrtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
