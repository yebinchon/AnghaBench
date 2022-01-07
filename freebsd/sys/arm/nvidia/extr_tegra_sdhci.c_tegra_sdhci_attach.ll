; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_sdhci.c_tegra_sdhci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_sdhci.c_tegra_sdhci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sdhci_softc = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tegra_sdhci_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sdhci\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Cannot get 'sdhci' reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Cannot unreset 'sdhci' reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"power-gpios\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Cannot get clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Cannot enable clock\0A\00", align 1
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Cannot set clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Cannot get clock frequency\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c" Base MMC clock: %lld\0A\00", align 1
@SDHCI_QUIRK_BROKEN_TIMEOUT_VAL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK = common dso_local global i32 0, align 4
@SDHCI_QUIRK_MISSING_CAPS = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"Bad bus-width value %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@SDHCI_CLOCK_V3_BASE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_sdhci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_sdhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.tegra_sdhci_softc* @device_get_softc(i32 %10)
  store %struct.tegra_sdhci_softc* %11, %struct.tegra_sdhci_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i8* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %5, i32 %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %22, i32 0, i32 4
  store i32* %21, i32** %23, align 8
  %24 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %6, align 4
  br label %249

32:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SYS_RES_IRQ, align 4
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = call i8* @bus_alloc_resource_any(i32 %33, i32 %34, i32* %5, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %38, i32 0, i32 5
  store i32* %37, i32** %39, align 8
  %40 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %6, align 4
  br label %249

48:                                               ; preds = %32
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @INTR_TYPE_BIO, align 4
  %54 = load i32, i32* @INTR_MPSAFE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @tegra_sdhci_intr, align 4
  %57 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %58 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %58, i32 0, i32 9
  %60 = call i64 @bus_setup_intr(i32 %49, i32* %52, i32 %55, i32* null, i32 %56, %struct.tegra_sdhci_softc* %57, i32** %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %6, align 4
  br label %249

66:                                               ; preds = %48
  %67 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %71 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %70, i32 0, i32 6
  %72 = call i32 @hwreset_get_by_ofw_name(i32 %69, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32** %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %249

80:                                               ; preds = %66
  %81 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %82 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @hwreset_deassert(i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %3, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %249

90:                                               ; preds = %80
  %91 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %96 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %95, i32 0, i32 8
  %97 = call i32 @gpio_pin_get_by_ofw_property(i32 %93, i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32** %96)
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %100 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %99, i32 0, i32 7
  %101 = call i32 @clk_get_by_ofw_index(i32 %98, i32 0, i32 0, i32** %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %90
  %105 = load i32, i32* %3, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %249

107:                                              ; preds = %90
  %108 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %109 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %108, i32 0, i32 7
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @clk_enable(i32* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %3, align 4
  %116 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %249

117:                                              ; preds = %107
  %118 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %119 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %118, i32 0, i32 7
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %122 = call i32 @clk_set_freq(i32* %120, i32 48000000, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %3, align 4
  %127 = call i32 (i32, i8*, ...) @device_printf(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %117
  %129 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %130 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @clk_get_freq(i32* %131, i32* %7)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i32, i32* %3, align 4
  %137 = call i32 (i32, i8*, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %249

138:                                              ; preds = %128
  %139 = load i64, i64* @bootverbose, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %148 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMEOUT_VAL, align 4
  %150 = load i32, i32* @SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @SDHCI_QUIRK_MISSING_CAPS, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %155 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %159 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %160 = call i32 @RD4(%struct.tegra_sdhci_softc* %158, i32 %159)
  %161 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %162 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i64 @OF_getencprop(i32 %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %9, i32 4)
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %145
  %167 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %168 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %169 = or i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %172 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* %9, align 4
  switch i32 %175, label %189 [
    i32 8, label %176
    i32 4, label %182
    i32 1, label %188
  ]

176:                                              ; preds = %166
  %177 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %178 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %179 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %166, %176
  %183 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %184 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %185 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %193

188:                                              ; preds = %166
  br label %193

189:                                              ; preds = %166
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 (i32, i8*, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %189, %188, %182
  br label %194

194:                                              ; preds = %193, %145
  %195 = load i32, i32* %8, align 4
  %196 = call i64 @OF_hasprop(i32 %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %200 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %199, i32 0, i32 3
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %194
  %202 = load i32, i32* @SDHCI_CLOCK_V3_BASE_MASK, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %205 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %209 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %212 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %211, i32 0, i32 11
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  %214 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %215 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %218 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %217, i32 0, i32 11
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 1
  store i32 %216, i32* %219, align 4
  %220 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %221 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %224 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %223, i32 0, i32 11
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  store i32 %222, i32* %225, align 8
  %226 = load i32, i32* %3, align 4
  %227 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %228 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %227, i32 0, i32 11
  %229 = call i32 @sdhci_init_slot(i32 %226, %struct.TYPE_4__* %228, i32 0)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %201
  br label %249

233:                                              ; preds = %201
  %234 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %235 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %234, i32 0, i32 12
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %238 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %237, i32 0, i32 11
  %239 = call i32* @sdhci_fdt_gpio_setup(i32 %236, %struct.TYPE_4__* %238)
  %240 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %241 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %240, i32 0, i32 10
  store i32* %239, i32** %241, align 8
  %242 = load i32, i32* %3, align 4
  %243 = call i32 @bus_generic_probe(i32 %242)
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @bus_generic_attach(i32 %244)
  %246 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %247 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %246, i32 0, i32 11
  %248 = call i32 @sdhci_start_slot(%struct.TYPE_4__* %247)
  store i32 0, i32* %2, align 4
  br label %329

249:                                              ; preds = %232, %135, %114, %104, %87, %75, %62, %44, %28
  %250 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %251 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %250, i32 0, i32 10
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %256 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %255, i32 0, i32 10
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @sdhci_fdt_gpio_teardown(i32* %257)
  br label %259

259:                                              ; preds = %254, %249
  %260 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %261 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %260, i32 0, i32 9
  %262 = load i32*, i32** %261, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %273

264:                                              ; preds = %259
  %265 = load i32, i32* %3, align 4
  %266 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %267 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %266, i32 0, i32 5
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %270 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %269, i32 0, i32 9
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @bus_teardown_intr(i32 %265, i32* %268, i32* %271)
  br label %273

273:                                              ; preds = %264, %259
  %274 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %275 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %274, i32 0, i32 8
  %276 = load i32*, i32** %275, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %280 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %279, i32 0, i32 8
  %281 = load i32*, i32** %280, align 8
  %282 = call i32 @gpio_pin_release(i32* %281)
  br label %283

283:                                              ; preds = %278, %273
  %284 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %285 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %284, i32 0, i32 7
  %286 = load i32*, i32** %285, align 8
  %287 = icmp ne i32* %286, null
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %290 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %289, i32 0, i32 7
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @clk_release(i32* %291)
  br label %293

293:                                              ; preds = %288, %283
  %294 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %295 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %294, i32 0, i32 6
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %303

298:                                              ; preds = %293
  %299 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %300 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %299, i32 0, i32 6
  %301 = load i32*, i32** %300, align 8
  %302 = call i32 @hwreset_release(i32* %301)
  br label %303

303:                                              ; preds = %298, %293
  %304 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %305 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %304, i32 0, i32 5
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %315

308:                                              ; preds = %303
  %309 = load i32, i32* %3, align 4
  %310 = load i32, i32* @SYS_RES_IRQ, align 4
  %311 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %312 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %311, i32 0, i32 5
  %313 = load i32*, i32** %312, align 8
  %314 = call i32 @bus_release_resource(i32 %309, i32 %310, i32 0, i32* %313)
  br label %315

315:                                              ; preds = %308, %303
  %316 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %317 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %316, i32 0, i32 4
  %318 = load i32*, i32** %317, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %327

320:                                              ; preds = %315
  %321 = load i32, i32* %3, align 4
  %322 = load i32, i32* @SYS_RES_MEMORY, align 4
  %323 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %324 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %323, i32 0, i32 4
  %325 = load i32*, i32** %324, align 8
  %326 = call i32 @bus_release_resource(i32 %321, i32 %322, i32 0, i32* %325)
  br label %327

327:                                              ; preds = %320, %315
  %328 = load i32, i32* %6, align 4
  store i32 %328, i32* %2, align 4
  br label %329

329:                                              ; preds = %327, %233
  %330 = load i32, i32* %2, align 4
  ret i32 %330
}

declare dso_local %struct.tegra_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.tegra_sdhci_softc*, i32**) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @hwreset_deassert(i32*) #1

declare dso_local i32 @gpio_pin_get_by_ofw_property(i32, i32, i8*, i32**) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32**) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @clk_set_freq(i32*, i32, i32) #1

declare dso_local i32 @clk_get_freq(i32*, i32*) #1

declare dso_local i32 @RD4(%struct.tegra_sdhci_softc*, i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @sdhci_init_slot(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32* @sdhci_fdt_gpio_setup(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @sdhci_start_slot(%struct.TYPE_4__*) #1

declare dso_local i32 @sdhci_fdt_gpio_teardown(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @gpio_pin_release(i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
