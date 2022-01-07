; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_uri_is_canonical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_uri_is_canonical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"http:\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"https:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"svn:\00", align 1
@svn_uri__char_validity = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_uri_is_canonical(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %508

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @svn_path_is_url(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %508

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 47
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 58
  br label %43

43:                                               ; preds = %38, %33, %28
  %44 = phi i1 [ false, %33 ], [ false, %28 ], [ %42, %38 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %28

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 58
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 47
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %67, label %65

65:                                               ; preds = %59, %53, %48
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %508

67:                                               ; preds = %59
  %68 = load i8*, i8** %4, align 8
  store i8* %68, i8** %6, align 8
  br label %69

69:                                               ; preds = %86, %67
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 58
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sge i32 %77, 65
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sle i32 %82, 90
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %508

86:                                               ; preds = %79, %74
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  br label %69

89:                                               ; preds = %69
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  store i8* %91, i8** %6, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %3, align 4
  br label %508

97:                                               ; preds = %89
  %98 = load i8*, i8** %6, align 8
  store i8* %98, i8** %7, align 8
  br label %99

99:                                               ; preds = %116, %97
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 47
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 64
  br label %114

114:                                              ; preds = %109, %104, %99
  %115 = phi i1 [ false, %104 ], [ false, %99 ], [ %113, %109 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  br label %99

119:                                              ; preds = %114
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 64
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8* %126, i8** %7, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i8*, i8** %7, align 8
  store i8* %128, i8** %6, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 91
  br i1 %132, label %133, label %178

133:                                              ; preds = %127
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %6, align 8
  br label %136

136:                                              ; preds = %165, %133
  %137 = load i8*, i8** %6, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 58
  br i1 %140, label %163, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sge i32 %144, 48
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i8*, i8** %6, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp sle i32 %149, 57
  br i1 %150, label %163, label %151

151:                                              ; preds = %146, %141
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sge i32 %154, 97
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 102
  br label %161

161:                                              ; preds = %156, %151
  %162 = phi i1 [ false, %151 ], [ %160, %156 ]
  br label %163

163:                                              ; preds = %161, %146, %136
  %164 = phi i1 [ true, %146 ], [ true, %136 ], [ %162, %161 ]
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = load i8*, i8** %6, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %6, align 8
  br label %136

168:                                              ; preds = %163
  %169 = load i8*, i8** %6, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 93
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* @FALSE, align 4
  store i32 %174, i32* %3, align 4
  br label %508

175:                                              ; preds = %168
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %6, align 8
  br label %212

178:                                              ; preds = %127
  br label %179

179:                                              ; preds = %208, %178
  %180 = load i8*, i8** %6, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = load i8*, i8** %6, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 47
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load i8*, i8** %6, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 58
  br label %194

194:                                              ; preds = %189, %184, %179
  %195 = phi i1 [ false, %184 ], [ false, %179 ], [ %193, %189 ]
  br i1 %195, label %196, label %211

196:                                              ; preds = %194
  %197 = load i8*, i8** %6, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp sge i32 %199, 65
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load i8*, i8** %6, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp sle i32 %204, 90
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @FALSE, align 4
  store i32 %207, i32* %3, align 4
  br label %508

208:                                              ; preds = %201, %196
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %6, align 8
  br label %179

211:                                              ; preds = %194
  br label %212

212:                                              ; preds = %211, %175
  %213 = load i8*, i8** %6, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 58
  br i1 %216, label %217, label %305

217:                                              ; preds = %212
  store i32 0, i32* %9, align 4
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %6, align 8
  %220 = load i8*, i8** %6, align 8
  store i8* %220, i8** %8, align 8
  br label %221

221:                                              ; preds = %233, %217
  %222 = load i8*, i8** %6, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp sge i32 %224, 48
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load i8*, i8** %6, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp sle i32 %229, 57
  br label %231

231:                                              ; preds = %226, %221
  %232 = phi i1 [ false, %221 ], [ %230, %226 ]
  br i1 %232, label %233, label %243

233:                                              ; preds = %231
  %234 = load i32, i32* %9, align 4
  %235 = mul nsw i32 10, %234
  %236 = load i8*, i8** %6, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = sub nsw i32 %238, 48
  %240 = add nsw i32 %235, %239
  store i32 %240, i32* %9, align 4
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %6, align 8
  br label %221

243:                                              ; preds = %231
  %244 = load i8*, i8** %6, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = icmp eq i8* %244, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %243
  %248 = load i8*, i8** %6, align 8
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 47
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = load i8*, i8** %6, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %252, %247
  %258 = load i32, i32* @FALSE, align 4
  store i32 %258, i32* %3, align 4
  br label %508

259:                                              ; preds = %252, %243
  %260 = load i32, i32* %9, align 4
  %261 = icmp eq i32 %260, 80
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load i8*, i8** %4, align 8
  %264 = call i64 @strncmp(i8* %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = load i32, i32* @FALSE, align 4
  store i32 %267, i32* %3, align 4
  br label %508

268:                                              ; preds = %262, %259
  %269 = load i32, i32* %9, align 4
  %270 = icmp eq i32 %269, 443
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = load i8*, i8** %4, align 8
  %273 = call i64 @strncmp(i8* %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = load i32, i32* @FALSE, align 4
  store i32 %276, i32* %3, align 4
  br label %508

277:                                              ; preds = %271, %268
  %278 = load i32, i32* %9, align 4
  %279 = icmp eq i32 %278, 3690
  br i1 %279, label %280, label %286

280:                                              ; preds = %277
  %281 = load i8*, i8** %4, align 8
  %282 = call i64 @strncmp(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i32, i32* @FALSE, align 4
  store i32 %285, i32* %3, align 4
  br label %508

286:                                              ; preds = %280, %277
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %301, %288
  %290 = load i8*, i8** %6, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load i8*, i8** %6, align 8
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp ne i32 %297, 47
  br label %299

299:                                              ; preds = %294, %289
  %300 = phi i1 [ false, %289 ], [ %298, %294 ]
  br i1 %300, label %301, label %304

301:                                              ; preds = %299
  %302 = load i8*, i8** %6, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %6, align 8
  br label %289

304:                                              ; preds = %299
  br label %305

305:                                              ; preds = %304, %212
  %306 = load i8*, i8** %6, align 8
  store i8* %306, i8** %8, align 8
  %307 = load i8*, i8** %6, align 8
  store i8* %307, i8** %7, align 8
  br label %308

308:                                              ; preds = %320, %305
  %309 = load i8*, i8** %6, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %308
  %314 = load i8*, i8** %6, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp ne i32 %316, 47
  br label %318

318:                                              ; preds = %313, %308
  %319 = phi i1 [ false, %308 ], [ %317, %313 ]
  br i1 %319, label %320, label %323

320:                                              ; preds = %318
  %321 = load i8*, i8** %6, align 8
  %322 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %322, i8** %6, align 8
  br label %308

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %400
  %325 = load i8*, i8** %6, align 8
  %326 = load i8*, i8** %7, align 8
  %327 = ptrtoint i8* %325 to i64
  %328 = ptrtoint i8* %326 to i64
  %329 = sub i64 %327, %328
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %10, align 4
  %331 = load i32, i32* %10, align 4
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %340

333:                                              ; preds = %324
  %334 = load i8*, i8** %7, align 8
  %335 = load i8, i8* %334, align 1
  %336 = sext i8 %335 to i32
  %337 = icmp eq i32 %336, 46
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = load i32, i32* @FALSE, align 4
  store i32 %339, i32* %3, align 4
  br label %508

340:                                              ; preds = %333, %324
  %341 = load i8*, i8** %6, align 8
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 47
  br i1 %344, label %345, label %353

345:                                              ; preds = %340
  %346 = load i8*, i8** %6, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 1
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 47
  br i1 %350, label %351, label %353

351:                                              ; preds = %345
  %352 = load i32, i32* @FALSE, align 4
  store i32 %352, i32* %3, align 4
  br label %508

353:                                              ; preds = %345, %340
  %354 = load i8*, i8** %6, align 8
  %355 = load i8, i8* %354, align 1
  %356 = icmp ne i8 %355, 0
  br i1 %356, label %370, label %357

357:                                              ; preds = %353
  %358 = load i8*, i8** %6, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 -1
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp eq i32 %361, 47
  br i1 %362, label %363, label %370

363:                                              ; preds = %357
  %364 = load i8*, i8** %6, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 -1
  %366 = load i8*, i8** %4, align 8
  %367 = icmp ne i8* %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %363
  %369 = load i32, i32* @FALSE, align 4
  store i32 %369, i32* %3, align 4
  br label %508

370:                                              ; preds = %363, %357, %353
  %371 = load i8*, i8** %6, align 8
  %372 = load i8, i8* %371, align 1
  %373 = icmp ne i8 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %370
  br label %401

375:                                              ; preds = %370
  %376 = load i8*, i8** %6, align 8
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 47
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load i8*, i8** %6, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %6, align 8
  br label %383

383:                                              ; preds = %380, %375
  %384 = load i8*, i8** %6, align 8
  store i8* %384, i8** %7, align 8
  br label %385

385:                                              ; preds = %397, %383
  %386 = load i8*, i8** %6, align 8
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %385
  %391 = load i8*, i8** %6, align 8
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp ne i32 %393, 47
  br label %395

395:                                              ; preds = %390, %385
  %396 = phi i1 [ false, %385 ], [ %394, %390 ]
  br i1 %396, label %397, label %400

397:                                              ; preds = %395
  %398 = load i8*, i8** %6, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %6, align 8
  br label %385

400:                                              ; preds = %395
  br label %324

401:                                              ; preds = %374
  %402 = load i8*, i8** %8, align 8
  store i8* %402, i8** %6, align 8
  br label %403

403:                                              ; preds = %503, %401
  %404 = load i8*, i8** %6, align 8
  %405 = load i8, i8* %404, align 1
  %406 = icmp ne i8 %405, 0
  br i1 %406, label %407, label %506

407:                                              ; preds = %403
  %408 = load i8*, i8** %6, align 8
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp eq i32 %410, 37
  br i1 %411, label %412, label %487

412:                                              ; preds = %407
  %413 = load i8*, i8** %6, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 1
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp slt i32 %416, 48
  br i1 %417, label %424, label %418

418:                                              ; preds = %412
  %419 = load i8*, i8** %6, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 1
  %421 = load i8, i8* %420, align 1
  %422 = sext i8 %421 to i32
  %423 = icmp sgt i32 %422, 57
  br i1 %423, label %424, label %438

424:                                              ; preds = %418, %412
  %425 = load i8*, i8** %6, align 8
  %426 = getelementptr inbounds i8, i8* %425, i64 1
  %427 = load i8, i8* %426, align 1
  %428 = sext i8 %427 to i32
  %429 = icmp slt i32 %428, 65
  br i1 %429, label %436, label %430

430:                                              ; preds = %424
  %431 = load i8*, i8** %6, align 8
  %432 = getelementptr inbounds i8, i8* %431, i64 1
  %433 = load i8, i8* %432, align 1
  %434 = sext i8 %433 to i32
  %435 = icmp sgt i32 %434, 70
  br i1 %435, label %436, label %438

436:                                              ; preds = %430, %424
  %437 = load i32, i32* @FALSE, align 4
  store i32 %437, i32* %3, align 4
  br label %508

438:                                              ; preds = %430, %418
  %439 = load i8*, i8** %6, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 2
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp slt i32 %442, 48
  br i1 %443, label %450, label %444

444:                                              ; preds = %438
  %445 = load i8*, i8** %6, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 2
  %447 = load i8, i8* %446, align 1
  %448 = sext i8 %447 to i32
  %449 = icmp sgt i32 %448, 57
  br i1 %449, label %450, label %464

450:                                              ; preds = %444, %438
  %451 = load i8*, i8** %6, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 2
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp slt i32 %454, 65
  br i1 %455, label %462, label %456

456:                                              ; preds = %450
  %457 = load i8*, i8** %6, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 2
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp sgt i32 %460, 70
  br i1 %461, label %462, label %464

462:                                              ; preds = %456, %450
  %463 = load i32, i32* @FALSE, align 4
  store i32 %463, i32* %3, align 4
  br label %508

464:                                              ; preds = %456, %444
  br label %465

465:                                              ; preds = %464
  %466 = load i8*, i8** %6, align 8
  %467 = getelementptr inbounds i8, i8* %466, i32 1
  store i8* %467, i8** %6, align 8
  %468 = load i8, i8* %467, align 1
  %469 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 %468, i8* %469, align 1
  %470 = load i8*, i8** %6, align 8
  %471 = getelementptr inbounds i8, i8* %470, i32 1
  store i8* %471, i8** %6, align 8
  %472 = load i8, i8* %471, align 1
  %473 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  store i8 %472, i8* %473, align 1
  %474 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %474, align 1
  %475 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %476 = call i64 @strtol(i8* %475, i32* null, i32 16)
  %477 = trunc i64 %476 to i32
  store i32 %477, i32* %12, align 4
  %478 = load i64*, i64** @svn_uri__char_validity, align 8
  %479 = load i32, i32* %12, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i64, i64* %478, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %465
  %485 = load i32, i32* @FALSE, align 4
  store i32 %485, i32* %3, align 4
  br label %508

486:                                              ; preds = %465
  br label %503

487:                                              ; preds = %407
  %488 = load i8*, i8** %6, align 8
  %489 = load i8, i8* %488, align 1
  %490 = sext i8 %489 to i32
  %491 = icmp ne i32 %490, 47
  br i1 %491, label %492, label %502

492:                                              ; preds = %487
  %493 = load i64*, i64** @svn_uri__char_validity, align 8
  %494 = load i8*, i8** %6, align 8
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i64
  %497 = getelementptr inbounds i64, i64* %493, i64 %496
  %498 = load i64, i64* %497, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %502, label %500

500:                                              ; preds = %492
  %501 = load i32, i32* @FALSE, align 4
  store i32 %501, i32* %3, align 4
  br label %508

502:                                              ; preds = %492, %487
  br label %503

503:                                              ; preds = %502, %486
  %504 = load i8*, i8** %6, align 8
  %505 = getelementptr inbounds i8, i8* %504, i32 1
  store i8* %505, i8** %6, align 8
  br label %403

506:                                              ; preds = %403
  %507 = load i32, i32* @TRUE, align 4
  store i32 %507, i32* %3, align 4
  br label %508

508:                                              ; preds = %506, %500, %484, %462, %436, %368, %351, %338, %284, %275, %266, %257, %206, %173, %95, %84, %65, %25, %19
  %509 = load i32, i32* %3, align 4
  ret i32 %509
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
