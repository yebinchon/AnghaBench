; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.zy7_devcfg_softc* }
%struct.zy7_devcfg_softc = type { i32, i32, i32 }
%struct.uio = type { i64, i32 }

@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@zy7_dma_cb2 = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_STATUS = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_PCFG_DONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ZY7_DEVCFG_DMA_SRC_ADDR = common dso_local global i32 0, align 4
@ZY7_DEVCFG_DMA_ADDR_WAIT_PCAP = common dso_local global i32 0, align 4
@ZY7_DEVCFG_DMA_DST_ADDR = common dso_local global i32 0, align 4
@ZY7_DEVCFG_DMA_ADDR_ILLEGAL = common dso_local global i32 0, align 4
@ZY7_DEVCFG_DMA_SRC_LEN = common dso_local global i32 0, align 4
@ZY7_DEVCFG_DMA_DST_LEN = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_ALL = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_MASK = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_DMA_DONE = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"zy7dma\00", align 1
@hz = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@zy7_en_level_shifters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @zy7_devcfg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_devcfg_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zy7_devcfg_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cdev*, %struct.cdev** %5, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %14, align 8
  store %struct.zy7_devcfg_softc* %15, %struct.zy7_devcfg_softc** %8, align 8
  %16 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %17 = call i32 @DEVCFG_SC_LOCK(%struct.zy7_devcfg_softc* %16)
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load %struct.uio*, %struct.uio** %6, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %29 = call i32 @zy7_devcfg_init_hw(%struct.zy7_devcfg_softc* %28)
  %30 = call i32 (...) @zy7_slcr_preload_pl()
  %31 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %32 = call i32 @zy7_devcfg_reset_pl(%struct.zy7_devcfg_softc* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %37 = call i32 @DEVCFG_SC_UNLOCK(%struct.zy7_devcfg_softc* %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %211

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %22, %3
  %41 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %42 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %45 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %46 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %45, i32 0, i32 0
  %47 = call i32 @bus_dmamem_alloc(i32 %43, i8** %9, i32 %44, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %52 = call i32 @DEVCFG_SC_UNLOCK(%struct.zy7_devcfg_softc* %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %211

54:                                               ; preds = %40
  %55 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %56 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %59 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* @zy7_dma_cb2, align 4
  %64 = call i32 @bus_dmamap_load(i32 %57, i32 %60, i8* %61, i32 %62, i32 %63, i64* %10, i32 0)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %54
  %68 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %69 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %73 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bus_dmamem_free(i32 %70, i8* %71, i32 %74)
  %76 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %77 = call i32 @DEVCFG_SC_UNLOCK(%struct.zy7_devcfg_softc* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %4, align 4
  br label %211

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %191, %79
  %81 = load %struct.uio*, %struct.uio** %6, align 8
  %82 = getelementptr inbounds %struct.uio, %struct.uio* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %192

85:                                               ; preds = %80
  %86 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %87 = load i32, i32* @ZY7_DEVCFG_INT_STATUS, align 4
  %88 = call i32 @RD4(%struct.zy7_devcfg_softc* %86, i32 %87)
  %89 = load i32, i32* @ZY7_DEVCFG_INT_PCFG_DONE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @EIO, align 4
  store i32 %93, i32* %12, align 4
  br label %192

94:                                               ; preds = %85
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = load %struct.uio*, %struct.uio** %6, align 8
  %97 = getelementptr inbounds %struct.uio, %struct.uio* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @MIN(i32 %95, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %101 = call i32 @DEVCFG_SC_UNLOCK(%struct.zy7_devcfg_softc* %100)
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.uio*, %struct.uio** %6, align 8
  %105 = call i32 @uiomove(i8* %102, i32 %103, %struct.uio* %104)
  store i32 %105, i32* %12, align 4
  %106 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %107 = call i32 @DEVCFG_SC_LOCK(%struct.zy7_devcfg_softc* %106)
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %192

111:                                              ; preds = %94
  %112 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %113 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %116 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %119 = call i32 @bus_dmamap_sync(i32 %114, i32 %117, i32 %118)
  %120 = load %struct.uio*, %struct.uio** %6, align 8
  %121 = getelementptr inbounds %struct.uio, %struct.uio* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %111
  %126 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %127 = load i32, i32* @ZY7_DEVCFG_DMA_SRC_ADDR, align 4
  %128 = load i64, i64* %10, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @WR4(%struct.zy7_devcfg_softc* %126, i32 %127, i32 %129)
  br label %139

131:                                              ; preds = %111
  %132 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %133 = load i32, i32* @ZY7_DEVCFG_DMA_SRC_ADDR, align 4
  %134 = load i64, i64* %10, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @ZY7_DEVCFG_DMA_ADDR_WAIT_PCAP, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @WR4(%struct.zy7_devcfg_softc* %132, i32 %133, i32 %137)
  br label %139

139:                                              ; preds = %131, %125
  %140 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %141 = load i32, i32* @ZY7_DEVCFG_DMA_DST_ADDR, align 4
  %142 = load i32, i32* @ZY7_DEVCFG_DMA_ADDR_ILLEGAL, align 4
  %143 = call i32 @WR4(%struct.zy7_devcfg_softc* %140, i32 %141, i32 %142)
  %144 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %145 = load i32, i32* @ZY7_DEVCFG_DMA_SRC_LEN, align 4
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 3
  %148 = sdiv i32 %147, 4
  %149 = call i32 @WR4(%struct.zy7_devcfg_softc* %144, i32 %145, i32 %148)
  %150 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %151 = load i32, i32* @ZY7_DEVCFG_DMA_DST_LEN, align 4
  %152 = call i32 @WR4(%struct.zy7_devcfg_softc* %150, i32 %151, i32 0)
  %153 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %154 = load i32, i32* @ZY7_DEVCFG_INT_STATUS, align 4
  %155 = load i32, i32* @ZY7_DEVCFG_INT_ALL, align 4
  %156 = call i32 @WR4(%struct.zy7_devcfg_softc* %153, i32 %154, i32 %155)
  %157 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %158 = load i32, i32* @ZY7_DEVCFG_INT_MASK, align 4
  %159 = load i32, i32* @ZY7_DEVCFG_INT_DMA_DONE, align 4
  %160 = xor i32 %159, -1
  %161 = call i32 @WR4(%struct.zy7_devcfg_softc* %157, i32 %158, i32 %160)
  %162 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %163 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %166 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %165, i32 0, i32 2
  %167 = load i32, i32* @PCATCH, align 4
  %168 = load i32, i32* @hz, align 4
  %169 = call i32 @mtx_sleep(i32 %164, i32* %166, i32 %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %139
  br label %192

173:                                              ; preds = %139
  %174 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %175 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %178 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %181 = call i32 @bus_dmamap_sync(i32 %176, i32 %179, i32 %180)
  %182 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %183 = load i32, i32* @ZY7_DEVCFG_INT_STATUS, align 4
  %184 = call i32 @RD4(%struct.zy7_devcfg_softc* %182, i32 %183)
  %185 = load i32, i32* @ZY7_DEVCFG_INT_PCFG_DONE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %173
  %189 = load i32, i32* @zy7_en_level_shifters, align 4
  %190 = call i32 @zy7_slcr_postload_pl(i32 %189)
  br label %191

191:                                              ; preds = %188, %173
  br label %80

192:                                              ; preds = %172, %110, %92, %80
  %193 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %194 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %197 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @bus_dmamap_unload(i32 %195, i32 %198)
  %200 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %201 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %9, align 8
  %204 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %205 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @bus_dmamem_free(i32 %202, i8* %203, i32 %206)
  %208 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %8, align 8
  %209 = call i32 @DEVCFG_SC_UNLOCK(%struct.zy7_devcfg_softc* %208)
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %192, %67, %50, %35
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @DEVCFG_SC_LOCK(%struct.zy7_devcfg_softc*) #1

declare dso_local i32 @zy7_devcfg_init_hw(%struct.zy7_devcfg_softc*) #1

declare dso_local i32 @zy7_slcr_preload_pl(...) #1

declare dso_local i32 @zy7_devcfg_reset_pl(%struct.zy7_devcfg_softc*) #1

declare dso_local i32 @DEVCFG_SC_UNLOCK(%struct.zy7_devcfg_softc*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i8*, i32) #1

declare dso_local i32 @RD4(%struct.zy7_devcfg_softc*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @WR4(%struct.zy7_devcfg_softc*, i32, i32) #1

declare dso_local i32 @mtx_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @zy7_slcr_postload_pl(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
