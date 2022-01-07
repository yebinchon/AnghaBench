; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rtc.c_aml8726_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_rtc_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unsupported SoC\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@aml8726_rtc_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"can not allocate resources for device\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"crystal oscillator check failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_rtc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.aml8726_rtc_softc* @device_get_softc(i32 %5)
  store %struct.aml8726_rtc_softc* %6, %struct.aml8726_rtc_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %9 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %10, label %31 [
    i32 131, label %11
    i32 130, label %21
    i32 129, label %21
    i32 128, label %21
  ]

11:                                               ; preds = %1
  %12 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %16 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 15370, i32* %17, align 4
  %18 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %19 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 1048576, i32* %20, align 4
  br label %35

21:                                               ; preds = %1, %1, %1
  %22 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %23 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %26 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 6154, i32* %27, align 4
  %28 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 5242880, i32* %30, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %68

35:                                               ; preds = %21, %11
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @aml8726_rtc_spec, align 4
  %38 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @bus_alloc_resources(i32 %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %68

47:                                               ; preds = %35
  %48 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %49 = call i32 @aml8726_rtc_initialize(%struct.aml8726_rtc_softc* %48)
  %50 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %51 = call i64 @aml8726_rtc_check_xo(%struct.aml8726_rtc_softc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @aml8726_rtc_spec, align 4
  %58 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %59 = getelementptr inbounds %struct.aml8726_rtc_softc, %struct.aml8726_rtc_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bus_release_resources(i32 %56, i32 %57, i32 %60)
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %47
  %64 = load %struct.aml8726_rtc_softc*, %struct.aml8726_rtc_softc** %4, align 8
  %65 = call i32 @AML_RTC_LOCK_INIT(%struct.aml8726_rtc_softc* %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @clock_register(i32 %66, i32 1000000)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %53, %43, %31
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.aml8726_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @aml8726_rtc_initialize(%struct.aml8726_rtc_softc*) #1

declare dso_local i64 @aml8726_rtc_check_xo(%struct.aml8726_rtc_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

declare dso_local i32 @AML_RTC_LOCK_INIT(%struct.aml8726_rtc_softc*) #1

declare dso_local i32 @clock_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
