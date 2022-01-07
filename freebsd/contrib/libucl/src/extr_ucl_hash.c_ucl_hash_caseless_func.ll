; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_hash.c_ucl_hash_caseless_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_hash.c_ucl_hash_caseless_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%union.anon = type { i64 }
%struct.anon = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@lc_map = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ucl_hash_caseless_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_hash_caseless_func(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %union.anon, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = urem i32 %15, 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %7, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = call i64 (...) @ucl_hash_seed()
  store i64 %24, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %185, %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %188

29:                                               ; preds = %25
  %30 = load i64*, i64** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i8
  %36 = bitcast %union.anon* %8 to %struct.anon*
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  store i8 %35, i8* %37, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i8
  %45 = bitcast %union.anon* %8 to %struct.anon*
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 1
  store i8 %44, i8* %46, align 1
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 2
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i8
  %54 = bitcast %union.anon* %8 to %struct.anon*
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 2
  store i8 %53, i8* %55, align 2
  %56 = load i64*, i64** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 3
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i8
  %63 = bitcast %union.anon* %8 to %struct.anon*
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 3
  store i8 %62, i8* %64, align 1
  %65 = load i64*, i64** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i8
  %72 = bitcast %union.anon* %8 to %struct.anon*
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 4
  store i8 %71, i8* %73, align 4
  %74 = load i64*, i64** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 5
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i8
  %81 = bitcast %union.anon* %8 to %struct.anon*
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 5
  store i8 %80, i8* %82, align 1
  %83 = load i64*, i64** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %84, 6
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i8
  %90 = bitcast %union.anon* %8 to %struct.anon*
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 6
  store i8 %89, i8* %91, align 2
  %92 = load i64*, i64** %7, align 8
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 7
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i8
  %99 = bitcast %union.anon* %8 to %struct.anon*
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 7
  store i8 %98, i8* %100, align 1
  %101 = load i8**, i8*** @lc_map, align 8
  %102 = bitcast %union.anon* %8 to %struct.anon*
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 8
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %101, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = ptrtoint i8* %107 to i8
  %109 = bitcast %union.anon* %8 to %struct.anon*
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 0
  store i8 %108, i8* %110, align 8
  %111 = load i8**, i8*** @lc_map, align 8
  %112 = bitcast %union.anon* %8 to %struct.anon*
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %112, i32 0, i32 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %111, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = ptrtoint i8* %117 to i8
  %119 = bitcast %union.anon* %8 to %struct.anon*
  %120 = getelementptr inbounds %struct.anon, %struct.anon* %119, i32 0, i32 1
  store i8 %118, i8* %120, align 1
  %121 = load i8**, i8*** @lc_map, align 8
  %122 = bitcast %union.anon* %8 to %struct.anon*
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 2
  %124 = load i8, i8* %123, align 2
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %121, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = ptrtoint i8* %127 to i8
  %129 = bitcast %union.anon* %8 to %struct.anon*
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %129, i32 0, i32 2
  store i8 %128, i8* %130, align 2
  %131 = load i8**, i8*** @lc_map, align 8
  %132 = bitcast %union.anon* %8 to %struct.anon*
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %132, i32 0, i32 3
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %131, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = ptrtoint i8* %137 to i8
  %139 = bitcast %union.anon* %8 to %struct.anon*
  %140 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 3
  store i8 %138, i8* %140, align 1
  %141 = load i8**, i8*** @lc_map, align 8
  %142 = bitcast %union.anon* %8 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 4
  %144 = load i8, i8* %143, align 4
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %141, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %147 to i8
  %149 = bitcast %union.anon* %8 to %struct.anon*
  %150 = getelementptr inbounds %struct.anon, %struct.anon* %149, i32 0, i32 0
  store i8 %148, i8* %150, align 8
  %151 = load i8**, i8*** @lc_map, align 8
  %152 = bitcast %union.anon* %8 to %struct.anon*
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 5
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %151, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %157 to i8
  %159 = bitcast %union.anon* %8 to %struct.anon*
  %160 = getelementptr inbounds %struct.anon, %struct.anon* %159, i32 0, i32 1
  store i8 %158, i8* %160, align 1
  %161 = load i8**, i8*** @lc_map, align 8
  %162 = bitcast %union.anon* %8 to %struct.anon*
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %162, i32 0, i32 6
  %164 = load i8, i8* %163, align 2
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %161, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = ptrtoint i8* %167 to i8
  %169 = bitcast %union.anon* %8 to %struct.anon*
  %170 = getelementptr inbounds %struct.anon, %struct.anon* %169, i32 0, i32 2
  store i8 %168, i8* %170, align 2
  %171 = load i8**, i8*** @lc_map, align 8
  %172 = bitcast %union.anon* %8 to %struct.anon*
  %173 = getelementptr inbounds %struct.anon, %struct.anon* %172, i32 0, i32 7
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %171, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %177 to i8
  %179 = bitcast %union.anon* %8 to %struct.anon*
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 3
  store i8 %178, i8* %180, align 1
  %181 = load i64, i64* %9, align 8
  %182 = bitcast %union.anon* %8 to i64*
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @mum_hash_step(i64 %181, i64 %183)
  store i64 %184, i64* %9, align 8
  br label %185

185:                                              ; preds = %29
  %186 = load i32, i32* %6, align 4
  %187 = add i32 %186, 8
  store i32 %187, i32* %6, align 4
  br label %25

188:                                              ; preds = %25
  %189 = bitcast %union.anon* %8 to i64*
  store i64 0, i64* %189, align 8
  %190 = load i32, i32* %4, align 4
  switch i32 %190, label %299 [
    i32 7, label %191
    i32 6, label %206
    i32 5, label %221
    i32 4, label %236
    i32 3, label %251
    i32 2, label %266
    i32 1, label %281
  ]

191:                                              ; preds = %188
  %192 = load i8**, i8*** @lc_map, align 8
  %193 = load i64*, i64** %7, align 8
  %194 = load i32, i32* %6, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %6, align 4
  %196 = zext i32 %194 to i64
  %197 = getelementptr inbounds i64, i64* %193, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i8
  %200 = zext i8 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %192, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = ptrtoint i8* %202 to i8
  %204 = bitcast %union.anon* %8 to %struct.anon*
  %205 = getelementptr inbounds %struct.anon, %struct.anon* %204, i32 0, i32 6
  store i8 %203, i8* %205, align 2
  br label %206

206:                                              ; preds = %188, %191
  %207 = load i8**, i8*** @lc_map, align 8
  %208 = load i64*, i64** %7, align 8
  %209 = load i32, i32* %6, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %6, align 4
  %211 = zext i32 %209 to i64
  %212 = getelementptr inbounds i64, i64* %208, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i8
  %215 = zext i8 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %207, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = ptrtoint i8* %217 to i8
  %219 = bitcast %union.anon* %8 to %struct.anon*
  %220 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 5
  store i8 %218, i8* %220, align 1
  br label %221

221:                                              ; preds = %188, %206
  %222 = load i8**, i8*** @lc_map, align 8
  %223 = load i64*, i64** %7, align 8
  %224 = load i32, i32* %6, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %6, align 4
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds i64, i64* %223, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = trunc i64 %228 to i8
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %222, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = ptrtoint i8* %232 to i8
  %234 = bitcast %union.anon* %8 to %struct.anon*
  %235 = getelementptr inbounds %struct.anon, %struct.anon* %234, i32 0, i32 4
  store i8 %233, i8* %235, align 4
  br label %236

236:                                              ; preds = %188, %221
  %237 = load i8**, i8*** @lc_map, align 8
  %238 = load i64*, i64** %7, align 8
  %239 = load i32, i32* %6, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %6, align 4
  %241 = zext i32 %239 to i64
  %242 = getelementptr inbounds i64, i64* %238, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i8
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %237, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = ptrtoint i8* %247 to i8
  %249 = bitcast %union.anon* %8 to %struct.anon*
  %250 = getelementptr inbounds %struct.anon, %struct.anon* %249, i32 0, i32 3
  store i8 %248, i8* %250, align 1
  br label %251

251:                                              ; preds = %188, %236
  %252 = load i8**, i8*** @lc_map, align 8
  %253 = load i64*, i64** %7, align 8
  %254 = load i32, i32* %6, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %6, align 4
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds i64, i64* %253, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = trunc i64 %258 to i8
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %252, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = ptrtoint i8* %262 to i8
  %264 = bitcast %union.anon* %8 to %struct.anon*
  %265 = getelementptr inbounds %struct.anon, %struct.anon* %264, i32 0, i32 2
  store i8 %263, i8* %265, align 2
  br label %266

266:                                              ; preds = %188, %251
  %267 = load i8**, i8*** @lc_map, align 8
  %268 = load i64*, i64** %7, align 8
  %269 = load i32, i32* %6, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %6, align 4
  %271 = zext i32 %269 to i64
  %272 = getelementptr inbounds i64, i64* %268, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = trunc i64 %273 to i8
  %275 = zext i8 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %267, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = ptrtoint i8* %277 to i8
  %279 = bitcast %union.anon* %8 to %struct.anon*
  %280 = getelementptr inbounds %struct.anon, %struct.anon* %279, i32 0, i32 1
  store i8 %278, i8* %280, align 1
  br label %281

281:                                              ; preds = %188, %266
  %282 = load i8**, i8*** @lc_map, align 8
  %283 = load i64*, i64** %7, align 8
  %284 = load i32, i32* %6, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i8
  %289 = zext i8 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %282, i64 %289
  %291 = load i8*, i8** %290, align 8
  %292 = ptrtoint i8* %291 to i8
  %293 = bitcast %union.anon* %8 to %struct.anon*
  %294 = getelementptr inbounds %struct.anon, %struct.anon* %293, i32 0, i32 0
  store i8 %292, i8* %294, align 8
  %295 = load i64, i64* %9, align 8
  %296 = bitcast %union.anon* %8 to i64*
  %297 = load i64, i64* %296, align 8
  %298 = call i64 @mum_hash_step(i64 %295, i64 %297)
  store i64 %298, i64* %9, align 8
  br label %299

299:                                              ; preds = %188, %281
  %300 = load i64, i64* %9, align 8
  %301 = call i32 @mum_hash_finish(i64 %300)
  ret i32 %301
}

declare dso_local i64 @ucl_hash_seed(...) #1

declare dso_local i64 @mum_hash_step(i64, i64) #1

declare dso_local i32 @mum_hash_finish(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
