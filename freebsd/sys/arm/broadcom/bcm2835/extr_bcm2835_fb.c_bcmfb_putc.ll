; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fb.c_bcmfb_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_fb.c_bcmfb_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.bcmsc_softc = type { i64, i32*, i32, i32, i32, i32, i32 }

@BCMFB_FONT_HEIGHT = common dso_local global i32 0, align 4
@bcmfb_palette = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @bcmfb_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmfb_putc(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bcmsc_softc*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = bitcast %struct.TYPE_6__* %23 to %struct.bcmsc_softc*
  store %struct.bcmsc_softc* %24, %struct.bcmsc_softc** %16, align 8
  %25 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %26 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %292

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %31, %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %36, %40
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %42, %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %47, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %54 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @BCMFB_FONT_HEIGHT, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  store i32* %60, i32** %17, align 8
  %61 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %62 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %67 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  %70 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %71 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %64, i64 %74
  %76 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %77 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %78, 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %82 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = mul nsw i32 %79, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %75, i64 %86
  store i32* %87, i32** %18, align 8
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 15
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %9, align 4
  %91 = ashr i32 %90, 4
  %92 = and i32 %91, 15
  store i32 %92, i32* %20, align 4
  %93 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %94 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %95, 8
  store i32 %96, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %288, %30
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @BCMFB_FONT_HEIGHT, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %291

101:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  store i32 7, i32* %14, align 4
  br label %102

102:                                              ; preds = %276, %101
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 8
  br i1 %104, label %105, label %281

105:                                              ; preds = %102
  %106 = load i32*, i32** %17, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %14, align 4
  %112 = shl i32 1, %111
  %113 = and i32 %110, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %20, align 4
  store i32 %116, i32* %21, align 4
  br label %119

117:                                              ; preds = %105
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %121 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %274 [
    i32 32, label %123
    i32 24, label %123
    i32 16, label %228
  ]

123:                                              ; preds = %119, %119
  %124 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %125 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %168

128:                                              ; preds = %123
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %18, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %13, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %138, 0
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  store i32 %134, i32* %141, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %18, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %13, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %148, i64 %153
  store i32 %147, i32* %154, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %156 = load i32, i32* %21, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %18, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %13, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %161, i64 %166
  store i32 %160, i32* %167, align 4
  br label %208

168:                                              ; preds = %123
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %170 = load i32, i32* %21, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %18, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %13, align 4
  %178 = mul nsw i32 %176, %177
  %179 = add nsw i32 %178, 0
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  store i32 %174, i32* %181, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %183 = load i32, i32* %21, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %18, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %13, align 4
  %191 = mul nsw i32 %189, %190
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  store i32 %187, i32* %194, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %18, align 8
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %13, align 4
  %204 = mul nsw i32 %202, %203
  %205 = add nsw i32 %204, 2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  store i32 %200, i32* %207, align 4
  br label %208

208:                                              ; preds = %168, %128
  %209 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %210 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %211, 32
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %215 = load i32, i32* %21, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %18, align 8
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %13, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %223, 3
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %220, i64 %225
  store i32 %219, i32* %226, align 4
  br label %227

227:                                              ; preds = %213, %208
  br label %275

228:                                              ; preds = %119
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %230 = load i32, i32* %21, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = ashr i32 %234, 3
  %236 = shl i32 %235, 11
  store i32 %236, i32* %22, align 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %238 = load i32, i32* %21, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = ashr i32 %242, 2
  %244 = shl i32 %243, 5
  %245 = load i32, i32* %22, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %22, align 4
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bcmfb_palette, align 8
  %248 = load i32, i32* %21, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = ashr i32 %252, 3
  %254 = load i32, i32* %22, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %22, align 4
  %256 = load i32, i32* %22, align 4
  %257 = and i32 %256, 255
  %258 = load i32*, i32** %18, align 8
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %13, align 4
  %261 = mul nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %258, i64 %262
  store i32 %257, i32* %263, align 4
  %264 = load i32, i32* %22, align 4
  %265 = ashr i32 %264, 8
  %266 = and i32 %265, 255
  %267 = load i32*, i32** %18, align 8
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* %13, align 4
  %270 = mul nsw i32 %268, %269
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %267, i64 %272
  store i32 %266, i32* %273, align 4
  br label %274

274:                                              ; preds = %119, %228
  br label %275

275:                                              ; preds = %274, %227
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %13, align 4
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %14, align 4
  br label %102

281:                                              ; preds = %102
  %282 = load %struct.bcmsc_softc*, %struct.bcmsc_softc** %16, align 8
  %283 = getelementptr inbounds %struct.bcmsc_softc, %struct.bcmsc_softc* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %18, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32* %287, i32** %18, align 8
  br label %288

288:                                              ; preds = %281
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %12, align 4
  br label %97

291:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %292

292:                                              ; preds = %291, %29
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
