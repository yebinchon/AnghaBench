; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_dma_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bcm_dma_sc = common dso_local global %struct.bcm_dma_softc* null, align 8
@BCM_DMA_CH_INVALID = common dso_local global i32 0, align 4
@BCM_DMA_CH_MAX = common dso_local global i32 0, align 4
@BCM_DMA_CH_FREE = common dso_local global i32 0, align 4
@BCM_DMA_CH_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_dma_allocate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_dma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** @bcm_dma_sc, align 8
  store %struct.bcm_dma_softc* %7, %struct.bcm_dma_softc** %4, align 8
  %8 = load i32, i32* @BCM_DMA_CH_INVALID, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BCM_DMA_CH_MAX, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @BCM_DMA_CH_INVALID, align 4
  store i32 %13, i32* %2, align 4
  br label %106

14:                                               ; preds = %1
  %15 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %61, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @BCM_DMA_CH_MAX, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %21
  %26 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %27 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BCM_DMA_CH_FREE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @BCM_DMA_CH_FREE, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %42 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %40
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @BCM_DMA_CH_USED, align 4
  %51 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %52 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %50
  store i32 %59, i32* %57, align 4
  br label %64

60:                                               ; preds = %25
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %21

64:                                               ; preds = %37, %21
  br label %101

65:                                               ; preds = %14
  %66 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %67 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BCM_DMA_CH_FREE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %65
  %78 = load i32, i32* %3, align 4
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @BCM_DMA_CH_FREE, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %82 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %80
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @BCM_DMA_CH_USED, align 4
  %91 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %92 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %90
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %77, %65
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %103 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %102, i32 0, i32 0
  %104 = call i32 @mtx_unlock(i32* %103)
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %101, %12
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
