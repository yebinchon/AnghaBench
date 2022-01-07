; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm_intc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_intr.c_bcm_intc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_intc_softc = type { i32*, i32, i32, i32, i32*, i32 }

@bcm_intc_sc = common dso_local global %struct.bcm_intc_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@bcm2835_intc_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not set PIC as a root\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not setup irq handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_intc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_intc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_intc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bcm_intc_softc* @device_get_softc(i32 %7)
  store %struct.bcm_intc_softc* %8, %struct.bcm_intc_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** @bcm_intc_sc, align 8
  %13 = icmp ne %struct.bcm_intc_softc* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %105

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i8* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %5, i32 %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %105

32:                                               ; preds = %16
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ofw_bus_get_node(i32 %33)
  %35 = call i64 @OF_xref_from_node(i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @bcm_intc_pic_register(%struct.bcm_intc_softc* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SYS_RES_MEMORY, align 4
  %43 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 0, i32* %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %105

50:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_IRQ, align 4
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i8* @bus_alloc_resource_any(i32 %51, i32 %52, i32* %5, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %57 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  %58 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %59 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load i32, i32* %3, align 4
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @bcm2835_intc_intr, align 4
  %66 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %67 = call i64 @intr_pic_claim_root(i32 %63, i64 %64, i32 %65, %struct.bcm_intc_softc* %66, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  store i32 %72, i32* %2, align 4
  br label %105

73:                                               ; preds = %62
  br label %91

74:                                               ; preds = %50
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %77 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @INTR_TYPE_CLK, align 4
  %80 = load i32, i32* @bcm2835_intc_intr, align 4
  %81 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %82 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %83 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %82, i32 0, i32 3
  %84 = call i64 @bus_setup_intr(i32 %75, i32* %78, i32 %79, i32 %80, i32* null, %struct.bcm_intc_softc* %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %2, align 4
  br label %105

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %93 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @rman_get_bustag(i32* %94)
  %96 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %99 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @rman_get_bushandle(i32* %100)
  %102 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  %103 = getelementptr inbounds %struct.bcm_intc_softc, %struct.bcm_intc_softc* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.bcm_intc_softc*, %struct.bcm_intc_softc** %4, align 8
  store %struct.bcm_intc_softc* %104, %struct.bcm_intc_softc** @bcm_intc_sc, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %91, %86, %69, %40, %28, %14
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.bcm_intc_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @bcm_intc_pic_register(%struct.bcm_intc_softc*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i64 @intr_pic_claim_root(i32, i64, i32, %struct.bcm_intc_softc*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.bcm_intc_softc*, i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
