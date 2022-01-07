; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_wdt.c_ti_wdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_wdt.c_ti_wdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_wdt_softc = type { i32, i32, i32*, i32*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not allocate interrupt resource\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ti_wdt_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"unable to setup the interrupt handler\0A\00", align 1
@TI_WDT_WDSC = common dso_local global i32 0, align 4
@TI_WDSC_SR = common dso_local global i32 0, align 4
@TI_WDT_WIRQENSET = common dso_local global i32 0, align 4
@TI_IRQ_EN_OVF = common dso_local global i32 0, align 4
@TI_IRQ_EN_DLY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"revision: 0x%x\0A\00", align 1
@TI_WDT_WIDR = common dso_local global i32 0, align 4
@watchdog_list = common dso_local global i32 0, align 4
@ti_wdt_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_wdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_wdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_wdt_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ti_wdt_softc* @device_get_softc(i32 %6)
  store %struct.ti_wdt_softc* %7, %struct.ti_wdt_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SYS_RES_MEMORY, align 4
  %10 = load i32, i32* @RF_ACTIVE, align 4
  %11 = call i8* @bus_alloc_resource_any(i32 %8, i32 %9, i32* %5, i32 %10)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %13, i32 0, i32 3
  store i32* %12, i32** %14, align 8
  %15 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %115

23:                                               ; preds = %1
  %24 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @rman_get_bustag(i32* %26)
  %28 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @rman_get_bushandle(i32* %32)
  %34 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %5, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %23
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ti_wdt_detach(i32 %50)
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %2, align 4
  br label %115

53:                                               ; preds = %23
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %56 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @INTR_MPSAFE, align 4
  %59 = load i32, i32* @INTR_TYPE_MISC, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ti_wdt_intr, align 4
  %62 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %63 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %63, i32 0, i32 1
  %65 = call i64 @bus_setup_intr(i32 %54, i32* %57, i32 %60, i32* null, i32 %61, %struct.ti_wdt_softc* %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @ti_wdt_detach(i32 %70)
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %115

73:                                               ; preds = %53
  %74 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %75 = load i32, i32* @TI_WDT_WDSC, align 4
  %76 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %77 = load i32, i32* @TI_WDT_WDSC, align 4
  %78 = call i32 @ti_wdt_reg_read(%struct.ti_wdt_softc* %76, i32 %77)
  %79 = load i32, i32* @TI_WDSC_SR, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ti_wdt_reg_write(%struct.ti_wdt_softc* %74, i32 %75, i32 %80)
  br label %82

82:                                               ; preds = %89, %73
  %83 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %84 = load i32, i32* @TI_WDT_WDSC, align 4
  %85 = call i32 @ti_wdt_reg_read(%struct.ti_wdt_softc* %83, i32 %84)
  %86 = load i32, i32* @TI_WDSC_SR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 @DELAY(i32 10)
  br label %82

91:                                               ; preds = %82
  %92 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %93 = load i32, i32* @TI_WDT_WIRQENSET, align 4
  %94 = load i32, i32* @TI_IRQ_EN_OVF, align 4
  %95 = load i32, i32* @TI_IRQ_EN_DLY, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @ti_wdt_reg_write(%struct.ti_wdt_softc* %92, i32 %93, i32 %96)
  %98 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %99 = call i32 @ti_wdt_disable(%struct.ti_wdt_softc* %98)
  %100 = load i64, i64* @bootverbose, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %91
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %105 = load i32, i32* @TI_WDT_WIDR, align 4
  %106 = call i32 @ti_wdt_reg_read(%struct.ti_wdt_softc* %104, i32 %105)
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %102, %91
  %109 = load i32, i32* @watchdog_list, align 4
  %110 = load i32, i32* @ti_wdt_event, align 4
  %111 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %112 = call i32 @EVENTHANDLER_REGISTER(i32 %109, i32 %110, %struct.ti_wdt_softc* %111, i32 0)
  %113 = load %struct.ti_wdt_softc*, %struct.ti_wdt_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ti_wdt_softc, %struct.ti_wdt_softc* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %108, %67, %47, %19
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.ti_wdt_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @ti_wdt_detach(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.ti_wdt_softc*, i32*) #1

declare dso_local i32 @ti_wdt_reg_write(%struct.ti_wdt_softc*, i32, i32) #1

declare dso_local i32 @ti_wdt_reg_read(%struct.ti_wdt_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ti_wdt_disable(%struct.ti_wdt_softc*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.ti_wdt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
