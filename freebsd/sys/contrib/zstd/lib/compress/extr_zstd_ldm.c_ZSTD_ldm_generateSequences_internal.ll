; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_generateSequences_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_generateSequences_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i32, i32*, i32* }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@HASH_READ_SIZE = common dso_local global i32 0, align 4
@dstSize_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_20__*, i8*, i64)* @ZSTD_ldm_generateSequences_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_ldm_generateSequences_internal(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_20__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.TYPE_21__*, align 8
  %38 = alloca %struct.TYPE_21__*, align 8
  %39 = alloca %struct.TYPE_21__*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca %struct.TYPE_18__*, align 8
  %53 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = call i32 @ZSTD_window_hasExtDict(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %55)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 %65, %68
  store i32 %69, i32* %15, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  store i32 %73, i32* %16, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %17, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 1, %79
  %81 = sub i32 %80, 1
  store i32 %81, i32* %18, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %5
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  br label %95

93:                                               ; preds = %5
  %94 = load i32, i32* %19, align 4
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi i32 [ %92, %88 ], [ %94, %93 ]
  store i32 %96, i32* %20, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %21, align 8
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  br label %109

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %103
  %110 = phi i32* [ %107, %103 ], [ null, %108 ]
  store i32* %110, i32** %22, align 8
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32*, i32** %22, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  br label %119

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %113
  %120 = phi i32* [ %117, %113 ], [ null, %118 ]
  store i32* %120, i32** %23, align 8
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32*, i32** %22, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  br label %129

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %123
  %130 = phi i32* [ %127, %123 ], [ null, %128 ]
  store i32* %130, i32** %24, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32* %134, i32** %25, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = bitcast i8* %135 to i32*
  store i32* %136, i32** %26, align 8
  %137 = load i32*, i32** %26, align 8
  %138 = load i64, i64* %11, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %27, align 8
  %140 = load i32*, i32** %27, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @HASH_READ_SIZE, align 4
  %143 = call i32* @MAX(i32 %141, i32 %142)
  %144 = ptrtoint i32* %140 to i64
  %145 = ptrtoint i32* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = inttoptr i64 %147 to i32*
  store i32* %148, i32** %28, align 8
  %149 = load i32*, i32** %26, align 8
  store i32* %149, i32** %29, align 8
  %150 = load i32*, i32** %26, align 8
  store i32* %150, i32** %30, align 8
  store i32* null, i32** %31, align 8
  store i32 0, i32* %32, align 4
  br label %151

151:                                              ; preds = %447, %333, %190, %129
  %152 = load i32*, i32** %30, align 8
  %153 = load i32*, i32** %28, align 8
  %154 = icmp ule i32* %152, %153
  br i1 %154, label %155, label %452

155:                                              ; preds = %151
  %156 = load i32*, i32** %30, align 8
  %157 = load i32*, i32** %21, align 8
  %158 = ptrtoint i32* %156 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %34, align 4
  store i64 0, i64* %35, align 8
  store i64 0, i64* %36, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %37, align 8
  %163 = load i32*, i32** %30, align 8
  %164 = load i32*, i32** %26, align 8
  %165 = icmp ne i32* %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %155
  %167 = load i32, i32* %32, align 4
  %168 = load i32*, i32** %31, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %31, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @ZSTD_rollingHash_rotate(i32 %167, i32 %170, i32 %175, i32 %176)
  store i32 %177, i32* %32, align 4
  br label %182

178:                                              ; preds = %155
  %179 = load i32*, i32** %30, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @ZSTD_rollingHash_compute(i32* %179, i32 %180)
  store i32 %181, i32* %32, align 4
  br label %182

182:                                              ; preds = %178, %166
  %183 = load i32*, i32** %30, align 8
  store i32* %183, i32** %31, align 8
  %184 = load i32, i32* %32, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @ZSTD_ldm_getTag(i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* %18, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load i32*, i32** %30, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %30, align 8
  br label %151

193:                                              ; preds = %182
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %195 = load i32, i32* %32, align 4
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @ZSTD_ldm_getSmallHash(i32 %195, i32 %196)
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %199 = bitcast %struct.TYPE_20__* %198 to { i64, i64 }*
  %200 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 4
  %202 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %199, i32 0, i32 1
  %203 = load i64, i64* %202, align 4
  %204 = call %struct.TYPE_21__* @ZSTD_ldm_getBucket(%struct.TYPE_19__* %194, i32 %197, i64 %201, i64 %203)
  store %struct.TYPE_21__* %204, %struct.TYPE_21__** %38, align 8
  store i64 0, i64* %40, align 8
  %205 = load i32, i32* %32, align 4
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @ZSTD_ldm_getChecksum(i32 %205, i32 %206)
  store i32 %207, i32* %41, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  store %struct.TYPE_21__* %208, %struct.TYPE_21__** %39, align 8
  br label %209

209:                                              ; preds = %327, %193
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i64 %213
  %215 = icmp ult %struct.TYPE_21__* %210, %214
  br i1 %215, label %216, label %330

216:                                              ; preds = %209
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %41, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %216
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %20, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %222, %216
  br label %327

229:                                              ; preds = %222
  %230 = load i32, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %292

232:                                              ; preds = %229
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %19, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32*, i32** %22, align 8
  br label %242

240:                                              ; preds = %232
  %241 = load i32*, i32** %21, align 8
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32* [ %239, %238 ], [ %241, %240 ]
  store i32* %243, i32** %45, align 8
  %244 = load i32*, i32** %45, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  store i32* %249, i32** %46, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %19, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %242
  %256 = load i32*, i32** %24, align 8
  br label %259

257:                                              ; preds = %242
  %258 = load i32*, i32** %27, align 8
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32* [ %256, %255 ], [ %258, %257 ]
  store i32* %260, i32** %47, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %19, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = load i32*, i32** %23, align 8
  br label %270

268:                                              ; preds = %259
  %269 = load i32*, i32** %25, align 8
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32* [ %267, %266 ], [ %269, %268 ]
  store i32* %271, i32** %48, align 8
  %272 = load i32*, i32** %30, align 8
  %273 = load i32*, i32** %46, align 8
  %274 = load i32*, i32** %27, align 8
  %275 = load i32*, i32** %47, align 8
  %276 = load i32*, i32** %25, align 8
  %277 = call i64 @ZSTD_count_2segments(i32* %272, i32* %273, i32* %274, i32* %275, i32* %276)
  store i64 %277, i64* %42, align 8
  %278 = load i64, i64* %42, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = icmp ult i64 %278, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %270
  br label %327

283:                                              ; preds = %270
  %284 = load i32*, i32** %30, align 8
  %285 = load i32*, i32** %29, align 8
  %286 = load i32*, i32** %46, align 8
  %287 = load i32*, i32** %48, align 8
  %288 = call i64 @ZSTD_ldm_countBackwardsMatch(i32* %284, i32* %285, i32* %286, i32* %287)
  store i64 %288, i64* %43, align 8
  %289 = load i64, i64* %42, align 8
  %290 = load i64, i64* %43, align 8
  %291 = add i64 %289, %290
  store i64 %291, i64* %44, align 8
  br label %317

292:                                              ; preds = %229
  %293 = load i32*, i32** %21, align 8
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %293, i64 %297
  store i32* %298, i32** %49, align 8
  %299 = load i32*, i32** %30, align 8
  %300 = load i32*, i32** %49, align 8
  %301 = load i32*, i32** %27, align 8
  %302 = call i64 @ZSTD_count(i32* %299, i32* %300, i32* %301)
  store i64 %302, i64* %42, align 8
  %303 = load i64, i64* %42, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = icmp ult i64 %303, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %292
  br label %327

308:                                              ; preds = %292
  %309 = load i32*, i32** %30, align 8
  %310 = load i32*, i32** %29, align 8
  %311 = load i32*, i32** %49, align 8
  %312 = load i32*, i32** %25, align 8
  %313 = call i64 @ZSTD_ldm_countBackwardsMatch(i32* %309, i32* %310, i32* %311, i32* %312)
  store i64 %313, i64* %43, align 8
  %314 = load i64, i64* %42, align 8
  %315 = load i64, i64* %43, align 8
  %316 = add i64 %314, %315
  store i64 %316, i64* %44, align 8
  br label %317

317:                                              ; preds = %308, %283
  %318 = load i64, i64* %44, align 8
  %319 = load i64, i64* %40, align 8
  %320 = icmp ugt i64 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load i64, i64* %44, align 8
  store i64 %322, i64* %40, align 8
  %323 = load i64, i64* %42, align 8
  store i64 %323, i64* %35, align 8
  %324 = load i64, i64* %43, align 8
  store i64 %324, i64* %36, align 8
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  store %struct.TYPE_21__* %325, %struct.TYPE_21__** %37, align 8
  br label %326

326:                                              ; preds = %321, %317
  br label %327

327:                                              ; preds = %326, %307, %282, %228
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 1
  store %struct.TYPE_21__* %329, %struct.TYPE_21__** %39, align 8
  br label %209

330:                                              ; preds = %209
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %332 = icmp eq %struct.TYPE_21__* %331, null
  br i1 %332, label %333, label %347

333:                                              ; preds = %330
  %334 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %335 = load i32, i32* %32, align 4
  %336 = load i32, i32* %15, align 4
  %337 = load i32, i32* %34, align 4
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %339 = bitcast %struct.TYPE_20__* %338 to { i64, i64 }*
  %340 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 4
  %342 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %339, i32 0, i32 1
  %343 = load i64, i64* %342, align 4
  %344 = call i32 @ZSTD_ldm_makeEntryAndInsertByTag(%struct.TYPE_19__* %334, i32 %335, i32 %336, i32 %337, i64 %341, i64 %343)
  %345 = load i32*, i32** %30, align 8
  %346 = getelementptr inbounds i32, i32* %345, i32 1
  store i32* %346, i32** %30, align 8
  br label %151

347:                                              ; preds = %330
  %348 = load i64, i64* %35, align 8
  %349 = load i64, i64* %36, align 8
  %350 = add i64 %348, %349
  store i64 %350, i64* %33, align 8
  %351 = load i64, i64* %36, align 8
  %352 = load i32*, i32** %30, align 8
  %353 = sub i64 0, %351
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  store i32* %354, i32** %30, align 8
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %50, align 4
  %358 = load i32, i32* %34, align 4
  %359 = load i32, i32* %50, align 4
  %360 = sub nsw i32 %358, %359
  store i32 %360, i32* %51, align 4
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %362, align 8
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i64 %367
  store %struct.TYPE_18__* %368, %struct.TYPE_18__** %52, align 8
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = sext i32 %371 to i64
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = icmp eq i64 %372, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %347
  %378 = load i32, i32* @dstSize_tooSmall, align 4
  %379 = call i64 @ERROR(i32 %378)
  store i64 %379, i64* %6, align 8
  br label %459

380:                                              ; preds = %347
  %381 = load i32*, i32** %30, align 8
  %382 = load i32*, i32** %29, align 8
  %383 = ptrtoint i32* %381 to i64
  %384 = ptrtoint i32* %382 to i64
  %385 = sub i64 %383, %384
  %386 = sdiv exact i64 %385, 4
  %387 = trunc i64 %386 to i32
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 4
  %390 = load i64, i64* %33, align 8
  %391 = trunc i64 %390 to i32
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 4
  %394 = load i32, i32* %51, align 4
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 2
  store i32 %394, i32* %396, align 4
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 8
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %402 = load i32, i32* %32, align 4
  %403 = load i32, i32* %15, align 4
  %404 = load i32*, i32** %31, align 8
  %405 = load i32*, i32** %21, align 8
  %406 = ptrtoint i32* %404 to i64
  %407 = ptrtoint i32* %405 to i64
  %408 = sub i64 %406, %407
  %409 = sdiv exact i64 %408, 4
  %410 = trunc i64 %409 to i32
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %412 = bitcast %struct.TYPE_20__* %411 to { i64, i64 }*
  %413 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 4
  %415 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %412, i32 0, i32 1
  %416 = load i64, i64* %415, align 4
  %417 = call i32 @ZSTD_ldm_makeEntryAndInsertByTag(%struct.TYPE_19__* %401, i32 %402, i32 %403, i32 %410, i64 %414, i64 %416)
  %418 = load i32*, i32** %30, align 8
  %419 = load i64, i64* %36, align 8
  %420 = getelementptr inbounds i32, i32* %418, i64 %419
  %421 = load i32*, i32** %31, align 8
  %422 = icmp eq i32* %420, %421
  %423 = zext i1 %422 to i32
  %424 = call i32 @assert(i32 %423)
  %425 = load i32*, i32** %30, align 8
  %426 = load i64, i64* %33, align 8
  %427 = getelementptr inbounds i32, i32* %425, i64 %426
  %428 = load i32*, i32** %28, align 8
  %429 = icmp ule i32* %427, %428
  br i1 %429, label %430, label %447

430:                                              ; preds = %380
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %432 = load i32, i32* %32, align 4
  %433 = load i32*, i32** %31, align 8
  %434 = load i32*, i32** %30, align 8
  %435 = load i64, i64* %33, align 8
  %436 = getelementptr inbounds i32, i32* %434, i64 %435
  %437 = load i32*, i32** %21, align 8
  %438 = load i32, i32* %15, align 4
  %439 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %440 = bitcast %struct.TYPE_20__* %53 to i8*
  %441 = bitcast %struct.TYPE_20__* %439 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %440, i8* align 4 %441, i64 16, i1 false)
  %442 = call i32 @ZSTD_ldm_fillLdmHashTable(%struct.TYPE_19__* %431, i32 %432, i32* %433, i32* %436, i32* %437, i32 %438, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %53)
  store i32 %442, i32* %32, align 4
  %443 = load i32*, i32** %30, align 8
  %444 = load i64, i64* %33, align 8
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  %446 = getelementptr inbounds i32, i32* %445, i64 -1
  store i32* %446, i32** %31, align 8
  br label %447

447:                                              ; preds = %430, %380
  %448 = load i64, i64* %33, align 8
  %449 = load i32*, i32** %30, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 %448
  store i32* %450, i32** %30, align 8
  %451 = load i32*, i32** %30, align 8
  store i32* %451, i32** %29, align 8
  br label %151

452:                                              ; preds = %151
  %453 = load i32*, i32** %27, align 8
  %454 = load i32*, i32** %29, align 8
  %455 = ptrtoint i32* %453 to i64
  %456 = ptrtoint i32* %454 to i64
  %457 = sub i64 %455, %456
  %458 = sdiv exact i64 %457, 4
  store i64 %458, i64* %6, align 8
  br label %459

459:                                              ; preds = %452, %377
  %460 = load i64, i64* %6, align 8
  ret i64 %460
}

declare dso_local i32 @ZSTD_window_hasExtDict(%struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local i32* @MAX(i32, i32) #1

declare dso_local i32 @ZSTD_rollingHash_rotate(i32, i32, i32, i32) #1

declare dso_local i32 @ZSTD_rollingHash_compute(i32*, i32) #1

declare dso_local i32 @ZSTD_ldm_getTag(i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @ZSTD_ldm_getBucket(%struct.TYPE_19__*, i32, i64, i64) #1

declare dso_local i32 @ZSTD_ldm_getSmallHash(i32, i32) #1

declare dso_local i32 @ZSTD_ldm_getChecksum(i32, i32) #1

declare dso_local i64 @ZSTD_count_2segments(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ZSTD_ldm_countBackwardsMatch(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @ZSTD_count(i32*, i32*, i32*) #1

declare dso_local i32 @ZSTD_ldm_makeEntryAndInsertByTag(%struct.TYPE_19__*, i32, i32, i32, i64, i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_ldm_fillLdmHashTable(%struct.TYPE_19__*, i32, i32*, i32*, i32*, i32, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
