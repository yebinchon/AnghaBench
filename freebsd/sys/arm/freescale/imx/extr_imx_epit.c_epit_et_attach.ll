; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_et_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_epit.c_epit_et_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epit_softc = type { i32, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, %struct.epit_softc*, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate interrupt\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@epit_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to setup the irq handler\0A\00", align 1
@EPIT_CR_OCIEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"EPIT\00", align 1
@ET_FLAGS_ONESHOT = common dso_local global i32 0, align 4
@ET_FLAGS_PERIODIC = common dso_local global i32 0, align 4
@ET_MIN_TICKS = common dso_local global i64 0, align 8
@ET_MAX_TICKS = common dso_local global i64 0, align 8
@epit_et_start = common dso_local global i32 0, align 4
@epit_et_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.epit_softc*)* @epit_et_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epit_et_attach(%struct.epit_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.epit_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.epit_softc* %0, %struct.epit_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %7 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SYS_RES_IRQ, align 4
  %10 = load i32, i32* @RF_ACTIVE, align 4
  %11 = call i32* @bus_alloc_resource_any(i32 %8, i32 %9, i32* %5, i32 %10)
  %12 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %13 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %12, i32 0, i32 5
  store i32* %11, i32** %13, align 8
  %14 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %15 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %20 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %106

24:                                               ; preds = %1
  %25 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %26 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %29 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @INTR_TYPE_CLK, align 4
  %32 = load i32, i32* @INTR_MPSAFE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @epit_intr, align 4
  %35 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %36 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %37 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %36, i32 0, i32 4
  %38 = call i32 @bus_setup_intr(i32 %27, i32* %30, i32 %33, i32 %34, i32* null, %struct.epit_softc* %35, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %43 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %106

47:                                               ; preds = %24
  %48 = load i32, i32* @EPIT_CR_OCIEN, align 4
  %49 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %50 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %54 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %55, align 8
  %56 = load i32, i32* @ET_FLAGS_ONESHOT, align 4
  %57 = load i32, i32* @ET_FLAGS_PERIODIC, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %60 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %63 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 1000, i32* %64, align 4
  %65 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %66 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %69 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  %71 = load i64, i64* @ET_MIN_TICKS, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %72, 32
  %74 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %75 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %73, %76
  %78 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %79 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 4
  %81 = load i64, i64* @ET_MAX_TICKS, align 8
  %82 = trunc i64 %81 to i32
  %83 = shl i32 %82, 32
  %84 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %85 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %83, %86
  %88 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %89 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 5
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @epit_et_start, align 4
  %92 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %93 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 8
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @epit_et_stop, align 4
  %96 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %97 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 7
  store i32 %95, i32* %98, align 8
  %99 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %100 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %101 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 6
  store %struct.epit_softc* %99, %struct.epit_softc** %102, align 8
  %103 = load %struct.epit_softc*, %struct.epit_softc** %3, align 8
  %104 = getelementptr inbounds %struct.epit_softc, %struct.epit_softc* %103, i32 0, i32 1
  %105 = call i32 @et_register(%struct.TYPE_2__* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %47, %41, %18
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.epit_softc*, i32*) #1

declare dso_local i32 @et_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
