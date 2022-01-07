; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ipu.c_ipu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_softc = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@IPU_CONF = common dso_local global i32 0, align 4
@DI_PORT = common dso_local global i64 0, align 8
@IPU_CONF_DI1_EN = common dso_local global i32 0, align 4
@IPU_CONF_DI0_EN = common dso_local global i32 0, align 4
@IPU_MEM_RST = common dso_local global i32 0, align 4
@IPU_MEM_RST_ALL = common dso_local global i32 0, align 4
@IPU_MEM_RST_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout while resetting memory\0A\00", align 1
@MODE_BPP = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot allocate framebuffer\0A\00", align 1
@ipu_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot load DMA map\0A\00", align 1
@IPU_CONF_DMFC_EN = common dso_local global i32 0, align 4
@IPU_CONF_DC_EN = common dso_local global i32 0, align 4
@IPU_CONF_DP_EN = common dso_local global i32 0, align 4
@DMA_CHANNEL = common dso_local global i32 0, align 4
@IPU_IDMAC_CH_EN_2 = common dso_local global i32 0, align 4
@IPU_IDMAC_CH_EN_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"fbd\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to add fbd child\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to attach fbd device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_softc*)* @ipu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_init(%struct.ipu_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.ipu_softc* %0, %struct.ipu_softc** %3, align 8
  %10 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %11 = load i32, i32* @IPU_CONF, align 4
  %12 = load i64, i64* @DI_PORT, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @IPU_CONF_DI1_EN, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @IPU_CONF_DI0_EN, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @IPU_WRITE4(%struct.ipu_softc* %10, i32 %11, i32 %19)
  %21 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %22 = load i32, i32* @IPU_MEM_RST, align 4
  %23 = load i32, i32* @IPU_MEM_RST_ALL, align 4
  %24 = call i32 @IPU_WRITE4(%struct.ipu_softc* %21, i32 %22, i32 %23)
  store i32 1000, i32* %6, align 4
  br label %25

25:                                               ; preds = %37, %18
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %31 = load i32, i32* @IPU_MEM_RST, align 4
  %32 = call i32 @IPU_READ4(%struct.ipu_softc* %30, i32 %31)
  %33 = load i32, i32* @IPU_MEM_RST_START, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %39

37:                                               ; preds = %29
  %38 = call i32 @DELAY(i32 1)
  br label %25

39:                                               ; preds = %36, %25
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %277

