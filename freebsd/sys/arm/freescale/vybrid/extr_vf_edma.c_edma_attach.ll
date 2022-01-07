; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_edma.c_edma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_edma.c_edma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_softc = type { i32, i32, i32*, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@dma_stop = common dso_local global i32 0, align 4
@dma_setup = common dso_local global i32 0, align 4
@dma_request = common dso_local global i32 0, align 4
@channel_configure = common dso_local global i32 0, align 4
@channel_free = common dso_local global i32 0, align 4
@edma_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@edma_transfer_complete_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable to alloc DMA intr resource.\0A\00", align 1
@edma_err_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to alloc DMA Err intr resource.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @edma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.edma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.edma_softc* @device_get_softc(i32 %8)
  store %struct.edma_softc* %9, %struct.edma_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %12 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 4
  %13 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %14 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %132

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @OF_getproplen(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %132

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @OF_getencprop(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %32 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @dma_stop, align 4
  %34 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %35 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %34, i32 0, i32 12
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @dma_setup, align 4
  %37 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %38 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %37, i32 0, i32 11
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @dma_request, align 4
  %40 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %41 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @channel_configure, align 4
  %43 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %44 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @channel_free, align 4
  %46 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %47 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @edma_spec, align 4
  %50 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %51 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @bus_alloc_resources(i32 %48, i32 %49, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %26
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %132

59:                                               ; preds = %26
  %60 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %61 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @rman_get_bustag(i32 %64)
  %66 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %67 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %69 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @rman_get_bushandle(i32 %72)
  %74 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %75 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %77 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @rman_get_bustag(i32 %80)
  %82 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %83 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %85 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @rman_get_bushandle(i32 %88)
  %90 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %91 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %94 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @INTR_TYPE_BIO, align 4
  %99 = load i32, i32* @INTR_MPSAFE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @edma_transfer_complete_intr, align 4
  %102 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %103 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %104 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %103, i32 0, i32 3
  %105 = call i64 @bus_setup_intr(i32 %92, i32 %97, i32 %100, i32* null, i32 %101, %struct.edma_softc* %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %59
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %2, align 4
  br label %132

111:                                              ; preds = %59
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %114 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @INTR_TYPE_BIO, align 4
  %119 = load i32, i32* @INTR_MPSAFE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @edma_err_intr, align 4
  %122 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %123 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %124 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %123, i32 0, i32 1
  %125 = call i64 @bus_setup_intr(i32 %112, i32 %117, i32 %120, i32* null, i32 %121, %struct.edma_softc* %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %111
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* @ENXIO, align 4
  store i32 %130, i32* %2, align 4
  br label %132

131:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %127, %107, %55, %24, %18
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.edma_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_bustag(i32) #1

declare dso_local i8* @rman_get_bushandle(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.edma_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
