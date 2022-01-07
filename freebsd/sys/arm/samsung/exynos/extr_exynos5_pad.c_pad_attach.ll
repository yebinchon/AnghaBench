; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pad_softc = type { i32, i32, i32, i32, i32*, i32, i64*, i32*, %struct.TYPE_3__*, i32, i32*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.gpio_bank = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@pad_spec_5250 = common dso_local global i32 0, align 4
@gpio_map_5250 = common dso_local global i32 0, align 4
@interrupt_table_5250 = common dso_local global i32 0, align 4
@pad_spec_5420 = common dso_local global i32 0, align 4
@gpio_map_5420 = common dso_local global i32 0, align 4
@interrupt_table_5420 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@gpio_sc = common dso_local global %struct.pad_softc* null, align 8
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@port_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ERROR: Unable to register interrupt handler\0A\00", align 1
@DEFAULT_CAPS = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pad%d.%d\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pad_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_bank, align 4
  %5 = alloca %struct.pad_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.pad_softc* @device_get_softc(i32 %9)
  store %struct.pad_softc* %10, %struct.pad_softc** %5, align 8
  %11 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %12 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %12, i32 %14, i32* null, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @compat_data, align 4
  %19 = call %struct.TYPE_4__* @ofw_bus_search_compatible(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %23 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %25 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %55 [
    i32 129, label %27
    i32 128, label %41
  ]

27:                                               ; preds = %1
  %28 = load i32, i32* @pad_spec_5250, align 4
  %29 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %30 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @gpio_map_5250, align 4
  %32 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %33 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @interrupt_table_5250, align 4
  %35 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %36 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %38 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %37, i32 0, i32 1
  store i32 253, i32* %38, align 4
  %39 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %40 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %39, i32 0, i32 2
  store i32 4, i32* %40, align 8
  br label %56

41:                                               ; preds = %1
  %42 = load i32, i32* @pad_spec_5420, align 4
  %43 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %44 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @gpio_map_5420, align 4
  %46 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %47 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @interrupt_table_5420, align 4
  %49 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %50 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  %51 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %52 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %51, i32 0, i32 1
  store i32 232, i32* %52, align 4
  %53 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %54 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %53, i32 0, i32 2
  store i32 5, i32* %54, align 8
  br label %56

55:                                               ; preds = %1
  br label %242

56:                                               ; preds = %41, %27
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %59 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %62 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @bus_alloc_resources(i32 %57, i32 %60, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %242

69:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %105, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %73 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %70
  %77 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %78 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rman_get_bustag(i32 %83)
  %85 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %86 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %85, i32 0, i32 11
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %92 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rman_get_bushandle(i32 %97)
  %99 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %100 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %99, i32 0, i32 10
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %76
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %70

108:                                              ; preds = %70
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %111 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 8
  %112 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  store %struct.pad_softc* %112, %struct.pad_softc** @gpio_sc, align 8
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %149, %108
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %116 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %152

119:                                              ; preds = %113
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %122 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %125 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %123, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @INTR_TYPE_BIO, align 4
  %133 = load i32, i32* @INTR_MPSAFE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @port_intr, align 4
  %136 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %137 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %138 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %137, i32 0, i32 6
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = call i64 @bus_setup_intr(i32 %120, i32 %131, i32 %134, i32 %135, i32* null, %struct.pad_softc* %136, i64* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %119
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @device_printf(i32 %146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %242

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %113

152:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %228, %152
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %156 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %231

159:                                              ; preds = %153
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %162 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %161, i32 0, i32 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 %160, i32* %167, align 4
  %168 = load i32, i32* @DEFAULT_CAPS, align 4
  %169 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %170 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %169, i32 0, i32 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  store i32 %168, i32* %175, align 4
  %176 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i64 @get_bank(%struct.pad_softc* %176, i32 %177, %struct.gpio_bank* %4, i32* %6)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %159
  br label %228

181:                                              ; preds = %159
  %182 = load i32, i32* %6, align 4
  %183 = mul nsw i32 %182, 4
  store i32 %183, i32* %6, align 4
  %184 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %185 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %4, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %4, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @READ4(%struct.pad_softc* %184, i32 %186, i32 %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @PIN_OUT, align 4
  %192 = load i32, i32* %6, align 4
  %193 = shl i32 %191, %192
  %194 = and i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %181
  %197 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %198 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %199 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %198, i32 0, i32 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 2
  store i32 %197, i32* %204, align 4
  br label %214

205:                                              ; preds = %181
  %206 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %207 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %208 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %207, i32 0, i32 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  store i32 %206, i32* %213, align 4
  br label %214

214:                                              ; preds = %205, %196
  %215 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %216 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %215, i32 0, i32 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @GPIOMAXNAME, align 4
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @device_get_unit(i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @snprintf(i32 %222, i32 %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %214, %180
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %153

231:                                              ; preds = %153
  %232 = load i32, i32* %3, align 4
  %233 = call i32* @gpiobus_attach_bus(i32 %232)
  %234 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %235 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %234, i32 0, i32 7
  store i32* %233, i32** %235, align 8
  %236 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %237 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %236, i32 0, i32 7
  %238 = load i32*, i32** %237, align 8
  %239 = icmp eq i32* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %231
  br label %242

241:                                              ; preds = %231
  store i32 0, i32* %2, align 4
  br label %296

242:                                              ; preds = %240, %145, %66, %55
  store i32 0, i32* %8, align 4
  br label %243

243:                                              ; preds = %280, %242
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %246 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %283

249:                                              ; preds = %243
  %250 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %251 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %250, i32 0, i32 6
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %279

258:                                              ; preds = %249
  %259 = load i32, i32* %3, align 4
  %260 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %261 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %260, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %264 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %262, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %272 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %271, i32 0, i32 6
  %273 = load i64*, i64** %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @bus_teardown_intr(i32 %259, i32 %270, i64 %277)
  br label %279

279:                                              ; preds = %258, %249
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %243

283:                                              ; preds = %243
  %284 = load i32, i32* %3, align 4
  %285 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %286 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %289 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = call i32 @bus_release_resources(i32 %284, i32 %287, i32* %290)
  %292 = load %struct.pad_softc*, %struct.pad_softc** %5, align 8
  %293 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %292, i32 0, i32 3
  %294 = call i32 @mtx_destroy(i32* %293)
  %295 = load i32, i32* @ENXIO, align 4
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %283, %241
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local %struct.pad_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.TYPE_4__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.pad_softc*, i64*) #1

declare dso_local i64 @get_bank(%struct.pad_softc*, i32, %struct.gpio_bank*, i32*) #1

declare dso_local i32 @READ4(%struct.pad_softc*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
