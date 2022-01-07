; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a31_dmac.c_a31dmac_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a31_dmac.c_a31dmac_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a31dmac_softc = type { i32, i32*, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32*, i32*, i32*, %struct.a31dmac_softc* }
%struct.a31dmac_config = type { i32 }
%struct.TYPE_5__ = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@a31dmac_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"a31 dmac\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot get hwreset\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"cannot de-assert reset\0A\00", align 1
@DESC_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@DESC_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot create dma tag\0A\00", align 1
@DMA_IRQ_EN_REG0 = common dso_local global i32 0, align 4
@DMA_IRQ_EN_REG1 = common dso_local global i32 0, align 4
@DMA_IRQ_PEND_REG0 = common dso_local global i32 0, align 4
@DMA_IRQ_PEND_REG1 = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"cannot allocate dma mem\0A\00", align 1
@a31dmac_dmamap_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"cannot load dma map\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@a31dmac_intr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"could not setup interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a31dmac_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a31dmac_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.a31dmac_softc*, align 8
  %5 = alloca %struct.a31dmac_config*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.a31dmac_softc* @device_get_softc(i32 %10)
  store %struct.a31dmac_softc* %11, %struct.a31dmac_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @compat_data, align 4
  %14 = call %struct.TYPE_5__* @ofw_bus_search_compatible(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.a31dmac_config*
  store %struct.a31dmac_config* %18, %struct.a31dmac_config** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %7, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @a31dmac_spec, align 4
  %21 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %22 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @bus_alloc_resources(i32 %19, i32 %20, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %341

30:                                               ; preds = %1
  %31 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %32 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %31, i32 0, i32 5
  %33 = load i32, i32* @MTX_SPIN, align 4
  %34 = call i32 @mtx_init(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @clk_get_by_ofw_index(i32 %35, i32 0, i32 0, i32** %8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %243

41:                                               ; preds = %30
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @clk_enable(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %243

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @hwreset_get_by_ofw_idx(i32 %49, i32 0, i32 0, i32** %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %243

55:                                               ; preds = %48
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @hwreset_deassert(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %243

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @bus_get_dma_tag(i32 %63)
  %65 = load i32, i32* @DESC_ALIGN, align 4
  %66 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %67 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %68 = load i32, i32* @DESC_SIZE, align 4
  %69 = load i32, i32* @DESC_SIZE, align 4
  %70 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %71 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %70, i32 0, i32 4
  %72 = call i32 @bus_dma_tag_create(i32 %64, i32 %65, i32 0, i32 %66, i32 %67, i32* null, i32* null, i32 %68, i32 1, i32 %69, i32 0, i32* null, i32* null, i32* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %243

78:                                               ; preds = %62
  %79 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %80 = load i32, i32* @DMA_IRQ_EN_REG0, align 4
  %81 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %79, i32 %80, i32 0)
  %82 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %83 = load i32, i32* @DMA_IRQ_EN_REG1, align 4
  %84 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %82, i32 %83, i32 0)
  %85 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %86 = load i32, i32* @DMA_IRQ_PEND_REG0, align 4
  %87 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %85, i32 %86, i32 -1)
  %88 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %89 = load i32, i32* @DMA_IRQ_PEND_REG1, align 4
  %90 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %88, i32 %89, i32 -1)
  %91 = load %struct.a31dmac_config*, %struct.a31dmac_config** %5, align 8
  %92 = getelementptr inbounds %struct.a31dmac_config, %struct.a31dmac_config* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %95 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %97 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 48, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @M_DEVBUF, align 4
  %103 = load i32, i32* @M_WAITOK, align 4
  %104 = load i32, i32* @M_ZERO, align 4
  %105 = or i32 %103, %104
  %106 = call %struct.TYPE_6__* @malloc(i32 %101, i32 %102, i32 %105)
  %107 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %108 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %107, i32 0, i32 3
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %108, align 8
  store i64 0, i64* %6, align 8
  br label %109

109:                                              ; preds = %204, %78
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %112 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp ult i64 %110, %114
  br i1 %115, label %116, label %207

116:                                              ; preds = %109
  %117 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %118 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %119 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  store %struct.a31dmac_softc* %117, %struct.a31dmac_softc** %123, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %126 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i64 %124, i64* %130, align 8
  %131 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %132 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %131, i32 0, i32 3
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 4
  store i32* null, i32** %136, align 8
  %137 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %138 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  store i32* null, i32** %142, align 8
  %143 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %144 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %147 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %146, i32 0, i32 3
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = bitcast i32** %151 to i8**
  %153 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %154 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %157 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %156, i32 0, i32 3
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i64, i64* %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = call i32 @bus_dmamem_alloc(i32 %145, i8** %152, i32 %155, i32* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %116
  %166 = load i32, i32* %3, align 4
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %243

168:                                              ; preds = %116
  %169 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %170 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %173 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %172, i32 0, i32 3
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i64, i64* %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %180 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %179, i32 0, i32 3
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i64, i64* %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* @a31dmac_dmamap_cb, align 4
  %187 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %188 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %187, i32 0, i32 3
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %190
  %192 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %193 = call i32 @bus_dmamap_load(i32 %171, i32 %178, i32* %185, i32 4, i32 %186, %struct.TYPE_6__* %191, i32 %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %168
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @device_printf(i32 %197, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %243

199:                                              ; preds = %168
  %200 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @DMA_EN_REG(i64 %201)
  %203 = call i32 @DMA_WRITE(%struct.a31dmac_softc* %200, i32 %202, i32 0)
  br label %204

204:                                              ; preds = %199
  %205 = load i64, i64* %6, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %6, align 8
  br label %109

207:                                              ; preds = %109
  %208 = load i32, i32* %3, align 4
  %209 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %210 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @INTR_MPSAFE, align 4
  %215 = load i32, i32* @INTR_TYPE_MISC, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @a31dmac_intr, align 4
  %218 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %219 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %220 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %219, i32 0, i32 2
  %221 = call i32 @bus_setup_intr(i32 %208, i32 %213, i32 %216, i32* null, i32 %217, %struct.a31dmac_softc* %218, i32** %220)
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %207
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @device_printf(i32 %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %227 = load i32, i32* %3, align 4
  %228 = load i32, i32* @a31dmac_spec, align 4
  %229 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %230 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @bus_release_resources(i32 %227, i32 %228, i32* %231)
  %233 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %234 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %233, i32 0, i32 5
  %235 = call i32 @mtx_destroy(i32* %234)
  %236 = load i32, i32* @ENXIO, align 4
  store i32 %236, i32* %2, align 4
  br label %341

237:                                              ; preds = %207
  %238 = load i32, i32* %3, align 4
  %239 = call i32 @ofw_bus_get_node(i32 %238)
  %240 = call i32 @OF_xref_from_node(i32 %239)
  %241 = load i32, i32* %3, align 4
  %242 = call i32 @OF_device_register_xref(i32 %240, i32 %241)
  store i32 0, i32* %2, align 4
  br label %341

243:                                              ; preds = %196, %165, %75, %59, %52, %45, %38
  store i64 0, i64* %6, align 8
  br label %244

244:                                              ; preds = %291, %243
  %245 = load i64, i64* %6, align 8
  %246 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %247 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = icmp ult i64 %245, %249
  br i1 %250, label %251, label %294

251:                                              ; preds = %244
  %252 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %253 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %252, i32 0, i32 3
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = load i64, i64* %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %290

260:                                              ; preds = %251
  %261 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %262 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %265 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %264, i32 0, i32 3
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load i64, i64* %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @bus_dmamap_unload(i32 %263, i32 %270)
  %272 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %273 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %276 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %275, i32 0, i32 3
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = load i64, i64* %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %283 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %282, i32 0, i32 3
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = load i64, i64* %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @bus_dmamem_free(i32 %274, i32* %281, i32 %288)
  br label %290

290:                                              ; preds = %260, %251
  br label %291

291:                                              ; preds = %290
  %292 = load i64, i64* %6, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %6, align 8
  br label %244

294:                                              ; preds = %244
  %295 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %296 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %295, i32 0, i32 3
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = icmp ne %struct.TYPE_6__* %297, null
  br i1 %298, label %299, label %305

299:                                              ; preds = %294
  %300 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %301 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %300, i32 0, i32 3
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = load i32, i32* @M_DEVBUF, align 4
  %304 = call i32 @free(%struct.TYPE_6__* %302, i32 %303)
  br label %305

305:                                              ; preds = %299, %294
  %306 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %307 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %306, i32 0, i32 2
  %308 = load i32*, i32** %307, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %321

310:                                              ; preds = %305
  %311 = load i32, i32* %3, align 4
  %312 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %313 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %318 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %317, i32 0, i32 2
  %319 = load i32*, i32** %318, align 8
  %320 = call i32 @bus_teardown_intr(i32 %311, i32 %316, i32* %319)
  br label %321

321:                                              ; preds = %310, %305
  %322 = load i32*, i32** %7, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i32*, i32** %7, align 8
  %326 = call i32 @hwreset_release(i32* %325)
  br label %327

327:                                              ; preds = %324, %321
  %328 = load i32*, i32** %8, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32*, i32** %8, align 8
  %332 = call i32 @clk_release(i32* %331)
  br label %333

333:                                              ; preds = %330, %327
  %334 = load i32, i32* %3, align 4
  %335 = load i32, i32* @a31dmac_spec, align 4
  %336 = load %struct.a31dmac_softc*, %struct.a31dmac_softc** %4, align 8
  %337 = getelementptr inbounds %struct.a31dmac_softc, %struct.a31dmac_softc* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = call i32 @bus_release_resources(i32 %334, i32 %335, i32* %338)
  %340 = load i32, i32* @ENXIO, align 4
  store i32 %340, i32* %2, align 4
  br label %341

341:                                              ; preds = %333, %237, %224, %26
  %342 = load i32, i32* %2, align 4
  ret i32 %342
}

declare dso_local %struct.a31dmac_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_5__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @clk_get_by_ofw_index(i32, i32, i32, i32**) #1

declare dso_local i64 @clk_enable(i32*) #1

declare dso_local i64 @hwreset_get_by_ofw_idx(i32, i32, i32, i32**) #1

declare dso_local i64 @hwreset_deassert(i32*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @DMA_WRITE(%struct.a31dmac_softc*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @DMA_EN_REG(i64) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.a31dmac_softc*, i32**) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @clk_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
