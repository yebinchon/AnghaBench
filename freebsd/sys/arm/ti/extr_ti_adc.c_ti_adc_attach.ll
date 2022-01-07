; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_adc.c_ti_adc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adc_softc = type { i32, i32, i32, i32*, i32, i32, i64, i32, i8*, i8*, i32, i32, i8*, i8* }

@DEFAULT_CHARGE_DELAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"tsc\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ti,wires\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ti,coordinate-readouts\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ti,x-plate-resistance\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ti,charge-delay\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ti,wire-config\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"invalid number of ti,wire-config: %d (should be %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ti,adc-channels\00", align 1
@TI_ADC_NPINS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"total number of chanels (%d) is larger than %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@TSC_ADC_CLK = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ti_adc_intr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"Unable to setup the irq handler.\0A\00", align 1
@ADC_REVISION = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [57 x i8] c"scheme: %#x func: %#x rtl: %d rev: %d.%d custom rev: %d\0A\00", align 1
@ADC_REV_SCHEME_MSK = common dso_local global i32 0, align 4
@ADC_REV_SCHEME_SHIFT = common dso_local global i32 0, align 4
@ADC_REV_FUNC_MSK = common dso_local global i32 0, align 4
@ADC_REV_FUNC_SHIFT = common dso_local global i32 0, align 4
@ADC_REV_RTL_MSK = common dso_local global i32 0, align 4
@ADC_REV_RTL_SHIFT = common dso_local global i32 0, align 4
@ADC_REV_MAJOR_MSK = common dso_local global i32 0, align 4
@ADC_REV_MAJOR_SHIFT = common dso_local global i32 0, align 4
@ADC_REV_MINOR_MSK = common dso_local global i32 0, align 4
@ADC_REV_CUSTOM_MSK = common dso_local global i32 0, align 4
@ADC_REV_CUSTOM_SHIFT = common dso_local global i32 0, align 4
@ADC_CTRL = common dso_local global i32 0, align 4
@ADC_CTRL_STEP_WP = common dso_local global i32 0, align 4
@ADC_CTRL_STEP_ID = common dso_local global i32 0, align 4
@ADC_CLKDIV = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ADC_MAX_VALUE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BUS_VIRTUAL = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_adc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_adc_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.ti_adc_softc* @device_get_softc(i32 %16)
  store %struct.ti_adc_softc* %17, %struct.ti_adc_softc** %7, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @ofw_bus_get_node(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %24 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %26 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %28 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %27, i32 0, i32 13
  store i8* null, i8** %28, align 8
  %29 = load i8*, i8** @DEFAULT_CHARGE_DELAY, align 8
  %30 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %31 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %30, i32 0, i32 12
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @ofw_bus_find_child(i64 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %108

36:                                               ; preds = %1
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @OF_hasprop(i64 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %108

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @OF_getencprop(i64 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %12, i32 8)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %12, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %48 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @OF_getencprop(i64 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %12, i32 8)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** %12, align 8
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %57 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @OF_getencprop(i64 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %12, i32 8)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %65 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %64, i32 0, i32 13
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @OF_getencprop(i64 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %12, i32 8)
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %73 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %72, i32 0, i32 12
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i64, i64* %11, align 8
  %76 = bitcast i32** %15 to i8**
  %77 = call i8* @OF_getencprop_alloc_multi(i64 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 4, i8** %76)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %81 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %74
  %85 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %86 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %90 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @OF_prop_free(i32* %93)
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %2, align 4
  br label %319

96:                                               ; preds = %74
  %97 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @ti_adc_config_wires(%struct.ti_adc_softc* %97, i32* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = call i32 @OF_prop_free(i32* %101)
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %2, align 4
  br label %319

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %36, %1
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @ofw_bus_find_child(i64 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %150

113:                                              ; preds = %108
  %114 = load i64, i64* %11, align 8
  %115 = bitcast i32** %13 to i8**
  %116 = call i8* @OF_getencprop_alloc_multi(i64 %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 4, i8** %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %119 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %121 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %143, %124
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %128 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %125
  %132 = load i32*, i32** %13, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %138 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %136, i32* %142, align 4
  br label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %125

146:                                              ; preds = %125
  %147 = load i32*, i32** %13, align 8
  %148 = call i32 @OF_prop_free(i32* %147)
  br label %149

149:                                              ; preds = %146, %113
  br label %150

150:                                              ; preds = %149, %108
  %151 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %152 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %155 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %153, %156
  %158 = load i32, i32* @TI_ADC_NPINS, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %150
  %161 = load i32, i32* %3, align 4
  %162 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %163 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %166 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %164, %167
  %169 = load i32, i32* @TI_ADC_NPINS, align 4
  %170 = call i32 (i32, i8*, ...) @device_printf(i32 %161, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %168, i32 %169)
  %171 = load i32, i32* @ENXIO, align 4
  store i32 %171, i32* %2, align 4
  br label %319

172:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @SYS_RES_MEMORY, align 4
  %175 = load i32, i32* @RF_ACTIVE, align 4
  %176 = call i8* @bus_alloc_resource_any(i32 %173, i32 %174, i32* %5, i32 %175)
  %177 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %178 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %177, i32 0, i32 8
  store i8* %176, i8** %178, align 8
  %179 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %180 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %179, i32 0, i32 8
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %3, align 4
  %185 = call i32 (i32, i8*, ...) @device_printf(i32 %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %186 = load i32, i32* @ENXIO, align 4
  store i32 %186, i32* %2, align 4
  br label %319

187:                                              ; preds = %172
  %188 = load i32, i32* @TSC_ADC_CLK, align 4
  %189 = call i32 @ti_prcm_clk_enable(i32 %188)
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  br label %319

194:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @SYS_RES_IRQ, align 4
  %197 = load i32, i32* @RF_ACTIVE, align 4
  %198 = call i8* @bus_alloc_resource_any(i32 %195, i32 %196, i32* %5, i32 %197)
  %199 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %200 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %199, i32 0, i32 9
  store i8* %198, i8** %200, align 8
  %201 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %202 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %201, i32 0, i32 9
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %215, label %205

205:                                              ; preds = %194
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* @SYS_RES_MEMORY, align 4
  %208 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %209 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %208, i32 0, i32 8
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @bus_release_resource(i32 %206, i32 %207, i32 0, i8* %210)
  %212 = load i32, i32* %3, align 4
  %213 = call i32 (i32, i8*, ...) @device_printf(i32 %212, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %214 = load i32, i32* @ENXIO, align 4
  store i32 %214, i32* %2, align 4
  br label %319

215:                                              ; preds = %194
  %216 = load i32, i32* %3, align 4
  %217 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %218 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %217, i32 0, i32 9
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* @INTR_TYPE_MISC, align 4
  %221 = load i32, i32* @INTR_MPSAFE, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @ti_adc_intr, align 4
  %224 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %225 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %226 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %225, i32 0, i32 10
  %227 = call i64 @bus_setup_intr(i32 %216, i8* %219, i32 %222, i32* null, i32 %223, %struct.ti_adc_softc* %224, i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %215
  %230 = load i32, i32* %3, align 4
  %231 = load i32, i32* @SYS_RES_IRQ, align 4
  %232 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %233 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %232, i32 0, i32 9
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @bus_release_resource(i32 %230, i32 %231, i32 0, i8* %234)
  %236 = load i32, i32* %3, align 4
  %237 = load i32, i32* @SYS_RES_MEMORY, align 4
  %238 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %239 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %238, i32 0, i32 8
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @bus_release_resource(i32 %236, i32 %237, i32 0, i8* %240)
  %242 = load i32, i32* %3, align 4
  %243 = call i32 (i32, i8*, ...) @device_printf(i32 %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %244 = load i32, i32* @ENXIO, align 4
  store i32 %244, i32* %2, align 4
  br label %319

245:                                              ; preds = %215
  %246 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %247 = load i32, i32* @ADC_REVISION, align 4
  %248 = call i32 @ADC_READ4(%struct.ti_adc_softc* %246, i32 %247)
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* @ADC_REV_SCHEME_MSK, align 4
  %252 = and i32 %250, %251
  %253 = load i32, i32* @ADC_REV_SCHEME_SHIFT, align 4
  %254 = ashr i32 %252, %253
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @ADC_REV_FUNC_MSK, align 4
  %257 = and i32 %255, %256
  %258 = load i32, i32* @ADC_REV_FUNC_SHIFT, align 4
  %259 = ashr i32 %257, %258
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* @ADC_REV_RTL_MSK, align 4
  %262 = and i32 %260, %261
  %263 = load i32, i32* @ADC_REV_RTL_SHIFT, align 4
  %264 = ashr i32 %262, %263
  %265 = load i32, i32* %8, align 4
  %266 = load i32, i32* @ADC_REV_MAJOR_MSK, align 4
  %267 = and i32 %265, %266
  %268 = load i32, i32* @ADC_REV_MAJOR_SHIFT, align 4
  %269 = ashr i32 %267, %268
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* @ADC_REV_MINOR_MSK, align 4
  %272 = and i32 %270, %271
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* @ADC_REV_CUSTOM_MSK, align 4
  %275 = and i32 %273, %274
  %276 = load i32, i32* @ADC_REV_CUSTOM_SHIFT, align 4
  %277 = ashr i32 %275, %276
  %278 = call i32 (i32, i8*, ...) @device_printf(i32 %249, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i32 %254, i32 %259, i32 %264, i32 %269, i32 %272, i32 %277)
  %279 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %280 = load i32, i32* @ADC_CTRL, align 4
  %281 = call i32 @ADC_READ4(%struct.ti_adc_softc* %279, i32 %280)
  store i32 %281, i32* %9, align 4
  %282 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %283 = load i32, i32* @ADC_CTRL, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @ADC_CTRL_STEP_WP, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @ADC_CTRL_STEP_ID, align 4
  %288 = or i32 %286, %287
  %289 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %282, i32 %283, i32 %288)
  %290 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %291 = getelementptr inbounds %struct.ti_adc_softc, %struct.ti_adc_softc* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %245
  %295 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %296 = load i32, i32* @ADC_CLKDIV, align 4
  %297 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %295, i32 %296, i32 23)
  br label %302

298:                                              ; preds = %245
  %299 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %300 = load i32, i32* @ADC_CLKDIV, align 4
  %301 = call i32 @ADC_WRITE4(%struct.ti_adc_softc* %299, i32 %300, i32 2399)
  br label %302

302:                                              ; preds = %298, %294
  %303 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %304 = call i32 @TI_ADC_LOCK_INIT(%struct.ti_adc_softc* %303)
  %305 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %306 = call i32 @ti_adc_idlestep_init(%struct.ti_adc_softc* %305)
  %307 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %308 = call i32 @ti_adc_inputs_init(%struct.ti_adc_softc* %307)
  %309 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %310 = call i32 @ti_adc_sysctl_init(%struct.ti_adc_softc* %309)
  %311 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %312 = call i32 @ti_adc_tsc_init(%struct.ti_adc_softc* %311)
  %313 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %314 = call i32 @TI_ADC_LOCK(%struct.ti_adc_softc* %313)
  %315 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %316 = call i32 @ti_adc_setup(%struct.ti_adc_softc* %315)
  %317 = load %struct.ti_adc_softc*, %struct.ti_adc_softc** %7, align 8
  %318 = call i32 @TI_ADC_UNLOCK(%struct.ti_adc_softc* %317)
  store i32 0, i32* %2, align 4
  br label %319

319:                                              ; preds = %302, %229, %205, %192, %183, %160, %105, %84
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local %struct.ti_adc_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i64 @OF_hasprop(i64, i8*) #1

declare dso_local i64 @OF_getencprop(i64, i8*, i8**, i32) #1

declare dso_local i8* @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OF_prop_free(i32*) #1

declare dso_local i32 @ti_adc_config_wires(%struct.ti_adc_softc*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.ti_adc_softc*, i32*) #1

declare dso_local i32 @ADC_READ4(%struct.ti_adc_softc*, i32) #1

declare dso_local i32 @ADC_WRITE4(%struct.ti_adc_softc*, i32, i32) #1

declare dso_local i32 @TI_ADC_LOCK_INIT(%struct.ti_adc_softc*) #1

declare dso_local i32 @ti_adc_idlestep_init(%struct.ti_adc_softc*) #1

declare dso_local i32 @ti_adc_inputs_init(%struct.ti_adc_softc*) #1

declare dso_local i32 @ti_adc_sysctl_init(%struct.ti_adc_softc*) #1

declare dso_local i32 @ti_adc_tsc_init(%struct.ti_adc_softc*) #1

declare dso_local i32 @TI_ADC_LOCK(%struct.ti_adc_softc*) #1

declare dso_local i32 @ti_adc_setup(%struct.ti_adc_softc*) #1

declare dso_local i32 @TI_ADC_UNLOCK(%struct.ti_adc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
