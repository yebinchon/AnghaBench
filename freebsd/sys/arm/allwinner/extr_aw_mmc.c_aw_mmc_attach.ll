; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { i32, i32*, i32, i32*, i32*, i32, i32, i32, i32*, i32*, %struct.TYPE_3__, i32*, i32*, i32, i32, i32, i32*, %struct.aw_mmc_conf* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.aw_mmc_conf = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.TYPE_4__ = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@aw_mmc_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot allocate device resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AW_MMC_IRQRES = common dso_local global i64 0, align 8
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aw_mmc_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"aw_mmc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot de-assert reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"cannot get ahb clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"cannot enable ahb clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot get mmc clock\0A\00", align 1
@CARD_ID_FREQUENCY = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"cannot init mmc clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"cannot enable mmc clock\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"req_timeout\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Request timeout in seconds\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"cannot reset the controller\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Couldn't setup DMA!\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"vmmc-supply\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"vmmc-supply regulator found\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"vqmmc-supply\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"vqmmc-supply regulator found\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"max-frequency\00", align 1
@MMC_OCR_320_330 = common dso_local global i32 0, align 4
@MMC_OCR_330_340 = common dso_local global i32 0, align 4
@MMC_CAP_HSPEED = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_DDR52 = common dso_local global i32 0, align 4
@MMC_CAP_SIGNALING_180 = common dso_local global i32 0, align 4
@MMC_CAP_SIGNALING_330 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"attaching MMC bus failed!\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"attaching MMC child failed!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@aw_mmc_cam_action = common dso_local global i32 0, align 4
@aw_mmc_cam_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @aw_mmc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aw_mmc_softc*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ofw_bus_get_node(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.aw_mmc_softc* @device_get_softc(i32* %14)
  store %struct.aw_mmc_softc* %15, %struct.aw_mmc_softc** %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %18 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %17, i32 0, i32 8
  store i32* %16, i32** %18, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @compat_data, align 4
  %21 = call %struct.TYPE_4__* @ofw_bus_search_compatible(i32* %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.aw_mmc_conf*
  %25 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %26 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %25, i32 0, i32 17
  store %struct.aw_mmc_conf* %24, %struct.aw_mmc_conf** %26, align 8
  %27 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %28 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %27, i32 0, i32 16
  store i32* null, i32** %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @aw_mmc_res_spec, align 4
  %31 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %32 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @bus_alloc_resources(i32* %29, i32 %30, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @device_printf(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %348

40:                                               ; preds = %1
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %43 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @AW_MMC_IRQRES, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @INTR_TYPE_MISC, align 4
  %49 = load i32, i32* @INTR_MPSAFE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @aw_mmc_intr, align 4
  %52 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %53 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %54 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %53, i32 0, i32 5
  %55 = call i64 @bus_setup_intr(i32* %41, i32 %47, i32 %50, i32* null, i32 %51, %struct.aw_mmc_softc* %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %40
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @aw_mmc_res_spec, align 4
  %60 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %61 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @bus_release_resources(i32* %58, i32 %59, i32* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @device_printf(i32* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %348

67:                                               ; preds = %40
  %68 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %69 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %68, i32 0, i32 6
  %70 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %71 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %70, i32 0, i32 8
  %72 = load i32*, i32** %71, align 8
  %73 = call i8* @device_get_nameunit(i32* %72)
  %74 = load i32, i32* @MTX_DEF, align 4
  %75 = call i32 @mtx_init(i32* %69, i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %77 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %76, i32 0, i32 7
  %78 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %79 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %78, i32 0, i32 6
  %80 = call i32 @callout_init_mtx(i32* %77, i32* %79, i32 0)
  %81 = load i32*, i32** %3, align 8
  %82 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %83 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %82, i32 0, i32 15
  %84 = call i64 @hwreset_get_by_ofw_name(i32* %81, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %67
  %87 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %88 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @hwreset_deassert(i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @device_printf(i32* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %323

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %67
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %100 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %99, i32 0, i32 14
  %101 = call i32 @clk_get_by_ofw_name(i32* %98, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @device_printf(i32* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %323

107:                                              ; preds = %97
  %108 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %109 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %108, i32 0, i32 14
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clk_enable(i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @device_printf(i32* %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %323

117:                                              ; preds = %107
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %120 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %119, i32 0, i32 13
  %121 = call i32 @clk_get_by_ofw_name(i32* %118, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @device_printf(i32* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %323

127:                                              ; preds = %117
  %128 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %129 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CARD_ID_FREQUENCY, align 4
  %132 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %133 = call i32 @clk_set_freq(i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @device_printf(i32* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %323

139:                                              ; preds = %127
  %140 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %141 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %140, i32 0, i32 13
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @clk_enable(i32 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @device_printf(i32* %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %323

149:                                              ; preds = %139
  %150 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %151 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %150, i32 0, i32 0
  store i32 10, i32* %151, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32* %152)
  store %struct.sysctl_ctx_list* %153, %struct.sysctl_ctx_list** %6, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @device_get_sysctl_tree(i32* %154)
  %156 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %155)
  store %struct.sysctl_oid_list* %156, %struct.sysctl_oid_list** %7, align 8
  %157 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %158 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %159 = load i32, i32* @OID_AUTO, align 4
  %160 = load i32, i32* @CTLFLAG_RW, align 4
  %161 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %162 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %161, i32 0, i32 0
  %163 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %157, %struct.sysctl_oid_list* %158, i32 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %160, i32* %162, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %164 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %165 = call i64 @aw_mmc_reset(%struct.aw_mmc_softc* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %149
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @device_printf(i32* %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %323

170:                                              ; preds = %149
  %171 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %172 = call i64 @aw_mmc_setup_dma(%struct.aw_mmc_softc* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %176 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %175, i32 0, i32 8
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @device_printf(i32* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %323

179:                                              ; preds = %170
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @OF_getencprop(i32 %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* %8, i32 4)
  %182 = icmp sle i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i32 4, i32* %8, align 4
  br label %184

184:                                              ; preds = %183, %179
  %185 = load i32*, i32** %3, align 8
  %186 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %187 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %186, i32 0, i32 12
  %188 = call i64 @regulator_get_by_ofw_property(i32* %185, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32** %187)
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load i64, i64* @bootverbose, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32*, i32** %3, align 8
  %195 = call i32 @device_printf(i32* %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %190
  br label %197

197:                                              ; preds = %196, %184
  %198 = load i32*, i32** %3, align 8
  %199 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %200 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %199, i32 0, i32 11
  %201 = call i64 @regulator_get_by_ofw_property(i32* %198, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32** %200)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %197
  %204 = load i64, i64* @bootverbose, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i64, i64* @bootverbose, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32*, i32** %3, align 8
  %211 = call i32 @device_printf(i32* %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %203, %197
  %214 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %215 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %214, i32 0, i32 10
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  store i32 400000, i32* %216, align 8
  %217 = load i32, i32* %10, align 4
  %218 = call i64 @OF_getencprop(i32 %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32* %9, i32 4)
  %219 = icmp sle i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  store i32 52000000, i32* %9, align 4
  br label %221

221:                                              ; preds = %220, %213
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %224 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %223, i32 0, i32 10
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  store i32 %222, i32* %225, align 4
  %226 = load i32, i32* @MMC_OCR_320_330, align 4
  %227 = load i32, i32* @MMC_OCR_330_340, align 4
  %228 = or i32 %226, %227
  %229 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %230 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %229, i32 0, i32 10
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 2
  store i32 %228, i32* %231, align 8
  %232 = load i32, i32* @MMC_CAP_HSPEED, align 4
  %233 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @MMC_CAP_MMC_DDR52, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %244 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %243, i32 0, i32 10
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 3
  store i32 %242, i32* %245, align 4
  %246 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %247 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %246, i32 0, i32 11
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %277

250:                                              ; preds = %221
  %251 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %252 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %251, i32 0, i32 11
  %253 = load i32*, i32** %252, align 8
  %254 = call i64 @regulator_check_voltage(i32* %253, i32 1800000)
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %250
  %257 = load i32, i32* @MMC_CAP_SIGNALING_180, align 4
  %258 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %259 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %258, i32 0, i32 10
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %257
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %256, %250
  %264 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %265 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %264, i32 0, i32 11
  %266 = load i32*, i32** %265, align 8
  %267 = call i64 @regulator_check_voltage(i32* %266, i32 3300000)
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %263
  %270 = load i32, i32* @MMC_CAP_SIGNALING_330, align 4
  %271 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %272 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %271, i32 0, i32 10
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %270
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %269, %263
  br label %284

277:                                              ; preds = %221
  %278 = load i32, i32* @MMC_CAP_SIGNALING_330, align 4
  %279 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %280 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %279, i32 0, i32 10
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %278
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %277, %276
  %285 = load i32, i32* %8, align 4
  %286 = icmp sge i32 %285, 4
  br i1 %286, label %287, label %294

287:                                              ; preds = %284
  %288 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %289 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %290 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %289, i32 0, i32 10
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %288
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %287, %284
  %295 = load i32, i32* %8, align 4
  %296 = icmp sge i32 %295, 8
  br i1 %296, label %297, label %304

297:                                              ; preds = %294
  %298 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %299 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %300 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %299, i32 0, i32 10
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %302, %298
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %297, %294
  %305 = load i32*, i32** %3, align 8
  %306 = call i32* @device_add_child(i32* %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  store i32* %306, i32** %4, align 8
  %307 = load i32*, i32** %4, align 8
  %308 = icmp eq i32* %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load i32*, i32** %3, align 8
  %311 = call i32 @device_printf(i32* %310, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  br label %323

312:                                              ; preds = %304
  %313 = load i32*, i32** %4, align 8
  %314 = call i64 @device_probe_and_attach(i32* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = load i32*, i32** %3, align 8
  %318 = call i32 @device_printf(i32* %317, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  %319 = load i32*, i32** %3, align 8
  %320 = load i32*, i32** %4, align 8
  %321 = call i32 @device_delete_child(i32* %319, i32* %320)
  br label %323

322:                                              ; preds = %312
  store i32 0, i32* %2, align 4
  br label %348

323:                                              ; preds = %316, %309, %174, %167, %146, %136, %124, %114, %104, %93
  %324 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %325 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %324, i32 0, i32 7
  %326 = call i32 @callout_drain(i32* %325)
  %327 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %328 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %327, i32 0, i32 6
  %329 = call i32 @mtx_destroy(i32* %328)
  %330 = load i32*, i32** %3, align 8
  %331 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %332 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %331, i32 0, i32 4
  %333 = load i32*, i32** %332, align 8
  %334 = load i64, i64* @AW_MMC_IRQRES, align 8
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %338 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @bus_teardown_intr(i32* %330, i32 %336, i32 %339)
  %341 = load i32*, i32** %3, align 8
  %342 = load i32, i32* @aw_mmc_res_spec, align 4
  %343 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %5, align 8
  %344 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @bus_release_resources(i32* %341, i32 %342, i32* %345)
  %347 = load i32, i32* @ENXIO, align 4
  store i32 %347, i32* %2, align 4
  br label %348

348:                                              ; preds = %323, %322, %57, %36
  %349 = load i32, i32* %2, align 4
  ret i32 %349
}

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local %struct.aw_mmc_softc* @device_get_softc(i32*) #1

declare dso_local %struct.TYPE_4__* @ofw_bus_search_compatible(i32*, i32) #1

declare dso_local i64 @bus_alloc_resources(i32*, i32, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i64 @bus_setup_intr(i32*, i32, i32, i32*, i32, %struct.aw_mmc_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32*, i32, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i64 @hwreset_get_by_ofw_name(i32*, i32, i8*, i32*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32*, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i64 @aw_mmc_reset(%struct.aw_mmc_softc*) #1

declare dso_local i64 @aw_mmc_setup_dma(%struct.aw_mmc_softc*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @regulator_get_by_ofw_property(i32*, i32, i8*, i32**) #1

declare dso_local i64 @regulator_check_voltage(i32*, i32) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
