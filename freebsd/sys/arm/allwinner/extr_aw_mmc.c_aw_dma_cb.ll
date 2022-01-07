; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_dma_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_dma_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.aw_mmc_dma_desc = type { i64, i32, i64, i32 }
%struct.aw_mmc_softc = type { i32, i64, %struct.TYPE_4__*, %struct.aw_mmc_dma_desc* }
%struct.TYPE_4__ = type { i64 }

@AW_MMC_DMA_CONFIG_CH = common dso_local global i32 0, align 4
@AW_MMC_DMA_CONFIG_OWN = common dso_local global i32 0, align 4
@AW_MMC_DMA_CONFIG_DIC = common dso_local global i32 0, align 4
@AW_MMC_DMA_CONFIG_FD = common dso_local global i32 0, align 4
@AW_MMC_DMA_CONFIG_LD = common dso_local global i32 0, align 4
@AW_MMC_DMA_CONFIG_ER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, i32, i32)* @aw_dma_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_dma_cb(i8* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aw_mmc_dma_desc*, align 8
  %11 = alloca %struct.aw_mmc_softc*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.aw_mmc_softc*
  store %struct.aw_mmc_softc* %13, %struct.aw_mmc_softc** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %11, align 8
  %16 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %131

20:                                               ; preds = %4
  %21 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %11, align 8
  %22 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %21, i32 0, i32 3
  %23 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %22, align 8
  store %struct.aw_mmc_dma_desc* %23, %struct.aw_mmc_dma_desc** %10, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %94, %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %97

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %11, align 8
  %36 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %42, i64 %44
  %46 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %59

47:                                               ; preds = %28
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %54, i64 %56
  %58 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %57, i32 0, i32 0
  store i64 %53, i64* %58, align 8
  br label %59

59:                                               ; preds = %47, %41
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %66, i64 %68
  %70 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %69, i32 0, i32 3
  store i32 %65, i32* %70, align 8
  %71 = load i32, i32* @AW_MMC_DMA_CONFIG_CH, align 4
  %72 = load i32, i32* @AW_MMC_DMA_CONFIG_OWN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @AW_MMC_DMA_CONFIG_DIC, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %76, i64 %78
  %80 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 8
  %81 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %11, align 8
  %82 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 32
  %88 = add i64 %83, %87
  %89 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %89, i64 %91
  %93 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %92, i32 0, i32 2
  store i64 %88, i64* %93, align 8
  br label %94

94:                                               ; preds = %59
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %24

97:                                               ; preds = %24
  %98 = load i32, i32* @AW_MMC_DMA_CONFIG_FD, align 4
  %99 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %100 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %99, i64 0
  %101 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @AW_MMC_DMA_CONFIG_LD, align 4
  %105 = load i32, i32* @AW_MMC_DMA_CONFIG_ER, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %107, i64 %110
  %112 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %106
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @AW_MMC_DMA_CONFIG_DIC, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %117, i64 %120
  %122 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %116
  store i32 %124, i32* %122, align 8
  %125 = load %struct.aw_mmc_dma_desc*, %struct.aw_mmc_dma_desc** %10, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %125, i64 %128
  %130 = getelementptr inbounds %struct.aw_mmc_dma_desc, %struct.aw_mmc_dma_desc* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %97, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
