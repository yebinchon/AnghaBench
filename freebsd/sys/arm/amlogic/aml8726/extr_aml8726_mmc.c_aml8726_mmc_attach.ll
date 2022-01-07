; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_mmc_softc = type { i64, i32*, i32*, i64, i64, i64, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32*, i64 }
%struct.TYPE_6__ = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [33 x i8] c"missing clocks attribute in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"pinctrl-0\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"missing pinctrl-0 attribute in FDT\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"amlogic,function\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"missing amlogic,function attribute in FDT\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sdio-a\00", align 1
@AML_MMC_MULT_CONFIG_PORT_A = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"sdio-b\00", align 1
@AML_MMC_MULT_CONFIG_PORT_B = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"sdio-c\00", align 1
@AML_MMC_MULT_CONFIG_PORT_C = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"unknown function attribute %.*s in FDT\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"mmc-pwr-en\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"unable to process mmc-pwr-en attribute in FDT\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"could not use gpio to control power\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"mmc-voltages\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"missing mmc-voltages attribute in FDT\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"1.8\00", align 1
@MMC_OCR_LOW_VOLTAGE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"3.3\00", align 1
@MMC_OCR_320_330 = common dso_local global i32 0, align 4
@MMC_OCR_330_340 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"unknown voltage attribute %.*s in FDT\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"mmc-vselect\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"unable to process mmc-vselect attribute in FDT\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"could not use gpio to set voltage\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"no voltages in FDT\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"only one voltage in FDT\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"too many voltages in FDT\0A\00", align 1
@aml8726_mmc_spec = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@AML_MMC_ALIGN_DMA = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@AML_MMC_MAX_DMA = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aml8726_mmc_intr = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [35 x i8] c"could not setup interrupt handler\0A\00", align 1
@CALLOUT_RETURNUNLOCKED = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_HSPEED = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"could not add mmc\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"could not attach mmc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_mmc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_mmc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_mmc_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.aml8726_mmc_softc* @device_get_softc(i32 %14)
  store %struct.aml8726_mmc_softc* %15, %struct.aml8726_mmc_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ofw_bus_get_node(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @aml8726_mmc_clk(i32 %21)
  %23 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %26 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %525

33:                                               ; preds = %1
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %36 = call i32 @OF_getencprop(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* %35, i32 24)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 8
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %43 = load i64, i64* %42, align 16
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %525

49:                                               ; preds = %41
  %50 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %51 = load i64, i64* %50, align 16
  %52 = call i32 @OF_node_from_xref(i64 %51)
  %53 = call i32 @OF_getprop_alloc(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %5)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %525

60:                                               ; preds = %49
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @AML_MMC_MULT_CONFIG_PORT_A, align 4
  %67 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %68 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 8
  br label %97

69:                                               ; preds = %60
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @AML_MMC_MULT_CONFIG_PORT_B, align 4
  %76 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %77 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %76, i32 0, i32 11
  store i32 %75, i32* %77, align 8
  br label %96

78:                                               ; preds = %69
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @AML_MMC_MULT_CONFIG_PORT_C, align 4
  %85 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %86 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  br label %95

87:                                               ; preds = %78
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %89, i8* %90)
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @OF_prop_free(i8* %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %525

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %74
  br label %97

97:                                               ; preds = %96, %65
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @OF_prop_free(i8* %98)
  %100 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %101 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %100, i32 0, i32 10
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %105 = call i32 @OF_getencprop(i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64* %104, i32 24)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %162

108:                                              ; preds = %97
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = udiv i64 %110, 8
  %112 = icmp eq i64 %111, 3
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %115 = load i64, i64* %114, align 16
  %116 = call i8* @OF_device_from_xref(i64 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %119 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %118, i32 0, i32 10
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32* %117, i32** %120, align 8
  %121 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %124 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 2
  %127 = load i64, i64* %126, align 16
  %128 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %129 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %128, i32 0, i32 10
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  store i64 %127, i64* %130, align 8
  br label %131

131:                                              ; preds = %113, %108
  %132 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %133 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %132, i32 0, i32 10
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* %3, align 4
  %139 = call i32 (i32, i8*, ...) @device_printf(i32 %138, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %2, align 4
  br label %525

141:                                              ; preds = %131
  %142 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %143 = call i64 @aml8726_mmc_power_off(%struct.aml8726_mmc_softc* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %141
  %146 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %147 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %146, i32 0, i32 10
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %151 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %150, i32 0, i32 10
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %155 = call i64 @GPIO_PIN_SETFLAGS(i32* %149, i64 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %145, %141
  %158 = load i32, i32* %3, align 4
  %159 = call i32 (i32, i8*, ...) @device_printf(i32 %158, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %160 = load i32, i32* @ENXIO, align 4
  store i32 %160, i32* %2, align 4
  br label %525

161:                                              ; preds = %145
  br label %162

162:                                              ; preds = %161, %97
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @OF_getprop_alloc(i32 %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %6)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* %3, align 4
  %169 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %170 = load i32, i32* @ENXIO, align 4
  store i32 %170, i32* %2, align 4
  br label %525

171:                                              ; preds = %162
  %172 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %173 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 0, i32* %175, align 4
  %176 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %177 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 0, i32* %179, align 4
  %180 = load i8*, i8** %6, align 8
  store i8* %180, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %252, %171
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %185, 2
  br label %187

187:                                              ; preds = %184, %181
  %188 = phi i1 [ false, %181 ], [ %186, %184 ]
  br i1 %188, label %189, label %253

189:                                              ; preds = %187
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* %12, align 4
  %192 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %190, i32 %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load i32, i32* @MMC_OCR_LOW_VOLTAGE, align 4
  %196 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %197 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %195, i32* %201, align 4
  br label %226

202:                                              ; preds = %189
  %203 = load i8*, i8** %7, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i64 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %203, i32 %204)
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = load i32, i32* @MMC_OCR_320_330, align 4
  %209 = load i32, i32* @MMC_OCR_330_340, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %212 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %225

217:                                              ; preds = %202
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i8*, i8** %7, align 8
  %221 = call i32 (i32, i8*, ...) @device_printf(i32 %218, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 %219, i8* %220)
  %222 = load i8*, i8** %6, align 8
  %223 = call i32 @OF_prop_free(i8* %222)
  %224 = load i32, i32* @ENXIO, align 4
  store i32 %224, i32* %2, align 4
  br label %525

225:                                              ; preds = %207
  br label %226

226:                                              ; preds = %225, %194
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %239, %226
  %230 = load i8*, i8** %7, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br label %237

237:                                              ; preds = %234, %229
  %238 = phi i1 [ false, %229 ], [ %236, %234 ]
  br i1 %238, label %239, label %244

239:                                              ; preds = %237
  %240 = load i8*, i8** %7, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %7, align 8
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %12, align 4
  br label %229

244:                                              ; preds = %237
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  %248 = load i8*, i8** %7, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %7, align 8
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %247, %244
  br label %181

253:                                              ; preds = %187
  %254 = load i8*, i8** %6, align 8
  %255 = call i32 @OF_prop_free(i8* %254)
  %256 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %257 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  store i32* null, i32** %258, align 8
  %259 = load i32, i32* %11, align 4
  %260 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %261 = call i32 @OF_getencprop(i32 %259, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64* %260, i32 24)
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %12, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %323

264:                                              ; preds = %253
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = udiv i64 %266, 8
  %268 = icmp eq i64 %267, 2
  br i1 %268, label %269, label %285

269:                                              ; preds = %264
  %270 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %271 = load i64, i64* %270, align 16
  %272 = call i8* @OF_device_from_xref(i64 %271)
  %273 = bitcast i8* %272 to i32*
  %274 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %275 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %274, i32 0, i32 9
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 1
  store i32* %273, i32** %276, align 8
  %277 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %280 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %279, i32 0, i32 9
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 2
  store i64 %278, i64* %281, align 8
  %282 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %283 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %282, i32 0, i32 9
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  store i32 1, i32* %284, align 8
  br label %285

285:                                              ; preds = %269, %264
  %286 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %287 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %286, i32 0, i32 9
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = icmp eq i32* %289, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %285
  %292 = load i32, i32* %3, align 4
  %293 = call i32 (i32, i8*, ...) @device_printf(i32 %292, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0))
  %294 = load i32, i32* @ENXIO, align 4
  store i32 %294, i32* %2, align 4
  br label %525

295:                                              ; preds = %285
  %296 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %297 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %296, i32 0, i32 9
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %301 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %300, i32 0, i32 9
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @GPIO_PIN_SET(i32* %299, i64 %303, i32 0)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %318, label %306

306:                                              ; preds = %295
  %307 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %308 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %307, i32 0, i32 9
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %312 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %311, i32 0, i32 9
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %316 = call i64 @GPIO_PIN_SETFLAGS(i32* %310, i64 %314, i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %306, %295
  %319 = load i32, i32* %3, align 4
  %320 = call i32 (i32, i8*, ...) @device_printf(i32 %319, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  %321 = load i32, i32* @ENXIO, align 4
  store i32 %321, i32* %2, align 4
  br label %525

322:                                              ; preds = %306
  br label %323

323:                                              ; preds = %322, %253
  %324 = load i32, i32* %9, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load i32, i32* %3, align 4
  %328 = call i32 (i32, i8*, ...) @device_printf(i32 %327, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %329 = load i32, i32* @ENXIO, align 4
  store i32 %329, i32* %2, align 4
  br label %525

330:                                              ; preds = %323
  %331 = load i32, i32* %9, align 4
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %343

333:                                              ; preds = %330
  %334 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %335 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %334, i32 0, i32 9
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %343

339:                                              ; preds = %333
  %340 = load i32, i32* %3, align 4
  %341 = call i32 (i32, i8*, ...) @device_printf(i32 %340, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %342 = load i32, i32* @ENXIO, align 4
  store i32 %342, i32* %2, align 4
  br label %525

343:                                              ; preds = %333, %330
  %344 = load i32, i32* %9, align 4
  %345 = icmp eq i32 %344, 2
  br i1 %345, label %346, label %356

346:                                              ; preds = %343
  %347 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %348 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %347, i32 0, i32 9
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = icmp eq i32* %350, null
  br i1 %351, label %352, label %356

352:                                              ; preds = %346
  %353 = load i32, i32* %3, align 4
  %354 = call i32 (i32, i8*, ...) @device_printf(i32 %353, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  %355 = load i32, i32* @ENXIO, align 4
  store i32 %355, i32* %2, align 4
  br label %525

356:                                              ; preds = %346, %343
  br label %357

357:                                              ; preds = %356
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %3, align 4
  %360 = load i32, i32* @aml8726_mmc_spec, align 4
  %361 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %362 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %361, i32 0, i32 2
  %363 = load i32*, i32** %362, align 8
  %364 = call i64 @bus_alloc_resources(i32 %359, i32 %360, i32* %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %358
  %367 = load i32, i32* %3, align 4
  %368 = call i32 (i32, i8*, ...) @device_printf(i32 %367, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  %369 = load i32, i32* @ENXIO, align 4
  store i32 %369, i32* %2, align 4
  br label %525

370:                                              ; preds = %358
  %371 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %372 = call i32 @AML_MMC_LOCK_INIT(%struct.aml8726_mmc_softc* %371)
  %373 = load i32, i32* %3, align 4
  %374 = call i32 @bus_get_dma_tag(i32 %373)
  %375 = load i32, i32* @AML_MMC_ALIGN_DMA, align 4
  %376 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %377 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %378 = load i32, i32* @AML_MMC_MAX_DMA, align 4
  %379 = load i32, i32* @AML_MMC_MAX_DMA, align 4
  %380 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %381 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %380, i32 0, i32 3
  %382 = call i32 @bus_dma_tag_create(i32 %374, i32 %375, i32 0, i32 %376, i32 %377, i32* null, i32* null, i32 %378, i32 1, i32 %379, i32 0, i32* null, i32* null, i64* %381)
  store i32 %382, i32* %8, align 4
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %370
  br label %474

386:                                              ; preds = %370
  %387 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %388 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %391 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %390, i32 0, i32 4
  %392 = call i32 @bus_dmamap_create(i64 %389, i32 0, i64* %391)
  store i32 %392, i32* %8, align 4
  %393 = load i32, i32* %8, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %386
  br label %474

396:                                              ; preds = %386
  %397 = load i32, i32* %3, align 4
  %398 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %399 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %398, i32 0, i32 2
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @INTR_TYPE_MISC, align 4
  %404 = load i32, i32* @INTR_MPSAFE, align 4
  %405 = or i32 %403, %404
  %406 = load i32, i32* @aml8726_mmc_intr, align 4
  %407 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %408 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %409 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %408, i32 0, i32 5
  %410 = call i32 @bus_setup_intr(i32 %397, i32 %402, i32 %405, i32* null, i32 %406, %struct.aml8726_mmc_softc* %407, i64* %409)
  store i32 %410, i32* %8, align 4
  %411 = load i32, i32* %8, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %396
  %414 = load i32, i32* %3, align 4
  %415 = call i32 (i32, i8*, ...) @device_printf(i32 %414, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0))
  br label %474

416:                                              ; preds = %396
  %417 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %418 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %417, i32 0, i32 8
  %419 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %420 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %419, i32 0, i32 7
  %421 = load i32, i32* @CALLOUT_RETURNUNLOCKED, align 4
  %422 = call i32 @callout_init_mtx(i32* %418, i32* %420, i32 %421)
  %423 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %424 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %425 = call i32 @aml8726_mmc_div(%struct.aml8726_mmc_softc* %424, i32 200000)
  %426 = call i8* @aml8726_mmc_freq(%struct.aml8726_mmc_softc* %423, i32 %425)
  %427 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %428 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %427, i32 0, i32 6
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 3
  store i8* %426, i8** %429, align 8
  %430 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %431 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %432 = call i32 @aml8726_mmc_div(%struct.aml8726_mmc_softc* %431, i32 50000000)
  %433 = call i8* @aml8726_mmc_freq(%struct.aml8726_mmc_softc* %430, i32 %432)
  %434 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %435 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %434, i32 0, i32 6
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 2
  store i8* %433, i8** %436, align 8
  %437 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %438 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %437, i32 0, i32 1
  %439 = load i32*, i32** %438, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 0
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %443 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 1
  %446 = load i32, i32* %445, align 4
  %447 = or i32 %441, %446
  %448 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %449 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %448, i32 0, i32 6
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 0
  store i32 %447, i32* %450, align 8
  %451 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %452 = load i32, i32* @MMC_CAP_HSPEED, align 4
  %453 = or i32 %451, %452
  %454 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %455 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %454, i32 0, i32 6
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 1
  store i32 %453, i32* %456, align 4
  %457 = load i32, i32* %3, align 4
  %458 = call i32 @device_add_child(i32 %457, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 -1)
  store i32 %458, i32* %13, align 4
  %459 = load i32, i32* %13, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %465, label %461

461:                                              ; preds = %416
  %462 = load i32, i32* %3, align 4
  %463 = call i32 (i32, i8*, ...) @device_printf(i32 %462, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %464 = load i32, i32* @ENXIO, align 4
  store i32 %464, i32* %8, align 4
  br label %474

465:                                              ; preds = %416
  %466 = load i32, i32* %13, align 4
  %467 = call i32 @device_probe_and_attach(i32 %466)
  store i32 %467, i32* %8, align 4
  %468 = load i32, i32* %8, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %465
  %471 = load i32, i32* %3, align 4
  %472 = call i32 (i32, i8*, ...) @device_printf(i32 %471, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  br label %474

473:                                              ; preds = %465
  store i32 0, i32* %2, align 4
  br label %525

474:                                              ; preds = %470, %461, %413, %395, %385
  %475 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %476 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %475, i32 0, i32 5
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %490

479:                                              ; preds = %474
  %480 = load i32, i32* %3, align 4
  %481 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %482 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %481, i32 0, i32 2
  %483 = load i32*, i32** %482, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 1
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %487 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %486, i32 0, i32 5
  %488 = load i64, i64* %487, align 8
  %489 = call i32 @bus_teardown_intr(i32 %480, i32 %485, i64 %488)
  br label %490

490:                                              ; preds = %479, %474
  %491 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %492 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %491, i32 0, i32 4
  %493 = load i64, i64* %492, align 8
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %503

495:                                              ; preds = %490
  %496 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %497 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %496, i32 0, i32 3
  %498 = load i64, i64* %497, align 8
  %499 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %500 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %499, i32 0, i32 4
  %501 = load i64, i64* %500, align 8
  %502 = call i32 @bus_dmamap_destroy(i64 %498, i64 %501)
  br label %503

503:                                              ; preds = %495, %490
  %504 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %505 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %504, i32 0, i32 3
  %506 = load i64, i64* %505, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %513

508:                                              ; preds = %503
  %509 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %510 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %509, i32 0, i32 3
  %511 = load i64, i64* %510, align 8
  %512 = call i32 @bus_dma_tag_destroy(i64 %511)
  br label %513

513:                                              ; preds = %508, %503
  %514 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %515 = call i32 @AML_MMC_LOCK_DESTROY(%struct.aml8726_mmc_softc* %514)
  %516 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %517 = call i64 @aml8726_mmc_power_off(%struct.aml8726_mmc_softc* %516)
  %518 = load i32, i32* %3, align 4
  %519 = load i32, i32* @aml8726_mmc_spec, align 4
  %520 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %521 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %520, i32 0, i32 2
  %522 = load i32*, i32** %521, align 8
  %523 = call i32 @bus_release_resources(i32 %518, i32 %519, i32* %522)
  %524 = load i32, i32* %8, align 4
  store i32 %524, i32* %2, align 4
  br label %525

525:                                              ; preds = %513, %473, %366, %352, %339, %326, %318, %291, %217, %167, %157, %137, %87, %56, %45, %29
  %526 = load i32, i32* %2, align 4
  ret i32 %526
}

declare dso_local %struct.aml8726_mmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @aml8726_mmc_clk(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @OF_node_from_xref(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i8* @OF_device_from_xref(i64) #1

declare dso_local i64 @aml8726_mmc_power_off(%struct.aml8726_mmc_softc*) #1

declare dso_local i64 @GPIO_PIN_SETFLAGS(i32*, i64, i32) #1

declare dso_local i64 @GPIO_PIN_SET(i32*, i64, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @AML_MMC_LOCK_INIT(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamap_create(i64, i32, i64*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.aml8726_mmc_softc*, i64*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i8* @aml8726_mmc_freq(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @aml8726_mmc_div(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @AML_MMC_LOCK_DESTROY(%struct.aml8726_mmc_softc*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
