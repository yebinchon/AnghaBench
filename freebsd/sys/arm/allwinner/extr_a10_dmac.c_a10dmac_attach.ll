; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10dmac_softc = type { i32, i32*, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32, %struct.a10dmac_softc* }

@a10dmac_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"a10 dmac\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@AWIN_DMA_IRQ_EN_REG = common dso_local global i32 0, align 4
@AWIN_DMA_IRQ_PEND_STA_REG = common dso_local global i32 0, align 4
@NDMA_CHANNELS = common dso_local global i32 0, align 4
@CH_NDMA = common dso_local global i32 0, align 4
@AWIN_NDMA_CTL_REG = common dso_local global i32 0, align 4
@DDMA_CHANNELS = common dso_local global i32 0, align 4
@CH_DDMA = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_REG = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@a10dmac_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"could not setup interrupt handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a10dmac_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10dmac_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10dmac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.a10dmac_softc* @device_get_softc(i32 %8)
  store %struct.a10dmac_softc* %9, %struct.a10dmac_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @a10dmac_spec, align 4
  %12 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %13 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %213

21:                                               ; preds = %1
  %22 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %23 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %22, i32 0, i32 0
  %24 = load i32, i32* @MTX_SPIN, align 4
  %25 = call i32 @mtx_init(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @clk_get_by_ofw_index(i32 %26, i32 0, i32 0, i32* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %213

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @clk_enable(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %213

43:                                               ; preds = %34
  %44 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %45 = load i32, i32* @AWIN_DMA_IRQ_EN_REG, align 4
  %46 = call i32 @DMA_WRITE(%struct.a10dmac_softc* %44, i32 %45, i32 0)
  %47 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %48 = load i32, i32* @AWIN_DMA_IRQ_PEND_STA_REG, align 4
  %49 = call i32 @DMA_WRITE(%struct.a10dmac_softc* %47, i32 %48, i32 -1)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %110, %43
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @NDMA_CHANNELS, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %113

54:                                               ; preds = %50
  %55 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %56 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %57 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  store %struct.a10dmac_softc* %55, %struct.a10dmac_softc** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %65 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 8
  %71 = load i32, i32* @CH_NDMA, align 4
  %72 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %73 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %72, i32 0, i32 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 %71, i32* %78, align 8
  %79 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %80 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32* null, i32** %85, align 8
  %86 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %87 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @AWIN_NDMA_REG(i32 %93)
  %95 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %96 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 %94, i32* %101, align 4
  %102 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %103 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = load i32, i32* @AWIN_NDMA_CTL_REG, align 4
  %109 = call i32 @DMACH_WRITE(%struct.TYPE_2__* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %54
  %111 = load i32, i32* %5, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %50

113:                                              ; preds = %50
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %174, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @DDMA_CHANNELS, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %177

118:                                              ; preds = %114
  %119 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %120 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %121 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 5
  store %struct.a10dmac_softc* %119, %struct.a10dmac_softc** %126, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %129 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %127, i32* %134, align 8
  %135 = load i32, i32* @CH_DDMA, align 4
  %136 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %137 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %136, i32 0, i32 3
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 4
  store i32 %135, i32* %142, align 8
  %143 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %144 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  store i32* null, i32** %149, align 8
  %150 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %151 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %150, i32 0, i32 3
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  store i32* null, i32** %156, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @AWIN_DDMA_REG(i32 %157)
  %159 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %160 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %159, i32 0, i32 3
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  store i32 %158, i32* %165, align 4
  %166 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %167 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %166, i32 0, i32 3
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = load i32, i32* @AWIN_DDMA_CTL_REG, align 4
  %173 = call i32 @DMACH_WRITE(%struct.TYPE_2__* %171, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %118
  %175 = load i32, i32* %5, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %114

177:                                              ; preds = %114
  %178 = load i32, i32* %3, align 4
  %179 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %180 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @INTR_MPSAFE, align 4
  %185 = load i32, i32* @INTR_TYPE_MISC, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @a10dmac_intr, align 4
  %188 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %189 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %190 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %189, i32 0, i32 2
  %191 = call i32 @bus_setup_intr(i32 %178, i32 %183, i32 %186, i32* null, i32 %187, %struct.a10dmac_softc* %188, i32* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %177
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @device_printf(i32 %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @a10dmac_spec, align 4
  %199 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %200 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @bus_release_resources(i32 %197, i32 %198, i32* %201)
  %203 = load %struct.a10dmac_softc*, %struct.a10dmac_softc** %4, align 8
  %204 = getelementptr inbounds %struct.a10dmac_softc, %struct.a10dmac_softc* %203, i32 0, i32 0
  %205 = call i32 @mtx_destroy(i32* %204)
  %206 = load i32, i32* @ENXIO, align 4
  store i32 %206, i32* %2, align 4
  br label %213

207:                                              ; preds = %177
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @ofw_bus_get_node(i32 %208)
  %210 = call i32 @OF_xref_from_node(i32 %209)
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @OF_device_register_xref(i32 %210, i32 %211)
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %207, %194, %39, %30, %17
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.a10dmac_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @DMA_WRITE(%struct.a10dmac_softc*, i32, i32) #1

declare dso_local i32 @AWIN_NDMA_REG(i32) #1

declare dso_local i32 @DMACH_WRITE(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @AWIN_DDMA_REG(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.a10dmac_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
