; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.aml8726_rtc_softc = type { i32 }

@AML_RTC_TIME_SREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @aml8726_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_rtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.aml8726_rtc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.aml8726_rtc_softc* @device_get_softc(i32 %8)
  store %struct.aml8726_rtc_softc* %9, %struct.aml8726_rtc_softc** %5, align 8
  %10 = load %struct.timespec*, %struct.timespec** %4, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.timespec*, %struct.timespec** %4, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 500000000
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %5, align 8
  %22 = call i32 @AML_RTC_LOCK(%struct.aml8726_rtc_softc* %21)
  %23 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %5, align 8
  %24 = load i32, i32* @AML_RTC_TIME_SREG, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @aml8726_rtc_sreg_write(%struct.aml8726_rtc_softc* %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %5, align 8
  %28 = call i32 @AML_RTC_UNLOCK(%struct.aml8726_rtc_softc* %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local %struct.aml8726_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @AML_RTC_LOCK(%struct.aml8726_rtc_softc*) #1

declare dso_local i32 @aml8726_rtc_sreg_write(%struct.aml8726_rtc_softc*, i32, i32) #1

declare dso_local i32 @AML_RTC_UNLOCK(%struct.aml8726_rtc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
