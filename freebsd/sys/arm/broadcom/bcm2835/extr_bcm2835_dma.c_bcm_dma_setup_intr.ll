; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_dma_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, void (i32, i8*)*, %struct.bcm_dma_cb*, i8* }
%struct.bcm_dma_cb = type { i32 }

@bcm_dma_sc = common dso_local global %struct.bcm_dma_softc* null, align 8
@BCM_DMA_CH_MAX = common dso_local global i32 0, align 4
@BCM_DMA_CH_USED = common dso_local global i32 0, align 4
@INFO_INT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_dma_setup_intr(i32 %0, void (i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bcm_dma_softc*, align 8
  %9 = alloca %struct.bcm_dma_cb*, align 8
  store i32 %0, i32* %5, align 4
  store void (i32, i8*)* %1, void (i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** @bcm_dma_sc, align 8
  store %struct.bcm_dma_softc* %10, %struct.bcm_dma_softc** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BCM_DMA_CH_MAX, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %61

18:                                               ; preds = %13
  %19 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %8, align 8
  %20 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BCM_DMA_CH_USED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %61

31:                                               ; preds = %18
  %32 = load void (i32, i8*)*, void (i32, i8*)** %6, align 8
  %33 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %8, align 8
  %34 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store void (i32, i8*)* %32, void (i32, i8*)** %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %8, align 8
  %42 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i8* %40, i8** %47, align 8
  %48 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %8, align 8
  %49 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %54, align 8
  store %struct.bcm_dma_cb* %55, %struct.bcm_dma_cb** %9, align 8
  %56 = load i32, i32* @INFO_INT_EN, align 4
  %57 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %9, align 8
  %58 = getelementptr inbounds %struct.bcm_dma_cb, %struct.bcm_dma_cb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %31, %30, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
