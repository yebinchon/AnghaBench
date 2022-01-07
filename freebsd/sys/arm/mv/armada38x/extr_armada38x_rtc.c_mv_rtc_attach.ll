; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_rtc.c_mv_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada38x/extr_armada38x_rtc.c_mv_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_rtc_softc = type { i32, i32, i32 }

@RTC_RES_US = common dso_local global i32 0, align 4
@MTX_SPIN = common dso_local global i32 0, align 4
@res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_rtc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_unit(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.mv_rtc_softc* @device_get_softc(i32 %9)
  store %struct.mv_rtc_softc* %10, %struct.mv_rtc_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mv_rtc_softc, %struct.mv_rtc_softc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RTC_RES_US, align 4
  %16 = call i32 @clock_register(i32 %14, i32 %15)
  %17 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mv_rtc_softc, %struct.mv_rtc_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_nameunit(i32 %19)
  %21 = load i32, i32* @MTX_SPIN, align 4
  %22 = call i32 @mtx_init(i32* %18, i32 %20, i32* null, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @res_spec, align 4
  %25 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mv_rtc_softc, %struct.mv_rtc_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bus_alloc_resources(i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mv_rtc_softc, %struct.mv_rtc_softc* %34, i32 0, i32 0
  %36 = call i32 @mtx_destroy(i32* %35)
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.mv_rtc_softc*, %struct.mv_rtc_softc** %4, align 8
  %40 = call i32 @mv_rtc_configure_bus(%struct.mv_rtc_softc* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.mv_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @clock_register(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @mv_rtc_configure_bus(%struct.mv_rtc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
