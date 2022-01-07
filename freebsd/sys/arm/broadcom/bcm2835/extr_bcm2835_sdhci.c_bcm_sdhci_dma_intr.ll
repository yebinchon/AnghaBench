; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_dma_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_dma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sdhci_softc = type { i64, i64, i64, i32, i32, i32, %struct.sdhci_slot }
%struct.sdhci_slot = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"command aborted in the middle of DMA\0A\00", align 1
@MMC_DATA_READ = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_AVAIL = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@SDHCI_INT_SPACE_AVAIL = common dso_local global i32 0, align 4
@BCM_SDHCI_BUFFER_SIZE = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@bcm_sdhci_dmacb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@MMC_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @bcm_sdhci_dma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sdhci_dma_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bcm_sdhci_softc*, align 8
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.bcm_sdhci_softc*
  store %struct.bcm_sdhci_softc* %12, %struct.bcm_sdhci_softc** %5, align 8
  %13 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %14 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %13, i32 0, i32 6
  store %struct.sdhci_slot* %14, %struct.sdhci_slot** %6, align 8
  %15 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %16 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %19 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %24 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %23, i32 0, i32 2
  %25 = call i32 @mtx_unlock(i32* %24)
  %26 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %27 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %237

30:                                               ; preds = %2
  %31 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %32 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %35 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %40 = call i32 @bcm_sdhci_start_dma_seg(%struct.bcm_sdhci_softc* %39)
  %41 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %42 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %41, i32 0, i32 2
  %43 = call i32 @mtx_unlock(i32* %42)
  br label %237

44:                                               ; preds = %30
  %45 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %46 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MMC_DATA_READ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  store i32 %57, i32* %8, align 4
  br label %61

58:                                               ; preds = %44
  %59 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %63 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %66 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @bus_dmamap_sync(i32 %64, i32 %67, i32 %68)
  %70 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %71 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %74 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @bus_dmamap_unload(i32 %72, i32 %75)
  %77 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %78 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %80 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @BCM_SDHCI_BUFFER_SIZE, align 4
  %82 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %83 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %90 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %88, %91
  %93 = call i32 @min(i32 %81, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @BCM_SDHCI_BUFFER_SIZE, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %61
  %98 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %99 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %104 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %108 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %111 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %112 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %113 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bcm_sdhci_write_4(i32 %109, %struct.sdhci_slot* %110, i32 %111, i32 %114)
  %116 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %117 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %116, i32 0, i32 2
  %118 = call i32 @mtx_unlock(i32* %117)
  br label %237

119:                                              ; preds = %61
  %120 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %121 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %124 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %125 = call i32 @bcm_sdhci_read_4(i32 %122, %struct.sdhci_slot* %123, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %119
  %131 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %132 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %135 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @bcm_sdhci_write_4(i32 %133, %struct.sdhci_slot* %134, i32 %135, i32 %136)
  %138 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %139 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %144 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %148 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %151 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %152 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %153 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @bcm_sdhci_write_4(i32 %149, %struct.sdhci_slot* %150, i32 %151, i32 %154)
  %156 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %157 = call i32 @sdhci_finish_data(%struct.sdhci_slot* %156)
  br label %233

158:                                              ; preds = %119
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %213

163:                                              ; preds = %158
  %164 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %165 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %168 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @bcm_sdhci_write_4(i32 %166, %struct.sdhci_slot* %167, i32 %168, i32 %169)
  %171 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %172 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %175 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %178 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %177, i32 0, i32 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %186 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @bcm_sdhci_dmacb, align 4
  %192 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %193 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %194 = call i64 @bus_dmamap_load(i32 %173, i32 %176, i32* %189, i32 %190, i32 %191, %struct.bcm_sdhci_softc* %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %163
  %197 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %198 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %196, %163
  %202 = load i32, i32* @MMC_ERR_NO_MEMORY, align 4
  %203 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %204 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %203, i32 0, i32 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i32 %202, i32* %206, align 8
  %207 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %208 = call i32 @sdhci_finish_data(%struct.sdhci_slot* %207)
  br label %212

209:                                              ; preds = %196
  %210 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %5, align 8
  %211 = call i32 @bcm_sdhci_start_dma_seg(%struct.bcm_sdhci_softc* %210)
  br label %212

212:                                              ; preds = %209, %201
  br label %232

213:                                              ; preds = %158
  %214 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %215 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %220 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  %223 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %224 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %227 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %228 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %229 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @bcm_sdhci_write_4(i32 %225, %struct.sdhci_slot* %226, i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %213, %212
  br label %233

233:                                              ; preds = %232, %130
  %234 = load %struct.sdhci_slot*, %struct.sdhci_slot** %6, align 8
  %235 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %234, i32 0, i32 2
  %236 = call i32 @mtx_unlock(i32* %235)
  br label %237

237:                                              ; preds = %233, %97, %38, %22
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bcm_sdhci_start_dma_seg(%struct.bcm_sdhci_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bcm_sdhci_write_4(i32, %struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @bcm_sdhci_read_4(i32, %struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_finish_data(%struct.sdhci_slot*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.bcm_sdhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
