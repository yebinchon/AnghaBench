; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_rtc.c_am335x_rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_rtc.c_am335x_rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_rtc_softc = type { i32, i32, i32 }

@rtc_sc = common dso_local global %struct.am335x_rtc_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot allocate memory resources\0A\00", align 1
@am335x_rtc_irq_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot allocate irq resources\0A\00", align 1
@RTC_CLK = common dso_local global i32 0, align 4
@RTC_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"AM335X RTC v%d.%d.%d\0A\00", align 1
@RTC_KICK0R = common dso_local global i32 0, align 4
@RTC_KICK0R_PASS = common dso_local global i32 0, align 4
@RTC_KICK1R = common dso_local global i32 0, align 4
@RTC_KICK1R_PASS = common dso_local global i32 0, align 4
@RTC_CTRL = common dso_local global i32 0, align 4
@RTC_INTR = common dso_local global i32 0, align 4
@RTC_STATUS = common dso_local global i32 0, align 4
@RTC_STATUS_ALARM2 = common dso_local global i32 0, align 4
@RTC_STATUS_ALARM = common dso_local global i32 0, align 4
@RTC_OSC = common dso_local global i32 0, align 4
@RTC_OSC_32KCLK_EN = common dso_local global i32 0, align 4
@RTC_OSC_32KCLK_SEL = common dso_local global i32 0, align 4
@RTC_PMIC = common dso_local global i32 0, align 4
@PMIC_PWR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.am335x_rtc_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** @rtc_sc, align 8
  %8 = icmp ne %struct.am335x_rtc_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %97

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.am335x_rtc_softc* @device_get_softc(i32 %12)
  store %struct.am335x_rtc_softc* %13, %struct.am335x_rtc_softc** %5, align 8
  store %struct.am335x_rtc_softc* %13, %struct.am335x_rtc_softc** @rtc_sc, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %16 = getelementptr inbounds %struct.am335x_rtc_softc, %struct.am335x_rtc_softc* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32 @bus_alloc_resource_any(i32 %17, i32 %18, i32* %4, i32 %19)
  %21 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %22 = getelementptr inbounds %struct.am335x_rtc_softc, %struct.am335x_rtc_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %24 = getelementptr inbounds %struct.am335x_rtc_softc, %struct.am335x_rtc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %97

31:                                               ; preds = %11
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @am335x_rtc_irq_spec, align 4
  %34 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %35 = getelementptr inbounds %struct.am335x_rtc_softc, %struct.am335x_rtc_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @bus_alloc_resources(i32 %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %43 = getelementptr inbounds %struct.am335x_rtc_softc, %struct.am335x_rtc_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 0, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %97

49:                                               ; preds = %31
  %50 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %51 = call i32 @RTC_LOCK_INIT(%struct.am335x_rtc_softc* %50)
  %52 = load i32, i32* @RTC_CLK, align 4
  %53 = call i32 @ti_prcm_clk_enable(i32 %52)
  %54 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %55 = load i32, i32* @RTC_REVISION, align 4
  %56 = call i32 @RTC_READ4(%struct.am335x_rtc_softc* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 7
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 6
  %63 = and i32 %62, 3
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 63
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %63, i32 %65)
  %67 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %68 = load i32, i32* @RTC_KICK0R, align 4
  %69 = load i32, i32* @RTC_KICK0R_PASS, align 4
  %70 = call i32 @RTC_WRITE4(%struct.am335x_rtc_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %72 = load i32, i32* @RTC_KICK1R, align 4
  %73 = load i32, i32* @RTC_KICK1R_PASS, align 4
  %74 = call i32 @RTC_WRITE4(%struct.am335x_rtc_softc* %71, i32 %72, i32 %73)
  %75 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %76 = load i32, i32* @RTC_CTRL, align 4
  %77 = call i32 @RTC_WRITE4(%struct.am335x_rtc_softc* %75, i32 %76, i32 0)
  %78 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %79 = load i32, i32* @RTC_INTR, align 4
  %80 = call i32 @RTC_WRITE4(%struct.am335x_rtc_softc* %78, i32 %79, i32 0)
  %81 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %82 = load i32, i32* @RTC_STATUS, align 4
  %83 = load i32, i32* @RTC_STATUS_ALARM2, align 4
  %84 = load i32, i32* @RTC_STATUS_ALARM, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @RTC_WRITE4(%struct.am335x_rtc_softc* %81, i32 %82, i32 %85)
  %87 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %88 = load i32, i32* @RTC_OSC, align 4
  %89 = load i32, i32* @RTC_OSC_32KCLK_EN, align 4
  %90 = load i32, i32* @RTC_OSC_32KCLK_SEL, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @RTC_WRITE4(%struct.am335x_rtc_softc* %87, i32 %88, i32 %91)
  %93 = load %struct.am335x_rtc_softc*, %struct.am335x_rtc_softc** %5, align 8
  %94 = load i32, i32* @RTC_PMIC, align 4
  %95 = load i32, i32* @PMIC_PWR_ENABLE, align 4
  %96 = call i32 @RTC_WRITE4(%struct.am335x_rtc_softc* %93, i32 %94, i32 %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %49, %39, %27, %9
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.am335x_rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @RTC_LOCK_INIT(%struct.am335x_rtc_softc*) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @RTC_READ4(%struct.am335x_rtc_softc*, i32) #1

declare dso_local i32 @RTC_WRITE4(%struct.am335x_rtc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