48:                                               ; preds = %39
  %49 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %50 = call i32 @ipu_dc_reset_map(%struct.ipu_softc* %49, i32 0)
  %51 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %52 = call i32 @ipu_dc_setup_map(%struct.ipu_softc* %51, i32 0, i32 0, i32 7, i32 255)
  %53 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %54 = call i32 @ipu_dc_setup_map(%struct.ipu_softc* %53, i32 0, i32 1, i32 15, i32 255)
  %55 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %56 = call i32 @ipu_dc_setup_map(%struct.ipu_softc* %55, i32 0, i32 2, i32 23, i32 255)
  %57 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %61, %66
  %68 = load i32, i32* @MODE_BPP, align 4
  %69 = sdiv i32 %68, 8
  %70 = mul nsw i32 %67, %69
  %71 = call i64 @round_page(i32 %70)
  store i64 %71, i64* %8, align 8
  %72 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bus_get_dma_tag(i32 %74)
  %76 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %77 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %80, i32 0, i32 7
  %82 = call i32 @bus_dma_tag_create(i32 %75, i32 4, i32 0, i32 %76, i32 %77, i32* null, i32* null, i64 %78, i32 1, i64 %79, i32 0, i32* null, i32* null, i32* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %48
  br label %277

86:                                               ; preds = %48
  %87 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %90, i32 0, i32 5
  %92 = bitcast i64* %91 to i8**
  %93 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %94 = load i32, i32* @BUS_DMA_ZERO, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %97 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %96, i32 0, i32 6
  %98 = call i32 @bus_dmamem_alloc(i32 %89, i8** %92, i32 %95, i32* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %86
  %102 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @device_printf(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %277

106:                                              ; preds = %86
  %107 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %108 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* @ipu_dmamap_cb, align 4
  %118 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %118, i32 0, i32 4
  %120 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %121 = call i32 @bus_dmamap_load(i32 %109, i32 %112, i64 %115, i64 %116, i32 %117, i32* %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %106
  %125 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %277

129:                                              ; preds = %106
  %130 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %131 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %136 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %134, %139
  %141 = load i32, i32* @MODE_BPP, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sdiv i32 %142, 8
  %144 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %145 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %147 = load i64, i64* @DI_PORT, align 8
  %148 = call i32 @ipu_dc_init(%struct.ipu_softc* %146, i64 %147)
  %149 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %150 = load i32, i32* @IPU_CONF, align 4
  %151 = call i32 @IPU_READ4(%struct.ipu_softc* %149, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* @IPU_CONF_DMFC_EN, align 4
  %153 = load i32, i32* @IPU_CONF_DC_EN, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @IPU_CONF_DP_EN, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %4, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %160 = load i32, i32* @IPU_CONF, align 4
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @IPU_WRITE4(%struct.ipu_softc* %159, i32 %160, i32 %161)
  %163 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %164 = load i64, i64* @DI_PORT, align 8
  %165 = call i32 @ipu_config_timing(%struct.ipu_softc* %163, i64 %164)
  %166 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %167 = call i32 @ipu_init_buffer(%struct.ipu_softc* %166)
  %168 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %169 = load i64, i64* @DI_PORT, align 8
  %170 = call i32 @ipu_di_enable(%struct.ipu_softc* %168, i64 %169)
  %171 = load i32, i32* @DMA_CHANNEL, align 4
  %172 = icmp sgt i32 %171, 31
  br i1 %172, label %173, label %175

173:                                              ; preds = %129
  %174 = load i32, i32* @IPU_IDMAC_CH_EN_2, align 4
  br label %177

175:                                              ; preds = %129
  %176 = load i32, i32* @IPU_IDMAC_CH_EN_1, align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  store i32 %178, i32* %5, align 4
  %179 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @IPU_READ4(%struct.ipu_softc* %179, i32 %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* @DMA_CHANNEL, align 4
  %183 = and i32 %182, 31
  %184 = shl i32 1, %183
  %185 = load i32, i32* %4, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %4, align 4
  %187 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @IPU_WRITE4(%struct.ipu_softc* %187, i32 %188, i32 %189)
  %191 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %192 = call i32 @ipu_dc_enable(%struct.ipu_softc* %191)
  %193 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %194 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @device_get_nameunit(i32 %195)
  %197 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %198 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 8
  store i32 %196, i32* %199, align 4
  %200 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %201 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %204 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  %206 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %207 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %210 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 7
  store i32 %208, i32* %211, align 8
  %212 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %213 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %216 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 8
  %218 = load i32, i32* @MODE_BPP, align 4
  %219 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %220 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  store i32 %218, i32* %221, align 8
  %222 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %223 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 2
  store i32 %218, i32* %224, align 4
  %225 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %226 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %225, i32 0, i32 2
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @MODE_BPP, align 4
  %231 = mul nsw i32 %229, %230
  %232 = sdiv i32 %231, 8
  %233 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %234 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 4
  store i32 %232, i32* %235, align 4
  %236 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %237 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %236, i32 0, i32 2
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %242 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 5
  store i32 %240, i32* %243, align 8
  %244 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %245 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %244, i32 0, i32 2
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %250 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 6
  store i32 %248, i32* %251, align 4
  %252 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %253 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %256 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @device_get_unit(i32 %257)
  %259 = call i32* @device_add_child(i32 %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %258)
  store i32* %259, i32** %9, align 8
  %260 = load i32*, i32** %9, align 8
  %261 = icmp eq i32* %260, null
  br i1 %261, label %262, label %267

262:                                              ; preds = %177
  %263 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %264 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @device_printf(i32 %265, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %277

267:                                              ; preds = %177
  %268 = load i32*, i32** %9, align 8
  %269 = call i64 @device_probe_and_attach(i32* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load %struct.ipu_softc*, %struct.ipu_softc** %3, align 8
  %273 = getelementptr inbounds %struct.ipu_softc, %struct.ipu_softc* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @device_printf(i32 %274, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %277

276:                                              ; preds = %267
  store i32 0, i32* %2, align 4
  br label %279

277:                                              ; preds = %271, %262, %124, %101, %85, %42
  %278 = load i32, i32* %7, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %277, %276
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @IPU_WRITE4(%struct.ipu_softc*, i32, i32) #1

declare dso_local i32 @IPU_READ4(%struct.ipu_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ipu_dc_reset_map(%struct.ipu_softc*, i32) #1

declare dso_local i32 @ipu_dc_setup_map(%struct.ipu_softc*, i32, i32, i32, i32) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @ipu_dc_init(%struct.ipu_softc*, i64) #1

declare dso_local i32 @ipu_config_timing(%struct.ipu_softc*, i64) #1

declare dso_local i32 @ipu_init_buffer(%struct.ipu_softc*) #1

declare dso_local i32 @ipu_di_enable(%struct.ipu_softc*, i64) #1

declare dso_local i32 @ipu_dc_enable(%struct.ipu_softc*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
