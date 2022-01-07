; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_lazy.c_ZSTD_insertDUBT1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_lazy.c_ZSTD_insertDUBT1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64*, i64*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"ZSTD_insertDUBT1(%u) (dictLimit=%u, lowLimit=%u)\00", align 1
@ZSTD_extDict = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"ZSTD_insertDUBT1: comparing %u with %u : found %u common bytes \00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"ZSTD_insertDUBT1: %u (>btLow=%u) is smaller : next => %u\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ZSTD_insertDUBT1: %u (>btLow=%u) is larger => %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i64*, i32, i32, i64)* @ZSTD_insertDUBT1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_insertDUBT1(%struct.TYPE_6__* %0, i32 %1, i64* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %13, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %14, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = shl i32 1, %46
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  store i64* %52, i64** %19, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  store i64* %56, i64** %20, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %6
  %65 = load i64*, i64** %19, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  br label %74

69:                                               ; preds = %6
  %70 = load i64*, i64** %20, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i64* [ %68, %64 ], [ %73, %69 ]
  store i64* %75, i64** %22, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %21, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i64*, i64** %9, align 8
  br label %86

81:                                               ; preds = %74
  %82 = load i64*, i64** %20, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i64* [ %80, %79 ], [ %85, %81 ]
  store i64* %87, i64** %23, align 8
  %88 = load i64*, i64** %20, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64* %91, i64** %24, align 8
  %92 = load i64*, i64** %19, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64* %95, i64** %25, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %16, align 4
  %99 = and i32 %97, %98
  %100 = mul nsw i32 2, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  store i32* %102, i32** %27, align 8
  %103 = load i32*, i32** %27, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32* %104, i32** %28, align 8
  %105 = load i32*, i32** %27, align 8
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %29, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %31, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 1, %113
  store i32 %114, i32* %32, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %31, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* %32, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %86
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %32, align 4
  %123 = sub nsw i32 %121, %122
  br label %126

124:                                              ; preds = %86
  %125 = load i32, i32* %31, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = phi i32 [ %123, %120 ], [ %125, %124 ]
  store i32 %127, i32* %33, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %33, align 4
  %131 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp sge i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i64*, i64** %22, align 8
  %138 = load i64*, i64** %23, align 8
  %139 = icmp ult i64* %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  br label %142

142:                                              ; preds = %321, %126
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %10, align 4
  %145 = icmp ne i32 %143, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* %29, align 4
  %148 = load i32, i32* %33, align 4
  %149 = icmp sgt i32 %147, %148
  br label %150

150:                                              ; preds = %146, %142
  %151 = phi i1 [ false, %142 ], [ %149, %146 ]
  br i1 %151, label %152, label %322

152:                                              ; preds = %150
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %29, align 4
  %155 = load i32, i32* %16, align 4
  %156 = and i32 %154, %155
  %157 = mul nsw i32 2, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  store i32* %159, i32** %34, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %18, align 8
  %162 = call i64 @MIN(i64 %160, i64 %161)
  store i64 %162, i64* %35, align 8
  %163 = load i32, i32* %29, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* @ZSTD_extDict, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %183, label %171

171:                                              ; preds = %152
  %172 = load i32, i32* %29, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %35, align 8
  %175 = add i64 %173, %174
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp uge i64 %175, %177
  br i1 %178, label %183, label %179

179:                                              ; preds = %171
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %21, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %230

183:                                              ; preds = %179, %171, %152
  %184 = load i64, i64* %12, align 8
  %185 = load i64, i64* @ZSTD_extDict, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %195, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %29, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %35, align 8
  %191 = add i64 %189, %190
  %192 = load i32, i32* %21, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp uge i64 %191, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %187, %183
  %196 = load i64*, i64** %19, align 8
  br label %199

197:                                              ; preds = %187
  %198 = load i64*, i64** %20, align 8
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i64* [ %196, %195 ], [ %198, %197 ]
  store i64* %200, i64** %36, align 8
  %201 = load i32, i32* %29, align 4
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* %35, align 8
  %204 = add i64 %202, %203
  %205 = load i32, i32* %21, align 4
  %206 = sext i32 %205 to i64
  %207 = icmp uge i64 %204, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %21, align 4
  %211 = icmp slt i32 %209, %210
  br label %212

212:                                              ; preds = %208, %199
  %213 = phi i1 [ true, %199 ], [ %211, %208 ]
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load i64*, i64** %36, align 8
  %217 = load i32, i32* %29, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  store i64* %219, i64** %26, align 8
  %220 = load i64*, i64** %22, align 8
  %221 = load i64, i64* %35, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64*, i64** %26, align 8
  %224 = load i64, i64* %35, align 8
  %225 = getelementptr inbounds i64, i64* %223, i64 %224
  %226 = load i64*, i64** %23, align 8
  %227 = call i64 @ZSTD_count(i64* %222, i64* %225, i64* %226)
  %228 = load i64, i64* %35, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %35, align 8
  br label %260

230:                                              ; preds = %179
  %231 = load i64*, i64** %20, align 8
  %232 = load i32, i32* %29, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  store i64* %234, i64** %26, align 8
  %235 = load i64*, i64** %22, align 8
  %236 = load i64, i64* %35, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64*, i64** %26, align 8
  %239 = load i64, i64* %35, align 8
  %240 = getelementptr inbounds i64, i64* %238, i64 %239
  %241 = load i64*, i64** %23, align 8
  %242 = load i64*, i64** %24, align 8
  %243 = load i64*, i64** %25, align 8
  %244 = call i64 @ZSTD_count_2segments(i64* %237, i64* %240, i64* %241, i64* %242, i64* %243)
  %245 = load i64, i64* %35, align 8
  %246 = add i64 %245, %244
  store i64 %246, i64* %35, align 8
  %247 = load i32, i32* %29, align 4
  %248 = sext i32 %247 to i64
  %249 = load i64, i64* %35, align 8
  %250 = add i64 %248, %249
  %251 = load i32, i32* %21, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp uge i64 %250, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %230
  %255 = load i64*, i64** %19, align 8
  %256 = load i32, i32* %29, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  store i64* %258, i64** %26, align 8
  br label %259

259:                                              ; preds = %254, %230
  br label %260

260:                                              ; preds = %259, %212
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %29, align 4
  %263 = load i64, i64* %35, align 8
  %264 = trunc i64 %263 to i32
  %265 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %261, i32 %262, i32 %264)
  %266 = load i64*, i64** %22, align 8
  %267 = load i64, i64* %35, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64*, i64** %23, align 8
  %270 = icmp eq i64* %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %260
  br label %322

