; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_adc.c_adc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_adc.c_adc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc_softc = type { i32, i32*, i32, i32 }

@adc_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@adc_sc = common dso_local global %struct.adc_softc* null, align 8
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@adc_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@ADC_CFG = common dso_local global i32 0, align 4
@CFG_MODE_M = common dso_local global i32 0, align 4
@CFG_MODE_S = common dso_local global i32 0, align 4
@CFG_MODE_12 = common dso_local global i32 0, align 4
@ADC_GC = common dso_local global i32 0, align 4
@GC_ADCO = common dso_local global i32 0, align 4
@GC_AVGE = common dso_local global i32 0, align 4
@ADC_HC0 = common dso_local global i32 0, align 4
@HC_AIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.adc_softc* @device_get_softc(i32 %7)
  store %struct.adc_softc* %8, %struct.adc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @adc_spec, align 4
  %11 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %12 = getelementptr inbounds %struct.adc_softc, %struct.adc_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @bus_alloc_resources(i32 %9, i32 %10, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %22 = getelementptr inbounds %struct.adc_softc, %struct.adc_softc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rman_get_bustag(i32 %25)
  %27 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.adc_softc, %struct.adc_softc* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %30 = getelementptr inbounds %struct.adc_softc, %struct.adc_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rman_get_bushandle(i32 %33)
  %35 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %36 = getelementptr inbounds %struct.adc_softc, %struct.adc_softc* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  store %struct.adc_softc* %37, %struct.adc_softc** @adc_sc, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %40 = getelementptr inbounds %struct.adc_softc, %struct.adc_softc* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @INTR_TYPE_BIO, align 4
  %45 = load i32, i32* @INTR_MPSAFE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @adc_intr, align 4
  %48 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %49 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %50 = getelementptr inbounds %struct.adc_softc, %struct.adc_softc* %49, i32 0, i32 0
  %51 = call i32 @bus_setup_intr(i32 %38, i32 %43, i32 %46, i32* null, i32 %47, %struct.adc_softc* %48, i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %20
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %99

58:                                               ; preds = %20
  %59 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %60 = load i32, i32* @ADC_CFG, align 4
  %61 = call i32 @READ4(%struct.adc_softc* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @CFG_MODE_M, align 4
  %63 = load i32, i32* @CFG_MODE_S, align 4
  %64 = shl i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @CFG_MODE_12, align 4
  %69 = load i32, i32* @CFG_MODE_S, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %74 = load i32, i32* @ADC_CFG, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @WRITE4(%struct.adc_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %78 = load i32, i32* @ADC_GC, align 4
  %79 = call i32 @READ4(%struct.adc_softc* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @GC_ADCO, align 4
  %81 = load i32, i32* @GC_AVGE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %86 = load i32, i32* @ADC_GC, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @WRITE4(%struct.adc_softc* %85, i32 %86, i32 %87)
  %89 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %90 = load i32, i32* @ADC_HC0, align 4
  %91 = call i32 @READ4(%struct.adc_softc* %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @HC_AIEN, align 4
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.adc_softc*, %struct.adc_softc** %4, align 8
  %96 = load i32, i32* @ADC_HC0, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @WRITE4(%struct.adc_softc* %95, i32 %96, i32 %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %58, %54, %16
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.adc_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.adc_softc*, i32*) #1

declare dso_local i32 @READ4(%struct.adc_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.adc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
