; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { i32, i32*, i32*, i64, i64, i64, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i64, i64 }
%struct.TYPE_5__ = type { i32, i32*, i64 }
%struct.TYPE_8__ = type { i64, i32*, i64 }

@AML_SDXC_PDMA_DMA_URGENT = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_TX_THOLD_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_RX_THOLD_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_RD_BURST_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_WR_BURST_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_MISC_WCRC_OK_PAT_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_MISC_WCRC_ERR_PAT_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_ENH_CNTRL_SDIO_IRQ_PERIOD_SHIFT = common dso_local global i32 0, align 4
@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@aml8726_soc_metal_rev = common dso_local global i32 0, align 4
@AML_SDXC_MISC_TXSTART_THOLD_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_ENH_CNTRL_WR_RESP_MODE_SKIP_M8M2 = common dso_local global i32 0, align 4
@AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8 = common dso_local global i32 0, align 4
@AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unsupported SoC\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"missing clock-frequency attribute in FDT\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mmc-pwr-en\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"unable to process mmc-pwr-en attribute in FDT\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"could not use gpio to control power\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"mmc-voltages\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"missing mmc-voltages attribute in FDT\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"1.8\00", align 1
@MMC_OCR_LOW_VOLTAGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"3.3\00", align 1
@MMC_OCR_320_330 = common dso_local global i32 0, align 4
@MMC_OCR_330_340 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"unknown voltage attribute %.*s in FDT\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"mmc-vselect\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"unable to process mmc-vselect attribute in FDT\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"could not use gpio to set voltage\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"no voltages in FDT\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"only one voltage in FDT\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"too many voltages in FDT\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"mmc-rst\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"unable to process mmc-rst attribute in FDT\0A\00", align 1
@aml8726_sdxc_spec = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@AML_SDXC_ALIGN_DMA = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@AML_SDXC_MAX_DMA = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aml8726_sdxc_intr = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [35 x i8] c"could not setup interrupt handler\0A\00", align 1
@CALLOUT_RETURNUNLOCKED = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_HSPEED = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_REG = common dso_local global i32 0, align 4
@AML_SDXC_MISC_REG = common dso_local global i32 0, align 4
@AML_SDXC_ENH_CNTRL_REG = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"could not add mmc\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"could not attach mmc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_sdxc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_sdxc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_sdxc_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i64], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.aml8726_sdxc_softc* @device_get_softc(i32 %16)
  store %struct.aml8726_sdxc_softc* %17, %struct.aml8726_sdxc_softc** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %20 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 8
  %21 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %22 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* @AML_SDXC_PDMA_DMA_URGENT, align 4
  %24 = load i32, i32* @AML_SDXC_PDMA_TX_THOLD_SHIFT, align 4
  %25 = shl i32 49, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @AML_SDXC_PDMA_RX_THOLD_SHIFT, align 4
  %28 = shl i32 7, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @AML_SDXC_PDMA_RD_BURST_SHIFT, align 4
  %31 = shl i32 15, %30
  %32 = or i32 %29, %31
  %33 = load i32, i32* @AML_SDXC_PDMA_WR_BURST_SHIFT, align 4
  %34 = shl i32 7, %33
  %35 = or i32 %32, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* @AML_SDXC_MISC_WCRC_OK_PAT_SHIFT, align 4
  %37 = shl i32 2, %36
  %38 = load i32, i32* @AML_SDXC_MISC_WCRC_ERR_PAT_SHIFT, align 4
  %39 = shl i32 5, %38
  %40 = or i32 %37, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @AML_SDXC_ENH_CNTRL_SDIO_IRQ_PERIOD_SHIFT, align 4
  %42 = shl i32 12, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %43, label %88 [
    i32 130, label %44
    i32 129, label %74
  ]

44:                                               ; preds = %1
  %45 = load i32, i32* @aml8726_soc_metal_rev, align 4
  switch i32 %45, label %59 [
    i32 128, label %46
  ]

