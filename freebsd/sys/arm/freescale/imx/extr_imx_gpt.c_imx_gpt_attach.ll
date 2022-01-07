; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpt.c_imx_gpt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpt.c_imx_gpt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.imx_gpt_softc* }
%struct.imx_gpt_softc = type { i32, i32, %struct.TYPE_5__, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, i32, %struct.imx_gpt_softc*, i32, i32 }

@imx_gpt_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GPT_CR_24MEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unsupported clock source '%d'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IMX_GPT_CR = common dso_local global i32 0, align 4
@IMX_GPT_IR = common dso_local global i32 0, align 4
@GPT_CR_FRR = common dso_local global i32 0, align 4
@GPT_CR_STOPEN = common dso_local global i32 0, align 4
@GPT_CR_DOZEEN = common dso_local global i32 0, align 4
@GPT_CR_WAITEN = common dso_local global i32 0, align 4
@GPT_CR_DBGEN = common dso_local global i32 0, align 4
@GPT_CR_SWR = common dso_local global i32 0, align 4
@TARGET_FREQUENCY = common dso_local global i32 0, align 4
@IMX_GPT_PR = common dso_local global i32 0, align 4
@IMX_GPT_SR = common dso_local global i32 0, align 4
@GPT_IR_ALL = common dso_local global i32 0, align 4
@GPT_CR_EN = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Running on %dKHz clock, base freq %uHz CR=0x%08x, PR=0x%08x\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@imx_gpt_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Unable to setup the clock irq handler, err = %d\0A\00", align 1
@IMX_GPT_CNT = common dso_local global i32 0, align 4
@IMX_GPT_OCR3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"iMXGPT\00", align 1
@ET_FLAGS_ONESHOT = common dso_local global i32 0, align 4
@ET_FLAGS_PERIODIC = common dso_local global i32 0, align 4
@imx_gpt_timer_start = common dso_local global i32 0, align 4
@imx_gpt_timer_stop = common dso_local global i32 0, align 4
@imx_gpt_timecounter = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@imx_gpt_do_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx_gpt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_gpt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_gpt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.imx_gpt_softc* @device_get_softc(i32 %12)
  store %struct.imx_gpt_softc* %13, %struct.imx_gpt_softc** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @imx_gpt_spec, align 4
  %16 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %17 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @bus_alloc_resources(i32 %14, i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %262

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %28 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %30 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rman_get_bustag(i32 %33)
  %35 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %36 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %38 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rman_get_bushandle(i32 %41)
  %43 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %44 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %46 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %45, i32 0, i32 0
  store i32 130, i32* %46, align 8
  store i32 0, i32* %5, align 4
  %47 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %48 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %61 [
    i32 132, label %50
    i32 130, label %51
    i32 129, label %53
    i32 133, label %56
    i32 128, label %60
    i32 131, label %60
  ]

50:                                               ; preds = %25
  store i32 32768, i32* %7, align 4
  br label %68

51:                                               ; preds = %25
  %52 = call i32 (...) @imx_ccm_ipg_hz()
  store i32 %52, i32* %7, align 4
  br label %68

53:                                               ; preds = %25
  %54 = call i32 (...) @imx_ccm_ipg_hz()
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %7, align 4
  br label %68

56:                                               ; preds = %25
  %57 = load i32, i32* @GPT_CR_24MEN, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  store i32 24000000, i32* %7, align 4
  br label %68

60:                                               ; preds = %25, %25
  br label %61

61:                                               ; preds = %25, %60
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %64 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %2, align 4
  br label %262

68:                                               ; preds = %56, %53, %51, %50
  %69 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %70 = load i32, i32* @IMX_GPT_CR, align 4
  %71 = call i32 @WRITE4(%struct.imx_gpt_softc* %69, i32 %70, i32 0)
  %72 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %73 = load i32, i32* @IMX_GPT_IR, align 4
  %74 = call i32 @WRITE4(%struct.imx_gpt_softc* %72, i32 %73, i32 0)
  %75 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %76 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @GPT_CR_FRR, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @GPT_CR_STOPEN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @GPT_CR_DOZEEN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @GPT_CR_WAITEN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @GPT_CR_DBGEN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %91 = load i32, i32* @IMX_GPT_CR, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @WRITE4(%struct.imx_gpt_softc* %90, i32 %91, i32 %92)
  %94 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %95 = load i32, i32* @IMX_GPT_CR, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @GPT_CR_SWR, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @WRITE4(%struct.imx_gpt_softc* %94, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %107, %68
  %101 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %102 = load i32, i32* @IMX_GPT_CR, align 4
  %103 = call i32 @READ4(%struct.imx_gpt_softc* %101, i32 %102)
  %104 = load i32, i32* @GPT_CR_SWR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %100

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @TARGET_FREQUENCY, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  store i32 0, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %115 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %127

116:                                              ; preds = %108
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @TARGET_FREQUENCY, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = sdiv i32 %120, %121
  %123 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %124 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %116, %112
  %128 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %129 = load i32, i32* @IMX_GPT_PR, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @WRITE4(%struct.imx_gpt_softc* %128, i32 %129, i32 %130)
  %132 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %133 = load i32, i32* @IMX_GPT_SR, align 4
  %134 = load i32, i32* @GPT_IR_ALL, align 4
  %135 = call i32 @WRITE4(%struct.imx_gpt_softc* %132, i32 %133, i32 %134)
  %136 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %137 = load i32, i32* @IMX_GPT_CR, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @GPT_CR_EN, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @WRITE4(%struct.imx_gpt_softc* %136, i32 %137, i32 %140)
  %142 = load i64, i64* @bootverbose, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %127
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %147 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 1000
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %152 = load i32, i32* @IMX_GPT_CR, align 4
  %153 = call i32 @READ4(%struct.imx_gpt_softc* %151, i32 %152)
  %154 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %155 = load i32, i32* @IMX_GPT_PR, align 4
  %156 = call i32 @READ4(%struct.imx_gpt_softc* %154, i32 %155)
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %150, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %144, %127
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %161 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @INTR_TYPE_CLK, align 4
  %166 = load i32, i32* @imx_gpt_intr, align 4
  %167 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %168 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %169 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %168, i32 0, i32 4
  %170 = call i32 @bus_setup_intr(i32 %159, i32 %164, i32 %165, i32 %166, i32* null, %struct.imx_gpt_softc* %167, i32* %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %158
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* @imx_gpt_spec, align 4
  %176 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %177 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @bus_release_resources(i32 %174, i32 %175, i32* %178)
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i32 (i32, i8*, ...) @device_printf(i32 %180, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @ENXIO, align 4
  store i32 %183, i32* %2, align 4
  br label %262

184:                                              ; preds = %158
  %185 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %186 = load i32, i32* @IMX_GPT_CNT, align 4
  %187 = call i32 @READ4(%struct.imx_gpt_softc* %185, i32 %186)
  store i32 %187, i32* %10, align 4
  %188 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %189 = load i32, i32* @IMX_GPT_OCR3, align 4
  %190 = call i32 @WRITE4(%struct.imx_gpt_softc* %188, i32 %189, i32 0)
  %191 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %192 = load i32, i32* @IMX_GPT_CNT, align 4
  %193 = call i32 @READ4(%struct.imx_gpt_softc* %191, i32 %192)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %10, align 4
  %196 = sub nsw i32 %194, %195
  %197 = add nsw i32 %196, 1
  %198 = mul nsw i32 %197, 3
  %199 = sdiv i32 %198, 2
  store i32 %199, i32* %9, align 4
  %200 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %201 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %202, align 8
  %203 = load i32, i32* @ET_FLAGS_ONESHOT, align 4
  %204 = load i32, i32* @ET_FLAGS_PERIODIC, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %207 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 8
  %209 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %210 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  store i32 800, i32* %211, align 4
  %212 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %213 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %216 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 3
  store i32 %214, i32* %217, align 8
  %218 = load i32, i32* %9, align 4
  %219 = shl i32 %218, 32
  %220 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %221 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sdiv i32 %219, %222
  %224 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %225 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 4
  store i32 %223, i32* %226, align 4
  %227 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %228 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sdiv i32 undef, %229
  %231 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %232 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 5
  store i32 %230, i32* %233, align 8
  %234 = load i32, i32* @imx_gpt_timer_start, align 4
  %235 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %236 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 8
  store i32 %234, i32* %237, align 4
  %238 = load i32, i32* @imx_gpt_timer_stop, align 4
  %239 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %240 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 7
  store i32 %238, i32* %241, align 8
  %242 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %243 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %244 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 6
  store %struct.imx_gpt_softc* %242, %struct.imx_gpt_softc** %245, align 8
  %246 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %247 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %246, i32 0, i32 2
  %248 = call i32 @et_register(%struct.TYPE_5__* %247)
  %249 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %250 = getelementptr inbounds %struct.imx_gpt_softc, %struct.imx_gpt_softc* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @imx_gpt_timecounter, i32 0, i32 0), align 8
  %252 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  store %struct.imx_gpt_softc* %252, %struct.imx_gpt_softc** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @imx_gpt_timecounter, i32 0, i32 1), align 8
  %253 = call i32 @tc_init(%struct.TYPE_4__* @imx_gpt_timecounter)
  %254 = load i32, i32* %3, align 4
  %255 = call i64 @device_get_unit(i32 %254)
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %184
  %258 = load i32, i32* @imx_gpt_do_delay, align 4
  %259 = load %struct.imx_gpt_softc*, %struct.imx_gpt_softc** %4, align 8
  %260 = call i32 @arm_set_delay(i32 %258, %struct.imx_gpt_softc* %259)
  br label %261

261:                                              ; preds = %257, %184
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %261, %173, %61, %21
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.imx_gpt_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @imx_ccm_ipg_hz(...) #1

declare dso_local i32 @WRITE4(%struct.imx_gpt_softc*, i32, i32) #1

declare dso_local i32 @READ4(%struct.imx_gpt_softc*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.imx_gpt_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @et_register(%struct.TYPE_5__*) #1

declare dso_local i32 @tc_init(%struct.TYPE_4__*) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @arm_set_delay(i32, %struct.imx_gpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
