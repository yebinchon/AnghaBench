; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_config_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pinmux.c_pinmux_config_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_softc = type { i32, i32 }
%struct.tegra_mux = type { i32 }
%struct.pincfg = type { i32*, i32* }

@.str = private unnamed_addr constant [32 x i8] c"Unknown function %s for pin %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@TEGRA_MUX_FUNCTION_MASK = common dso_local global i32 0, align 4
@TEGRA_MUX_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_PULL = common dso_local global i64 0, align 8
@TEGRA_MUX_PUPD_MASK = common dso_local global i32 0, align 4
@TEGRA_MUX_PUPD_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_TRISTATE = common dso_local global i64 0, align 8
@TEGRA_MUX_TRISTATE_SHIFT = common dso_local global i32 0, align 4
@TEGRA_MUX_ENABLE_INPUT_SHIFT = common dso_local global i64 0, align 8
@PROP_ID_ENABLE_INPUT = common dso_local global i64 0, align 8
@PROP_ID_OPEN_DRAIN = common dso_local global i64 0, align 8
@PROP_ID_LOCK = common dso_local global i64 0, align 8
@TEGRA_MUX_LOCK_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_IORESET = common dso_local global i64 0, align 8
@TEGRA_MUX_IORESET_SHIFT = common dso_local global i32 0, align 4
@PROP_ID_RCV_SEL = common dso_local global i64 0, align 8
@TEGRA_MUX_RCV_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_softc*, i8*, %struct.tegra_mux*, %struct.pincfg*)* @pinmux_config_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_config_mux(%struct.pinmux_softc* %0, i8* %1, %struct.tegra_mux* %2, %struct.pincfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinmux_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tegra_mux*, align 8
  %9 = alloca %struct.pincfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinmux_softc* %0, %struct.pinmux_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tegra_mux* %2, %struct.tegra_mux** %8, align 8
  store %struct.pincfg* %3, %struct.pincfg** %9, align 8
  %12 = load %struct.pinmux_softc*, %struct.pinmux_softc** %6, align 8
  %13 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tegra_mux*, %struct.tegra_mux** %8, align 8
  %16 = getelementptr inbounds %struct.tegra_mux, %struct.tegra_mux* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bus_read_4(i32 %14, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %20 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %4
  %24 = load %struct.tegra_mux*, %struct.tegra_mux** %8, align 8
  %25 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %26 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @pinmux_mux_function(%struct.tegra_mux* %24, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.pinmux_softc*, %struct.pinmux_softc** %6, align 8
  %33 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %36 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %37, i8* %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %5, align 4
  br label %272

41:                                               ; preds = %23
  %42 = load i32, i32* @TEGRA_MUX_FUNCTION_MASK, align 4
  %43 = load i32, i32* @TEGRA_MUX_FUNCTION_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @TEGRA_MUX_FUNCTION_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @TEGRA_MUX_FUNCTION_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %41, %4
  %56 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %57 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @PROP_ID_PULL, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %82

63:                                               ; preds = %55
  %64 = load i32, i32* @TEGRA_MUX_PUPD_MASK, align 4
  %65 = load i32, i32* @TEGRA_MUX_PUPD_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %71 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @PROP_ID_PULL, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TEGRA_MUX_PUPD_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @TEGRA_MUX_PUPD_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %63, %55
  %83 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %84 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @PROP_ID_TRISTATE, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %107

90:                                               ; preds = %82
  %91 = load i32, i32* @TEGRA_MUX_TRISTATE_SHIFT, align 4
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %97 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @PROP_ID_TRISTATE, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = load i32, i32* @TEGRA_MUX_TRISTATE_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %90, %82
  %108 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %109 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @TEGRA_MUX_ENABLE_INPUT_SHIFT, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %134

115:                                              ; preds = %107
  %116 = load i64, i64* @TEGRA_MUX_ENABLE_INPUT_SHIFT, align 8
  %117 = trunc i64 %116 to i32
  %118 = shl i32 1, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %11, align 4
  %122 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %123 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @TEGRA_MUX_ENABLE_INPUT_SHIFT, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 1
  %129 = load i64, i64* @TEGRA_MUX_ENABLE_INPUT_SHIFT, align 8
  %130 = trunc i64 %129 to i32
  %131 = shl i32 %128, %130
  %132 = load i32, i32* %11, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %115, %107
  %135 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %136 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* @PROP_ID_ENABLE_INPUT, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, -1
  br i1 %141, label %142, label %161

142:                                              ; preds = %134
  %143 = load i64, i64* @TEGRA_MUX_ENABLE_INPUT_SHIFT, align 8
  %144 = trunc i64 %143 to i32
  %145 = shl i32 1, %144
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %11, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %11, align 4
  %149 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %150 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @PROP_ID_ENABLE_INPUT, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 1
  %156 = load i64, i64* @TEGRA_MUX_ENABLE_INPUT_SHIFT, align 8
  %157 = trunc i64 %156 to i32
  %158 = shl i32 %155, %157
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %142, %134
  %162 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %163 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @PROP_ID_ENABLE_INPUT, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, -1
  br i1 %168, label %169, label %188

169:                                              ; preds = %161
  %170 = load i64, i64* @TEGRA_MUX_ENABLE_INPUT_SHIFT, align 8
  %171 = trunc i64 %170 to i32
  %172 = shl i32 1, %171
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %11, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %11, align 4
  %176 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %177 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @PROP_ID_OPEN_DRAIN, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 1
  %183 = load i64, i64* @TEGRA_MUX_ENABLE_INPUT_SHIFT, align 8
  %184 = trunc i64 %183 to i32
  %185 = shl i32 %182, %184
  %186 = load i32, i32* %11, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %169, %161
  %189 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %190 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @PROP_ID_LOCK, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, -1
  br i1 %195, label %196, label %213

196:                                              ; preds = %188
  %197 = load i32, i32* @TEGRA_MUX_LOCK_SHIFT, align 4
  %198 = shl i32 1, %197
  %199 = xor i32 %198, -1
  %200 = load i32, i32* %11, align 4
  %201 = and i32 %200, %199
  store i32 %201, i32* %11, align 4
  %202 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %203 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @PROP_ID_LOCK, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 1
  %209 = load i32, i32* @TEGRA_MUX_LOCK_SHIFT, align 4
  %210 = shl i32 %208, %209
  %211 = load i32, i32* %11, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %196, %188
  %214 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %215 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* @PROP_ID_IORESET, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, -1
  br i1 %220, label %221, label %238

221:                                              ; preds = %213
  %222 = load i32, i32* @TEGRA_MUX_IORESET_SHIFT, align 4
  %223 = shl i32 1, %222
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %11, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %11, align 4
  %227 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %228 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @PROP_ID_IORESET, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 1
  %234 = load i32, i32* @TEGRA_MUX_IORESET_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = load i32, i32* %11, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %11, align 4
  br label %238

238:                                              ; preds = %221, %213
  %239 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %240 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @PROP_ID_RCV_SEL, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, -1
  br i1 %245, label %246, label %263

246:                                              ; preds = %238
  %247 = load i32, i32* @TEGRA_MUX_RCV_SEL_SHIFT, align 4
  %248 = shl i32 1, %247
  %249 = xor i32 %248, -1
  %250 = load i32, i32* %11, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %11, align 4
  %252 = load %struct.pincfg*, %struct.pincfg** %9, align 8
  %253 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @PROP_ID_RCV_SEL, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 1
  %259 = load i32, i32* @TEGRA_MUX_RCV_SEL_SHIFT, align 4
  %260 = shl i32 %258, %259
  %261 = load i32, i32* %11, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %11, align 4
  br label %263

263:                                              ; preds = %246, %238
  %264 = load %struct.pinmux_softc*, %struct.pinmux_softc** %6, align 8
  %265 = getelementptr inbounds %struct.pinmux_softc, %struct.pinmux_softc* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.tegra_mux*, %struct.tegra_mux** %8, align 8
  %268 = getelementptr inbounds %struct.tegra_mux, %struct.tegra_mux* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %11, align 4
  %271 = call i32 @bus_write_4(i32 %266, i32 %269, i32 %270)
  store i32 0, i32* %5, align 4
  br label %272

272:                                              ; preds = %263, %31
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @pinmux_mux_function(%struct.tegra_mux*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32*, i8*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
