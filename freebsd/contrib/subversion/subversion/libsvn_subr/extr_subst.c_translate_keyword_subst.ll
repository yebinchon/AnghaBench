; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translate_keyword_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translate_keyword_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SVN_KEYWORD_MAX_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*, i32, %struct.TYPE_3__*)* @translate_keyword_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_keyword_subst(i8* %0, i32* %1, i8* %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SVN_KEYWORD_MAX_LEN, align 4
  %19 = icmp sle i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 36
  br label %37

37:                                               ; preds = %27, %5
  %38 = phi i1 [ false, %5 ], [ %36, %27 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 2
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %6, align 4
  br label %371

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SVN_KEYWORD_MAX_LEN, align 4
  %51 = sub nsw i32 %50, 5
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %6, align 4
  br label %371

55:                                               ; preds = %48
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @strncmp(i8* %57, i8* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %6, align 4
  br label %371

64:                                               ; preds = %55
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 58
  br i1 %74, label %75, label %188

75:                                               ; preds = %64
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 58
  br i1 %80, label %81, label %188

81:                                               ; preds = %75
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %87, label %188

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %107, label %97

97:                                               ; preds = %87
  %98 = load i8*, i8** %7, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 35
  br i1 %106, label %107, label %188

107:                                              ; preds = %97, %87
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 6, %108
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %188

113:                                              ; preds = %107
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 6, %116
  %118 = sub nsw i32 %115, %117
  store i32 %118, i32* %13, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %120 = icmp ne %struct.TYPE_3__* %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %113
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  store i8* %123, i8** %12, align 8
  br label %124

124:                                              ; preds = %129, %121
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 36
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %12, align 8
  store i8 32, i8* %130, align 1
  br label %124

132:                                              ; preds = %124
  br label %186

133:                                              ; preds = %113
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %133
  %140 = load i8*, i8** %12, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 3
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @strncpy(i8* %141, i32 %144, i32 %147)
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 3, %151
  %153 = load i8*, i8** %12, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %12, align 8
  br label %156

156:                                              ; preds = %161, %139
  %157 = load i8*, i8** %12, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 36
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i8*, i8** %12, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %12, align 8
  store i8 32, i8* %162, align 1
  br label %156

164:                                              ; preds = %156
  br label %185

165:                                              ; preds = %133
  %166 = load i8*, i8** %12, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 3
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @strncpy(i8* %167, i32 %170, i32 %171)
  %173 = load i8*, i8** %7, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %173, i64 %177
  store i8 35, i8* %178, align 1
  %179 = load i8*, i8** %7, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  store i8 36, i8* %184, align 1
  br label %185

185:                                              ; preds = %165, %164
  br label %186

186:                                              ; preds = %185, %132
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* %6, align 4
  br label %371

188:                                              ; preds = %107, %97, %81, %75, %64
  %189 = load i8*, i8** %12, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 36
  br i1 %193, label %194, label %255

194:                                              ; preds = %188
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %196 = icmp ne %struct.TYPE_3__* %195, null
  br i1 %196, label %197, label %252

197:                                              ; preds = %194
  %198 = load i8*, i8** %12, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  store i8 58, i8* %199, align 1
  %200 = load i8*, i8** %12, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  store i8 32, i8* %201, align 1
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %245

206:                                              ; preds = %197
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @SVN_KEYWORD_MAX_LEN, align 4
  %212 = sub nsw i32 %211, 5
  %213 = load i32, i32* %10, align 4
  %214 = sub nsw i32 %212, %213
  %215 = icmp sgt i32 %210, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %206
  %217 = load i32, i32* @SVN_KEYWORD_MAX_LEN, align 4
  %218 = sub nsw i32 %217, 5
  %219 = load i32, i32* %10, align 4
  %220 = sub nsw i32 %218, %219
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %216, %206
  %222 = load i8*, i8** %12, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @strncpy(i8* %223, i32 %226, i32 %227)
  %229 = load i8*, i8** %12, align 8
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 2, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  store i8 32, i8* %233, align 1
  %234 = load i8*, i8** %12, align 8
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 2, %235
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %234, i64 %238
  store i8 36, i8* %239, align 1
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 5, %240
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32*, i32** %8, align 8
  store i32 %243, i32* %244, align 4
  br label %251

245:                                              ; preds = %197
  %246 = load i8*, i8** %12, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 2
  store i8 36, i8* %247, align 1
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 4, %248
  %250 = load i32*, i32** %8, align 8
  store i32 %249, i32* %250, align 4
  br label %251

251:                                              ; preds = %245, %221
  br label %253

252:                                              ; preds = %194
  br label %253

253:                                              ; preds = %252, %251
  %254 = load i32, i32* @TRUE, align 4
  store i32 %254, i32* %6, align 4
  br label %371

255:                                              ; preds = %188
  %256 = load i32*, i32** %8, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 4, %258
  %260 = icmp sge i32 %257, %259
  br i1 %260, label %261, label %283

261:                                              ; preds = %255
  %262 = load i8*, i8** %12, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 58
  br i1 %266, label %267, label %283

267:                                              ; preds = %261
  %268 = load i8*, i8** %12, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 1
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 32
  br i1 %272, label %273, label %283

273:                                              ; preds = %267
  %274 = load i8*, i8** %7, align 8
  %275 = load i32*, i32** %8, align 8
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 %276, 2
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %274, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 32
  br i1 %282, label %301, label %283

283:                                              ; preds = %273, %267, %261, %255
  %284 = load i32*, i32** %8, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %10, align 4
  %287 = add nsw i32 3, %286
  %288 = icmp sge i32 %285, %287
  br i1 %288, label %289, label %367

289:                                              ; preds = %283
  %290 = load i8*, i8** %12, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 0
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %293, 58
  br i1 %294, label %295, label %367

295:                                              ; preds = %289
  %296 = load i8*, i8** %12, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 36
  br i1 %300, label %301, label %367

301:                                              ; preds = %295, %273
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %303 = icmp ne %struct.TYPE_3__* %302, null
  br i1 %303, label %310, label %304

304:                                              ; preds = %301
  %305 = load i8*, i8** %12, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 0
  store i8 36, i8* %306, align 1
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 2, %307
  %309 = load i32*, i32** %8, align 8
  store i32 %308, i32* %309, align 4
  br label %365

310:                                              ; preds = %301
  %311 = load i8*, i8** %12, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 0
  store i8 58, i8* %312, align 1
  %313 = load i8*, i8** %12, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 1
  store i8 32, i8* %314, align 1
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %358

319:                                              ; preds = %310
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %15, align 4
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* @SVN_KEYWORD_MAX_LEN, align 4
  %325 = sub nsw i32 %324, 5
  %326 = load i32, i32* %10, align 4
  %327 = sub nsw i32 %325, %326
  %328 = icmp sgt i32 %323, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %319
  %330 = load i32, i32* @SVN_KEYWORD_MAX_LEN, align 4
  %331 = sub nsw i32 %330, 5
  %332 = load i32, i32* %10, align 4
  %333 = sub nsw i32 %331, %332
  store i32 %333, i32* %15, align 4
  br label %334

334:                                              ; preds = %329, %319
  %335 = load i8*, i8** %12, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 2
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %15, align 4
  %341 = call i32 @strncpy(i8* %336, i32 %339, i32 %340)
  %342 = load i8*, i8** %12, align 8
  %343 = load i32, i32* %15, align 4
  %344 = add nsw i32 2, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %342, i64 %345
  store i8 32, i8* %346, align 1
  %347 = load i8*, i8** %12, align 8
  %348 = load i32, i32* %15, align 4
  %349 = add nsw i32 2, %348
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %347, i64 %351
  store i8 36, i8* %352, align 1
  %353 = load i32, i32* %10, align 4
  %354 = add nsw i32 5, %353
  %355 = load i32, i32* %15, align 4
  %356 = add nsw i32 %354, %355
  %357 = load i32*, i32** %8, align 8
  store i32 %356, i32* %357, align 4
  br label %364

358:                                              ; preds = %310
  %359 = load i8*, i8** %12, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 2
  store i8 36, i8* %360, align 1
  %361 = load i32, i32* %10, align 4
  %362 = add nsw i32 4, %361
  %363 = load i32*, i32** %8, align 8
  store i32 %362, i32* %363, align 4
  br label %364

364:                                              ; preds = %358, %334
  br label %365

365:                                              ; preds = %364, %304
  %366 = load i32, i32* @TRUE, align 4
  store i32 %366, i32* %6, align 4
  br label %371

367:                                              ; preds = %295, %289, %283
  br label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* @FALSE, align 4
  store i32 %370, i32* %6, align 4
  br label %371

371:                                              ; preds = %369, %365, %253, %186, %62, %53, %46
  %372 = load i32, i32* %6, align 4
  ret i32 %372
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
