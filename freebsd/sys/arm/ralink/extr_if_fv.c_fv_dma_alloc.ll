; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.fv_rxdesc*, i32*, i32, %struct.fv_txdesc*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fv_rxdesc = type { i32*, i32* }
%struct.fv_txdesc = type { i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32 }
%struct.fv_dmamap_arg = type { i64 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to create parent DMA tag\0A\00", align 1
@FV_RING_ALIGN = common dso_local global i32 0, align 4
@FV_TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create Tx ring DMA tag\0A\00", align 1
@FV_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create Rx ring DMA tag\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@FV_MAXFRAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to create Tx DMA tag\0A\00", align 1
@FV_RX_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create Rx DMA tag\0A\00", align 1
@FV_SFRAME_LEN = common dso_local global i32 0, align 4
@FV_MIN_FRAMELEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to create setup frame DMA tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Tx ring\0A\00", align 1
@fv_dmamap_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Tx ring\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"failed to allocate DMA'able memory for Rx ring\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"failed to load DMA'able memory for Rx ring\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"failed to allocate DMA'able memory for setup frame\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"failed to load DMA'able memory for setup frame\0A\00", align 1
@FV_TX_RING_CNT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"failed to create Tx dmamap\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"failed to create spare Rx dmamap\0A\00", align 1
@FV_RX_RING_CNT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"failed to create Rx dmamap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fv_softc*)* @fv_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fv_dma_alloc(%struct.fv_softc* %0) #0 {
  %2 = alloca %struct.fv_softc*, align 8
  %3 = alloca %struct.fv_dmamap_arg, align 8
  %4 = alloca %struct.fv_txdesc*, align 8
  %5 = alloca %struct.fv_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fv_softc* %0, %struct.fv_softc** %2, align 8
  %8 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %9 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bus_get_dma_tag(i32 %10)
  %12 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %16 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %17 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 12
  %19 = call i32 @bus_dma_tag_create(i32 %11, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 0, i32 %15, i32 0, i32* null, i32* null, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %24 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %397

27:                                               ; preds = %1
  %28 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %29 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FV_RING_ALIGN, align 4
  %33 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i32, i32* @FV_TX_RING_SIZE, align 4
  %36 = load i32, i32* @FV_TX_RING_SIZE, align 4
  %37 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %38 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 11
  %40 = call i32 @bus_dma_tag_create(i32 %31, i32 %32, i32 0, i32 %33, i32 %34, i32* null, i32* null, i32 %35, i32 1, i32 %36, i32 0, i32* null, i32* null, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %45 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %397

48:                                               ; preds = %27
  %49 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %50 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FV_RING_ALIGN, align 4
  %54 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load i32, i32* @FV_RX_RING_SIZE, align 4
  %57 = load i32, i32* @FV_RX_RING_SIZE, align 4
  %58 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %59 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 9
  %61 = call i32 @bus_dma_tag_create(i32 %52, i32 %53, i32 0, i32 %54, i32 %55, i32* null, i32* null, i32 %56, i32 1, i32 %57, i32 0, i32* null, i32* null, i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %66 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %397

69:                                               ; preds = %48
  %70 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %71 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %75 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %76 = load i32, i32* @MCLBYTES, align 4
  %77 = load i32, i32* @FV_MAXFRAGS, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* @FV_MAXFRAGS, align 4
  %80 = load i32, i32* @MCLBYTES, align 4
  %81 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %82 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = call i32 @bus_dma_tag_create(i32 %73, i32 1, i32 0, i32 %74, i32 %75, i32* null, i32* null, i32 %78, i32 %79, i32 %80, i32 0, i32* null, i32* null, i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %69
  %88 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %89 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %397

92:                                               ; preds = %69
  %93 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %94 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FV_RX_ALIGN, align 4
  %98 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %99 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %100 = load i32, i32* @MCLBYTES, align 4
  %101 = load i32, i32* @MCLBYTES, align 4
  %102 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %103 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i32 @bus_dma_tag_create(i32 %96, i32 %97, i32 0, i32 %98, i32 %99, i32* null, i32* null, i32 %100, i32 1, i32 %101, i32 0, i32* null, i32* null, i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %92
  %109 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %110 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %397

113:                                              ; preds = %92
  %114 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %115 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 12
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %119 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %120 = load i32, i32* @FV_SFRAME_LEN, align 4
  %121 = load i32, i32* @FV_MIN_FRAMELEN, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* @FV_SFRAME_LEN, align 4
  %124 = load i32, i32* @FV_MIN_FRAMELEN, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %127 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 7
  %129 = call i32 @bus_dma_tag_create(i32 %117, i32 4, i32 0, i32 %118, i32 %119, i32* null, i32* null, i32 %122, i32 1, i32 %125, i32 0, i32* null, i32* null, i32* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %113
  %133 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %134 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %397

137:                                              ; preds = %113
  %138 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %139 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %143 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  %145 = bitcast i32* %144 to i8**
  %146 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %147 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @BUS_DMA_ZERO, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %152 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 10
  %154 = call i32 @bus_dmamem_alloc(i32 %141, i8** %145, i32 %150, i32* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %137
  %158 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %159 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @device_printf(i32 %160, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %397

162:                                              ; preds = %137
  %163 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %163, align 8
  %164 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %165 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %169 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %173 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @FV_TX_RING_SIZE, align 4
  %177 = load i32, i32* @fv_dmamap_cb, align 4
  %178 = call i32 @bus_dmamap_load(i32 %167, i32 %171, i32 %175, i32 %176, i32 %177, %struct.fv_dmamap_arg* %3, i32 0)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %162
  %182 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181, %162
  %186 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %187 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @device_printf(i32 %188, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %397

190:                                              ; preds = %181
  %191 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %194 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  %196 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %197 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %201 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 3
  %203 = bitcast i32* %202 to i8**
  %204 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %205 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @BUS_DMA_ZERO, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %210 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 8
  %212 = call i32 @bus_dmamem_alloc(i32 %199, i8** %203, i32 %208, i32* %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %190
  %216 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %217 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @device_printf(i32 %218, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %397

220:                                              ; preds = %190
  %221 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %221, align 8
  %222 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %223 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %227 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %231 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @FV_RX_RING_SIZE, align 4
  %235 = load i32, i32* @fv_dmamap_cb, align 4
  %236 = call i32 @bus_dmamap_load(i32 %225, i32 %229, i32 %233, i32 %234, i32 %235, %struct.fv_dmamap_arg* %3, i32 0)
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %220
  %240 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %239, %220
  %244 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %245 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @device_printf(i32 %246, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  br label %397

248:                                              ; preds = %239
  %249 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %252 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  store i64 %250, i64* %253, align 8
  %254 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %255 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %259 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 5
  %261 = bitcast i32* %260 to i8**
  %262 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %263 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @BUS_DMA_ZERO, align 4
  %266 = or i32 %264, %265
  %267 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %268 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 6
  %270 = call i32 @bus_dmamem_alloc(i32 %257, i8** %261, i32 %266, i32* %269)
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %248
  %274 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %275 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @device_printf(i32 %276, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %397

278:                                              ; preds = %248
  %279 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  store i64 0, i64* %279, align 8
  %280 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %281 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %285 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %289 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @FV_SFRAME_LEN, align 4
  %293 = load i32, i32* @fv_dmamap_cb, align 4
  %294 = call i32 @bus_dmamap_load(i32 %283, i32 %287, i32 %291, i32 %292, i32 %293, %struct.fv_dmamap_arg* %3, i32 0)
  store i32 %294, i32* %6, align 4
  %295 = load i32, i32* %6, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %278
  %298 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %297, %278
  %302 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %303 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @device_printf(i32 %304, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  br label %397

306:                                              ; preds = %297
  %307 = getelementptr inbounds %struct.fv_dmamap_arg, %struct.fv_dmamap_arg* %3, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %310 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 2
  store i64 %308, i64* %311, align 8
  store i32 0, i32* %7, align 4
  br label %312

312:                                              ; preds = %343, %306
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @FV_TX_RING_CNT, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %346

316:                                              ; preds = %312
  %317 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %318 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 4
  %320 = load %struct.fv_txdesc*, %struct.fv_txdesc** %319, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %320, i64 %322
  store %struct.fv_txdesc* %323, %struct.fv_txdesc** %4, align 8
  %324 = load %struct.fv_txdesc*, %struct.fv_txdesc** %4, align 8
  %325 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %324, i32 0, i32 1
  store i32* null, i32** %325, align 8
  %326 = load %struct.fv_txdesc*, %struct.fv_txdesc** %4, align 8
  %327 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %326, i32 0, i32 0
  store i32* null, i32** %327, align 8
  %328 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %329 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.fv_txdesc*, %struct.fv_txdesc** %4, align 8
  %333 = getelementptr inbounds %struct.fv_txdesc, %struct.fv_txdesc* %332, i32 0, i32 0
  %334 = call i32 @bus_dmamap_create(i32 %331, i32 0, i32** %333)
  store i32 %334, i32* %6, align 4
  %335 = load i32, i32* %6, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %316
  %338 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %339 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @device_printf(i32 %340, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %397

342:                                              ; preds = %316
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %7, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %7, align 4
  br label %312

346:                                              ; preds = %312
  %347 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %348 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %352 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 2
  %354 = call i32 @bus_dmamap_create(i32 %350, i32 0, i32** %353)
  store i32 %354, i32* %6, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %346
  %357 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %358 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @device_printf(i32 %359, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  br label %397

361:                                              ; preds = %346
  store i32 0, i32* %7, align 4
  br label %362

362:                                              ; preds = %393, %361
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* @FV_RX_RING_CNT, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %396

366:                                              ; preds = %362
  %367 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %368 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 1
  %370 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %369, align 8
  %371 = load i32, i32* %7, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %370, i64 %372
  store %struct.fv_rxdesc* %373, %struct.fv_rxdesc** %5, align 8
  %374 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %5, align 8
  %375 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %374, i32 0, i32 1
  store i32* null, i32** %375, align 8
  %376 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %5, align 8
  %377 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %376, i32 0, i32 0
  store i32* null, i32** %377, align 8
  %378 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %379 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load %struct.fv_rxdesc*, %struct.fv_rxdesc** %5, align 8
  %383 = getelementptr inbounds %struct.fv_rxdesc, %struct.fv_rxdesc* %382, i32 0, i32 0
  %384 = call i32 @bus_dmamap_create(i32 %381, i32 0, i32** %383)
  store i32 %384, i32* %6, align 4
  %385 = load i32, i32* %6, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %366
  %388 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %389 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @device_printf(i32 %390, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %397

392:                                              ; preds = %366
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %7, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %7, align 4
  br label %362

396:                                              ; preds = %362
  br label %397

397:                                              ; preds = %396, %387, %356, %337, %301, %273, %243, %215, %185, %157, %132, %108, %87, %64, %43, %22
  %398 = load i32, i32* %6, align 4
  ret i32 %398
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.fv_dmamap_arg*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
