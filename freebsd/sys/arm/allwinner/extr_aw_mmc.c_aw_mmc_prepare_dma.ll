; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_prepare_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_prepare_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.mmc_command* }
%struct.mmc_command = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mmc_command }

@AW_MMC_DMA_SEGS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@aw_dma_cb = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@AW_MMC_GCTL = common dso_local global i32 0, align 4
@AW_MMC_GCTL_FIFO_AC_MOD = common dso_local global i32 0, align 4
@AW_MMC_GCTL_DMA_ENB = common dso_local global i32 0, align 4
@AW_MMC_GCTL_DMA_RST = common dso_local global i32 0, align 4
@AW_MMC_DMAC = common dso_local global i32 0, align 4
@AW_MMC_DMAC_IDMAC_SOFT_RST = common dso_local global i32 0, align 4
@AW_MMC_DMAC_IDMAC_IDMA_ON = common dso_local global i32 0, align 4
@AW_MMC_DMAC_IDMAC_FIX_BURST = common dso_local global i32 0, align 4
@AW_MMC_IDIE = common dso_local global i32 0, align 4
@AW_MMC_IDST_TX_INT = common dso_local global i32 0, align 4
@AW_MMC_IDST_RX_INT = common dso_local global i32 0, align 4
@AW_MMC_DLBA = common dso_local global i32 0, align 4
@AW_MMC_FWLR = common dso_local global i32 0, align 4
@AW_MMC_DMA_FTRGLEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_mmc_softc*)* @aw_mmc_prepare_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_prepare_dma(%struct.aw_mmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aw_mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  store %struct.aw_mmc_softc* %0, %struct.aw_mmc_softc** %3, align 8
  %8 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %8, i32 0, i32 7
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.mmc_command*, %struct.mmc_command** %11, align 8
  store %struct.mmc_command* %12, %struct.mmc_command** %6, align 8
  %13 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %18, i32 0, i32 6
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AW_MMC_DMA_SEGS, align 4
  %24 = mul nsw i32 %22, %23
  %25 = icmp sgt i32 %17, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @EFBIG, align 4
  store i32 %27, i32* %2, align 4
  br label %156

28:                                               ; preds = %1
  %29 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %30 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @aw_dma_cb, align 4
  %46 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %47 = call i32 @bus_dmamap_load(i32 %31, i32 %34, i32 %39, i32 %44, i32 %45, %struct.aw_mmc_softc* %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %28
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %156

52:                                               ; preds = %28
  %53 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %2, align 4
  br label %156

61:                                               ; preds = %52
  %62 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %63 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MMC_DATA_WRITE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %76 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %79 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @bus_dmamap_sync(i32 %77, i32 %80, i32 %81)
  %83 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %84 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %87 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %90 = call i32 @bus_dmamap_sync(i32 %85, i32 %88, i32 %89)
  %91 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %92 = load i32, i32* @AW_MMC_GCTL, align 4
  %93 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @AW_MMC_GCTL_FIFO_AC_MOD, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @AW_MMC_GCTL_DMA_ENB, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %102 = load i32, i32* @AW_MMC_GCTL, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @AW_MMC_GCTL_DMA_RST, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %109 = load i32, i32* @AW_MMC_GCTL, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %113 = load i32, i32* @AW_MMC_DMAC, align 4
  %114 = load i32, i32* @AW_MMC_DMAC_IDMAC_SOFT_RST, align 4
  %115 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %112, i32 %113, i32 %114)
  %116 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %117 = load i32, i32* @AW_MMC_DMAC, align 4
  %118 = load i32, i32* @AW_MMC_DMAC_IDMAC_IDMA_ON, align 4
  %119 = load i32, i32* @AW_MMC_DMAC_IDMAC_FIX_BURST, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %116, i32 %117, i32 %120)
  %122 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %123 = load i32, i32* @AW_MMC_IDIE, align 4
  %124 = call i32 @AW_MMC_READ_4(%struct.aw_mmc_softc* %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %126 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MMC_DATA_WRITE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %74
  %134 = load i32, i32* @AW_MMC_IDST_TX_INT, align 4
  %135 = load i32, i32* %7, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %7, align 4
  br label %141

137:                                              ; preds = %74
  %138 = load i32, i32* @AW_MMC_IDST_RX_INT, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %143 = load i32, i32* @AW_MMC_IDIE, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %142, i32 %143, i32 %144)
  %146 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %147 = load i32, i32* @AW_MMC_DLBA, align 4
  %148 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %149 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %146, i32 %147, i32 %150)
  %152 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %3, align 8
  %153 = load i32, i32* @AW_MMC_FWLR, align 4
  %154 = load i32, i32* @AW_MMC_DMA_FTRGLEVEL, align 4
  %155 = call i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc* %152, i32 %153, i32 %154)
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %141, %57, %50, %26
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.aw_mmc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @AW_MMC_READ_4(%struct.aw_mmc_softc*, i32) #1

declare dso_local i32 @AW_MMC_WRITE_4(%struct.aw_mmc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
