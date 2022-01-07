; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_start_dma_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_start_dma_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sdhci_softc = type { i32*, i32, %struct.sdhci_slot, i32, i32, i32, i32, i32*, i32 }
%struct.sdhci_slot = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BCM_DMA_32BIT = common dso_local global i32 0, align 4
@BCM_DMA_128BIT = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@BCM_DMA_DREQ_EMMC = common dso_local global i32 0, align 4
@BCM_DMA_SAME_ADDR = common dso_local global i32 0, align 4
@BCM_DMA_DREQ_NONE = common dso_local global i32 0, align 4
@BCM_DMA_INC_ADDR = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_SPACE_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bcm2835_sdhci: failed DMA start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sdhci_softc*)* @bcm_sdhci_start_dma_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sdhci_start_dma_seg(%struct.bcm_sdhci_softc* %0) #0 {
  %2 = alloca %struct.bcm_sdhci_softc*, align 8
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcm_sdhci_softc* %0, %struct.bcm_sdhci_softc** %2, align 8
  %11 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %11, i32 0, i32 2
  store %struct.sdhci_slot* %12, %struct.sdhci_slot** %3, align 8
  %13 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %17 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %26 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 15
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @BCM_DMA_32BIT, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @BCM_DMA_128BIT, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %10, align 4
  %38 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %39 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MMC_DATA_READ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %36
  %49 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BCM_DMA_DREQ_EMMC, align 4
  %53 = load i32, i32* @BCM_DMA_SAME_ADDR, align 4
  %54 = load i32, i32* @BCM_DMA_32BIT, align 4
  %55 = call i32 @bcm_dma_setup_src(i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BCM_DMA_DREQ_NONE, align 4
  %60 = load i32, i32* @BCM_DMA_INC_ADDR, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @bcm_dma_setup_dst(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %64 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  %66 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %67 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %73, i32* %9, align 4
  br label %100

74:                                               ; preds = %36
  %75 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %76 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BCM_DMA_DREQ_NONE, align 4
  %79 = load i32, i32* @BCM_DMA_INC_ADDR, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @bcm_dma_setup_src(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %83 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BCM_DMA_DREQ_EMMC, align 4
  %86 = load i32, i32* @BCM_DMA_SAME_ADDR, align 4
  %87 = load i32, i32* @BCM_DMA_32BIT, align 4
  %88 = call i32 @bcm_dma_setup_dst(i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %90 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %5, align 4
  %96 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %97 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %74, %48
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %100
  %104 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %105 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %108 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @bus_dmamap_sync(i32 %106, i32 %109, i32 %110)
  %112 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %113 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %119 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %123 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %126 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %125, i32 0, i32 2
  %127 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %128 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %129 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bcm_sdhci_write_4(i32 %124, %struct.sdhci_slot* %126, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %103, %100
  %133 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %2, align 8
  %134 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @bcm_dma_start(i32 %135, i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @KASSERT(i32 %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @bcm_dma_setup_src(i32, i32, i32, i32) #1

declare dso_local i32 @bcm_dma_setup_dst(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bcm_sdhci_write_4(i32, %struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @bcm_dma_start(i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
