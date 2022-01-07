; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_lazy.c_ZSTD_DUBT_findBestMatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_lazy.c_ZSTD_DUBT_findBestMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32, %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64*, i64*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"ZSTD_DUBT_findBestMatch (%u) \00", align 1
@ZSTD_DUBT_UNSORTED_MARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"ZSTD_DUBT_findBestMatch: candidate %u is unsorted\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"ZSTD_DUBT_findBestMatch: nullify last unsorted candidate %u\00", align 1
@ZSTD_extDict = common dso_local global i32 0, align 4
@ZSTD_REP_MOVE = common dso_local global i32 0, align 4
@ZSTD_dictMatchState = common dso_local global i32 0, align 4
@MINMATCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"ZSTD_DUBT_findBestMatch(%u) : found match of length %u and offsetCode %u (pos %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i64*, i64*, i64*, i32, i32)* @ZSTD_DUBT_findBestMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_DUBT_findBestMatch(%struct.TYPE_9__* %0, i64* %1, i64* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64*, align 8
  %38 = alloca i64*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64*, align 8
  %47 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %13, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %14, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i64*, i64** %8, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @ZSTD_hashPtr(i64* %56, i32 %57, i32 %58)
  store i64 %59, i64* %16, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i64, i64* %16, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  store i64* %67, i64** %18, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i64*, i64** %18, align 8
  %70 = ptrtoint i64* %68 to i64
  %71 = ptrtoint i64* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %19, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = load i32, i32* %19, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ZSTD_getLowestMatchIndex(%struct.TYPE_9__* %75, i32 %76, i32 %79)
  store i32 %80, i32* %20, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %21, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %22, align 4
  %89 = shl i32 1, %88
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %23, align 4
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %19, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %6
  br label %99

95:                                               ; preds = %6
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %23, align 4
  %98 = sub nsw i32 %96, %97
  br label %99

99:                                               ; preds = %95, %94
  %100 = phi i32 [ 0, %94 ], [ %98, %95 ]
  store i32 %100, i32* %24, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @MAX(i32 %101, i32 %102)
  store i32 %103, i32* %25, align 4
  %104 = load i32*, i32** %21, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %23, align 4
  %107 = and i32 %105, %106
  %108 = mul nsw i32 2, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %104, i64 %109
  store i32* %110, i32** %26, align 8
  %111 = load i32*, i32** %21, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %23, align 4
  %114 = and i32 %112, %113
  %115 = mul nsw i32 2, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32* %118, i32** %27, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 1, %121
  store i32 %122, i32* %28, align 4
  %123 = load i32, i32* %28, align 4
  store i32 %123, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %124 = load i32, i32* %19, align 4
  %125 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load i64*, i64** %8, align 8
  %127 = load i64*, i64** %9, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 -8
  %129 = icmp ule i64* %126, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  br label %132

132:                                              ; preds = %146, %99
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %25, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load i32*, i32** %27, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ZSTD_DUBT_UNSORTED_MARK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %29, align 4
  %143 = icmp sgt i32 %142, 1
  br label %144

144:                                              ; preds = %141, %136, %132
  %145 = phi i1 [ false, %136 ], [ false, %132 ], [ %143, %141 ]
  br i1 %145, label %146, label %171

146:                                              ; preds = %144
  %147 = load i32, i32* %17, align 4
  %148 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %30, align 4
  %150 = load i32*, i32** %27, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %17, align 4
  store i32 %151, i32* %30, align 4
  %152 = load i32*, i32** %26, align 8
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %17, align 4
  %154 = load i32*, i32** %21, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %23, align 4
  %157 = and i32 %155, %156
  %158 = mul nsw i32 2, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %154, i64 %159
  store i32* %160, i32** %26, align 8
  %161 = load i32*, i32** %21, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %23, align 4
  %164 = and i32 %162, %163
  %165 = mul nsw i32 2, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %161, i64 %166
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32* %168, i32** %27, align 8
  %169 = load i32, i32* %29, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %29, align 4
  br label %132

171:                                              ; preds = %144
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %25, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = load i32*, i32** %27, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @ZSTD_DUBT_UNSORTED_MARK, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32, i32* %17, align 4
  %182 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 7, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  %183 = load i32*, i32** %27, align 8
  store i32 0, i32* %183, align 4
  %184 = load i32*, i32** %26, align 8
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %180, %175, %171
  %186 = load i32, i32* %30, align 4
  store i32 %186, i32* %17, align 4
  br label %187