46:                                               ; preds = %44
  %47 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %48 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* @AML_SDXC_MISC_TXSTART_THOLD_SHIFT, align 4
  %50 = shl i32 6, %49
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT, align 4
  %54 = shl i32 64, %53
  %55 = load i32, i32* @AML_SDXC_ENH_CNTRL_WR_RESP_MODE_SKIP_M8M2, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %73

59:                                               ; preds = %44
  %60 = load i32, i32* @AML_SDXC_MISC_TXSTART_THOLD_SHIFT, align 4
  %61 = shl i32 7, %60
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT, align 4
  %65 = shl i32 63, %64
  %66 = load i32, i32* @AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8, align 4
  %69 = shl i32 255, %68
  %70 = or i32 %67, %69
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %59, %46
  br label %92

74:                                               ; preds = %1
  %75 = load i32, i32* @AML_SDXC_MISC_TXSTART_THOLD_SHIFT, align 4
  %76 = shl i32 7, %75
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @AML_SDXC_ENH_CNTRL_RX_FULL_THOLD_SHIFT, align 4
  %80 = shl i32 63, %79
  %81 = load i32, i32* @AML_SDXC_ENH_CNTRL_DMA_NO_WR_RESP_CHECK_M8, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @AML_SDXC_ENH_CNTRL_RX_TIMEOUT_SHIFT_M8, align 4
  %84 = shl i32 255, %83
  %85 = or i32 %82, %84
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %92

88:                                               ; preds = %1
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %591

