; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcscoll.c_wcscoll_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_wcscoll.c_wcscoll_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.xlocale_collate = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32* }

@XLC_COLLATE = common dso_local global i64 0, align 8
@DIRECTIVE_FORWARD = common dso_local global i32 0, align 4
@DIRECTIVE_BACKWARD = common dso_local global i32 0, align 4
@DIRECTIVE_POSITION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@COLLATE_MAX_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcscoll_l(i64* %0, i64* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.xlocale_collate*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i64* null, i64** %12, align 8
  store i64* null, i64** %13, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i64*, i64** %6, align 8
  %31 = call i32 @wcscmp(i64* %29, i64* %30)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = call i32 @FIX_LOCALE(%struct.TYPE_6__* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @XLC_COLLATE, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.xlocale_collate*
  store %struct.xlocale_collate* %40, %struct.xlocale_collate** %17, align 8
  %41 = load %struct.xlocale_collate*, %struct.xlocale_collate** %17, align 8
  %42 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %3
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %3
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %4, align 4
  br label %398

50:                                               ; preds = %45
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %398

59:                                               ; preds = %54, %50
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %398

68:                                               ; preds = %63, %59
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %388, %68
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.xlocale_collate*, %struct.xlocale_collate** %17, align 8
  %72 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %70, %75
  br i1 %76, label %77, label %391

77:                                               ; preds = %69
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %78 = load i64*, i64** %5, align 8
  store i64* %78, i64** %20, align 8
  %79 = load i64*, i64** %6, align 8
  store i64* %79, i64** %21, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.xlocale_collate*, %struct.xlocale_collate** %17, align 8
  %82 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @DIRECTIVE_FORWARD, align 4
  store i32 %88, i32* %14, align 4
  br label %99

89:                                               ; preds = %77
  %90 = load %struct.xlocale_collate*, %struct.xlocale_collate** %17, align 8
  %91 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %89, %87
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @DIRECTIVE_BACKWARD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %165

104:                                              ; preds = %99
  %105 = load i64*, i64** %12, align 8
  %106 = call i32 @free(i64* %105)
  %107 = load i64*, i64** %20, align 8
  %108 = call i64* @wcsdup(i64* %107)
  store i64* %108, i64** %12, align 8
  %109 = icmp eq i64* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %392

111:                                              ; preds = %104
  %112 = load i64*, i64** %12, align 8
  store i64* %112, i64** %22, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = load i64*, i64** %12, align 8
  %115 = call i32 @wcslen(i64* %114)
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = getelementptr inbounds i64, i64* %117, i64 -1
  store i64* %118, i64** %23, align 8
  br label %119

119:                                              ; preds = %123, %111
  %120 = load i64*, i64** %22, align 8
  %121 = load i64*, i64** %23, align 8
  %122 = icmp ult i64* %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i64*, i64** %22, align 8
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %24, align 8
  %126 = load i64*, i64** %23, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %22, align 8
  %129 = getelementptr inbounds i64, i64* %128, i32 1
  store i64* %129, i64** %22, align 8
  store i64 %127, i64* %128, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i64*, i64** %23, align 8
  %132 = getelementptr inbounds i64, i64* %131, i32 -1
  store i64* %132, i64** %23, align 8
  store i64 %130, i64* %131, align 8
  br label %119

133:                                              ; preds = %119
  %134 = load i64*, i64** %13, align 8
  %135 = call i32 @free(i64* %134)
  %136 = load i64*, i64** %21, align 8
  %137 = call i64* @wcsdup(i64* %136)
  store i64* %137, i64** %13, align 8
  %138 = icmp eq i64* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %392

140:                                              ; preds = %133
  %141 = load i64*, i64** %13, align 8
  store i64* %141, i64** %22, align 8
  %142 = load i64*, i64** %13, align 8
  %143 = load i64*, i64** %13, align 8
  %144 = call i32 @wcslen(i64* %143)
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = getelementptr inbounds i64, i64* %146, i64 -1
  store i64* %147, i64** %23, align 8
  br label %148

148:                                              ; preds = %152, %140
  %149 = load i64*, i64** %22, align 8
  %150 = load i64*, i64** %23, align 8
  %151 = icmp ult i64* %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load i64*, i64** %22, align 8
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %24, align 8
  %155 = load i64*, i64** %23, align 8
  %156 = load i64, i64* %155, align 8
  %157 = load i64*, i64** %22, align 8
  %158 = getelementptr inbounds i64, i64* %157, i32 1
  store i64* %158, i64** %22, align 8
  store i64 %156, i64* %157, align 8
  %159 = load i64, i64* %24, align 8
  %160 = load i64*, i64** %23, align 8
  %161 = getelementptr inbounds i64, i64* %160, i32 -1
  store i64* %161, i64** %23, align 8
  store i64 %159, i64* %160, align 8
  br label %148

162:                                              ; preds = %148
  %163 = load i64*, i64** %12, align 8
  store i64* %163, i64** %20, align 8
  %164 = load i64*, i64** %13, align 8
  store i64* %164, i64** %21, align 8
  br label %165

165:                                              ; preds = %162, %99
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @DIRECTIVE_POSITION, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %275

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %247, %170
  %172 = load i64*, i64** %20, align 8
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i64*, i64** %21, align 8
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i1 [ false, %171 ], [ %178, %175 ]
  br i1 %180, label %181, label %256

181:                                              ; preds = %179
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %26, align 4
  store i32 1, i32* %25, align 4
  br label %182

182:                                              ; preds = %238, %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %182
  %187 = load i32, i32* %25, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %26, align 4
  %191 = icmp ne i32 %190, 0
  br label %192

192:                                              ; preds = %189, %186
  %193 = phi i1 [ true, %186 ], [ %191, %189 ]
  br label %194

194:                                              ; preds = %192, %182
  %195 = phi i1 [ false, %182 ], [ %193, %192 ]
  br i1 %195, label %196, label %239

196:                                              ; preds = %194
  %197 = load i32, i32* %25, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %196
  %200 = load %struct.xlocale_collate*, %struct.xlocale_collate** %17, align 8
  %201 = load i64*, i64** %20, align 8
  %202 = load i32, i32* %15, align 4
  %203 = call i32 @_collate_lookup(%struct.xlocale_collate* %200, i64* %201, i32* %8, i32* %10, i32 %202, i32** %18)
  %204 = load i32, i32* %10, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = load i32, i32* @EINVAL, align 4
  store i32 %207, i32* @errno, align 4
  br label %392

208:                                              ; preds = %199
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* @COLLATE_MAX_PRIORITY, align 4
  store i32 %212, i32* %10, align 4
  store i32* null, i32** %18, align 8
  br label %213

213:                                              ; preds = %211, %208
  %214 = load i32*, i32** %18, align 8
  %215 = icmp ne i32* %214, null
  %216 = zext i1 %215 to i32
  store i32 %216, i32* %25, align 4
  br label %217

217:                                              ; preds = %213, %196
  %218 = load i32, i32* %26, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %238

220:                                              ; preds = %217
  %221 = load %struct.xlocale_collate*, %struct.xlocale_collate** %17, align 8
  %222 = load i64*, i64** %21, align 8
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @_collate_lookup(%struct.xlocale_collate* %221, i64* %222, i32* %9, i32* %11, i32 %223, i32** %19)
  %225 = load i32, i32* %11, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %220
  %228 = load i32, i32* @EINVAL, align 4
  store i32 %228, i32* @errno, align 4
  br label %392

229:                                              ; preds = %220
  %230 = load i32, i32* %11, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* @COLLATE_MAX_PRIORITY, align 4
  store i32 %233, i32* %11, align 4
  store i32* null, i32** %19, align 8
  br label %234

234:                                              ; preds = %232, %229
  %235 = load i32*, i32** %19, align 8
  %236 = icmp ne i32* %235, null
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %26, align 4
  br label %238

238:                                              ; preds = %234, %217
  br label %182

239:                                              ; preds = %194
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %11, align 4
  %246 = sub nsw i32 %244, %245
  store i32 %246, i32* %16, align 4
  br label %392

247:                                              ; preds = %239
  %248 = load i32, i32* %8, align 4
  %249 = load i64*, i64** %20, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  store i64* %251, i64** %20, align 8
  %252 = load i32, i32* %9, align 4
  %253 = load i64*, i64** %21, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i64, i64* %253, i64 %254
  store i64* %255, i64** %21, align 8
  br label %171

256:                                              ; preds = %179
  %257 = load i64*, i64** %20, align 8
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %270, label %260

260:                                              ; preds = %256
  %261 = load i64*, i64** %21, align 8
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load i64*, i64** %21, align 8
  %266 = load i64, i64* %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %16, align 4
  br label %392

269:                                              ; preds = %260
  br label %274

270:                                              ; preds = %256
  %271 = load i64*, i64** %20, align 8
  %272 = load i64, i64* %271, align 8
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %16, align 4
  br label %392

274:                                              ; preds = %269
  br label %387

275:                                              ; preds = %165
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %276

276:                                              ; preds = %371, %275
  %277 = load i64*, i64** %20, align 8
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %290, label %280

280:                                              ; preds = %276
  %281 = load i64*, i64** %21, align 8
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %280
  %285 = load i32*, i32** %18, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = load i32*, i32** %19, align 8
  %289 = icmp ne i32* %288, null
  br label %290

290:                                              ; preds = %287, %284, %280, %276
  %291 = phi i1 [ true, %284 ], [ true, %280 ], [ true, %276 ], [ %289, %287 ]
  br i1 %291, label %292, label %372

292:                                              ; preds = %290
  store i32 1, i32* %10, align 4
  br label %293

293:                                              ; preds = %321, %292
  %294 = load i64*, i64** %20, align 8
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %293
  %298 = load i32*, i32** %18, align 8
  %299 = icmp ne i32* %298, null
  br label %300

300:                                              ; preds = %297, %293
  %301 = phi i1 [ true, %293 ], [ %299, %297 ]
  br i1 %301, label %302, label %322

302:                                              ; preds = %300
  %303 = load %struct.xlocale_collate*, %struct.xlocale_collate** %17, align 8
  %304 = load i64*, i64** %20, align 8
  %305 = load i32, i32* %15, align 4
  %306 = call i32 @_collate_lookup(%struct.xlocale_collate* %303, i64* %304, i32* %8, i32* %10, i32 %305, i32** %18)
  %307 = load i32, i32* %8, align 4
  %308 = load i64*, i64** %20, align 8
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  store i64* %310, i64** %20, align 8
  %311 = load i32, i32* %10, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %302
  %314 = load i32, i32* %27, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %27, align 4
  br label %322

316:                                              ; preds = %302
  %317 = load i32, i32* %10, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = load i32, i32* @EINVAL, align 4
  store i32 %320, i32* @errno, align 4
  br label %392

321:                                              ; preds = %316
  store i32* null, i32** %18, align 8
  br label %293

322:                                              ; preds = %313, %300
  store i32 1, i32* %11, align 4
  br label %323

323:                                              ; preds = %351, %322
  %324 = load i64*, i64** %21, align 8
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %323
  %328 = load i32*, i32** %19, align 8
  %329 = icmp ne i32* %328, null
  br label %330

330:                                              ; preds = %327, %323
  %331 = phi i1 [ true, %323 ], [ %329, %327 ]
  br i1 %331, label %332, label %352

332:                                              ; preds = %330
  %333 = load %struct.xlocale_collate*, %struct.xlocale_collate** %17, align 8
  %334 = load i64*, i64** %21, align 8
  %335 = load i32, i32* %15, align 4
  %336 = call i32 @_collate_lookup(%struct.xlocale_collate* %333, i64* %334, i32* %9, i32* %11, i32 %335, i32** %19)
  %337 = load i32, i32* %9, align 4
  %338 = load i64*, i64** %21, align 8
  %339 = sext i32 %337 to i64
  %340 = getelementptr inbounds i64, i64* %338, i64 %339
  store i64* %340, i64** %21, align 8
  %341 = load i32, i32* %11, align 4
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %332
  %344 = load i32, i32* %28, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %28, align 4
  br label %352

346:                                              ; preds = %332
  %347 = load i32, i32* %11, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %346
  %350 = load i32, i32* @EINVAL, align 4
  store i32 %350, i32* @errno, align 4
  br label %392

351:                                              ; preds = %346
  store i32* null, i32** %19, align 8
  br label %323

352:                                              ; preds = %343, %330
  %353 = load i32, i32* %10, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load i32, i32* %11, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %363, label %358

358:                                              ; preds = %355, %352
  %359 = load i32, i32* %27, align 4
  %360 = load i32, i32* %28, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %358
  br label %372

363:                                              ; preds = %358, %355
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* %11, align 4
  %366 = icmp ne i32 %364, %365
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load i32, i32* %10, align 4
  %369 = load i32, i32* %11, align 4
  %370 = sub nsw i32 %368, %369
  store i32 %370, i32* %16, align 4
  br label %392

371:                                              ; preds = %363
  br label %276

372:                                              ; preds = %362, %290
  %373 = load i32, i32* %27, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load i32, i32* %28, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %379, label %378

378:                                              ; preds = %375
  store i32 1, i32* %16, align 4
  br label %392

379:                                              ; preds = %375, %372
  %380 = load i32, i32* %27, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %379
  %383 = load i32, i32* %28, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %382
  store i32 -1, i32* %16, align 4
  br label %392

386:                                              ; preds = %382, %379
  br label %387

387:                                              ; preds = %386, %274
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %15, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %15, align 4
  br label %69

391:                                              ; preds = %69
  store i32 0, i32* %16, align 4
  br label %392

392:                                              ; preds = %391, %385, %378, %367, %349, %319, %270, %264, %243, %227, %206, %139, %110
  %393 = load i64*, i64** %12, align 8
  %394 = call i32 @free(i64* %393)
  %395 = load i64*, i64** %13, align 8
  %396 = call i32 @free(i64* %395)
  %397 = load i32, i32* %16, align 4
  store i32 %397, i32* %4, align 4
  br label %398

398:                                              ; preds = %392, %67, %58, %48
  %399 = load i32, i32* %4, align 4
  ret i32 %399
}

declare dso_local i32 @wcscmp(i64*, i64*) #1

declare dso_local i32 @FIX_LOCALE(%struct.TYPE_6__*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i64* @wcsdup(i64*) #1

declare dso_local i32 @wcslen(i64*) #1

declare dso_local i32 @_collate_lookup(%struct.xlocale_collate*, i64*, i32*, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