272:                                              ; preds = %260
  %273 = load i64*, i64** %26, align 8
  %274 = load i64, i64* %35, align 8
  %275 = getelementptr inbounds i64, i64* %273, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = load i64*, i64** %22, align 8
  %278 = load i64, i64* %35, align 8
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = icmp slt i64 %276, %280
  br i1 %281, label %282, label %302

282:                                              ; preds = %272
  %283 = load i32, i32* %29, align 4
  %284 = load i32*, i32** %27, align 8
  store i32 %283, i32* %284, align 4
  %285 = load i64, i64* %35, align 8
  store i64 %285, i64* %17, align 8
  %286 = load i32, i32* %29, align 4
  %287 = load i32, i32* %11, align 4
  %288 = icmp sle i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  store i32* %30, i32** %27, align 8
  br label %322

290:                                              ; preds = %282
  %291 = load i32, i32* %29, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load i32*, i32** %34, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %291, i32 %292, i32 %295)
  %297 = load i32*, i32** %34, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  store i32* %298, i32** %27, align 8
  %299 = load i32*, i32** %34, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %29, align 4
  br label %321

302:                                              ; preds = %272
  %303 = load i32, i32* %29, align 4
  %304 = load i32*, i32** %28, align 8
  store i32 %303, i32* %304, align 4
  %305 = load i64, i64* %35, align 8
  store i64 %305, i64* %18, align 8
  %306 = load i32, i32* %29, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp sle i32 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  store i32* %30, i32** %28, align 8
  br label %322

310:                                              ; preds = %302
  %311 = load i32, i32* %29, align 4
  %312 = load i32, i32* %11, align 4
  %313 = load i32*, i32** %34, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @DEBUGLOG(i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %311, i32 %312, i32 %315)
  %317 = load i32*, i32** %34, align 8
  store i32* %317, i32** %28, align 8
  %318 = load i32*, i32** %34, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  store i32 %320, i32* %29, align 4
  br label %321

321:                                              ; preds = %310, %290
  br label %142

322:                                              ; preds = %309, %289, %271, %150
  %323 = load i32*, i32** %28, align 8
  store i32 0, i32* %323, align 4
  %324 = load i32*, i32** %27, align 8
  store i32 0, i32* %324, align 4
  ret void
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @ZSTD_count(i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
