; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_history_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_history_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = common dso_local global i32* null, align 8
@e = common dso_local global i32* null, align 8
@history_expansion_char = common dso_local global i8 0, align 1
@history_subst_char = common dso_local global i8 0, align 1
@history_no_expand_chars = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @history_expand(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load i32*, i32** @h, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** @e, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %2
  %26 = call i32 (...) @rl_initialize()
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8, i8* @history_expansion_char, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @strdup(i8* %32)
  %34 = load i8**, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  store i32 0, i32* %3, align 4
  br label %406

35:                                               ; preds = %27
  %36 = load i8**, i8*** %5, align 8
  store i8* null, i8** %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @history_subst_char, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %35
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 4
  %48 = add nsw i32 %47, 1
  %49 = call i8* @el_calloc(i32 %48, i32 1)
  %50 = load i8**, i8*** %5, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %406

55:                                               ; preds = %44
  %56 = load i8, i8* @history_expansion_char, align 1
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %56, i8* %59, align 1
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %56, i8* %62, align 1
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8 58, i8* %65, align 1
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  store i8 115, i8* %68, align 1
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strcpy(i8* %71, i8* %72)
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %4, align 8
  br label %85

76:                                               ; preds = %35
  %77 = load i8*, i8** %4, align 8
  %78 = call i8* @strdup(i8* %77)
  %79 = load i8**, i8*** %5, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %406

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %55
  store i8* null, i8** %11, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %8, align 8
  br label %86

86:                                               ; preds = %391, %85
  %87 = load i8*, i8** %4, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %393

92:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* %16, align 8
  store i64 %93, i64* %15, align 8
  br label %94

94:                                               ; preds = %223, %92
  br label %95

95:                                               ; preds = %181, %94
  %96 = load i8*, i8** %4, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %184

101:                                              ; preds = %95
  %102 = load i8*, i8** %4, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 92
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = load i8*, i8** %4, align 8
  %110 = load i64, i64* %16, align 8
  %111 = add i64 %110, 1
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = load i8, i8* @history_expansion_char, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %108
  %119 = load i8*, i8** %4, align 8
  %120 = load i64, i64* %16, align 8
  %121 = add i64 %120, 1
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = call i32 @strlen(i8* %122)
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %14, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = load i64, i64* %16, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8*, i8** %4, align 8
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %130, 1
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @memmove(i8* %128, i8* %132, i64 %133)
  br label %181

135:                                              ; preds = %108, %101
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %155, label %138

138:                                              ; preds = %135
  %139 = load i8*, i8** %4, align 8
  %140 = load i64, i64* %16, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = call i64 @isspace(i8 zeroext %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %138
  %146 = load i8*, i8** %4, align 8
  %147 = load i64, i64* %16, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %145, %138
  br label %184

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %135
  %156 = load i8*, i8** %4, align 8
  %157 = load i64, i64* %16, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = load i8, i8* @history_expansion_char, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %155
  %165 = load i32, i32* @history_no_expand_chars, align 4
  %166 = load i8*, i8** %4, align 8
  %167 = load i64, i64* %16, align 8
  %168 = add i64 %167, 1
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = call i32 @strchr(i32 %165, i8 signext %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %164
  %174 = load i8*, i8** %4, align 8
  %175 = load i64, i64* %16, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i64 @history_inhibit_expansion_function(i8* %174, i32 %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %184

180:                                              ; preds = %173, %164, %155
  br label %181

181:                                              ; preds = %180, %118
  %182 = load i64, i64* %16, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %16, align 8
  br label %95

184:                                              ; preds = %179, %153, %95
  %185 = load i8*, i8** %4, align 8
  %186 = load i64, i64* %16, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %224

191:                                              ; preds = %184
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %224

194:                                              ; preds = %191
  %195 = load i64, i64* %16, align 8
  store i64 %195, i64* %8, align 8
  %196 = load i64, i64* %16, align 8
  %197 = icmp ugt i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load i8*, i8** %4, align 8
  %200 = load i64, i64* %16, align 8
  %201 = sub i64 %200, 1
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 34
  br label %206

206:                                              ; preds = %198, %194
  %207 = phi i1 [ false, %194 ], [ %205, %198 ]
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 34, i32 0
  store i32 %209, i32* %12, align 4
  %210 = load i64, i64* %16, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %16, align 8
  %212 = load i8*, i8** %4, align 8
  %213 = load i64, i64* %16, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = load i8, i8* @history_expansion_char, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %206
  %221 = load i64, i64* %16, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %16, align 8
  br label %223

223:                                              ; preds = %220, %206
  store i32 0, i32* %13, align 4
  br label %94

224:                                              ; preds = %191, %184
  %225 = load i64, i64* %8, align 8
  %226 = load i64, i64* %15, align 8
  %227 = sub i64 %225, %226
  store i64 %227, i64* %14, align 8
  %228 = load i64, i64* %7, align 8
  %229 = load i64, i64* %14, align 8
  %230 = add i64 %228, %229
  %231 = add i64 %230, 1
  %232 = load i64, i64* %9, align 8
  %233 = icmp ugt i64 %231, %232
  br i1 %233, label %234, label %252

234:                                              ; preds = %224
  %235 = load i8*, i8** %11, align 8
  %236 = load i64, i64* %14, align 8
  %237 = add i64 %236, 1
  %238 = load i64, i64* %9, align 8
  %239 = add i64 %238, %237
  store i64 %239, i64* %9, align 8
  %240 = mul i64 %239, 1
  %241 = call i32 (i8*, i64, ...) bitcast (i32 (...)* @el_realloc to i32 (i8*, i64, ...)*)(i8* %235, i64 %240)
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to i8*
  store i8* %243, i8** %17, align 8
  %244 = load i8*, i8** %17, align 8
  %245 = icmp eq i8* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %234
  %247 = load i8**, i8*** %5, align 8
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @el_free(i8* %248)
  store i32 0, i32* %3, align 4
  br label %406

250:                                              ; preds = %234
  %251 = load i8*, i8** %17, align 8
  store i8* %251, i8** %11, align 8
  br label %252

252:                                              ; preds = %250, %224
  %253 = load i8*, i8** %11, align 8
  %254 = load i64, i64* %7, align 8
  %255 = getelementptr inbounds i8, i8* %253, i64 %254
  %256 = load i8*, i8** %4, align 8
  %257 = load i64, i64* %15, align 8
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  %259 = load i64, i64* %14, align 8
  %260 = call i8* @strncpy(i8* %255, i8* %258, i64 %259)
  %261 = load i64, i64* %14, align 8
  %262 = load i64, i64* %7, align 8
  %263 = add i64 %262, %261
  store i64 %263, i64* %7, align 8
  %264 = load i8*, i8** %11, align 8
  %265 = load i64, i64* %7, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8 0, i8* %266, align 1
  %267 = load i8*, i8** %4, align 8
  %268 = load i64, i64* %8, align 8
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %282, label %273

273:                                              ; preds = %252
  %274 = load i8*, i8** %4, align 8
  %275 = load i64, i64* %8, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = load i8, i8* @history_expansion_char, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp ne i32 %278, %280
  br i1 %281, label %282, label %330

282:                                              ; preds = %273, %252
  %283 = load i64, i64* %16, align 8
  %284 = load i64, i64* %8, align 8
  %285 = sub i64 %283, %284
  store i64 %285, i64* %14, align 8
  %286 = load i64, i64* %7, align 8
  %287 = load i64, i64* %14, align 8
  %288 = add i64 %286, %287
  %289 = add i64 %288, 1
  %290 = load i64, i64* %9, align 8
  %291 = icmp ugt i64 %289, %290
  br i1 %291, label %292, label %310

292:                                              ; preds = %282
  %293 = load i8*, i8** %11, align 8
  %294 = load i64, i64* %14, align 8
  %295 = add i64 %294, 1
  %296 = load i64, i64* %9, align 8
  %297 = add i64 %296, %295
  store i64 %297, i64* %9, align 8
  %298 = mul i64 %297, 1
  %299 = call i32 (i8*, i64, ...) bitcast (i32 (...)* @el_realloc to i32 (i8*, i64, ...)*)(i8* %293, i64 %298)
  %300 = sext i32 %299 to i64
  %301 = inttoptr i64 %300 to i8*
  store i8* %301, i8** %18, align 8
  %302 = load i8*, i8** %18, align 8
  %303 = icmp eq i8* %302, null
  br i1 %303, label %304, label %308

304:                                              ; preds = %292
  %305 = load i8**, i8*** %5, align 8
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @el_free(i8* %306)
  store i32 0, i32* %3, align 4
  br label %406

308:                                              ; preds = %292
  %309 = load i8*, i8** %18, align 8
  store i8* %309, i8** %11, align 8
  br label %310

310:                                              ; preds = %308, %282
  %311 = load i8*, i8** %11, align 8
  %312 = load i64, i64* %7, align 8
  %313 = getelementptr inbounds i8, i8* %311, i64 %312
  %314 = load i8*, i8** %4, align 8
  %315 = load i64, i64* %8, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  %317 = load i64, i64* %14, align 8
  %318 = call i8* @strncpy(i8* %313, i8* %316, i64 %317)
  %319 = load i64, i64* %14, align 8
  %320 = load i64, i64* %7, align 8
  %321 = add i64 %320, %319
  store i64 %321, i64* %7, align 8
  %322 = load i8*, i8** %11, align 8
  %323 = load i64, i64* %7, align 8
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8 0, i8* %324, align 1
  %325 = load i64, i64* %15, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %310
  store i32 0, i32* %6, align 4
  br label %329

328:                                              ; preds = %310
  store i32 1, i32* %6, align 4
  br label %329

329:                                              ; preds = %328, %327
  br label %393

330:                                              ; preds = %273
  %331 = load i8*, i8** %4, align 8
  %332 = load i64, i64* %8, align 8
  %333 = load i64, i64* %16, align 8
  %334 = load i64, i64* %8, align 8
  %335 = sub i64 %333, %334
  %336 = call i32 @_history_expand_command(i8* %331, i64 %332, i64 %335, i8** %10)
  store i32 %336, i32* %6, align 4
  %337 = load i32, i32* %6, align 4
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %385

339:                                              ; preds = %330
  %340 = load i8*, i8** %10, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %385

342:                                              ; preds = %339
  %343 = load i8*, i8** %10, align 8
  %344 = call i32 @strlen(i8* %343)
  %345 = sext i32 %344 to i64
  store i64 %345, i64* %14, align 8
  %346 = load i64, i64* %7, align 8
  %347 = load i64, i64* %14, align 8
  %348 = add i64 %346, %347
  %349 = add i64 %348, 1
  %350 = load i64, i64* %9, align 8
  %351 = icmp ugt i64 %349, %350
  br i1 %351, label %352, label %372

352:                                              ; preds = %342
  %353 = load i8*, i8** %11, align 8
  %354 = load i64, i64* %14, align 8
  %355 = add i64 %354, 1
  %356 = load i64, i64* %9, align 8
  %357 = add i64 %356, %355
  store i64 %357, i64* %9, align 8
  %358 = mul i64 %357, 1
  %359 = call i32 (i8*, i64, ...) bitcast (i32 (...)* @el_realloc to i32 (i8*, i64, ...)*)(i8* %353, i64 %358)
  %360 = sext i32 %359 to i64
  %361 = inttoptr i64 %360 to i8*
  store i8* %361, i8** %19, align 8
  %362 = load i8*, i8** %19, align 8
  %363 = icmp eq i8* %362, null
  br i1 %363, label %364, label %370

364:                                              ; preds = %352
  %365 = load i8**, i8*** %5, align 8
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 @el_free(i8* %366)
  %368 = load i8*, i8** %10, align 8
  %369 = call i32 @el_free(i8* %368)
  store i32 0, i32* %3, align 4
  br label %406

370:                                              ; preds = %352
  %371 = load i8*, i8** %19, align 8
  store i8* %371, i8** %11, align 8
  br label %372

372:                                              ; preds = %370, %342
  %373 = load i8*, i8** %11, align 8
  %374 = load i64, i64* %7, align 8
  %375 = getelementptr inbounds i8, i8* %373, i64 %374
  %376 = load i8*, i8** %10, align 8
  %377 = load i64, i64* %14, align 8
  %378 = call i8* @strncpy(i8* %375, i8* %376, i64 %377)
  %379 = load i64, i64* %14, align 8
  %380 = load i64, i64* %7, align 8
  %381 = add i64 %380, %379
  store i64 %381, i64* %7, align 8
  %382 = load i8*, i8** %11, align 8
  %383 = load i64, i64* %7, align 8
  %384 = getelementptr inbounds i8, i8* %382, i64 %383
  store i8 0, i8* %384, align 1
  br label %385

385:                                              ; preds = %372, %339, %330
  %386 = load i8*, i8** %10, align 8
  %387 = icmp ne i8* %386, null
  br i1 %387, label %388, label %391

388:                                              ; preds = %385
  %389 = load i8*, i8** %10, align 8
  %390 = call i32 @el_free(i8* %389)
  store i8* null, i8** %10, align 8
  br label %391

391:                                              ; preds = %388, %385
  %392 = load i64, i64* %16, align 8
  store i64 %392, i64* %8, align 8
  br label %86

393:                                              ; preds = %329, %86
  %394 = load i32, i32* %6, align 4
  %395 = icmp eq i32 %394, 2
  br i1 %395, label %396, label %399

396:                                              ; preds = %393
  %397 = load i8*, i8** %11, align 8
  %398 = call i32 @add_history(i8* %397)
  br label %399

399:                                              ; preds = %396, %393
  %400 = load i8**, i8*** %5, align 8
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @el_free(i8* %401)
  %403 = load i8*, i8** %11, align 8
  %404 = load i8**, i8*** %5, align 8
  store i8* %403, i8** %404, align 8
  %405 = load i32, i32* %6, align 4
  store i32 %405, i32* %3, align 4
  br label %406

406:                                              ; preds = %399, %364, %304, %246, %83, %54, %31
  %407 = load i32, i32* %3, align 4
  ret i32 %407
}

declare dso_local i32 @rl_initialize(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @el_calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i64 @history_inhibit_expansion_function(i8*, i32) #1

declare dso_local i32 @el_realloc(...) #1

declare dso_local i32 @el_free(i8*) #1

declare dso_local i8* @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @_history_expand_command(i8*, i64, i64, i8**) #1

declare dso_local i32 @add_history(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
