; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_dma_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@bcm_dma_sc = common dso_local global %struct.bcm_dma_softc* null, align 8
@BCM_DMA_CH_MAX = common dso_local global i32 0, align 4
@BCM_DMA_CH_USED = common dso_local global i32 0, align 4
@BCM_DMA_CH_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_dma_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_dma_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** @bcm_dma_sc, align 8
  store %struct.bcm_dma_softc* %5, %struct.bcm_dma_softc** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BCM_DMA_CH_MAX, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 -1, i32* %2, align 4
  br label %73

13:                                               ; preds = %8
  %14 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BCM_DMA_CH_USED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %13
  %29 = load i32, i32* @BCM_DMA_CH_FREE, align 4
  %30 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %29
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @BCM_DMA_CH_USED, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %42 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %40
  store i32 %49, i32* %47, align 8
  %50 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %58 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %65 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @bcm_dma_reset(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %28, %13
  %70 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_unlock(i32* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bcm_dma_reset(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
