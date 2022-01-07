; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_dma_softc = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.bcm_dma_cb*, i32, i32 }
%struct.bcm_dma_cb = type { i32, i8*, i8* }

@bcm_dma_sc = common dso_local global %struct.bcm_dma_softc* null, align 8
@BCM_DMA_CH_MAX = common dso_local global i32 0, align 4
@BCM_DMA_CH_USED = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CS_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_dma_start(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm_dma_softc*, align 8
  %11 = alloca %struct.bcm_dma_cb*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** @bcm_dma_sc, align 8
  store %struct.bcm_dma_softc* %12, %struct.bcm_dma_softc** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BCM_DMA_CH_MAX, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %107

20:                                               ; preds = %15
  %21 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %22 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BCM_DMA_CH_USED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %107

33:                                               ; preds = %20
  %34 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %35 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %40, align 8
  store %struct.bcm_dma_cb* %41, %struct.bcm_dma_cb** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @BCM2835_ARM_IS_IO(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @IO_TO_VCBUS(i32 %46)
  %48 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %11, align 8
  %49 = getelementptr inbounds %struct.bcm_dma_cb, %struct.bcm_dma_cb* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %55

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  %52 = call i8* @PHYS_TO_VCBUS(i32 %51)
  %53 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %11, align 8
  %54 = getelementptr inbounds %struct.bcm_dma_cb, %struct.bcm_dma_cb* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @BCM2835_ARM_IS_IO(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = call i8* @IO_TO_VCBUS(i32 %60)
  %62 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %11, align 8
  %63 = getelementptr inbounds %struct.bcm_dma_cb, %struct.bcm_dma_cb* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @PHYS_TO_VCBUS(i32 %65)
  %67 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %11, align 8
  %68 = getelementptr inbounds %struct.bcm_dma_cb, %struct.bcm_dma_cb* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %11, align 8
  %72 = getelementptr inbounds %struct.bcm_dma_cb, %struct.bcm_dma_cb* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %74 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %77 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %85 = call i32 @bus_dmamap_sync(i32 %75, i32 %83, i32 %84)
  %86 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %87 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @BCM_DMA_CBADDR(i32 %89)
  %91 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %92 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @bus_write_4(i32 %88, i32 %90, i32 %98)
  %100 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %101 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @BCM_DMA_CS(i32 %103)
  %105 = load i32, i32* @CS_ACTIVE, align 4
  %106 = call i32 @bus_write_4(i32 %102, i32 %104, i32 %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %69, %32, %19
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @BCM2835_ARM_IS_IO(i32) #1

declare dso_local i8* @IO_TO_VCBUS(i32) #1

declare dso_local i8* @PHYS_TO_VCBUS(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @BCM_DMA_CBADDR(i32) #1

declare dso_local i32 @BCM_DMA_CS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
