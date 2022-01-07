; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_print_in_radiotap_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_print_in_radiotap_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpack_state = type { i32 }

@IEEE80211_RADIOTAP_NAMESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cpack_state*, i32*, i32, i32)* @print_in_radiotap_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_in_radiotap_namespace(i32* %0, %struct.cpack_state* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cpack_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.cpack_state* %1, %struct.cpack_state** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %12, align 4
  br label %18

18:                                               ; preds = %356, %5
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %358

21:                                               ; preds = %18
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = xor i32 %26, %27
  %29 = ashr i32 %28, 16
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %191

31:                                               ; preds = %21
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = xor i32 %32, %33
  %35 = ashr i32 %34, 16
  %36 = ashr i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %117

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = xor i32 %39, %40
  %42 = ashr i32 %41, 16
  %43 = ashr i32 %42, 8
  %44 = ashr i32 %43, 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = xor i32 %47, %48
  %50 = ashr i32 %49, 16
  %51 = ashr i32 %50, 8
  %52 = ashr i32 %51, 4
  %53 = ashr i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = xor i32 %56, %57
  %59 = ashr i32 %58, 16
  %60 = ashr i32 %59, 8
  %61 = ashr i32 %60, 4
  %62 = ashr i32 %61, 2
  %63 = and i32 %62, 2
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = add nsw i32 2, %66
  br label %79

68:                                               ; preds = %46
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = xor i32 %69, %70
  %72 = ashr i32 %71, 16
  %73 = ashr i32 %72, 8
  %74 = ashr i32 %73, 4
  %75 = and i32 %74, 2
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  br label %79

79:                                               ; preds = %68, %55
  %80 = phi i32 [ %67, %55 ], [ %78, %68 ]
  %81 = add nsw i32 4, %80
  br label %114

82:                                               ; preds = %38
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = xor i32 %83, %84
  %86 = ashr i32 %85, 16
  %87 = ashr i32 %86, 8
  %88 = ashr i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = xor i32 %91, %92
  %94 = ashr i32 %93, 16
  %95 = ashr i32 %94, 8
  %96 = ashr i32 %95, 2
  %97 = and i32 %96, 2
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = add nsw i32 2, %100
  br label %112

102:                                              ; preds = %82
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = xor i32 %103, %104
  %106 = ashr i32 %105, 16
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 2
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  br label %112

112:                                              ; preds = %102, %90
  %113 = phi i32 [ %101, %90 ], [ %111, %102 ]
  br label %114

114:                                              ; preds = %112, %79
  %115 = phi i32 [ %81, %79 ], [ %113, %112 ]
  %116 = add nsw i32 8, %115
  br label %188

117:                                              ; preds = %31
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = xor i32 %118, %119
  %121 = ashr i32 %120, 16
  %122 = ashr i32 %121, 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %157

124:                                              ; preds = %117
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = xor i32 %125, %126
  %128 = ashr i32 %127, 16
  %129 = ashr i32 %128, 4
  %130 = ashr i32 %129, 2
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %124
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = xor i32 %133, %134
  %136 = ashr i32 %135, 16
  %137 = ashr i32 %136, 4
  %138 = ashr i32 %137, 2
  %139 = and i32 %138, 2
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = add nsw i32 2, %142
  br label %154

144:                                              ; preds = %124
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = xor i32 %145, %146
  %148 = ashr i32 %147, 16
  %149 = ashr i32 %148, 4
  %150 = and i32 %149, 2
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  br label %154

154:                                              ; preds = %144, %132
  %155 = phi i32 [ %143, %132 ], [ %153, %144 ]
  %156 = add nsw i32 4, %155
  br label %186

157:                                              ; preds = %117
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = xor i32 %158, %159
  %161 = ashr i32 %160, 16
  %162 = ashr i32 %161, 2
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %157
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %13, align 4
  %167 = xor i32 %165, %166
  %168 = ashr i32 %167, 16
  %169 = ashr i32 %168, 2
  %170 = and i32 %169, 2
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 0
  %174 = add nsw i32 2, %173
  br label %184

175:                                              ; preds = %157
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  %178 = xor i32 %176, %177
  %179 = ashr i32 %178, 16
  %180 = and i32 %179, 2
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 1, i32 0
  br label %184

184:                                              ; preds = %175, %164
  %185 = phi i32 [ %174, %164 ], [ %183, %175 ]
  br label %186

186:                                              ; preds = %184, %154
  %187 = phi i32 [ %156, %154 ], [ %185, %184 ]
  br label %188

188:                                              ; preds = %186, %114
  %189 = phi i32 [ %116, %114 ], [ %187, %186 ]
  %190 = add nsw i32 16, %189
  br label %335

191:                                              ; preds = %21
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = xor i32 %192, %193
  %195 = ashr i32 %194, 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %269

197:                                              ; preds = %191
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %13, align 4
  %200 = xor i32 %198, %199
  %201 = ashr i32 %200, 8
  %202 = ashr i32 %201, 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %237

204:                                              ; preds = %197
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = xor i32 %205, %206
  %208 = ashr i32 %207, 8
  %209 = ashr i32 %208, 4
  %210 = ashr i32 %209, 2
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %204
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %13, align 4
  %215 = xor i32 %213, %214
  %216 = ashr i32 %215, 8
  %217 = ashr i32 %216, 4
  %218 = ashr i32 %217, 2
  %219 = and i32 %218, 2
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 1, i32 0
  %223 = add nsw i32 2, %222
  br label %234

224:                                              ; preds = %204
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %13, align 4
  %227 = xor i32 %225, %226
  %228 = ashr i32 %227, 8
  %229 = ashr i32 %228, 4
  %230 = and i32 %229, 2
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 1, i32 0
  br label %234

234:                                              ; preds = %224, %212
  %235 = phi i32 [ %223, %212 ], [ %233, %224 ]
  %236 = add nsw i32 4, %235
  br label %266

237:                                              ; preds = %197
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %13, align 4
  %240 = xor i32 %238, %239
  %241 = ashr i32 %240, 8
  %242 = ashr i32 %241, 2
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %237
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %13, align 4
  %247 = xor i32 %245, %246
  %248 = ashr i32 %247, 8
  %249 = ashr i32 %248, 2
  %250 = and i32 %249, 2
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 1, i32 0
  %254 = add nsw i32 2, %253
  br label %264

255:                                              ; preds = %237
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* %13, align 4
  %258 = xor i32 %256, %257
  %259 = ashr i32 %258, 8
  %260 = and i32 %259, 2
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 1, i32 0
  br label %264

264:                                              ; preds = %255, %244
  %265 = phi i32 [ %254, %244 ], [ %263, %255 ]
  br label %266

266:                                              ; preds = %264, %234
  %267 = phi i32 [ %236, %234 ], [ %265, %264 ]
  %268 = add nsw i32 8, %267
  br label %333

269:                                              ; preds = %191
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %13, align 4
  %272 = xor i32 %270, %271
  %273 = ashr i32 %272, 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %305

275:                                              ; preds = %269
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* %13, align 4
  %278 = xor i32 %276, %277
  %279 = ashr i32 %278, 4
  %280 = ashr i32 %279, 2
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %293

282:                                              ; preds = %275
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* %13, align 4
  %285 = xor i32 %283, %284
  %286 = ashr i32 %285, 4
  %287 = ashr i32 %286, 2
  %288 = and i32 %287, 2
  %289 = icmp ne i32 %288, 0
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 1, i32 0
  %292 = add nsw i32 2, %291
  br label %302

293:                                              ; preds = %275
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* %13, align 4
  %296 = xor i32 %294, %295
  %297 = ashr i32 %296, 4
  %298 = and i32 %297, 2
  %299 = icmp ne i32 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i32 1, i32 0
  br label %302

302:                                              ; preds = %293, %282
  %303 = phi i32 [ %292, %282 ], [ %301, %293 ]
  %304 = add nsw i32 4, %303
  br label %331

305:                                              ; preds = %269
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* %13, align 4
  %308 = xor i32 %306, %307
  %309 = ashr i32 %308, 2
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %305
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %13, align 4
  %314 = xor i32 %312, %313
  %315 = ashr i32 %314, 2
  %316 = and i32 %315, 2
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i32 1, i32 0
  %320 = add nsw i32 2, %319
  br label %329

321:                                              ; preds = %305
  %322 = load i32, i32* %12, align 4
  %323 = load i32, i32* %13, align 4
  %324 = xor i32 %322, %323
  %325 = and i32 %324, 2
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i64
  %328 = select i1 %326, i32 1, i32 0
  br label %329

329:                                              ; preds = %321, %311
  %330 = phi i32 [ %320, %311 ], [ %328, %321 ]
  br label %331

331:                                              ; preds = %329, %302
  %332 = phi i32 [ %304, %302 ], [ %330, %329 ]
  br label %333

333:                                              ; preds = %331, %266
  %334 = phi i32 [ %268, %266 ], [ %332, %331 ]
  br label %335

335:                                              ; preds = %333, %188
  %336 = phi i32 [ %190, %188 ], [ %334, %333 ]
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %14, align 4
  %338 = load i32, i32* @IEEE80211_RADIOTAP_NAMESPACE, align 4
  %339 = icmp sge i32 %337, %338
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  br label %358

341:                                              ; preds = %335
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* %14, align 4
  %344 = add nsw i32 %342, %343
  store i32 %344, i32* %15, align 4
  %345 = load i32*, i32** %7, align 8
  %346 = load %struct.cpack_state*, %struct.cpack_state** %8, align 8
  %347 = load i32, i32* %15, align 4
  %348 = load i32*, i32** %9, align 8
  %349 = load i32, i32* %10, align 4
  %350 = call i32 @print_radiotap_field(i32* %345, %struct.cpack_state* %346, i32 %347, i32* %348, i32 %349)
  store i32 %350, i32* %16, align 4
  %351 = load i32, i32* %16, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %341
  %354 = load i32, i32* %16, align 4
  store i32 %354, i32* %6, align 4
  br label %359

355:                                              ; preds = %341
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %13, align 4
  store i32 %357, i32* %12, align 4
  br label %18

358:                                              ; preds = %340, %18
  store i32 0, i32* %6, align 4
  br label %359

359:                                              ; preds = %358, %353
  %360 = load i32, i32* %6, align 4
  ret i32 %360
}

declare dso_local i32 @print_radiotap_field(i32*, %struct.cpack_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
