; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_setlocale.c_setlocale.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_setlocale.c_setlocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@_LC_LAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@current_categories = common dso_local global i8** null, align 8
@new_categories = common dso_local global i8** null, align 8
@ENCODING_LEN = common dso_local global i32 0, align 4
@saved_categories = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setlocale(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @LC_ALL, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @_LC_LAST, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %326

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @LC_ALL, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i8**, i8*** @current_categories, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  br label %36

34:                                               ; preds = %24
  %35 = call i8* (...) @currentlocale()
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i8* [ %33, %28 ], [ %35, %34 ]
  store i8* %37, i8** %3, align 8
  br label %326

38:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @_LC_LAST, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i8**, i8*** @new_categories, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** @current_categories, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcpy(i8* %48, i8* %53)
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %110, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @LC_ALL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @_LC_LAST, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = call i8* @__get_locale_env(i32 %72)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = load i32, i32* @ENCODING_LEN, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %326

80:                                               ; preds = %71
  %81 = load i8**, i8*** @new_categories, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @strcpy(i8* %85, i8* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %67

91:                                               ; preds = %67
  br label %109

92:                                               ; preds = %62
  %93 = load i32, i32* %4, align 4
  %94 = call i8* @__get_locale_env(i32 %93)
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = load i32, i32* @ENCODING_LEN, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %326

101:                                              ; preds = %92
  %102 = load i8**, i8*** @new_categories, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @strcpy(i8* %106, i8* %107)
  br label %109

109:                                              ; preds = %101, %91
  br label %257

110:                                              ; preds = %58
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @LC_ALL, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = load i32, i32* @ENCODING_LEN, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %326

121:                                              ; preds = %114
  %122 = load i8**, i8*** @new_categories, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @strcpy(i8* %126, i8* %127)
  br label %256

129:                                              ; preds = %110
  %130 = load i8*, i8** %5, align 8
  %131 = call i8* @strchr(i8* %130, i8 signext 47)
  store i8* %131, i8** %11, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %157

133:                                              ; preds = %129
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = load i32, i32* @ENCODING_LEN, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %326

140:                                              ; preds = %133
  store i32 1, i32* %6, align 4
  br label %141

141:                                              ; preds = %153, %140
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @_LC_LAST, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load i8**, i8*** @new_categories, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @strcpy(i8* %150, i8* %151)
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %141

156:                                              ; preds = %141
  br label %255

157:                                              ; preds = %129
  store i32 1, i32* %6, align 4
  br label %158

158:                                              ; preds = %165, %157
  %159 = load i8*, i8** %11, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 47
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164
  %166 = load i8*, i8** %11, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %11, align 8
  br label %158

168:                                              ; preds = %158
  %169 = load i8*, i8** %11, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* @EINVAL, align 4
  store i32 %174, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %326

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %230, %175
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @_LC_LAST, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %234

181:                                              ; preds = %176
  %182 = load i8*, i8** %11, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* @ENCODING_LEN, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32, i32* @EINVAL, align 4
  store i32 %191, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %326

192:                                              ; preds = %181
  %193 = load i8**, i8*** @new_categories, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = load i8*, i8** %5, align 8
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  %201 = call i32 @strlcpy(i8* %197, i8* %198, i32 %200)
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %209, %192
  %205 = load i8*, i8** %11, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 47
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i8*, i8** %11, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %11, align 8
  br label %204

212:                                              ; preds = %204
  %213 = load i8*, i8** %11, align 8
  store i8* %213, i8** %5, align 8
  br label %214

214:                                              ; preds = %226, %212
  %215 = load i8*, i8** %11, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load i8*, i8** %11, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 47
  br label %224

224:                                              ; preds = %219, %214
  %225 = phi i1 [ false, %214 ], [ %223, %219 ]
  br i1 %225, label %226, label %229

226:                                              ; preds = %224
  %227 = load i8*, i8** %11, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %11, align 8
  br label %214

229:                                              ; preds = %224
  br label %230

230:                                              ; preds = %229
  %231 = load i8*, i8** %5, align 8
  %232 = load i8, i8* %231, align 1
  %233 = icmp ne i8 %232, 0
  br i1 %233, label %176, label %234

234:                                              ; preds = %230, %180
  br label %235

235:                                              ; preds = %239, %234
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @_LC_LAST, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %254

239:                                              ; preds = %235
  %240 = load i8**, i8*** @new_categories, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load i8**, i8*** @new_categories, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %245, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @strcpy(i8* %244, i8* %250)
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %6, align 4
  br label %235

254:                                              ; preds = %235
  br label %255

255:                                              ; preds = %254, %156
  br label %256

256:                                              ; preds = %255, %121
  br label %257

257:                                              ; preds = %256, %109
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* @LC_ALL, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* %4, align 4
  %263 = call i8* @loadlocale(i32 %262)
  store i8* %263, i8** %3, align 8
  br label %326

264:                                              ; preds = %257
  store i32 1, i32* %6, align 4
  br label %265

265:                                              ; preds = %321, %264
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @_LC_LAST, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %324

269:                                              ; preds = %265
  %270 = load i8**, i8*** @saved_categories, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = load i8**, i8*** @current_categories, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @strcpy(i8* %274, i8* %279)
  %281 = load i32, i32* %6, align 4
  %282 = call i8* @loadlocale(i32 %281)
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %320

284:                                              ; preds = %269
  %285 = load i32, i32* @errno, align 4
  store i32 %285, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %286

286:                                              ; preds = %315, %284
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* %6, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %318

290:                                              ; preds = %286
  %291 = load i8**, i8*** @new_categories, align 8
  %292 = load i32, i32* %7, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %291, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = load i8**, i8*** @saved_categories, align 8
  %297 = load i32, i32* %7, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8*, i8** %296, i64 %298
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @strcpy(i8* %295, i8* %300)
  %302 = load i32, i32* %7, align 4
  %303 = call i8* @loadlocale(i32 %302)
  %304 = icmp eq i8* %303, null
  br i1 %304, label %305, label %314

305:                                              ; preds = %290
  %306 = load i8**, i8*** @new_categories, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8*, i8** %306, i64 %308
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @strcpy(i8* %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %312 = load i32, i32* %7, align 4
  %313 = call i8* @loadlocale(i32 %312)
  br label %314

314:                                              ; preds = %305, %290
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %7, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %7, align 4
  br label %286

318:                                              ; preds = %286
  %319 = load i32, i32* %9, align 4
  store i32 %319, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %326

320:                                              ; preds = %269
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %6, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %6, align 4
  br label %265

324:                                              ; preds = %265
  %325 = call i8* (...) @currentlocale()
  store i8* %325, i8** %3, align 8
  br label %326

326:                                              ; preds = %324, %318, %261, %190, %173, %138, %119, %99, %78, %36, %19
  %327 = load i8*, i8** %3, align 8
  ret i8* %327
}

declare dso_local i8* @currentlocale(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @__get_locale_env(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @loadlocale(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
