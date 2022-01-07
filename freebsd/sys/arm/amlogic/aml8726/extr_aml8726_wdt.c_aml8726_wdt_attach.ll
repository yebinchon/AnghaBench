; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_wdt.c_aml8726_wdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_wdt.c_aml8726_wdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_wdt_softc = type { i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@aml8726_wdt_sc = common dso_local global %struct.aml8726_wdt_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@aml8726_wdt_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can not allocate resources for device\0A\00", align 1
@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@AML_WDT_CTRL_CPU_WDRESET_SHIFT = common dso_local global i32 0, align 4
@aml8726_wdt_soc_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@aml8726_soc_metal_rev = common dso_local global i32 0, align 4
@AML_WDT_CTRL_TERMINAL_CNT_SHIFT = common dso_local global i32 0, align 4
@AML_WDT_RESET_CNT_SHIFT = common dso_local global i32 0, align 4
@AML_WDT_CTRL_REG = common dso_local global i32 0, align 4
@AML_WDT_CTRL_IRQ_EN = common dso_local global i32 0, align 4
@AML_WDT_CTRL_EN = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aml8726_wdt_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not setup interrupt handler\0A\00", align 1
@watchdog_list = common dso_local global i32 0, align 4
@aml8726_wdt_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_wdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_wdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_wdt_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.aml8726_wdt_softc* @device_get_softc(i32 %5)
  store %struct.aml8726_wdt_softc* %6, %struct.aml8726_wdt_softc** %4, align 8
  %7 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** @aml8726_wdt_sc, align 8
  %8 = icmp ne %struct.aml8726_wdt_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %104

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %14 = getelementptr inbounds %struct.aml8726_wdt_softc, %struct.aml8726_wdt_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @aml8726_wdt_spec, align 4
  %17 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aml8726_wdt_softc, %struct.aml8726_wdt_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @bus_alloc_resources(i32 %15, i32 %16, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %104

26:                                               ; preds = %11
  %27 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %27, label %50 [
    i32 130, label %28
    i32 129, label %43
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @AML_WDT_CTRL_CPU_WDRESET_SHIFT, align 4
  %30 = shl i32 15, %29
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 0), align 4
  %31 = load i32, i32* @aml8726_soc_metal_rev, align 4
  switch i32 %31, label %37 [
    i32 128, label %32
  ]

32:                                               ; preds = %28
  store i32 524288, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 1), align 4
  %33 = load i32, i32* @AML_WDT_CTRL_TERMINAL_CNT_SHIFT, align 4
  %34 = shl i32 524287, %33
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 2), align 4
  %35 = load i32, i32* @AML_WDT_RESET_CNT_SHIFT, align 4
  %36 = shl i32 524287, %35
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 3), align 4
  br label %42

37:                                               ; preds = %28
  store i32 4194304, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 1), align 4
  %38 = load i32, i32* @AML_WDT_CTRL_TERMINAL_CNT_SHIFT, align 4
  %39 = shl i32 4194303, %38
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 2), align 4
  %40 = load i32, i32* @AML_WDT_RESET_CNT_SHIFT, align 4
  %41 = shl i32 4194303, %40
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 3), align 4
  br label %42

42:                                               ; preds = %37, %32
  br label %57

43:                                               ; preds = %26
  %44 = load i32, i32* @AML_WDT_CTRL_CPU_WDRESET_SHIFT, align 4
  %45 = shl i32 15, %44
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 0), align 4
  store i32 524288, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 1), align 4
  %46 = load i32, i32* @AML_WDT_CTRL_TERMINAL_CNT_SHIFT, align 4
  %47 = shl i32 524287, %46
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 2), align 4
  %48 = load i32, i32* @AML_WDT_RESET_CNT_SHIFT, align 4
  %49 = shl i32 524287, %48
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 3), align 4
  br label %57

50:                                               ; preds = %26
  %51 = load i32, i32* @AML_WDT_CTRL_CPU_WDRESET_SHIFT, align 4
  %52 = shl i32 3, %51
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 0), align 4
  store i32 4194304, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 1), align 4
  %53 = load i32, i32* @AML_WDT_CTRL_TERMINAL_CNT_SHIFT, align 4
  %54 = shl i32 4194303, %53
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 2), align 4
  %55 = load i32, i32* @AML_WDT_RESET_CNT_SHIFT, align 4
  %56 = shl i32 4194303, %55
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aml8726_wdt_soc_params, i32 0, i32 3), align 4
  br label %57

57:                                               ; preds = %50, %43, %42
  %58 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %59 = load i32, i32* @AML_WDT_CTRL_REG, align 4
  %60 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %61 = load i32, i32* @AML_WDT_CTRL_REG, align 4
  %62 = call i32 @CSR_READ_4(%struct.aml8726_wdt_softc* %60, i32 %61)
  %63 = load i32, i32* @AML_WDT_CTRL_IRQ_EN, align 4
  %64 = load i32, i32* @AML_WDT_CTRL_EN, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %62, %66
  %68 = call i32 @CSR_WRITE_4(%struct.aml8726_wdt_softc* %58, i32 %59, i32 %67)
  %69 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %70 = call i32 @AML_WDT_LOCK_INIT(%struct.aml8726_wdt_softc* %69)
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %73 = getelementptr inbounds %struct.aml8726_wdt_softc, %struct.aml8726_wdt_softc* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @INTR_TYPE_MISC, align 4
  %78 = load i32, i32* @INTR_MPSAFE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @aml8726_wdt_intr, align 4
  %81 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %82 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %83 = getelementptr inbounds %struct.aml8726_wdt_softc, %struct.aml8726_wdt_softc* %82, i32 0, i32 1
  %84 = call i64 @bus_setup_intr(i32 %71, i32 %76, i32 %79, i32 %80, i32* null, %struct.aml8726_wdt_softc* %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %57
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @aml8726_wdt_spec, align 4
  %91 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %92 = getelementptr inbounds %struct.aml8726_wdt_softc, %struct.aml8726_wdt_softc* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @bus_release_resources(i32 %89, i32 %90, i32* %93)
  %95 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %96 = call i32 @AML_WDT_LOCK_DESTROY(%struct.aml8726_wdt_softc* %95)
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %2, align 4
  br label %104

98:                                               ; preds = %57
  %99 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  store %struct.aml8726_wdt_softc* %99, %struct.aml8726_wdt_softc** @aml8726_wdt_sc, align 8
  %100 = load i32, i32* @watchdog_list, align 4
  %101 = load i32, i32* @aml8726_wdt_watchdog, align 4
  %102 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %4, align 8
  %103 = call i32 @EVENTHANDLER_REGISTER(i32 %100, i32 %101, %struct.aml8726_wdt_softc* %102, i32 0)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %86, %22, %9
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.aml8726_wdt_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_wdt_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_wdt_softc*, i32) #1

declare dso_local i32 @AML_WDT_LOCK_INIT(%struct.aml8726_wdt_softc*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.aml8726_wdt_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @AML_WDT_LOCK_DESTROY(%struct.aml8726_wdt_softc*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.aml8726_wdt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