92:                                               ; preds = %74, %73
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @ofw_bus_get_node(i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %97 = call i32 @OF_getencprop(i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %96, i32 24)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %99, 8
  %101 = icmp ne i64 %100, 1
  br i1 %101, label %106, label %102

102:                                              ; preds = %92
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %104 = load i64, i64* %103, align 16
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102, %92
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @ENXIO, align 4
  store i32 %109, i32* %2, align 4
  br label %591

110:                                              ; preds = %102
  %111 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %112 = load i64, i64* %111, align 16
  %113 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %114 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %113, i32 0, i32 12
  store i64 %112, i64* %114, align 8
  %115 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %116 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %115, i32 0, i32 11
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %120 = call i32 @OF_getencprop(i32 %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64* %119, i32 24)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %177

123:                                              ; preds = %110
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = udiv i64 %125, 8
  %127 = icmp eq i64 %126, 3
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %130 = load i64, i64* %129, align 16
  %131 = call i8* @OF_device_from_xref(i64 %130)
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %134 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %133, i32 0, i32 11
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32* %132, i32** %135, align 8
  %136 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %139 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %138, i32 0, i32 11
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  %141 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %142 = load i64, i64* %141, align 16
  %143 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %144 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %143, i32 0, i32 11
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  store i64 %142, i64* %145, align 8
  br label %146

146:                                              ; preds = %128, %123
  %147 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %148 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %147, i32 0, i32 11
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i32, i32* %3, align 4
  %154 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %155 = load i32, i32* @ENXIO, align 4
  store i32 %155, i32* %2, align 4
  br label %591

156:                                              ; preds = %146
  %157 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %158 = call i64 @aml8726_sdxc_power_off(%struct.aml8726_sdxc_softc* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %156
  %161 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %162 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %166 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %165, i32 0, i32 11
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %170 = call i64 @GPIO_PIN_SETFLAGS(i32* %164, i64 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %160, %156
  %173 = load i32, i32* %3, align 4
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %175 = load i32, i32* @ENXIO, align 4
  store i32 %175, i32* %2, align 4
  br label %591

176:                                              ; preds = %160
  br label %177

177:                                              ; preds = %176, %110
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @OF_getprop_alloc(i32 %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %5)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* %3, align 4
  %184 = call i32 (i32, i8*, ...) @device_printf(i32 %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i32, i32* @ENXIO, align 4
  store i32 %185, i32* %2, align 4
  br label %591

186:                                              ; preds = %177
  %187 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %188 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  store i32 0, i32* %190, align 4
  %191 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %192 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  store i32 0, i32* %194, align 4
  %195 = load i8*, i8** %5, align 8
  store i8* %195, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %267, %186
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 2
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i1 [ false, %196 ], [ %201, %199 ]
  br i1 %203, label %204, label %268

204:                                              ; preds = %202
  %205 = load i8*, i8** %6, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %205, i32 %206)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %204
  %210 = load i32, i32* @MMC_OCR_LOW_VOLTAGE, align 4
  %211 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %212 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %241

217:                                              ; preds = %204
  %218 = load i8*, i8** %6, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %218, i32 %219)
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %217
  %223 = load i32, i32* @MMC_OCR_320_330, align 4
  %224 = load i32, i32* @MMC_OCR_330_340, align 4
  %225 = or i32 %223, %224
  %226 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %227 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %225, i32* %231, align 4
  br label %240

232:                                              ; preds = %217
  %233 = load i32, i32* %3, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 (i32, i8*, ...) @device_printf(i32 %233, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %234, i8* %235)
  %237 = load i8*, i8** %5, align 8
  %238 = call i32 @OF_prop_free(i8* %237)
  %239 = load i32, i32* @ENXIO, align 4
  store i32 %239, i32* %2, align 4
  br label %591

240:                                              ; preds = %222
  br label %241

241:                                              ; preds = %240, %209
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %244

244:                                              ; preds = %254, %241
  %245 = load i8*, i8** %6, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br label %252

252:                                              ; preds = %249, %244
  %253 = phi i1 [ false, %244 ], [ %251, %249 ]
  br i1 %253, label %254, label %259

254:                                              ; preds = %252
  %255 = load i8*, i8** %6, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %6, align 8
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %11, align 4
  br label %244

259:                                              ; preds = %252
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  %263 = load i8*, i8** %6, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %6, align 8
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %11, align 4
  br label %267

267:                                              ; preds = %262, %259
  br label %196

268:                                              ; preds = %202
  %269 = load i8*, i8** %5, align 8
  %270 = call i32 @OF_prop_free(i8* %269)
  %271 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %272 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %271, i32 0, i32 10
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  store i32* null, i32** %273, align 8
  %274 = load i32, i32* %10, align 4
  %275 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %276 = call i32 @OF_getencprop(i32 %274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64* %275, i32 24)
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %11, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %338

279:                                              ; preds = %268
  %280 = load i32, i32* %11, align 4
  %281 = sext i32 %280 to i64
  %282 = udiv i64 %281, 8
  %283 = icmp eq i64 %282, 2
  br i1 %283, label %284, label %300

284:                                              ; preds = %279
  %285 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %286 = load i64, i64* %285, align 16
  %287 = call i8* @OF_device_from_xref(i64 %286)
  %288 = bitcast i8* %287 to i32*
  %289 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %290 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %289, i32 0, i32 10
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 1
  store i32* %288, i32** %291, align 8
  %292 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %295 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %294, i32 0, i32 10
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 2
  store i64 %293, i64* %296, align 8
  %297 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %298 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %297, i32 0, i32 10
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  store i32 1, i32* %299, align 8
  br label %300

300:                                              ; preds = %284, %279
  %301 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %302 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %301, i32 0, i32 10
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = icmp eq i32* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %300
  %307 = load i32, i32* %3, align 4
  %308 = call i32 (i32, i8*, ...) @device_printf(i32 %307, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  %309 = load i32, i32* @ENXIO, align 4
  store i32 %309, i32* %2, align 4
  br label %591

310:                                              ; preds = %300
  %311 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %312 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %311, i32 0, i32 10
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %316 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %315, i32 0, i32 10
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = call i64 @GPIO_PIN_SET(i32* %314, i64 %318, i32 0)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %333, label %321

321:                                              ; preds = %310
  %322 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %323 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %322, i32 0, i32 10
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %327 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %326, i32 0, i32 10
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %331 = call i64 @GPIO_PIN_SETFLAGS(i32* %325, i64 %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %321, %310
  %334 = load i32, i32* %3, align 4
  %335 = call i32 (i32, i8*, ...) @device_printf(i32 %334, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %336 = load i32, i32* @ENXIO, align 4
  store i32 %336, i32* %2, align 4
  br label %591

337:                                              ; preds = %321
  br label %338

338:                                              ; preds = %337, %268
  %339 = load i32, i32* %8, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %338
  %342 = load i32, i32* %3, align 4
  %343 = call i32 (i32, i8*, ...) @device_printf(i32 %342, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %344 = load i32, i32* @ENXIO, align 4
  store i32 %344, i32* %2, align 4
  br label %591

345:                                              ; preds = %338
  %346 = load i32, i32* %8, align 4
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %348, label %358

348:                                              ; preds = %345
  %349 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %350 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %349, i32 0, i32 10
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = icmp ne i32* %352, null
  br i1 %353, label %354, label %358

354:                                              ; preds = %348
  %355 = load i32, i32* %3, align 4
  %356 = call i32 (i32, i8*, ...) @device_printf(i32 %355, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %357 = load i32, i32* @ENXIO, align 4
  store i32 %357, i32* %2, align 4
  br label %591

358:                                              ; preds = %348, %345
  %359 = load i32, i32* %8, align 4
  %360 = icmp eq i32 %359, 2
  br i1 %360, label %361, label %371

361:                                              ; preds = %358
  %362 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %363 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %362, i32 0, i32 10
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = icmp eq i32* %365, null
  br i1 %366, label %367, label %371

367:                                              ; preds = %361
  %368 = load i32, i32* %3, align 4
  %369 = call i32 (i32, i8*, ...) @device_printf(i32 %368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %370 = load i32, i32* @ENXIO, align 4
  store i32 %370, i32* %2, align 4
  br label %591

371:                                              ; preds = %361, %358
  br label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372
  %374 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %375 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %374, i32 0, i32 9
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 0
  store i32* null, i32** %376, align 8
  %377 = load i32, i32* %10, align 4
  %378 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %379 = call i32 @OF_getencprop(i32 %377, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64* %378, i32 24)
  store i32 %379, i32* %11, align 4
  %380 = load i32, i32* %11, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %416

382:                                              ; preds = %373
  %383 = load i32, i32* %11, align 4
  %384 = sext i32 %383 to i64
  %385 = udiv i64 %384, 8
  %386 = icmp eq i64 %385, 3
  br i1 %386, label %387, label %405

387:                                              ; preds = %382
  %388 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %389 = load i64, i64* %388, align 16
  %390 = call i8* @OF_device_from_xref(i64 %389)
  %391 = bitcast i8* %390 to i32*
  %392 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %393 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %392, i32 0, i32 9
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 0
  store i32* %391, i32** %394, align 8
  %395 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %398 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %397, i32 0, i32 9
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 2
  store i64 %396, i64* %399, align 8
  %400 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %401 = load i64, i64* %400, align 16
  %402 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %403 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %402, i32 0, i32 9
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 1
  store i64 %401, i64* %404, align 8
  br label %405

405:                                              ; preds = %387, %382
  %406 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %407 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %406, i32 0, i32 9
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = icmp eq i32* %409, null
  br i1 %410, label %411, label %415

411:                                              ; preds = %405
  %412 = load i32, i32* %3, align 4
  %413 = call i32 (i32, i8*, ...) @device_printf(i32 %412, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0))
  %414 = load i32, i32* @ENXIO, align 4
  store i32 %414, i32* %2, align 4
  br label %591

415:                                              ; preds = %405
  br label %416

416:                                              ; preds = %415, %373
  %417 = load i32, i32* %3, align 4
  %418 = load i32, i32* @aml8726_sdxc_spec, align 4
  %419 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %420 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %419, i32 0, i32 2
  %421 = load i32*, i32** %420, align 8
  %422 = call i64 @bus_alloc_resources(i32 %417, i32 %418, i32* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %416
  %425 = load i32, i32* %3, align 4
  %426 = call i32 (i32, i8*, ...) @device_printf(i32 %425, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  %427 = load i32, i32* @ENXIO, align 4
  store i32 %427, i32* %2, align 4
  br label %591

428:                                              ; preds = %416
  %429 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %430 = call i32 @AML_SDXC_LOCK_INIT(%struct.aml8726_sdxc_softc* %429)
  %431 = load i32, i32* %3, align 4
  %432 = call i32 @bus_get_dma_tag(i32 %431)
  %433 = load i32, i32* @AML_SDXC_ALIGN_DMA, align 4
  %434 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %435 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %436 = load i32, i32* @AML_SDXC_MAX_DMA, align 4
  %437 = load i32, i32* @AML_SDXC_MAX_DMA, align 4
  %438 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %439 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %438, i32 0, i32 3
  %440 = call i32 @bus_dma_tag_create(i32 %432, i32 %433, i32 0, i32 %434, i32 %435, i32* null, i32* null, i32 %436, i32 1, i32 %437, i32 0, i32* null, i32* null, i64* %439)
  store i32 %440, i32* %7, align 4
  %441 = load i32, i32* %7, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %428
  br label %540

444:                                              ; preds = %428
  %445 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %446 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %445, i32 0, i32 3
  %447 = load i64, i64* %446, align 8
  %448 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %449 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %448, i32 0, i32 4
  %450 = call i32 @bus_dmamap_create(i64 %447, i32 0, i64* %449)
  store i32 %450, i32* %7, align 4
  %451 = load i32, i32* %7, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %444
  br label %540

454:                                              ; preds = %444
  %455 = load i32, i32* %3, align 4
  %456 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %457 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %456, i32 0, i32 2
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @INTR_TYPE_MISC, align 4
  %462 = load i32, i32* @INTR_MPSAFE, align 4
  %463 = or i32 %461, %462
  %464 = load i32, i32* @aml8726_sdxc_intr, align 4
  %465 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %466 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %467 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %466, i32 0, i32 5
  %468 = call i32 @bus_setup_intr(i32 %455, i32 %460, i32 %463, i32* null, i32 %464, %struct.aml8726_sdxc_softc* %465, i64* %467)
  store i32 %468, i32* %7, align 4
  %469 = load i32, i32* %7, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %474

471:                                              ; preds = %454
  %472 = load i32, i32* %3, align 4
  %473 = call i32 (i32, i8*, ...) @device_printf(i32 %472, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0))
  br label %540

474:                                              ; preds = %454
  %475 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %476 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %475, i32 0, i32 8
  %477 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %478 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %477, i32 0, i32 7
  %479 = load i32, i32* @CALLOUT_RETURNUNLOCKED, align 4
  %480 = call i32 @callout_init_mtx(i32* %476, i32* %478, i32 %479)
  %481 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %482 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %481, i32 0, i32 6
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 0
  store i32 200000, i32* %483, align 8
  %484 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %485 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %484, i32 0, i32 6
  %486 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i32 0, i32 1
  store i32 100000000, i32* %486, align 4
  %487 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %488 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %487, i32 0, i32 1
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 0
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %493 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %492, i32 0, i32 1
  %494 = load i32*, i32** %493, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 1
  %496 = load i32, i32* %495, align 4
  %497 = or i32 %491, %496
  %498 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %499 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %498, i32 0, i32 6
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i32 0, i32 2
  store i32 %497, i32* %500, align 8
  %501 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %502 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %503 = or i32 %501, %502
  %504 = load i32, i32* @MMC_CAP_HSPEED, align 4
  %505 = or i32 %503, %504
  %506 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %507 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %506, i32 0, i32 6
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 3
  store i32 %505, i32* %508, align 4
  %509 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %510 = call i32 @aml8726_sdxc_soft_reset(%struct.aml8726_sdxc_softc* %509)
  %511 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %512 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %513 = load i32, i32* %15, align 4
  %514 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %511, i32 %512, i32 %513)
  %515 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %516 = load i32, i32* @AML_SDXC_MISC_REG, align 4
  %517 = load i32, i32* %14, align 4
  %518 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %515, i32 %516, i32 %517)
  %519 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %520 = load i32, i32* @AML_SDXC_ENH_CNTRL_REG, align 4
  %521 = load i32, i32* %13, align 4
  %522 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %519, i32 %520, i32 %521)
  %523 = load i32, i32* %3, align 4
  %524 = call i32 @device_add_child(i32 %523, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 -1)
  store i32 %524, i32* %12, align 4
  %525 = load i32, i32* %12, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %531, label %527

527:                                              ; preds = %474
  %528 = load i32, i32* %3, align 4
  %529 = call i32 (i32, i8*, ...) @device_printf(i32 %528, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %530 = load i32, i32* @ENXIO, align 4
  store i32 %530, i32* %7, align 4
  br label %540

531:                                              ; preds = %474
  %532 = load i32, i32* %12, align 4
  %533 = call i32 @device_probe_and_attach(i32 %532)
  store i32 %533, i32* %7, align 4
  %534 = load i32, i32* %7, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %531
  %537 = load i32, i32* %3, align 4
  %538 = call i32 (i32, i8*, ...) @device_printf(i32 %537, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  br label %540

539:                                              ; preds = %531
  store i32 0, i32* %2, align 4
  br label %591

540:                                              ; preds = %536, %527, %471, %453, %443
  %541 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %542 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %541, i32 0, i32 5
  %543 = load i64, i64* %542, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %556

545:                                              ; preds = %540
  %546 = load i32, i32* %3, align 4
  %547 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %548 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %547, i32 0, i32 2
  %549 = load i32*, i32** %548, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 1
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %553 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %552, i32 0, i32 5
  %554 = load i64, i64* %553, align 8
  %555 = call i32 @bus_teardown_intr(i32 %546, i32 %551, i64 %554)
  br label %556

556:                                              ; preds = %545, %540
  %557 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %558 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %557, i32 0, i32 4
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %569

561:                                              ; preds = %556
  %562 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %563 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %562, i32 0, i32 3
  %564 = load i64, i64* %563, align 8
  %565 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %566 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %565, i32 0, i32 4
  %567 = load i64, i64* %566, align 8
  %568 = call i32 @bus_dmamap_destroy(i64 %564, i64 %567)
  br label %569

569:                                              ; preds = %561, %556
  %570 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %571 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %570, i32 0, i32 3
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %579

574:                                              ; preds = %569
  %575 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %576 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %575, i32 0, i32 3
  %577 = load i64, i64* %576, align 8
  %578 = call i32 @bus_dma_tag_destroy(i64 %577)
  br label %579

579:                                              ; preds = %574, %569
  %580 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %581 = call i32 @AML_SDXC_LOCK_DESTROY(%struct.aml8726_sdxc_softc* %580)
  %582 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %583 = call i64 @aml8726_sdxc_power_off(%struct.aml8726_sdxc_softc* %582)
  %584 = load i32, i32* %3, align 4
  %585 = load i32, i32* @aml8726_sdxc_spec, align 4
  %586 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %587 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %586, i32 0, i32 2
  %588 = load i32*, i32** %587, align 8
  %589 = call i32 @bus_release_resources(i32 %584, i32 %585, i32* %588)
  %590 = load i32, i32* %7, align 4
  store i32 %590, i32* %2, align 4
  br label %591

591:                                              ; preds = %579, %539, %424, %411, %367, %354, %341, %333, %306, %232, %182, %172, %152, %106, %88
  %592 = load i32, i32* %2, align 4
  ret i32 %592
}

declare dso_local %struct.aml8726_sdxc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i8* @OF_device_from_xref(i64) #1

declare dso_local i64 @aml8726_sdxc_power_off(%struct.aml8726_sdxc_softc*) #1

declare dso_local i64 @GPIO_PIN_SETFLAGS(i32*, i64, i32) #1

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i64 @GPIO_PIN_SET(i32*, i64, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @AML_SDXC_LOCK_INIT(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamap_create(i64, i32, i64*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.aml8726_sdxc_softc*, i64*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @aml8726_sdxc_soft_reset(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @AML_SDXC_LOCK_DESTROY(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
