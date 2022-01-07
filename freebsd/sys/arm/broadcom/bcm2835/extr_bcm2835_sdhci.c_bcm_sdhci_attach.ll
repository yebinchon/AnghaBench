; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sdhci_softc = type { i64, i8*, i8*, i64, %struct.TYPE_5__, i8*, i8*, i64, i32, i32, %struct.bcm_mmc_conf*, i32, i32, i32*, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.bcm_mmc_conf = type { i32, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BCM2835_MBOX_POWER_ID_EMMC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unable to enable the power\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"SDHCI frequency: %dMHz\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@bcm_sdhci_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@bcm2835_sdhci_pio_mode = common dso_local global i32 0, align 4
@SDHCI_PLATFORM_TRANSFER = common dso_local global i32 0, align 4
@SDHCI_CAN_VDD_330 = common dso_local global i32 0, align 4
@SDHCI_CAN_VDD_180 = common dso_local global i32 0, align 4
@bcm2835_sdhci_hs = common dso_local global i64 0, align 8
@SDHCI_CAN_DO_HISPD = common dso_local global i32 0, align 4
@SDHCI_CLOCK_BASE_SHIFT = common dso_local global i32 0, align 4
@BCM_DMA_CH_ANY = common dso_local global i32 0, align 4
@BCM_DMA_CH_INVALID = common dso_local global i64 0, align 8
@bcm_sdhci_dma_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"cannot setup dma interrupt handler\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BCM_SDHCI_BUFFER_SIZE = common dso_local global i32 0, align 4
@NUM_DMA_SEGS = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"failed allocate DMA tag\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"bus_dmamap_create failed\0A\00", align 1
@SDHCI_BUFFER = common dso_local global i64 0, align 8
@SDHCI_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_sdhci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sdhci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_sdhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.bcm_sdhci_softc* @device_get_softc(i32 %10)
  store %struct.bcm_sdhci_softc* %11, %struct.bcm_sdhci_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %15, i32 0, i32 15
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @compat_data, align 4
  %19 = call %struct.TYPE_6__* @ofw_bus_search_compatible(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.bcm_mmc_conf*
  %23 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %23, i32 0, i32 10
  store %struct.bcm_mmc_conf* %22, %struct.bcm_mmc_conf** %24, align 8
  %25 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %25, i32 0, i32 10
  %27 = load %struct.bcm_mmc_conf*, %struct.bcm_mmc_conf** %26, align 8
  %28 = icmp eq %struct.bcm_mmc_conf* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %324

31:                                               ; preds = %1
  %32 = load i32, i32* @BCM2835_MBOX_POWER_ID_EMMC, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @bcm2835_mbox_set_power_state(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %324

45:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  %46 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %47 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %46, i32 0, i32 10
  %48 = load %struct.bcm_mmc_conf*, %struct.bcm_mmc_conf** %47, align 8
  %49 = getelementptr inbounds %struct.bcm_mmc_conf, %struct.bcm_mmc_conf* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bcm2835_mbox_get_clock_rate(i32 %50, i32* %9)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = sdiv i32 %55, 1000000
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %62 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ofw_bus_get_node(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @OF_getencprop(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32 4)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = sdiv i32 %69, 1000000
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %60
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %77 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %76, i32 0, i32 10
  %78 = load %struct.bcm_mmc_conf*, %struct.bcm_mmc_conf** %77, align 8
  %79 = getelementptr inbounds %struct.bcm_mmc_conf, %struct.bcm_mmc_conf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i64, i64* @bootverbose, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  store i32 0, i32* %5, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @SYS_RES_MEMORY, align 4
  %91 = load i32, i32* @RF_ACTIVE, align 4
  %92 = call i8* @bus_alloc_resource_any(i32 %89, i32 %90, i32* %5, i32 %91)
  %93 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %94 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %96 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %6, align 4
  br label %284

103:                                              ; preds = %88
  %104 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %105 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @rman_get_bustag(i8* %106)
  %108 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %109 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %108, i32 0, i32 12
  store i32 %107, i32* %109, align 4
  %110 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %111 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @rman_get_bushandle(i8* %112)
  %114 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %115 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %5, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @SYS_RES_IRQ, align 4
  %118 = load i32, i32* @RF_ACTIVE, align 4
  %119 = load i32, i32* @RF_SHAREABLE, align 4
  %120 = or i32 %118, %119
  %121 = call i8* @bus_alloc_resource_any(i32 %116, i32 %117, i32* %5, i32 %120)
  %122 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %123 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %125 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %103
  %129 = load i32, i32* %3, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %6, align 4
  br label %284

132:                                              ; preds = %103
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %135 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @INTR_TYPE_BIO, align 4
  %138 = load i32, i32* @INTR_MPSAFE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @bcm_sdhci_intr, align 4
  %141 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %142 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %143 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %142, i32 0, i32 3
  %144 = call i64 @bus_setup_intr(i32 %133, i8* %136, i32 %139, i32* null, i32 %140, %struct.bcm_sdhci_softc* %141, i64* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %132
  %147 = load i32, i32* %3, align 4
  %148 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32, i32* @ENXIO, align 4
  store i32 %149, i32* %6, align 4
  br label %284

150:                                              ; preds = %132
  %151 = load i32, i32* @bcm2835_sdhci_pio_mode, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @SDHCI_PLATFORM_TRANSFER, align 4
  %155 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %156 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 8
  br label %158

158:                                              ; preds = %153, %150
  %159 = load i32, i32* @SDHCI_CAN_VDD_330, align 4
  %160 = load i32, i32* @SDHCI_CAN_VDD_180, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %163 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load i64, i64* @bcm2835_sdhci_hs, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %158
  %168 = load i32, i32* @SDHCI_CAN_DO_HISPD, align 4
  %169 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %170 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %168
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %167, %158
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @SDHCI_CLOCK_BASE_SHIFT, align 4
  %177 = shl i32 %175, %176
  %178 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %179 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %177
  store i32 %182, i32* %180, align 8
  %183 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %184 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %183, i32 0, i32 10
  %185 = load %struct.bcm_mmc_conf*, %struct.bcm_mmc_conf** %184, align 8
  %186 = getelementptr inbounds %struct.bcm_mmc_conf, %struct.bcm_mmc_conf* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %189 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %193 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %192, i32 0, i32 4
  %194 = call i32 @sdhci_init_slot(i32 %191, %struct.TYPE_5__* %193, i32 0)
  %195 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %196 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %195, i32 0, i32 10
  %197 = load %struct.bcm_mmc_conf*, %struct.bcm_mmc_conf** %196, align 8
  %198 = getelementptr inbounds %struct.bcm_mmc_conf, %struct.bcm_mmc_conf* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %254

201:                                              ; preds = %174
  %202 = load i32, i32* @BCM_DMA_CH_ANY, align 4
  %203 = call i64 @bcm_dma_allocate(i32 %202)
  %204 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %205 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  %206 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %207 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @BCM_DMA_CH_INVALID, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  br label %284

212:                                              ; preds = %201
  %213 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %214 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @bcm_sdhci_dma_intr, align 4
  %217 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %218 = call i64 @bcm_dma_setup_intr(i64 %215, i32 %216, %struct.bcm_sdhci_softc* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %212
  %221 = load i32, i32* %3, align 4
  %222 = call i32 (i32, i8*, ...) @device_printf(i32 %221, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %223 = load i32, i32* @ENXIO, align 4
  store i32 %223, i32* %6, align 4
  br label %284

224:                                              ; preds = %212
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @bus_get_dma_tag(i32 %225)
  %227 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %228 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %229 = load i32, i32* @BCM_SDHCI_BUFFER_SIZE, align 4
  %230 = load i32, i32* @NUM_DMA_SEGS, align 4
  %231 = load i32, i32* @BCM_SDHCI_BUFFER_SIZE, align 4
  %232 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %233 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %234 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %233, i32 0, i32 9
  %235 = call i32 @bus_dma_tag_create(i32 %226, i32 1, i32 0, i32 %227, i32 %228, i32* null, i32* null, i32 %229, i32 %230, i32 %231, i32 %232, i32* null, i32* null, i32* %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %224
  %239 = load i32, i32* %3, align 4
  %240 = call i32 (i32, i8*, ...) @device_printf(i32 %239, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %284

241:                                              ; preds = %224
  %242 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %243 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %246 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %245, i32 0, i32 8
  %247 = call i32 @bus_dmamap_create(i32 %244, i32 0, i32* %246)
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %241
  %251 = load i32, i32* %3, align 4
  %252 = call i32 (i32, i8*, ...) @device_printf(i32 %251, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %284

253:                                              ; preds = %241
  br label %254

254:                                              ; preds = %253, %174
  %255 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %256 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @rman_get_start(i8* %257)
  %259 = load i64, i64* @SDHCI_BUFFER, align 8
  %260 = add nsw i64 %258, %259
  %261 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %262 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %261, i32 0, i32 7
  store i64 %260, i64* %262, align 8
  %263 = load i32, i32* %3, align 4
  %264 = call i32 @bus_generic_probe(i32 %263)
  %265 = load i32, i32* %3, align 4
  %266 = call i32 @bus_generic_attach(i32 %265)
  %267 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %268 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %267, i32 0, i32 4
  %269 = call i32 @sdhci_start_slot(%struct.TYPE_5__* %268)
  %270 = load i32, i32* %3, align 4
  %271 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %272 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %271, i32 0, i32 4
  %273 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %274 = call i8* @SDHCI_READ_4(i32 %270, %struct.TYPE_5__* %272, i32 %273)
  %275 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %276 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %275, i32 0, i32 6
  store i8* %274, i8** %276, align 8
  %277 = load i32, i32* %3, align 4
  %278 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %279 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %278, i32 0, i32 4
  %280 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %281 = call i8* @SDHCI_READ_4(i32 %277, %struct.TYPE_5__* %279, i32 %280)
  %282 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %283 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %282, i32 0, i32 5
  store i8* %281, i8** %283, align 8
  store i32 0, i32* %2, align 4
  br label %324

284:                                              ; preds = %250, %238, %220, %211, %146, %128, %99
  %285 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %286 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %284
  %290 = load i32, i32* %3, align 4
  %291 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %292 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %291, i32 0, i32 2
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %295 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @bus_teardown_intr(i32 %290, i8* %293, i64 %296)
  br label %298

298:                                              ; preds = %289, %284
  %299 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %300 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %299, i32 0, i32 2
  %301 = load i8*, i8** %300, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = load i32, i32* %3, align 4
  %305 = load i32, i32* @SYS_RES_IRQ, align 4
  %306 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %307 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %306, i32 0, i32 2
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 @bus_release_resource(i32 %304, i32 %305, i32 0, i8* %308)
  br label %310

310:                                              ; preds = %303, %298
  %311 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %312 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %311, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %322

315:                                              ; preds = %310
  %316 = load i32, i32* %3, align 4
  %317 = load i32, i32* @SYS_RES_MEMORY, align 4
  %318 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %4, align 8
  %319 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %318, i32 0, i32 1
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @bus_release_resource(i32 %316, i32 %317, i32 0, i8* %320)
  br label %322

322:                                              ; preds = %315, %310
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* %2, align 4
  br label %324

324:                                              ; preds = %322, %254, %43, %29
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local %struct.bcm_sdhci_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_6__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @bcm2835_mbox_set_power_state(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bcm2835_mbox_get_clock_rate(i32, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.bcm_sdhci_softc*, i64*) #1

declare dso_local i32 @sdhci_init_slot(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @bcm_dma_allocate(i32) #1

declare dso_local i64 @bcm_dma_setup_intr(i64, i32, %struct.bcm_sdhci_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i64 @rman_get_start(i8*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @sdhci_start_slot(%struct.TYPE_5__*) #1

declare dso_local i8* @SDHCI_READ_4(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