187:                                              ; preds = %190, %185
  %188 = load i32, i32* %17, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %187
  %191 = load i32*, i32** %21, align 8
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %23, align 4
  %194 = and i32 %192, %193
  %195 = mul nsw i32 2, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %191, i64 %196
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32* %198, i32** %31, align 8
  %199 = load i32*, i32** %31, align 8
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %32, align 4
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %202 = load i32, i32* %17, align 4
  %203 = load i64*, i64** %9, align 8
  %204 = load i32, i32* %29, align 4
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @ZSTD_insertDUBT1(%struct.TYPE_9__* %201, i32 %202, i64* %203, i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %32, align 4
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %29, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %29, align 4
  br label %187

211:                                              ; preds = %187
  store i64 0, i64* %33, align 8
  store i64 0, i64* %34, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  store i64* %215, i64** %35, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %36, align 4
  %220 = load i64*, i64** %35, align 8
  %221 = load i32, i32* %36, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  store i64* %223, i64** %37, align 8
  %224 = load i64*, i64** %18, align 8
  %225 = load i32, i32* %36, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  store i64* %227, i64** %38, align 8
  %228 = load i32*, i32** %21, align 8
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* %23, align 4
  %231 = and i32 %229, %230
  %232 = mul nsw i32 2, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %228, i64 %233
  store i32* %234, i32** %39, align 8
  %235 = load i32*, i32** %21, align 8
  %236 = load i32, i32* %19, align 4
  %237 = load i32, i32* %23, align 4
  %238 = and i32 %236, %237
  %239 = mul nsw i32 2, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %235, i64 %240
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  store i32* %242, i32** %40, align 8
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 %243, 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %41, align 4
  store i64 0, i64* %43, align 8
  %246 = load i32*, i32** %14, align 8
  %247 = load i64, i64* %16, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %17, align 4
  %250 = load i32, i32* %19, align 4
  %251 = load i32*, i32** %14, align 8
  %252 = load i64, i64* %16, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %250, i32* %253, align 4
  br label %254

254:                                              ; preds = %426, %211
  %255 = load i32, i32* %28, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %28, align 4
  %257 = icmp ne i32 %255, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* %20, align 4
  %261 = icmp sgt i32 %259, %260
  br label %262

262:                                              ; preds = %258, %254
  %263 = phi i1 [ false, %254 ], [ %261, %258 ]
  br i1 %263, label %264, label %427

264:                                              ; preds = %262
  %265 = load i32*, i32** %21, align 8
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %23, align 4
  %268 = and i32 %266, %267
  %269 = mul nsw i32 2, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %265, i64 %270
  store i32* %271, i32** %44, align 8
  %272 = load i64, i64* %33, align 8
  %273 = load i64, i64* %34, align 8
  %274 = call i64 @MIN(i64 %272, i64 %273)
  store i64 %274, i64* %45, align 8
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* @ZSTD_extDict, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %286, label %278

278:                                              ; preds = %264
  %279 = load i32, i32* %17, align 4
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* %45, align 8
  %282 = add i64 %280, %281
  %283 = load i32, i32* %36, align 4
  %284 = sext i32 %283 to i64
  %285 = icmp uge i64 %282, %284
  br i1 %285, label %286, label %301

286:                                              ; preds = %278, %264
  %287 = load i64*, i64** %18, align 8
  %288 = load i32, i32* %17, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  store i64* %290, i64** %46, align 8
  %291 = load i64*, i64** %8, align 8
  %292 = load i64, i64* %45, align 8
  %293 = getelementptr inbounds i64, i64* %291, i64 %292
  %294 = load i64*, i64** %46, align 8
  %295 = load i64, i64* %45, align 8
  %296 = getelementptr inbounds i64, i64* %294, i64 %295
  %297 = load i64*, i64** %9, align 8
  %298 = call i64 @ZSTD_count(i64* %293, i64* %296, i64* %297)
  %299 = load i64, i64* %45, align 8
  %300 = add i64 %299, %298
  store i64 %300, i64* %45, align 8
  br label %331

301:                                              ; preds = %278
  %302 = load i64*, i64** %35, align 8
  %303 = load i32, i32* %17, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %302, i64 %304
  store i64* %305, i64** %46, align 8
  %306 = load i64*, i64** %8, align 8
  %307 = load i64, i64* %45, align 8
  %308 = getelementptr inbounds i64, i64* %306, i64 %307
  %309 = load i64*, i64** %46, align 8
  %310 = load i64, i64* %45, align 8
  %311 = getelementptr inbounds i64, i64* %309, i64 %310
  %312 = load i64*, i64** %9, align 8
  %313 = load i64*, i64** %37, align 8
  %314 = load i64*, i64** %38, align 8
  %315 = call i64 @ZSTD_count_2segments(i64* %308, i64* %311, i64* %312, i64* %313, i64* %314)
  %316 = load i64, i64* %45, align 8
  %317 = add i64 %316, %315
  store i64 %317, i64* %45, align 8
  %318 = load i32, i32* %17, align 4
  %319 = sext i32 %318 to i64
  %320 = load i64, i64* %45, align 8
  %321 = add i64 %319, %320
  %322 = load i32, i32* %36, align 4
  %323 = sext i32 %322 to i64
  %324 = icmp uge i64 %321, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %301
  %326 = load i64*, i64** %18, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %326, i64 %328
  store i64* %329, i64** %46, align 8
  br label %330

330:                                              ; preds = %325, %301
  br label %331

331:                                              ; preds = %330, %286
  %332 = load i64, i64* %45, align 8
  %333 = load i64, i64* %43, align 8
  %334 = icmp ugt i64 %332, %333
  br i1 %334, label %335, label %389

335:                                              ; preds = %331
  %336 = load i64, i64* %45, align 8
  %337 = load i32, i32* %41, align 4
  %338 = load i32, i32* %17, align 4
  %339 = sub nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = icmp ugt i64 %336, %340
  br i1 %341, label %342, label %347

342:                                              ; preds = %335
  %343 = load i32, i32* %17, align 4
  %344 = load i64, i64* %45, align 8
  %345 = trunc i64 %344 to i32
  %346 = add nsw i32 %343, %345
  store i32 %346, i32* %41, align 4
  br label %347

347:                                              ; preds = %342, %335
  %348 = load i64, i64* %45, align 8
  %349 = load i64, i64* %43, align 8
  %350 = sub i64 %348, %349
  %351 = trunc i64 %350 to i32
  %352 = mul nsw i32 4, %351
  %353 = load i32, i32* %19, align 4
  %354 = load i32, i32* %17, align 4
  %355 = sub nsw i32 %353, %354
  %356 = add nsw i32 %355, 1
  %357 = call i64 @ZSTD_highbit32(i32 %356)
  %358 = load i64*, i64** %10, align 8
  %359 = getelementptr inbounds i64, i64* %358, i64 0
  %360 = load i64, i64* %359, align 8
  %361 = trunc i64 %360 to i32
  %362 = add nsw i32 %361, 1
  %363 = call i64 @ZSTD_highbit32(i32 %362)
  %364 = sub nsw i64 %357, %363
  %365 = trunc i64 %364 to i32
  %366 = icmp sgt i32 %352, %365
  br i1 %366, label %367, label %376

367:                                              ; preds = %347
  %368 = load i64, i64* %45, align 8
  store i64 %368, i64* %43, align 8
  %369 = load i32, i32* @ZSTD_REP_MOVE, align 4
  %370 = load i32, i32* %19, align 4
  %371 = add nsw i32 %369, %370
  %372 = load i32, i32* %17, align 4
  %373 = sub nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = load i64*, i64** %10, align 8
  store i64 %374, i64* %375, align 8
  br label %376

376:                                              ; preds = %367, %347
  %377 = load i64*, i64** %8, align 8
  %378 = load i64, i64* %45, align 8
  %379 = getelementptr inbounds i64, i64* %377, i64 %378
  %380 = load i64*, i64** %9, align 8
  %381 = icmp eq i64* %379, %380
  br i1 %381, label %382, label %388

382:                                              ; preds = %376
  %383 = load i32, i32* %12, align 4
  %384 = load i32, i32* @ZSTD_dictMatchState, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  store i32 0, i32* %28, align 4
  br label %387

387:                                              ; preds = %386, %382
  br label %427

388:                                              ; preds = %376
  br label %389

389:                                              ; preds = %388, %331
  %390 = load i64*, i64** %46, align 8
  %391 = load i64, i64* %45, align 8
  %392 = getelementptr inbounds i64, i64* %390, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = load i64*, i64** %8, align 8
  %395 = load i64, i64* %45, align 8
  %396 = getelementptr inbounds i64, i64* %394, i64 %395
  %397 = load i64, i64* %396, align 8
  %398 = icmp slt i64 %393, %397
  br i1 %398, label %399, label %413

399:                                              ; preds = %389
  %400 = load i32, i32* %17, align 4
  %401 = load i32*, i32** %39, align 8
  store i32 %400, i32* %401, align 4
  %402 = load i64, i64* %45, align 8
  store i64 %402, i64* %33, align 8
  %403 = load i32, i32* %17, align 4
  %404 = load i32, i32* %24, align 4
  %405 = icmp sle i32 %403, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %399
  store i32* %42, i32** %39, align 8
  br label %427

407:                                              ; preds = %399
  %408 = load i32*, i32** %44, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  store i32* %409, i32** %39, align 8
  %410 = load i32*, i32** %44, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 1
  %412 = load i32, i32* %411, align 4
  store i32 %412, i32* %17, align 4
  br label %426

413:                                              ; preds = %389
  %414 = load i32, i32* %17, align 4
  %415 = load i32*, i32** %40, align 8
  store i32 %414, i32* %415, align 4
  %416 = load i64, i64* %45, align 8
  store i64 %416, i64* %34, align 8
  %417 = load i32, i32* %17, align 4
  %418 = load i32, i32* %24, align 4
  %419 = icmp sle i32 %417, %418
  br i1 %419, label %420, label %421

420:                                              ; preds = %413
  store i32* %42, i32** %40, align 8
  br label %427

421:                                              ; preds = %413
  %422 = load i32*, i32** %44, align 8
  store i32* %422, i32** %40, align 8
  %423 = load i32*, i32** %44, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 0
  %425 = load i32, i32* %424, align 4
  store i32 %425, i32* %17, align 4
  br label %426

426:                                              ; preds = %421, %407
  br label %254

427:                                              ; preds = %420, %406, %387, %262
  %428 = load i32*, i32** %40, align 8
  store i32 0, i32* %428, align 4
  %429 = load i32*, i32** %39, align 8
  store i32 0, i32* %429, align 4
  %430 = load i32, i32* %12, align 4
  %431 = load i32, i32* @ZSTD_dictMatchState, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %446

433:                                              ; preds = %427
  %434 = load i32, i32* %28, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %446

436:                                              ; preds = %433
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %438 = load i64*, i64** %8, align 8
  %439 = load i64*, i64** %9, align 8
  %440 = load i64*, i64** %10, align 8
  %441 = load i64, i64* %43, align 8
  %442 = load i32, i32* %28, align 4
  %443 = load i32, i32* %11, align 4
  %444 = load i32, i32* %12, align 4
  %445 = call i64 @ZSTD_DUBT_findBetterDictMatch(%struct.TYPE_9__* %437, i64* %438, i64* %439, i64* %440, i64 %441, i32 %442, i32 %443, i32 %444)
  store i64 %445, i64* %43, align 8
  br label %446

446:                                              ; preds = %436, %433, %427
  %447 = load i32, i32* %41, align 4
  %448 = load i32, i32* %19, align 4
  %449 = add nsw i32 %448, 8
  %450 = icmp sgt i32 %447, %449
  %451 = zext i1 %450 to i32
  %452 = call i32 @assert(i32 %451)
  %453 = load i32, i32* %41, align 4
  %454 = sub nsw i32 %453, 8
  %455 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 2
  store i32 %454, i32* %456, align 8
  %457 = load i64, i64* %43, align 8
  %458 = load i64, i64* @MINMATCH, align 8
  %459 = icmp uge i64 %457, %458
  br i1 %459, label %460, label %477

460:                                              ; preds = %446
  %461 = load i32, i32* %19, align 4
  %462 = load i64*, i64** %10, align 8
  %463 = load i64, i64* %462, align 8
  %464 = trunc i64 %463 to i32
  %465 = load i32, i32* @ZSTD_REP_MOVE, align 4
  %466 = sub nsw i32 %464, %465
  %467 = sub nsw i32 %461, %466
  store i32 %467, i32* %47, align 4
  %468 = load i32, i32* %47, align 4
  %469 = load i32, i32* %19, align 4
  %470 = load i64, i64* %43, align 8
  %471 = trunc i64 %470 to i32
  %472 = load i64*, i64** %10, align 8
  %473 = load i64, i64* %472, align 8
  %474 = trunc i64 %473 to i32
  %475 = load i32, i32* %47, align 4
  %476 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 8, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i32 %469, i32 %471, i32 %474, i32 %475)
  br label %477

477:                                              ; preds = %460, %446
  %478 = load i64, i64* %43, align 8
  ret i64 %478
}

declare dso_local i64 @ZSTD_hashPtr(i64*, i32, i32) #1

declare dso_local i32 @ZSTD_getLowestMatchIndex(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_insertDUBT1(%struct.TYPE_9__*, i32, i64*, i32, i32, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @ZSTD_count(i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_count_2segments(i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @ZSTD_highbit32(i32) #1

declare dso_local i64 @ZSTD_DUBT_findBetterDictMatch(%struct.TYPE_9__*, i64*, i64*, i64*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
