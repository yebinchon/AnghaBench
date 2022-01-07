; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdhci_softc = type { i64, i32, i32, i32, i8*, i8*, i64, %struct.TYPE_6__, i32, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@INVALID_CLK_IDENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"failed to get clock based on hwmods property\0A\00", align 1
@MMC_OCR_LOW_VOLTAGE = common dso_local global i32 0, align 4
@MMC1_CLK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"ti,dual-volt\00", align 1
@MMC_OCR_290_300 = common dso_local global i32 0, align 4
@MMC_OCR_300_310 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown OMAP device\0A\00", align 1
@SDHCI_REG_OFFSET = common dso_local global i64 0, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ti_sdhci_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"wp-gpios\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"wp-disable\00", align 1
@SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DONT_SHIFT_RESPONSE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_WAITFOR_RESET_ASSERTED = common dso_local global i32 0, align 4
@SDHCI_QUIRK_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_DMA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Bad bus-width value %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@AM335X_MMCHS_REG_OFFSET = common dso_local global i64 0, align 8
@OMAP4_MMCHS_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_sdhci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sdhci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_sdhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ti_sdhci_softc* @device_get_softc(i32 %9)
  store %struct.ti_sdhci_softc* %10, %struct.ti_sdhci_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_get_node(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @ti_hwmods_get_clock(i32 %16)
  %18 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INVALID_CLK_IDENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* @MMC_OCR_LOW_VOLTAGE, align 4
  %30 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMC1_CLK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @OF_hasprop(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41, %28
  %46 = load i32, i32* @MMC_OCR_290_300, align 4
  %47 = load i32, i32* @MMC_OCR_300_310, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %45, %41
  %56 = call i32 (...) @ti_chip()
  switch i32 %56, label %57 [
  ]

57:                                               ; preds = %55
  %58 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57
  %60 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SDHCI_REG_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %65, i32 0, i32 12
  store i64 %64, i64* %66, align 8
  store i32 0, i32* %5, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SYS_RES_MEMORY, align 4
  %69 = load i32, i32* @RF_ACTIVE, align 4
  %70 = call i8* @bus_alloc_resource_any(i32 %67, i32 %68, i32* %5, i32 %69)
  %71 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %6, align 4
  br label %230

81:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @SYS_RES_IRQ, align 4
  %84 = load i32, i32* @RF_ACTIVE, align 4
  %85 = call i8* @bus_alloc_resource_any(i32 %82, i32 %83, i32* %5, i32 %84)
  %86 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %89 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %3, align 4
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %6, align 4
  br label %230

96:                                               ; preds = %81
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %99 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* @INTR_TYPE_BIO, align 4
  %102 = load i32, i32* @INTR_MPSAFE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @ti_sdhci_intr, align 4
  %105 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %106 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %106, i32 0, i32 6
  %108 = call i64 @bus_setup_intr(i32 %97, i8* %100, i32 %103, i32* null, i32 %104, %struct.ti_sdhci_softc* %105, i64* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %96
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %6, align 4
  br label %230

114:                                              ; preds = %96
  %115 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %119 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %118, i32 0, i32 7
  %120 = call i32 @sdhci_fdt_gpio_setup(i32 %117, %struct.TYPE_6__* %119)
  %121 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %122 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %121, i32 0, i32 10
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i64 @OF_hasprop(i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %8, align 4
  %128 = call i64 @OF_hasprop(i32 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %132 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %131, i32 0, i32 2
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %126, %114
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @ti_sdhci_hw_init(i32 %134)
  %136 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %137 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %140 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK, align 4
  %143 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %144 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* @SDHCI_QUIRK_DONT_SHIFT_RESPONSE, align 4
  %149 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %150 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* @SDHCI_QUIRK_WAITFOR_RESET_ASSERTED, align 4
  %155 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %154
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* @SDHCI_QUIRK_WAIT_WHILE_BUSY, align 4
  %161 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %162 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @SDHCI_QUIRK_BROKEN_DMA, align 4
  %167 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %168 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %174 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %173, i32 0, i32 7
  %175 = call i32 @sdhci_init_slot(i32 %172, %struct.TYPE_6__* %174, i32 0)
  %176 = load i32, i32* %8, align 4
  %177 = call i64 @OF_getencprop(i32 %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %7, i32 4)
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %213

179:                                              ; preds = %133
  %180 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %181 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %182 = or i32 %180, %181
  %183 = xor i32 %182, -1
  %184 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %185 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %183
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* %7, align 4
  switch i32 %190, label %208 [
    i32 8, label %191
    i32 4, label %199
    i32 1, label %207
  ]

191:                                              ; preds = %179
  %192 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %193 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %194 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %192
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %179, %191
  %200 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %201 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %202 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %200
  store i32 %206, i32* %204, align 8
  br label %212

207:                                              ; preds = %179
  br label %212

208:                                              ; preds = %179
  %209 = load i32, i32* %3, align 4
  %210 = load i32, i32* %7, align 4
  %211 = call i32 (i32, i8*, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %208, %207, %199
  br label %213

213:                                              ; preds = %212, %133
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @ofw_bus_get_node(i32 %214)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i64 @OF_hasprop(i32 %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %221 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %220, i32 0, i32 3
  store i32 1, i32* %221, align 8
  br label %222

222:                                              ; preds = %219, %213
  %223 = load i32, i32* %3, align 4
  %224 = call i32 @bus_generic_probe(i32 %223)
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @bus_generic_attach(i32 %225)
  %227 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %228 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %227, i32 0, i32 7
  %229 = call i32 @sdhci_start_slot(%struct.TYPE_6__* %228)
  store i32 0, i32* %2, align 4
  br label %270

230:                                              ; preds = %110, %92, %77
  %231 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %232 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %230
  %236 = load i32, i32* %3, align 4
  %237 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %238 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %237, i32 0, i32 5
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %241 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @bus_teardown_intr(i32 %236, i8* %239, i64 %242)
  br label %244

244:                                              ; preds = %235, %230
  %245 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %246 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %245, i32 0, i32 5
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = load i32, i32* %3, align 4
  %251 = load i32, i32* @SYS_RES_IRQ, align 4
  %252 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %253 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %252, i32 0, i32 5
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @bus_release_resource(i32 %250, i32 %251, i32 0, i8* %254)
  br label %256

256:                                              ; preds = %249, %244
  %257 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %258 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %257, i32 0, i32 4
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load i32, i32* %3, align 4
  %263 = load i32, i32* @SYS_RES_MEMORY, align 4
  %264 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %4, align 8
  %265 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %264, i32 0, i32 4
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @bus_release_resource(i32 %262, i32 %263, i32 0, i8* %266)
  br label %268

268:                                              ; preds = %261, %256
  %269 = load i32, i32* %6, align 4
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %268, %222
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local %struct.ti_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @ti_hwmods_get_clock(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @ti_chip(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.ti_sdhci_softc*, i64*) #1

declare dso_local i32 @sdhci_fdt_gpio_setup(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ti_sdhci_hw_init(i32) #1

declare dso_local i32 @sdhci_init_slot(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @sdhci_start_slot(%struct.TYPE_6__*) #1

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
