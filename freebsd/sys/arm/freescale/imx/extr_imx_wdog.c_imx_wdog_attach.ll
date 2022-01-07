; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_wdog.c_imx_wdog_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_wdog.c_imx_wdog_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_wdog_softc = type { i32, i32, i32, i32*, i32 }

@imx_wdog_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"imx_wdt\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"fsl,ext-reset-output\00", align 1
@WDOG_CR_REG = common dso_local global i32 0, align 4
@WDOG_CR_WDT = common dso_local global i32 0, align 4
@IRQRES = common dso_local global i64 0, align 8
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@imx_wdog_intr = common dso_local global i32 0, align 4
@WDOG_ICR_REG = common dso_local global i32 0, align 4
@WDOG_ICR_WIE = common dso_local global i32 0, align 4
@WDOG_MCR_REG = common dso_local global i32 0, align 4
@WDOG_MCR_PDE = common dso_local global i32 0, align 4
@watchdog_list = common dso_local global i32 0, align 4
@imx_watchdog = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"timeout-sec\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"ERROR: bad timeout-sec property value %u, using 128\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"watchdog enabled using timeout-sec property value %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx_wdog_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_wdog_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_wdog_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.imx_wdog_softc* @device_get_softc(i32 %6)
  store %struct.imx_wdog_softc* %7, %struct.imx_wdog_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %10 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @imx_wdog_spec, align 4
  %13 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %14 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %112

22:                                               ; preds = %1
  %23 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %24 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_nameunit(i32 %25)
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %24, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %30 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ofw_bus_has_prop(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %22
  %35 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %36 = load i32, i32* @WDOG_CR_REG, align 4
  %37 = load i32, i32* @WDOG_CR_WDT, align 4
  %38 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %39 = load i32, i32* @WDOG_CR_REG, align 4
  %40 = call i32 @RD2(%struct.imx_wdog_softc* %38, i32 %39)
  %41 = or i32 %37, %40
  %42 = call i32 @WR2(%struct.imx_wdog_softc* %35, i32 %36, i32 %41)
  %43 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %44 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %47 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @IRQRES, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @INTR_TYPE_MISC, align 4
  %53 = load i32, i32* @INTR_MPSAFE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @imx_wdog_intr, align 4
  %56 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %57 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %58 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %57, i32 0, i32 2
  %59 = call i32 @bus_setup_intr(i32 %45, i32 %51, i32 %54, i32 %55, i32* null, %struct.imx_wdog_softc* %56, i32* %58)
  %60 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %61 = load i32, i32* @WDOG_ICR_REG, align 4
  %62 = load i32, i32* @WDOG_ICR_WIE, align 4
  %63 = call i32 @WR2(%struct.imx_wdog_softc* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %34, %22
  %65 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %66 = load i32, i32* @WDOG_MCR_REG, align 4
  %67 = call i32 @RD2(%struct.imx_wdog_softc* %65, i32 %66)
  %68 = load i32, i32* @WDOG_MCR_PDE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %73 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = load i32, i32* @watchdog_list, align 4
  %76 = load i32, i32* @imx_watchdog, align 4
  %77 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %78 = call i32 @EVENTHANDLER_REGISTER(i32 %75, i32 %76, %struct.imx_wdog_softc* %77, i32 0)
  %79 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %80 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ofw_bus_get_node(i32 %81)
  %83 = call i32 @OF_getencprop(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %5, i32 4)
  %84 = sext i32 %83 to i64
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %107

86:                                               ; preds = %74
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = icmp sgt i32 %90, 128
  br i1 %91, label %92, label %98

92:                                               ; preds = %89, %86
  %93 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %94 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  store i32 128, i32* %5, align 4
  br label %98

98:                                               ; preds = %92, %89
  %99 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @imx_wdog_enable(%struct.imx_wdog_softc* %99, i32 %100)
  %102 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %103 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %98, %74
  %108 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %4, align 8
  %109 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @device_busy(i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %107, %18
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.imx_wdog_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @ofw_bus_has_prop(i32, i8*) #1

declare dso_local i32 @WR2(%struct.imx_wdog_softc*, i32, i32) #1

declare dso_local i32 @RD2(%struct.imx_wdog_softc*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.imx_wdog_softc*, i32*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.imx_wdog_softc*, i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @imx_wdog_enable(%struct.imx_wdog_softc*, i32) #1

declare dso_local i32 @device_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
