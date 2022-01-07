; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_resp_catman.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_resp_catman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"<p>You specified an invalid manual file.</p>\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"<div class=\22catman\22>\0A<pre>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"</i>\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"</b>\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"<i>\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"<b>\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"</pre>\0A</div>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.req*, i8*)* @resp_catman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resp_catman(%struct.req* %0, i8* %1) #0 {
  %3 = alloca %struct.req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.req* %0, %struct.req** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %433

17:                                               ; preds = %2
  %18 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %425, %17
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @getline(i8** %6, i64* %7, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %427

23:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %392, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %395

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 8, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 10, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %29
  br label %392

46:                                               ; preds = %37
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 8, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @html_putchar(i8 signext %70)
  br label %392

72:                                               ; preds = %46
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 2
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %392

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 95, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %79
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %92
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %9, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = call i32 @html_putchar(i8 signext %104)
  br label %392

106:                                              ; preds = %79
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 43, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %106
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 111, %121
  br i1 %122, label %242, label %123

123:                                              ; preds = %114, %106
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 111, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %123
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 2
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 43, %138
  br i1 %139, label %242, label %140

140:                                              ; preds = %131, %123
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 124, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %140
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 61, %155
  br i1 %156, label %242, label %157

157:                                              ; preds = %148, %140
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 61, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %157
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 124, %172
  br i1 %173, label %242, label %174

174:                                              ; preds = %165, %157
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 42, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 61, %189
  br i1 %190, label %242, label %191

191:                                              ; preds = %182, %174
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 61, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %191
  %200 = load i8*, i8** %6, align 8
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 2
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 42, %206
  br i1 %207, label %242, label %208

208:                                              ; preds = %199, %191
  %209 = load i8*, i8** %6, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 42, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %208
  %217 = load i8*, i8** %6, align 8
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 124, %223
  br i1 %224, label %242, label %225

225:                                              ; preds = %216, %208
  %226 = load i8*, i8** %6, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 124, %231
  br i1 %232, label %233, label %256

233:                                              ; preds = %225
  %234 = load i8*, i8** %6, align 8
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 2
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 42, %240
  br i1 %241, label %242, label %256

242:                                              ; preds = %233, %216, %199, %182, %165, %148, %131, %114
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %242
  %248 = load i32, i32* %11, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %247
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %253 = call i32 @putchar(i8 signext 42)
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 2
  store i32 %255, i32* %9, align 4
  br label %392

256:                                              ; preds = %233, %225
  %257 = load i8*, i8** %6, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 124, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %256
  %265 = load i8*, i8** %6, align 8
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 2
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %265, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 45, %271
  br i1 %272, label %358, label %273

273:                                              ; preds = %264, %256
  %274 = load i8*, i8** %6, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 45, %279
  br i1 %280, label %281, label %290

281:                                              ; preds = %273
  %282 = load i8*, i8** %6, align 8
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 124, %288
  br i1 %289, label %358, label %290

290:                                              ; preds = %281, %273
  %291 = load i8*, i8** %6, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %291, i64 %293
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp eq i32 43, %296
  br i1 %297, label %298, label %307

298:                                              ; preds = %290
  %299 = load i8*, i8** %6, align 8
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %299, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 45, %305
  br i1 %306, label %358, label %307

307:                                              ; preds = %298, %290
  %308 = load i8*, i8** %6, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 45, %313
  br i1 %314, label %315, label %324

315:                                              ; preds = %307
  %316 = load i8*, i8** %6, align 8
  %317 = load i32, i32* %9, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %316, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 43, %322
  br i1 %323, label %358, label %324

324:                                              ; preds = %315, %307
  %325 = load i8*, i8** %6, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 43, %330
  br i1 %331, label %332, label %341

332:                                              ; preds = %324
  %333 = load i8*, i8** %6, align 8
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %333, i64 %336
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = icmp eq i32 124, %339
  br i1 %340, label %358, label %341

341:                                              ; preds = %332, %324
  %342 = load i8*, i8** %6, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %342, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 124, %347
  br i1 %348, label %349, label %372

349:                                              ; preds = %341
  %350 = load i8*, i8** %6, align 8
  %351 = load i32, i32* %9, align 4
  %352 = add nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %350, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 43, %356
  br i1 %357, label %358, label %372

358:                                              ; preds = %349, %332, %315, %298, %281, %264
  %359 = load i32, i32* %10, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %363

363:                                              ; preds = %361, %358
  %364 = load i32, i32* %11, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %368

368:                                              ; preds = %366, %363
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %369 = call i32 @putchar(i8 signext 43)
  %370 = load i32, i32* %9, align 4
  %371 = add nsw i32 %370, 2
  store i32 %371, i32* %9, align 4
  br label %392

372:                                              ; preds = %349, %341
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %10, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %378

378:                                              ; preds = %376, %373
  %379 = load i32, i32* %11, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %383, label %381

381:                                              ; preds = %378
  %382 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %383

383:                                              ; preds = %381, %378
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %384 = load i32, i32* %9, align 4
  %385 = add nsw i32 %384, 2
  store i32 %385, i32* %9, align 4
  %386 = load i8*, i8** %6, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %386, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = call i32 @html_putchar(i8 signext %390)
  br label %392

392:                                              ; preds = %383, %368, %252, %97, %77, %65, %45
  %393 = load i32, i32* %9, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %9, align 4
  br label %24

395:                                              ; preds = %24
  %396 = load i32, i32* %10, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %400

400:                                              ; preds = %398, %395
  %401 = load i32, i32* %11, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %400
  %404 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %405

405:                                              ; preds = %403, %400
  %406 = load i32, i32* %9, align 4
  %407 = load i32, i32* %8, align 4
  %408 = sub nsw i32 %407, 1
  %409 = icmp eq i32 %406, %408
  br i1 %409, label %410, label %425

410:                                              ; preds = %405
  %411 = load i8*, i8** %6, align 8
  %412 = load i32, i32* %9, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp ne i32 %416, 10
  br i1 %417, label %418, label %425

418:                                              ; preds = %410
  %419 = load i8*, i8** %6, align 8
  %420 = load i32, i32* %9, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8, i8* %419, i64 %421
  %423 = load i8, i8* %422, align 1
  %424 = call i32 @html_putchar(i8 signext %423)
  br label %425

425:                                              ; preds = %418, %410, %405
  %426 = call i32 @putchar(i8 signext 10)
  br label %19

427:                                              ; preds = %19
  %428 = load i8*, i8** %6, align 8
  %429 = call i32 @free(i8* %428)
  %430 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %431 = load i32*, i32** %5, align 8
  %432 = call i32 @fclose(i32* %431)
  br label %433

433:                                              ; preds = %427, %15
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @html_putchar(i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
