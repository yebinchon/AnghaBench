; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_setup_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AW_MMC_DMA_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@AW_MMC_DMA_DESC_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@aw_dma_desc_cb = common dso_local global i32 0, align 4
@AW_MMC_DMA_SEGS = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_mmc_softc*)* @aw_mmc_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_setup_dma(%struct.aw_mmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aw_mmc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.aw_mmc_softc* %0, %struct.aw_mmc_softc** %3, align 8
  %5 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @bus_get_dma_tag(i32 %7)
  %9 = load i32, i32* @AW_MMC_DMA_ALIGN, align 4
  %10 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %12 = load i32, i32* @AW_MMC_DMA_DESC_SIZE, align 4
  %13 = load i32, i32* @AW_MMC_DMA_DESC_SIZE, align 4
  %14 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %14, i32 0, i32 7
  %16 = call i32 @bus_dma_tag_create(i32 %8, i32 %9, i32 0, i32 %10, i32 %11, i32* null, i32* null, i32 %12, i32 1, i32 %13, i32 0, i32* null, i32* null, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %107

21:                                               ; preds = %1
  %22 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %25, i32 0, i32 5
  %27 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %28 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BUS_DMA_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %32, i32 0, i32 6
  %34 = call i32 @bus_dmamem_alloc(i32 %24, i32* %26, i32 %31, i32* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %107

39:                                               ; preds = %21
  %40 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %41 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AW_MMC_DMA_DESC_SIZE, align 4
  %50 = load i32, i32* @aw_dma_desc_cb, align 4
  %51 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %52 = call i32 @bus_dmamap_load(i32 %42, i32 %45, i32 %48, i32 %49, i32 %50, %struct.aw_mmc_softc* %51, i32 0)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %107

57:                                               ; preds = %39
  %58 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %64 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %2, align 4
  br label %107

66:                                               ; preds = %57
  %67 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %68 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bus_get_dma_tag(i32 %69)
  %71 = load i32, i32* @AW_MMC_DMA_ALIGN, align 4
  %72 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %73 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %74 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AW_MMC_DMA_SEGS, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* @AW_MMC_DMA_SEGS, align 4
  %82 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %83 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %88 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %89 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %88, i32 0, i32 2
  %90 = call i32 @bus_dma_tag_create(i32 %70, i32 %71, i32 0, i32 %72, i32 %73, i32* null, i32* null, i32 %80, i32 %81, i32 %86, i32 %87, i32* null, i32* null, i32* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %66
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %107

95:                                               ; preds = %66
  %96 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %97 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %100 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %99, i32 0, i32 1
  %101 = call i32 @bus_dmamap_create(i32 %98, i32 0, i32* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %95
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %104, %93, %62, %55, %37, %19
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i32*, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.aw_mmc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
