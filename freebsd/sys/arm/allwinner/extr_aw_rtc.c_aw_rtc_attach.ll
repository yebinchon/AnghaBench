; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rtc.c_aw_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rtc.c_aw_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_rtc_softc = type { %struct.aw_rtc_conf*, i32 }
%struct.aw_rtc_conf = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@LOSC_CTRL_REG = common dso_local global i32 0, align 4
@LOSC_AUTO_SW_EN = common dso_local global i32 0, align 4
@LOSC_MAGIC = common dso_local global i32 0, align 4
@LOSC_GSM = common dso_local global i32 0, align 4
@LOSC_OSC_SRC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Using internal oscillator\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Using external oscillator\0A\00", align 1
@RTC_RES_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_rtc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.aw_rtc_softc* @device_get_softc(i32 %7)
  store %struct.aw_rtc_softc* %8, %struct.aw_rtc_softc** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i32 @bus_alloc_resource_any(i32 %9, i32 %10, i32* %6, i32 %11)
  %13 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %4, align 8
  %14 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %4, align 8
  %16 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @compat_data, align 4
  %26 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.aw_rtc_conf*
  %30 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %30, i32 0, i32 0
  store %struct.aw_rtc_conf* %29, %struct.aw_rtc_conf** %31, align 8
  %32 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %4, align 8
  %33 = load i32, i32* @LOSC_CTRL_REG, align 4
  %34 = call i32 @RTC_READ(%struct.aw_rtc_softc* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @LOSC_AUTO_SW_EN, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @LOSC_MAGIC, align 4
  %39 = load i32, i32* @LOSC_GSM, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @LOSC_OSC_SRC, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %4, align 8
  %46 = load i32, i32* @LOSC_CTRL_REG, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @RTC_WRITE(%struct.aw_rtc_softc* %45, i32 %46, i32 %47)
  %49 = call i32 @DELAY(i32 100)
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %23
  %53 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %4, align 8
  %54 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %4, align 8
  %55 = getelementptr inbounds %struct.aw_rtc_softc, %struct.aw_rtc_softc* %54, i32 0, i32 0
  %56 = load %struct.aw_rtc_conf*, %struct.aw_rtc_conf** %55, align 8
  %57 = getelementptr inbounds %struct.aw_rtc_conf, %struct.aw_rtc_conf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RTC_READ(%struct.aw_rtc_softc* %53, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @LOSC_OSC_SRC, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

67:                                               ; preds = %52
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %23
  %72 = load %struct.aw_rtc_softc*, %struct.aw_rtc_softc** %4, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @aw_rtc_install_clocks(%struct.aw_rtc_softc* %72, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @RTC_RES_US, align 4
  %77 = call i32 @clock_register(i32 %75, i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %71, %19
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.aw_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @RTC_READ(%struct.aw_rtc_softc*, i32) #1

declare dso_local i32 @RTC_WRITE(%struct.aw_rtc_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @aw_rtc_install_clocks(%struct.aw_rtc_softc*, i32) #1

declare dso_local i32 @clock_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
