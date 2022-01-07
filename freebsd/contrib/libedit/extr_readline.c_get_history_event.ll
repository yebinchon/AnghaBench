; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_get_history_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_get_history_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8* }

@history_expansion_char = common dso_local global i8 0, align 1
@h = common dso_local global i32 0, align 4
@H_FIRST = common dso_local global i32 0, align 4
@history_length = common dso_local global i32 0, align 4
@history_base = common dso_local global i32 0, align 4
@last_search_pat = common dso_local global i8* null, align 8
@H_CURR = common dso_local global i32 0, align 4
@rl_outstream = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: Event not found\0A\00", align 1
@last_search_match = common dso_local global i8* null, align 8
@H_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_history_event(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @history_expansion_char, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %393

32:                                               ; preds = %3
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @history_expansion_char, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %32
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %42, %32
  %51 = load i32, i32* @h, align 4
  %52 = load i32, i32* @H_FIRST, align 4
  %53 = call i32 (i32, %struct.TYPE_5__*, i32, ...) @history(i32 %51, %struct.TYPE_5__* %17, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i8* null, i8** %4, align 8
  br label %393

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %4, align 8
  br label %393

74:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 45
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  store i32 1, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %74
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp sle i32 48, %91
  br i1 %92, label %93, label %161

93:                                               ; preds = %85
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sle i32 %99, 57
  br i1 %100, label %101, label %161

101:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %128, %101
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %102
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sle i32 48, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sle i32 %124, 57
  br label %126

126:                                              ; preds = %118, %110, %102
  %127 = phi i1 [ false, %110 ], [ false, %102 ], [ %125, %118 ]
  br i1 %127, label %128, label %141

128:                                              ; preds = %126
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %129, 10
  %131 = load i8*, i8** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = add nsw i32 %130, %136
  %138 = sub nsw i32 %137, 48
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %102

141:                                              ; preds = %126
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* @history_length, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32, i32* @history_base, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %144, %141
  %151 = load i32, i32* %11, align 4
  %152 = call %struct.TYPE_6__* @history_get(i32 %151)
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %18, align 8
  %153 = icmp ne %struct.TYPE_6__* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  store i8* null, i8** %4, align 8
  br label %393

155:                                              ; preds = %150
  %156 = load i32, i32* %8, align 4
  %157 = load i32*, i32** %6, align 8
  store i32 %156, i32* %157, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %4, align 8
  br label %393

161:                                              ; preds = %93, %85
  store i32 0, i32* %10, align 4
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 63
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  store i32 1, i32* %10, align 4
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %169, %161
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %239, %172
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %242

181:                                              ; preds = %174
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 10
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %242

190:                                              ; preds = %181
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 63
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %242

202:                                              ; preds = %193, %190
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %239, label %205

205:                                              ; preds = %202
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 58
  br i1 %212, label %238, label %213

213:                                              ; preds = %205
  %214 = load i8*, i8** %5, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 32
  br i1 %220, label %238, label %221

221:                                              ; preds = %213
  %222 = load i8*, i8** %5, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %222, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 9
  br i1 %228, label %238, label %229

229:                                              ; preds = %221
  %230 = load i8*, i8** %5, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = load i32, i32* %7, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %229, %221, %213, %205
  br label %242

239:                                              ; preds = %229, %202
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %174

242:                                              ; preds = %238, %201, %189, %174
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = sub i64 %244, %246
  store i64 %247, i64* %14, align 8
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %242
  %251 = load i8*, i8** %5, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp eq i32 %256, 63
  br i1 %257, label %258, label %261

258:                                              ; preds = %250
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %258, %250, %242
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %277

264:                                              ; preds = %261
  %265 = load i64, i64* %14, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %264
  %268 = load i8*, i8** @last_search_pat, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load i8*, i8** @last_search_pat, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load i8*, i8** @last_search_pat, align 8
  store i8* %276, i8** %15, align 8
  br label %299

277:                                              ; preds = %270, %267, %264, %261
  %278 = load i64, i64* %14, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i8* null, i8** %4, align 8
  br label %393

281:                                              ; preds = %277
  %282 = load i64, i64* %14, align 8
  %283 = add i64 %282, 1
  %284 = call i8* @el_calloc(i64 %283, i32 1)
  store i8* %284, i8** %15, align 8
  %285 = icmp eq i8* %284, null
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  store i8* null, i8** %4, align 8
  br label %393

287:                                              ; preds = %281
  %288 = load i8*, i8** %15, align 8
  %289 = load i8*, i8** %5, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  %293 = load i64, i64* %14, align 8
  %294 = call i32 @strncpy(i8* %288, i8* %292, i64 %293)
  %295 = load i8*, i8** %15, align 8
  %296 = load i64, i64* %14, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  store i8 0, i8* %297, align 1
  br label %298

298:                                              ; preds = %287
  br label %299

299:                                              ; preds = %298, %275
  %300 = load i32, i32* @h, align 4
  %301 = load i32, i32* @H_CURR, align 4
  %302 = call i32 (i32, %struct.TYPE_5__*, i32, ...) @history(i32 %300, %struct.TYPE_5__* %17, i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %299
  %305 = load i8*, i8** %15, align 8
  %306 = load i8*, i8** @last_search_pat, align 8
  %307 = icmp ne i8* %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load i8*, i8** %15, align 8
  %310 = call i32 @el_free(i8* %309)
  br label %311

311:                                              ; preds = %308, %304
  store i8* null, i8** %4, align 8
  br label %393

312:                                              ; preds = %299
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  store i32 %314, i32* %11, align 4
  %315 = load i32, i32* %10, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %312
  %318 = load i8*, i8** %15, align 8
  %319 = load i8*, i8** @last_search_pat, align 8
  %320 = icmp ne i8* %318, %319
  br i1 %320, label %321, label %329

321:                                              ; preds = %317
  %322 = load i8*, i8** @last_search_pat, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i8*, i8** @last_search_pat, align 8
  %326 = call i32 @el_free(i8* %325)
  br label %327

327:                                              ; preds = %324, %321
  %328 = load i8*, i8** %15, align 8
  store i8* %328, i8** @last_search_pat, align 8
  br label %329

329:                                              ; preds = %327, %317
  %330 = load i8*, i8** %15, align 8
  %331 = call i32 @history_search(i8* %330, i32 -1)
  store i32 %331, i32* %13, align 4
  br label %335

332:                                              ; preds = %312
  %333 = load i8*, i8** %15, align 8
  %334 = call i32 @history_search_prefix(i8* %333, i32 -1)
  store i32 %334, i32* %13, align 4
  br label %335

335:                                              ; preds = %332, %329
  %336 = load i32, i32* %13, align 4
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %352

338:                                              ; preds = %335
  %339 = load i32, i32* @h, align 4
  %340 = load i32, i32* @H_FIRST, align 4
  %341 = call i32 (i32, %struct.TYPE_5__*, i32, ...) @history(i32 %339, %struct.TYPE_5__* %17, i32 %340)
  %342 = load i32, i32* @rl_outstream, align 4
  %343 = load i8*, i8** %15, align 8
  %344 = call i32 @fprintf(i32 %342, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %343)
  %345 = load i8*, i8** %15, align 8
  %346 = load i8*, i8** @last_search_pat, align 8
  %347 = icmp ne i8* %345, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %338
  %349 = load i8*, i8** %15, align 8
  %350 = call i32 @el_free(i8* %349)
  br label %351

351:                                              ; preds = %348, %338
  store i8* null, i8** %4, align 8
  br label %393

352:                                              ; preds = %335
  %353 = load i32, i32* %10, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %370

355:                                              ; preds = %352
  %356 = load i64, i64* %14, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %370

358:                                              ; preds = %355
  %359 = load i8*, i8** @last_search_match, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %368

361:                                              ; preds = %358
  %362 = load i8*, i8** @last_search_match, align 8
  %363 = load i8*, i8** %15, align 8
  %364 = icmp ne i8* %362, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %361
  %366 = load i8*, i8** @last_search_match, align 8
  %367 = call i32 @el_free(i8* %366)
  br label %368

368:                                              ; preds = %365, %361, %358
  %369 = load i8*, i8** %15, align 8
  store i8* %369, i8** @last_search_match, align 8
  br label %370

370:                                              ; preds = %368, %355, %352
  %371 = load i8*, i8** %15, align 8
  %372 = load i8*, i8** @last_search_pat, align 8
  %373 = icmp ne i8* %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %370
  %375 = load i8*, i8** %15, align 8
  %376 = call i32 @el_free(i8* %375)
  br label %377

377:                                              ; preds = %374, %370
  %378 = load i32, i32* @h, align 4
  %379 = load i32, i32* @H_CURR, align 4
  %380 = call i32 (i32, %struct.TYPE_5__*, i32, ...) @history(i32 %378, %struct.TYPE_5__* %17, i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  store i8* null, i8** %4, align 8
  br label %393

383:                                              ; preds = %377
  %384 = load i32, i32* %8, align 4
  %385 = load i32*, i32** %6, align 8
  store i32 %384, i32* %385, align 4
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %387 = load i8*, i8** %386, align 8
  store i8* %387, i8** %16, align 8
  %388 = load i32, i32* @h, align 4
  %389 = load i32, i32* @H_SET, align 4
  %390 = load i32, i32* %11, align 4
  %391 = call i32 (i32, %struct.TYPE_5__*, i32, ...) @history(i32 %388, %struct.TYPE_5__* %17, i32 %389, i32 %390)
  %392 = load i8*, i8** %16, align 8
  store i8* %392, i8** %4, align 8
  br label %393

393:                                              ; preds = %383, %382, %351, %311, %286, %280, %155, %154, %69, %55, %31
  %394 = load i8*, i8** %4, align 8
  ret i8* %394
}

declare dso_local i32 @history(i32, %struct.TYPE_5__*, i32, ...) #1

declare dso_local %struct.TYPE_6__* @history_get(i32) #1

declare dso_local i8* @el_calloc(i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @el_free(i8*) #1

declare dso_local i32 @history_search(i8*, i32) #1

declare dso_local i32 @history_search_prefix(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
