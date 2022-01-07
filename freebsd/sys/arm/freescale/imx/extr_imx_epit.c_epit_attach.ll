; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epit_softc = type { i32, i32, i32, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unsupported clock source '%d', using IPG\0A\00", align 1
@EPIT_CR = common dso_local global i32 0, align 4
@EPIT_CR_CLKSRC_SHIFT = common dso_local global i32 0, align 4
@EPIT_CR_ENMOD = common dso_local global i32 0, align 4
@EPIT_CR_RLD = common dso_local global i32 0, align 4
@EPIT_CR_STOPEN = common dso_local global i32 0, align 4
@EPIT_CR_WAITEN = common dso_local global i32 0, align 4
@EPIT_CR_DBGEN = common dso_local global i32 0, align 4
@EPIT_CR_SWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @epit_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epit_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.epit_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.epit_softc* @device_get_softc(i32 %8)
  store %struct.epit_softc* %9, %struct.epit_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %12 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %14 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i32* @bus_alloc_resource_any(i32 %15, i32 %16, i32* %6, i32 %17)
  %19 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %20 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %22 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %27 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %97

31:                                               ; preds = %1
  store i32 129, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %33 [
    i32 129, label %37
    i32 130, label %41
    i32 128, label %45
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %33
  %38 = call i32 (...) @imx_ccm_ipg_hz()
  %39 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %40 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %48

41:                                               ; preds = %31
  %42 = call i32 (...) @imx_ccm_perclk_hz()
  %43 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %44 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %48

45:                                               ; preds = %31
  %46 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %47 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %46, i32 0, i32 0
  store i32 32768, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %41, %37
  %49 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %50 = load i32, i32* @EPIT_CR, align 4
  %51 = call i32 @WR4(%struct.epit_softc* %49, i32 %50, i32 0)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @EPIT_CR_CLKSRC_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* @EPIT_CR_ENMOD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @EPIT_CR_RLD, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @EPIT_CR_STOPEN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EPIT_CR_WAITEN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @EPIT_CR_DBGEN, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %66 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %68 = load i32, i32* @EPIT_CR, align 4
  %69 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %70 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EPIT_CR_SWR, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @WR4B(%struct.epit_softc* %67, i32 %68, i32 %73)
  br label %75

75:                                               ; preds = %82, %48
  %76 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %77 = load i32, i32* @EPIT_CR, align 4
  %78 = call i32 @RD4(%struct.epit_softc* %76, i32 %77)
  %79 = load i32, i32* @EPIT_CR_SWR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %75

83:                                               ; preds = %75
  %84 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %85 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @device_get_unit(i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %91 = call i32 @epit_tc_attach(%struct.epit_softc* %90)
  store i32 %91, i32* %5, align 4
  br label %95

92:                                               ; preds = %83
  %93 = load %struct.epit_softc*, %struct.epit_softc** %4, align 8
  %94 = call i32 @epit_et_attach(%struct.epit_softc* %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %25
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.epit_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @imx_ccm_ipg_hz(...) #1

declare dso_local i32 @imx_ccm_perclk_hz(...) #1

declare dso_local i32 @WR4(%struct.epit_softc*, i32, i32) #1

declare dso_local i32 @WR4B(%struct.epit_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.epit_softc*, i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @epit_tc_attach(%struct.epit_softc*) #1

declare dso_local i32 @epit_et_attach(%struct.epit_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
