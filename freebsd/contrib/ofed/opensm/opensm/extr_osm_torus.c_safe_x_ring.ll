; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_safe_x_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_safe_x_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, i64*** }

@X_MESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i32, i32, i32)* @safe_x_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_x_ring(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.torus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %12, align 4
  %13 = load %struct.torus*, %struct.torus** %5, align 8
  %14 = getelementptr inbounds %struct.torus, %struct.torus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load %struct.torus*, %struct.torus** %5, align 8
  %19 = getelementptr inbounds %struct.torus, %struct.torus* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @X_MESH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %4
  br label %402

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.torus*, %struct.torus** %5, align 8
  %29 = getelementptr inbounds %struct.torus, %struct.torus* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @canonicalize(i32 %27, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = load %struct.torus*, %struct.torus** %5, align 8
  %35 = getelementptr inbounds %struct.torus, %struct.torus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @canonicalize(i32 %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 2
  %40 = load %struct.torus*, %struct.torus** %5, align 8
  %41 = getelementptr inbounds %struct.torus, %struct.torus* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @canonicalize(i32 %39, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.torus*, %struct.torus** %5, align 8
  %45 = getelementptr inbounds %struct.torus, %struct.torus* %44, i32 0, i32 2
  %46 = load i64***, i64**** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64**, i64*** %46, i64 %48
  %50 = load i64**, i64*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64*, i64** %50, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.torus*, %struct.torus** %5, align 8
  %64 = getelementptr inbounds %struct.torus, %struct.torus* %63, i32 0, i32 2
  %65 = load i64***, i64**** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64**, i64*** %65, i64 %67
  %69 = load i64**, i64*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64*, i64** %69, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = add nsw i32 %62, %81
  %83 = load %struct.torus*, %struct.torus** %5, align 8
  %84 = getelementptr inbounds %struct.torus, %struct.torus* %83, i32 0, i32 2
  %85 = load i64***, i64**** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64**, i64*** %85, i64 %87
  %89 = load i64**, i64*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64*, i64** %89, i64 %91
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = add nsw i32 %82, %101
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %25
  store i32 0, i32* %12, align 4
  br label %402

105:                                              ; preds = %25
  %106 = load %struct.torus*, %struct.torus** %5, align 8
  %107 = getelementptr inbounds %struct.torus, %struct.torus* %106, i32 0, i32 2
  %108 = load i64***, i64**** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64**, i64*** %108, i64 %110
  %112 = load i64**, i64*** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64*, i64** %112, i64 %114
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %179

122:                                              ; preds = %105
  %123 = load %struct.torus*, %struct.torus** %5, align 8
  %124 = getelementptr inbounds %struct.torus, %struct.torus* %123, i32 0, i32 2
  %125 = load i64***, i64**** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64**, i64*** %125, i64 %127
  %129 = load i64**, i64*** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64*, i64** %129, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %179

139:                                              ; preds = %122
  %140 = load %struct.torus*, %struct.torus** %5, align 8
  %141 = load %struct.torus*, %struct.torus** %5, align 8
  %142 = getelementptr inbounds %struct.torus, %struct.torus* %141, i32 0, i32 2
  %143 = load i64***, i64**** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64**, i64*** %143, i64 %145
  %147 = load i64**, i64*** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64*, i64** %147, i64 %149
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.torus*, %struct.torus** %5, align 8
  %157 = getelementptr inbounds %struct.torus, %struct.torus* %156, i32 0, i32 2
  %158 = load i64***, i64**** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64**, i64*** %158, i64 %160
  %162 = load i64**, i64*** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64*, i64** %162, i64 %164
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @link_tswitches(%struct.torus* %140, i32 0, i64 %155, i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %139
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br label %176

176:                                              ; preds = %173, %139
  %177 = phi i1 [ false, %139 ], [ %175, %173 ]
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %176, %122, %105
  %180 = load %struct.torus*, %struct.torus** %5, align 8
  %181 = getelementptr inbounds %struct.torus, %struct.torus* %180, i32 0, i32 2
  %182 = load i64***, i64**** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64**, i64*** %182, i64 %184
  %186 = load i64**, i64*** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64*, i64** %186, i64 %188
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %253

196:                                              ; preds = %179
  %197 = load %struct.torus*, %struct.torus** %5, align 8
  %198 = getelementptr inbounds %struct.torus, %struct.torus* %197, i32 0, i32 2
  %199 = load i64***, i64**** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64**, i64*** %199, i64 %201
  %203 = load i64**, i64*** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64*, i64** %203, i64 %205
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %253

213:                                              ; preds = %196
  %214 = load %struct.torus*, %struct.torus** %5, align 8
  %215 = load %struct.torus*, %struct.torus** %5, align 8
  %216 = getelementptr inbounds %struct.torus, %struct.torus* %215, i32 0, i32 2
  %217 = load i64***, i64**** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64**, i64*** %217, i64 %219
  %221 = load i64**, i64*** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64*, i64** %221, i64 %223
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.torus*, %struct.torus** %5, align 8
  %231 = getelementptr inbounds %struct.torus, %struct.torus* %230, i32 0, i32 2
  %232 = load i64***, i64**** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64**, i64*** %232, i64 %234
  %236 = load i64**, i64*** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64*, i64** %236, i64 %238
  %240 = load i64*, i64** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = call i64 @link_tswitches(%struct.torus* %214, i32 0, i64 %229, i64 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %213
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br label %250

250:                                              ; preds = %247, %213
  %251 = phi i1 [ false, %213 ], [ %249, %247 ]
  %252 = zext i1 %251 to i32
  store i32 %252, i32* %12, align 4
  br label %253

253:                                              ; preds = %250, %196, %179
  %254 = load %struct.torus*, %struct.torus** %5, align 8
  %255 = getelementptr inbounds %struct.torus, %struct.torus* %254, i32 0, i32 2
  %256 = load i64***, i64**** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64**, i64*** %256, i64 %258
  %260 = load i64**, i64*** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64*, i64** %260, i64 %262
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %327

270:                                              ; preds = %253
  %271 = load %struct.torus*, %struct.torus** %5, align 8
  %272 = getelementptr inbounds %struct.torus, %struct.torus* %271, i32 0, i32 2
  %273 = load i64***, i64**** %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64**, i64*** %273, i64 %275
  %277 = load i64**, i64*** %276, align 8
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64*, i64** %277, i64 %279
  %281 = load i64*, i64** %280, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %327

287:                                              ; preds = %270
  %288 = load %struct.torus*, %struct.torus** %5, align 8
  %289 = load %struct.torus*, %struct.torus** %5, align 8
  %290 = getelementptr inbounds %struct.torus, %struct.torus* %289, i32 0, i32 2
  %291 = load i64***, i64**** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64**, i64*** %291, i64 %293
  %295 = load i64**, i64*** %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64*, i64** %295, i64 %297
  %299 = load i64*, i64** %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.torus*, %struct.torus** %5, align 8
  %305 = getelementptr inbounds %struct.torus, %struct.torus* %304, i32 0, i32 2
  %306 = load i64***, i64**** %305, align 8
  %307 = load i32, i32* %10, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64**, i64*** %306, i64 %308
  %310 = load i64**, i64*** %309, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64*, i64** %310, i64 %312
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %8, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = call i64 @link_tswitches(%struct.torus* %288, i32 0, i64 %303, i64 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %287
  %322 = load i32, i32* %12, align 4
  %323 = icmp ne i32 %322, 0
  br label %324

324:                                              ; preds = %321, %287
  %325 = phi i1 [ false, %287 ], [ %323, %321 ]
  %326 = zext i1 %325 to i32
  store i32 %326, i32* %12, align 4
  br label %327

327:                                              ; preds = %324, %270, %253
  %328 = load %struct.torus*, %struct.torus** %5, align 8
  %329 = getelementptr inbounds %struct.torus, %struct.torus* %328, i32 0, i32 2
  %330 = load i64***, i64**** %329, align 8
  %331 = load i32, i32* %10, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64**, i64*** %330, i64 %332
  %334 = load i64**, i64*** %333, align 8
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64*, i64** %334, i64 %336
  %338 = load i64*, i64** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %338, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %401

344:                                              ; preds = %327
  %345 = load %struct.torus*, %struct.torus** %5, align 8
  %346 = getelementptr inbounds %struct.torus, %struct.torus* %345, i32 0, i32 2
  %347 = load i64***, i64**** %346, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64**, i64*** %347, i64 %349
  %351 = load i64**, i64*** %350, align 8
  %352 = load i32, i32* %7, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i64*, i64** %351, i64 %353
  %355 = load i64*, i64** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %355, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %401

361:                                              ; preds = %344
  %362 = load %struct.torus*, %struct.torus** %5, align 8
  %363 = load %struct.torus*, %struct.torus** %5, align 8
  %364 = getelementptr inbounds %struct.torus, %struct.torus* %363, i32 0, i32 2
  %365 = load i64***, i64**** %364, align 8
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i64**, i64*** %365, i64 %367
  %369 = load i64**, i64*** %368, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64*, i64** %369, i64 %371
  %373 = load i64*, i64** %372, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %373, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.torus*, %struct.torus** %5, align 8
  %379 = getelementptr inbounds %struct.torus, %struct.torus* %378, i32 0, i32 2
  %380 = load i64***, i64**** %379, align 8
  %381 = load i32, i32* %11, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i64**, i64*** %380, i64 %382
  %384 = load i64**, i64*** %383, align 8
  %385 = load i32, i32* %7, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64*, i64** %384, i64 %386
  %388 = load i64*, i64** %387, align 8
  %389 = load i32, i32* %8, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64, i64* %388, i64 %390
  %392 = load i64, i64* %391, align 8
  %393 = call i64 @link_tswitches(%struct.torus* %362, i32 0, i64 %377, i64 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %361
  %396 = load i32, i32* %12, align 4
  %397 = icmp ne i32 %396, 0
  br label %398

398:                                              ; preds = %395, %361
  %399 = phi i1 [ false, %361 ], [ %397, %395 ]
  %400 = zext i1 %399 to i32
  store i32 %400, i32* %12, align 4
  br label %401

401:                                              ; preds = %398, %344, %327
  br label %402

402:                                              ; preds = %401, %104, %24
  %403 = load i32, i32* %12, align 4
  ret i32 %403
}

declare dso_local i32 @canonicalize(i32, i32) #1

declare dso_local i64 @link_tswitches(%struct.torus*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
