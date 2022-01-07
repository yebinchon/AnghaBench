; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_setup_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32, i64, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DESC_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot create TX descriptor ring tag\0A\00", align 1
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot allocate TX descriptor ring\0A\00", align 1
@awg_dmamap_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot load TX descriptor ring\0A\00", align 1
@TX_DESC_COUNT = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@TX_MAX_SEGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"cannot create TX buffer tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot create TX buffer map\0A\00", align 1
@RX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"cannot create RX descriptor ring tag\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"cannot allocate RX descriptor ring\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"cannot load RX descriptor ring\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"cannot create RX buffer tag\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"cannot create RX buffer spare map\0A\00", align 1
@RX_DESC_COUNT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"cannot create RX buffer map\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"cannot create RX buffer\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@EMAC_TX_DMA_LIST = common dso_local global i32 0, align 4
@EMAC_RX_DMA_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @awg_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_setup_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.awg_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.awg_softc* @device_get_softc(i32 %7)
  store %struct.awg_softc* %8, %struct.awg_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @bus_get_dma_tag(i32 %9)
  %11 = load i32, i32* @DESC_ALIGN, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i32, i32* @TX_DESC_SIZE, align 4
  %15 = load i32, i32* @TX_DESC_SIZE, align 4
  %16 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %17 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 6
  %19 = call i32 @bus_dma_tag_create(i32 %10, i32 %11, i32 0, i32 %12, i32 %13, i32* null, i32* null, i32 %14, i32 1, i32 %15, i32 0, i32* null, i32* null, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %339

26:                                               ; preds = %1
  %27 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %28 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %32 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = bitcast %struct.TYPE_10__** %33 to i8**
  %35 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %36 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @BUS_DMA_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %41 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  %43 = call i32 @bus_dmamem_alloc(i32 %30, i8** %34, i32 %39, i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %26
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %339

50:                                               ; preds = %26
  %51 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %52 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %56 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %60 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i32, i32* @TX_DESC_SIZE, align 4
  %64 = load i32, i32* @awg_dmamap_cb, align 4
  %65 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %66 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = call i32 @bus_dmamap_load(i32 %54, i32 %58, %struct.TYPE_10__* %62, i32 %63, i32 %64, i64* %67, i32 0)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %50
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %339

75:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %98, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @TX_DESC_COUNT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %82 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @TX_NEXT(i32 %85)
  %87 = call i64 @DESC_OFF(i32 %86)
  %88 = add nsw i64 %84, %87
  %89 = call i8* @htole32(i64 %88)
  %90 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %91 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i8* %89, i8** %97, align 8
  br label %98

98:                                               ; preds = %80
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %76

101:                                              ; preds = %76
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @bus_get_dma_tag(i32 %102)
  %104 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %105 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %106 = load i32, i32* @MCLBYTES, align 4
  %107 = load i32, i32* @TX_MAX_SEGS, align 4
  %108 = load i32, i32* @MCLBYTES, align 4
  %109 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %110 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = call i32 @bus_dma_tag_create(i32 %103, i32 1, i32 0, i32 %104, i32 %105, i32* null, i32* null, i32 %106, i32 %107, i32 %108, i32 0, i32* null, i32* null, i32* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %101
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %339

119:                                              ; preds = %101
  %120 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %121 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %148, %119
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @TX_DESC_COUNT, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %123
  %128 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %129 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %133 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = call i32 @bus_dmamap_create(i32 %131, i32 0, i32* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %127
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @device_printf(i32 %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %339

147:                                              ; preds = %127
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %123

151:                                              ; preds = %123
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @bus_get_dma_tag(i32 %152)
  %154 = load i32, i32* @DESC_ALIGN, align 4
  %155 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %156 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %157 = load i32, i32* @RX_DESC_SIZE, align 4
  %158 = load i32, i32* @RX_DESC_SIZE, align 4
  %159 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %160 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = call i32 @bus_dma_tag_create(i32 %153, i32 %154, i32 0, i32 %155, i32 %156, i32* null, i32* null, i32 %157, i32 1, i32 %158, i32 0, i32* null, i32* null, i32* %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %151
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %2, align 4
  br label %339

169:                                              ; preds = %151
  %170 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %171 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %175 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 5
  %177 = bitcast %struct.TYPE_10__** %176 to i8**
  %178 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %179 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @BUS_DMA_ZERO, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %184 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = call i32 @bus_dmamem_alloc(i32 %173, i8** %177, i32 %182, i32* %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %169
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @device_printf(i32 %190, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %339

193:                                              ; preds = %169
  %194 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %195 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %199 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %203 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 5
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = load i32, i32* @RX_DESC_SIZE, align 4
  %207 = load i32, i32* @awg_dmamap_cb, align 4
  %208 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %209 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = call i32 @bus_dmamap_load(i32 %197, i32 %201, %struct.TYPE_10__* %205, i32 %206, i32 %207, i64* %210, i32 0)
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %193
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @device_printf(i32 %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %217 = load i32, i32* %5, align 4
  store i32 %217, i32* %2, align 4
  br label %339

218:                                              ; preds = %193
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @bus_get_dma_tag(i32 %219)
  %221 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %222 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %223 = load i32, i32* @MCLBYTES, align 4
  %224 = load i32, i32* @MCLBYTES, align 4
  %225 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %226 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 4
  %228 = call i32 @bus_dma_tag_create(i32 %220, i32 1, i32 0, i32 %221, i32 %222, i32* null, i32* null, i32 %223, i32 1, i32 %224, i32 0, i32* null, i32* null, i32* %227)
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %218
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @device_printf(i32 %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %234 = load i32, i32* %5, align 4
  store i32 %234, i32* %2, align 4
  br label %339

235:                                              ; preds = %218
  %236 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %237 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %241 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 6
  %243 = call i32 @bus_dmamap_create(i32 %239, i32 0, i32* %242)
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %235
  %247 = load i32, i32* %3, align 4
  %248 = call i32 @device_printf(i32 %247, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %249 = load i32, i32* %5, align 4
  store i32 %249, i32* %2, align 4
  br label %339

250:                                              ; preds = %235
  store i32 0, i32* %6, align 4
  br label %251

251:                                              ; preds = %311, %250
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* @RX_DESC_COUNT, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %314

255:                                              ; preds = %251
  %256 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %257 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %6, align 4
  %261 = call i32 @RX_NEXT(i32 %260)
  %262 = call i64 @DESC_OFF(i32 %261)
  %263 = add nsw i64 %259, %262
  %264 = call i8* @htole32(i64 %263)
  %265 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %266 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  store i8* %264, i8** %272, align 8
  %273 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %274 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %278 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 3
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 1
  %285 = call i32 @bus_dmamap_create(i32 %276, i32 0, i32* %284)
  store i32 %285, i32* %5, align 4
  %286 = load i32, i32* %5, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %255
  %289 = load i32, i32* %3, align 4
  %290 = call i32 @device_printf(i32 %289, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %291 = load i32, i32* %5, align 4
  store i32 %291, i32* %2, align 4
  br label %339

292:                                              ; preds = %255
  %293 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %294 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %295, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  store i32* null, i32** %300, align 8
  %301 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %302 = load i32, i32* %6, align 4
  %303 = call i32 @awg_newbuf_rx(%struct.awg_softc* %301, i32 %302)
  store i32 %303, i32* %5, align 4
  %304 = load i32, i32* %5, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %292
  %307 = load i32, i32* %3, align 4
  %308 = call i32 @device_printf(i32 %307, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %309 = load i32, i32* %5, align 4
  store i32 %309, i32* %2, align 4
  br label %339

310:                                              ; preds = %292
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %6, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %6, align 4
  br label %251

314:                                              ; preds = %251
  %315 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %316 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %320 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %324 = call i32 @bus_dmamap_sync(i32 %318, i32 %322, i32 %323)
  %325 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %326 = load i32, i32* @EMAC_TX_DMA_LIST, align 4
  %327 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %328 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @WR4(%struct.awg_softc* %325, i32 %326, i64 %330)
  %332 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %333 = load i32, i32* @EMAC_RX_DMA_LIST, align 4
  %334 = load %struct.awg_softc*, %struct.awg_softc** %4, align 8
  %335 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @WR4(%struct.awg_softc* %332, i32 %333, i64 %337)
  store i32 0, i32* %2, align 4
  br label %339

339:                                              ; preds = %314, %306, %288, %246, %231, %214, %189, %165, %143, %115, %71, %46, %22
  %340 = load i32, i32* %2, align 4
  ret i32 %340
}

declare dso_local %struct.awg_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, %struct.TYPE_10__*, i32, i32, i64*, i32) #1

declare dso_local i8* @htole32(i64) #1

declare dso_local i64 @DESC_OFF(i32) #1

declare dso_local i32 @TX_NEXT(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @RX_NEXT(i32) #1

declare dso_local i32 @awg_newbuf_rx(%struct.awg_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
