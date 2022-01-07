; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_do_composition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_do_composition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U8_STREAM_SAFE_TEXT_MAX = common dso_local global i32 0, align 4
@U8_MB_CUR_MAX = common dso_local global i32 0, align 4
@U8_MAX_CHARS_A_SEQ = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@U8_UPPER_LIMIT_IN_A_SEQ = common dso_local global i64 0, align 8
@U8_COMBINING_CLASS_STARTER = common dso_local global i64 0, align 8
@U8_HANGUL_JAMO_1ST_BYTE = common dso_local global i64 0, align 8
@U8_HANGUL_JAMO_L_FIRST = common dso_local global i64 0, align 8
@U8_HANGUL_JAMO_V_FIRST = common dso_local global i64 0, align 8
@U8_HANGUL_SYL_FIRST = common dso_local global i32 0, align 4
@U8_HANGUL_V_COUNT = common dso_local global i32 0, align 4
@U8_HANGUL_T_COUNT = common dso_local global i32 0, align 4
@U8_HANGUL_JAMO_T_FIRST = common dso_local global i32 0, align 4
@U8_TBL_ELEMENT_FILLER = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@u8_number_of_bytes = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64*, i64*, i64*, i64, i64**, i64*)* @do_composition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_composition(i64 %0, i64* %1, i64* %2, i64* %3, i64* %4, i64 %5, i64** %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64** %6, i64*** %15, align 8
  store i64* %7, i64** %16, align 8
  %36 = load i32, i32* @U8_STREAM_SAFE_TEXT_MAX, align 4
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %17, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %18, align 8
  %41 = load i32, i32* @U8_MB_CUR_MAX, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %19, align 8
  %44 = load i32, i32* @U8_MAX_CHARS_A_SEQ, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i64, i64 %45, align 16
  store i64 %45, i64* %20, align 8
  %47 = load i64, i64* @B_TRUE, align 8
  store i64 %47, i64* %35, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i32, i32* @U8_MAX_CHARS_A_SEQ, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp uge i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %8
  %53 = load i64, i64* @U8_UPPER_LIMIT_IN_A_SEQ, align 8
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %52, %8
  store i64 0, i64* %29, align 8
  store i64 0, i64* %25, align 8
  br label %55

55:                                               ; preds = %486, %54
  %56 = load i64, i64* %25, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp ule i64 %56, %57
  br i1 %58, label %59, label %489

59:                                               ; preds = %55
  %60 = load i64, i64* %25, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %25, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @U8_COMBINING_CLASS_STARTER, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %63, %59
  br label %71

71:                                               ; preds = %361, %254, %70
  %72 = load i64*, i64** %10, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = load i64, i64* %25, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  store i64* %77, i64** %22, align 8
  %78 = load i64*, i64** %13, align 8
  %79 = load i64, i64* %25, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %32, align 8
  store i64 0, i64* %28, align 8
  br label %82

82:                                               ; preds = %93, %71
  %83 = load i64, i64* %28, align 8
  %84 = load i64, i64* %32, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i64*, i64** %22, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %22, align 8
  %89 = load i64, i64* %87, align 8
  %90 = load i64, i64* %29, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %29, align 8
  %92 = getelementptr inbounds i64, i64* %40, i64 %90
  store i64 %89, i64* %92, align 8
  br label %93

93:                                               ; preds = %86
  %94 = load i64, i64* %28, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %28, align 8
  br label %82

96:                                               ; preds = %82
  br label %486

97:                                               ; preds = %63
  %98 = load i64*, i64** %10, align 8
  %99 = load i64*, i64** %12, align 8
  %100 = load i64, i64* %25, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %98, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @U8_HANGUL_JAMO_1ST_BYTE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %239

107:                                              ; preds = %97
  %108 = load i32, i32* %33, align 4
  %109 = load i64*, i64** %10, align 8
  %110 = load i64*, i64** %12, align 8
  %111 = load i64, i64* %25, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i64, i64* %109, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %10, align 8
  %117 = load i64*, i64** %12, align 8
  %118 = load i64, i64* %25, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  %122 = getelementptr inbounds i64, i64* %116, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = load i64*, i64** %12, align 8
  %126 = load i64, i64* %25, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 2
  %130 = getelementptr inbounds i64, i64* %124, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @U8_PUT_3BYTES_INTO_UTF32(i32 %108, i64 %115, i64 %123, i64 %131)
  %133 = load i32, i32* %34, align 4
  %134 = load i64*, i64** %10, align 8
  %135 = load i64*, i64** %12, align 8
  %136 = load i64, i64* %25, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 3
  %140 = getelementptr inbounds i64, i64* %134, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %10, align 8
  %143 = load i64*, i64** %12, align 8
  %144 = load i64, i64* %25, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 4
  %148 = getelementptr inbounds i64, i64* %142, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %10, align 8
  %151 = load i64*, i64** %12, align 8
  %152 = load i64, i64* %25, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 5
  %156 = getelementptr inbounds i64, i64* %150, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @U8_PUT_3BYTES_INTO_UTF32(i32 %133, i64 %141, i64 %149, i64 %157)
  %159 = load i32, i32* %33, align 4
  %160 = call i64 @U8_HANGUL_JAMO_L(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %238

162:                                              ; preds = %107
  %163 = load i32, i32* %34, align 4
  %164 = call i64 @U8_HANGUL_JAMO_V(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %238

166:                                              ; preds = %162
  %167 = load i64, i64* @U8_HANGUL_JAMO_L_FIRST, align 8
  %168 = load i32, i32* %33, align 4
  %169 = sext i32 %168 to i64
  %170 = sub nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %33, align 4
  %172 = load i64, i64* @U8_HANGUL_JAMO_V_FIRST, align 8
  %173 = load i32, i32* %34, align 4
  %174 = sext i32 %173 to i64
  %175 = sub nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %34, align 4
  %177 = load i32, i32* @U8_HANGUL_SYL_FIRST, align 4
  %178 = load i32, i32* %33, align 4
  %179 = load i32, i32* @U8_HANGUL_V_COUNT, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %34, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* @U8_HANGUL_T_COUNT, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %177, %184
  store i32 %185, i32* %33, align 4
  %186 = load i64, i64* %25, align 8
  %187 = add i64 %186, 2
  store i64 %187, i64* %25, align 8
  %188 = load i64, i64* %25, align 8
  %189 = load i64, i64* %14, align 8
  %190 = icmp ule i64 %188, %189
  br i1 %190, label %191, label %229

191:                                              ; preds = %166
  %192 = load i32, i32* %34, align 4
  %193 = load i64*, i64** %10, align 8
  %194 = load i64*, i64** %12, align 8
  %195 = load i64, i64* %25, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i64, i64* %193, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %10, align 8
  %201 = load i64*, i64** %12, align 8
  %202 = load i64, i64* %25, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  %206 = getelementptr inbounds i64, i64* %200, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %10, align 8
  %209 = load i64*, i64** %12, align 8
  %210 = load i64, i64* %25, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, 2
  %214 = getelementptr inbounds i64, i64* %208, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @U8_PUT_3BYTES_INTO_UTF32(i32 %192, i64 %199, i64 %207, i64 %215)
  %217 = load i32, i32* %34, align 4
  %218 = call i64 @U8_HANGUL_JAMO_T(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %191
  %221 = load i32, i32* %34, align 4
  %222 = load i32, i32* @U8_HANGUL_JAMO_T_FIRST, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load i32, i32* %33, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %33, align 4
  %226 = load i64, i64* %25, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %25, align 8
  br label %228

228:                                              ; preds = %220, %191
  br label %229

229:                                              ; preds = %228, %166
  %230 = load i64, i64* %29, align 8
  %231 = getelementptr inbounds i64, i64* %40, i64 %230
  %232 = load i32, i32* %33, align 4
  %233 = call i32 @U8_SAVE_HANGUL_AS_UTF8(i64* %231, i32 0, i32 1, i32 2, i32 %232)
  %234 = load i64, i64* %25, align 8
  %235 = add i64 %234, -1
  store i64 %235, i64* %25, align 8
  %236 = load i64, i64* %29, align 8
  %237 = add i64 %236, 3
  store i64 %237, i64* %29, align 8
  br label %486

238:                                              ; preds = %162, %107
  br label %239

239:                                              ; preds = %238, %97
  %240 = load i64, i64* %9, align 8
  %241 = load i64*, i64** %10, align 8
  %242 = load i64*, i64** %12, align 8
  %243 = load i64, i64* %25, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds i64, i64* %241, i64 %245
  %247 = load i64*, i64** %13, align 8
  %248 = load i64, i64* %25, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = call i64* @find_composition_start(i64 %240, i64* %246, i64 %250)
  store i64* %251, i64** %22, align 8
  %252 = load i64*, i64** %22, align 8
  %253 = icmp eq i64* %252, null
  br i1 %253, label %254, label %255

254:                                              ; preds = %239
  br label %71

255:                                              ; preds = %239
  %256 = load i64*, i64** %22, align 8
  store i64* %256, i64** %23, align 8
  %257 = load i64, i64* %25, align 8
  store i64 %257, i64* %26, align 8
  %258 = load i64, i64* %29, align 8
  store i64 %258, i64* %31, align 8
  store i64 0, i64* %21, align 8
  br label %259

259:                                              ; preds = %413, %396, %255
  %260 = load i64*, i64** %10, align 8
  %261 = load i64*, i64** %12, align 8
  %262 = load i64, i64* %25, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %25, align 8
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds i64, i64* %260, i64 %265
  store i64* %266, i64** %24, align 8
  %267 = load i64*, i64** %13, align 8
  %268 = load i64, i64* %25, align 8
  %269 = getelementptr inbounds i64, i64* %267, i64 %268
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %32, align 8
  %271 = load i64, i64* @B_TRUE, align 8
  store i64 %271, i64* %35, align 8
  %272 = load i64*, i64** %22, align 8
  %273 = getelementptr inbounds i64, i64* %272, i32 1
  store i64* %273, i64** %22, align 8
  %274 = load i64, i64* %272, align 8
  store i64 %274, i64* %30, align 8
  br label %275

275:                                              ; preds = %348, %259
  %276 = load i64, i64* %30, align 8
  %277 = icmp ugt i64 %276, 0
  br i1 %277, label %278, label %351

278:                                              ; preds = %275
  store i64 0, i64* %28, align 8
  br label %279

279:                                              ; preds = %293, %278
  %280 = load i64, i64* %28, align 8
  %281 = load i64, i64* %32, align 8
  %282 = icmp ult i64 %280, %281
  br i1 %282, label %283, label %298

283:                                              ; preds = %279
  %284 = load i64*, i64** %22, align 8
  %285 = load i64, i64* %284, align 8
  %286 = load i64*, i64** %24, align 8
  %287 = load i64, i64* %28, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %285, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %283
  br label %298

292:                                              ; preds = %283
  br label %293

293:                                              ; preds = %292
  %294 = load i64*, i64** %22, align 8
  %295 = getelementptr inbounds i64, i64* %294, i32 1
  store i64* %295, i64** %22, align 8
  %296 = load i64, i64* %28, align 8
  %297 = add i64 %296, 1
  store i64 %297, i64* %28, align 8
  br label %279

298:                                              ; preds = %291, %279
  %299 = load i64, i64* %28, align 8
  %300 = load i64, i64* %32, align 8
  %301 = icmp uge i64 %299, %300
  br i1 %301, label %302, label %323

302:                                              ; preds = %298
  %303 = load i64*, i64** %22, align 8
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %323

307:                                              ; preds = %302
  %308 = load i64, i64* @B_FALSE, align 8
  store i64 %308, i64* %35, align 8
  %309 = load i64, i64* %31, align 8
  store i64 %309, i64* %29, align 8
  br label %310

310:                                              ; preds = %316, %307
  %311 = load i64*, i64** %22, align 8
  %312 = getelementptr inbounds i64, i64* %311, i32 1
  store i64* %312, i64** %22, align 8
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  %317 = load i64*, i64** %22, align 8
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* %29, align 8
  %320 = add i64 %319, 1
  store i64 %320, i64* %29, align 8
  %321 = getelementptr inbounds i64, i64* %40, i64 %319
  store i64 %318, i64* %321, align 8
  br label %310

322:                                              ; preds = %310
  br label %351

323:                                              ; preds = %302, %298
  %324 = load i64*, i64** %22, align 8
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %337

328:                                              ; preds = %323
  br label %329

329:                                              ; preds = %335, %328
  %330 = load i64*, i64** %22, align 8
  %331 = getelementptr inbounds i64, i64* %330, i32 1
  store i64* %331, i64** %22, align 8
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %334 = icmp ne i64 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %329
  br label %329

336:                                              ; preds = %329
  br label %337

337:                                              ; preds = %336, %323
  br label %338

338:                                              ; preds = %344, %337
  %339 = load i64*, i64** %22, align 8
  %340 = getelementptr inbounds i64, i64* %339, i32 1
  store i64* %340, i64** %22, align 8
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %338
  br label %338

345:                                              ; preds = %338
  %346 = load i64*, i64** %22, align 8
  %347 = getelementptr inbounds i64, i64* %346, i32 1
  store i64* %347, i64** %22, align 8
  br label %348

348:                                              ; preds = %345
  %349 = load i64, i64* %30, align 8
  %350 = add i64 %349, -1
  store i64 %350, i64* %30, align 8
  br label %275

351:                                              ; preds = %322, %275
  %352 = load i64, i64* %35, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %369

354:                                              ; preds = %351
  %355 = load i64*, i64** %11, align 8
  %356 = load i64, i64* %25, align 8
  %357 = getelementptr inbounds i64, i64* %355, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @U8_COMBINING_CLASS_STARTER, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %354
  %362 = load i64, i64* %25, align 8
  %363 = add i64 %362, -1
  store i64 %363, i64* %25, align 8
  br label %71

364:                                              ; preds = %354
  %365 = load i64, i64* %25, align 8
  %366 = load i64, i64* %21, align 8
  %367 = add i64 %366, 1
  store i64 %367, i64* %21, align 8
  %368 = getelementptr inbounds i64, i64* %46, i64 %366
  store i64 %365, i64* %368, align 8
  br label %369

369:                                              ; preds = %364, %351
  %370 = load i64, i64* %31, align 8
  %371 = load i64, i64* %29, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %399

373:                                              ; preds = %369
  br label %374

374:                                              ; preds = %391, %373
  %375 = load i64, i64* %25, align 8
  %376 = load i64, i64* %14, align 8
  %377 = icmp ult i64 %375, %376
  br i1 %377, label %378, label %392

378:                                              ; preds = %374
  %379 = load i64*, i64** %11, align 8
  %380 = load i64, i64* %25, align 8
  %381 = add i64 %380, 1
  %382 = call i64 @blocked(i64* %379, i64 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %390

384:                                              ; preds = %378
  %385 = load i64, i64* %25, align 8
  %386 = add i64 %385, 1
  store i64 %386, i64* %25, align 8
  %387 = load i64, i64* %21, align 8
  %388 = add i64 %387, 1
  store i64 %388, i64* %21, align 8
  %389 = getelementptr inbounds i64, i64* %46, i64 %387
  store i64 %386, i64* %389, align 8
  br label %391

390:                                              ; preds = %378
  br label %392

391:                                              ; preds = %384
  br label %374

392:                                              ; preds = %390, %374
  %393 = load i64, i64* %25, align 8
  %394 = load i64, i64* %14, align 8
  %395 = icmp ult i64 %393, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = load i64*, i64** %23, align 8
  store i64* %397, i64** %22, align 8
  br label %259

398:                                              ; preds = %392
  br label %417

399:                                              ; preds = %369
  %400 = load i64, i64* %25, align 8
  %401 = load i64, i64* %14, align 8
  %402 = icmp ult i64 %400, %401
  br i1 %402, label %403, label %416

403:                                              ; preds = %399
  %404 = load i64, i64* %9, align 8
  %405 = load i64, i64* %31, align 8
  %406 = getelementptr inbounds i64, i64* %40, i64 %405
  %407 = load i64, i64* %29, align 8
  %408 = load i64, i64* %31, align 8
  %409 = sub i64 %407, %408
  %410 = call i64* @find_composition_start(i64 %404, i64* %406, i64 %409)
  store i64* %410, i64** %22, align 8
  %411 = load i64*, i64** %22, align 8
  %412 = icmp ne i64* %411, null
  br i1 %412, label %413, label %415

413:                                              ; preds = %403
  %414 = load i64*, i64** %22, align 8
  store i64* %414, i64** %23, align 8
  br label %259

415:                                              ; preds = %403
  br label %416

416:                                              ; preds = %415, %399
  br label %417

417:                                              ; preds = %416, %398
  %418 = load i64, i64* %31, align 8
  %419 = load i64, i64* %29, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %421, label %447

421:                                              ; preds = %417
  %422 = load i64*, i64** %10, align 8
  %423 = load i64*, i64** %12, align 8
  %424 = load i64, i64* %26, align 8
  %425 = getelementptr inbounds i64, i64* %423, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds i64, i64* %422, i64 %426
  store i64* %427, i64** %22, align 8
  %428 = load i64*, i64** %13, align 8
  %429 = load i64, i64* %26, align 8
  %430 = getelementptr inbounds i64, i64* %428, i64 %429
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %32, align 8
  store i64 0, i64* %27, align 8
  br label %432

432:                                              ; preds = %443, %421
  %433 = load i64, i64* %27, align 8
  %434 = load i64, i64* %32, align 8
  %435 = icmp ult i64 %433, %434
  br i1 %435, label %436, label %446

436:                                              ; preds = %432
  %437 = load i64*, i64** %22, align 8
  %438 = getelementptr inbounds i64, i64* %437, i32 1
  store i64* %438, i64** %22, align 8
  %439 = load i64, i64* %437, align 8
  %440 = load i64, i64* %29, align 8
  %441 = add i64 %440, 1
  store i64 %441, i64* %29, align 8
  %442 = getelementptr inbounds i64, i64* %40, i64 %440
  store i64 %439, i64* %442, align 8
  br label %443

443:                                              ; preds = %436
  %444 = load i64, i64* %27, align 8
  %445 = add i64 %444, 1
  store i64 %445, i64* %27, align 8
  br label %432

446:                                              ; preds = %432
  br label %447

447:                                              ; preds = %446, %417
  store i64 0, i64* %28, align 8
  br label %448

448:                                              ; preds = %482, %447
  %449 = load i64, i64* %28, align 8
  %450 = load i64, i64* %21, align 8
  %451 = icmp ult i64 %449, %450
  br i1 %451, label %452, label %485

452:                                              ; preds = %448
  %453 = load i64*, i64** %10, align 8
  %454 = load i64*, i64** %12, align 8
  %455 = load i64, i64* %28, align 8
  %456 = getelementptr inbounds i64, i64* %46, i64 %455
  %457 = load i64, i64* %456, align 8
  %458 = getelementptr inbounds i64, i64* %454, i64 %457
  %459 = load i64, i64* %458, align 8
  %460 = getelementptr inbounds i64, i64* %453, i64 %459
  store i64* %460, i64** %22, align 8
  %461 = load i64*, i64** %13, align 8
  %462 = load i64, i64* %28, align 8
  %463 = getelementptr inbounds i64, i64* %46, i64 %462
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds i64, i64* %461, i64 %464
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %32, align 8
  store i64 0, i64* %27, align 8
  br label %467

467:                                              ; preds = %478, %452
  %468 = load i64, i64* %27, align 8
  %469 = load i64, i64* %32, align 8
  %470 = icmp ult i64 %468, %469
  br i1 %470, label %471, label %481

471:                                              ; preds = %467
  %472 = load i64*, i64** %22, align 8
  %473 = getelementptr inbounds i64, i64* %472, i32 1
  store i64* %473, i64** %22, align 8
  %474 = load i64, i64* %472, align 8
  %475 = load i64, i64* %29, align 8
  %476 = add i64 %475, 1
  store i64 %476, i64* %29, align 8
  %477 = getelementptr inbounds i64, i64* %40, i64 %475
  store i64 %474, i64* %477, align 8
  br label %478

478:                                              ; preds = %471
  %479 = load i64, i64* %27, align 8
  %480 = add i64 %479, 1
  store i64 %480, i64* %27, align 8
  br label %467

481:                                              ; preds = %467
  br label %482

482:                                              ; preds = %481
  %483 = load i64, i64* %28, align 8
  %484 = add i64 %483, 1
  store i64 %484, i64* %28, align 8
  br label %448

485:                                              ; preds = %448
  br label %486

486:                                              ; preds = %485, %229, %96
  %487 = load i64, i64* %25, align 8
  %488 = add i64 %487, 1
  store i64 %488, i64* %25, align 8
  br label %55

489:                                              ; preds = %55
  %490 = load i64*, i64** %11, align 8
  %491 = load i64, i64* %14, align 8
  %492 = getelementptr inbounds i64, i64* %490, i64 %491
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @U8_COMBINING_CLASS_STARTER, align 8
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %496, label %648

496:                                              ; preds = %489
  %497 = load i64**, i64*** %15, align 8
  %498 = load i64*, i64** %497, align 8
  store i64* %498, i64** %22, align 8
  %499 = load i64, i64* %29, align 8
  %500 = load i64*, i64** %13, align 8
  %501 = load i64, i64* %14, align 8
  %502 = getelementptr inbounds i64, i64* %500, i64 %501
  %503 = load i64, i64* %502, align 8
  %504 = sub i64 %499, %503
  store i64 %504, i64* %31, align 8
  br label %505

505:                                              ; preds = %643, %496
  %506 = load i64*, i64** %22, align 8
  %507 = load i64*, i64** %16, align 8
  %508 = icmp ult i64* %506, %507
  br i1 %508, label %509, label %644

509:                                              ; preds = %505
  %510 = load i64*, i64** @u8_number_of_bytes, align 8
  %511 = load i64*, i64** %22, align 8
  %512 = load i64, i64* %511, align 8
  %513 = getelementptr inbounds i64, i64* %510, i64 %512
  %514 = load i64, i64* %513, align 8
  store i64 %514, i64* %32, align 8
  %515 = load i64, i64* %32, align 8
  %516 = icmp ule i64 %515, 1
  br i1 %516, label %523, label %517

517:                                              ; preds = %509
  %518 = load i64*, i64** %22, align 8
  %519 = load i64, i64* %32, align 8
  %520 = getelementptr inbounds i64, i64* %518, i64 %519
  %521 = load i64*, i64** %16, align 8
  %522 = icmp ugt i64* %520, %521
  br i1 %522, label %523, label %524

523:                                              ; preds = %517, %509
  br label %644

524:                                              ; preds = %517
  %525 = load i64*, i64** %22, align 8
  store i64* %525, i64** %23, align 8
  store i64 0, i64* %25, align 8
  br label %526

526:                                              ; preds = %536, %524
  %527 = load i64, i64* %25, align 8
  %528 = load i64, i64* %32, align 8
  %529 = icmp ult i64 %527, %528
  br i1 %529, label %530, label %539

530:                                              ; preds = %526
  %531 = load i64*, i64** %22, align 8
  %532 = getelementptr inbounds i64, i64* %531, i32 1
  store i64* %532, i64** %22, align 8
  %533 = load i64, i64* %531, align 8
  %534 = load i64, i64* %25, align 8
  %535 = getelementptr inbounds i64, i64* %43, i64 %534
  store i64 %533, i64* %535, align 8
  br label %536

536:                                              ; preds = %530
  %537 = load i64, i64* %25, align 8
  %538 = add i64 %537, 1
  store i64 %538, i64* %25, align 8
  br label %526

539:                                              ; preds = %526
  %540 = load i64, i64* %9, align 8
  %541 = load i64, i64* %31, align 8
  %542 = getelementptr inbounds i64, i64* %40, i64 %541
  %543 = load i64, i64* %29, align 8
  %544 = load i64, i64* %31, align 8
  %545 = sub i64 %543, %544
  %546 = call i64* @find_composition_start(i64 %540, i64* %542, i64 %545)
  store i64* %546, i64** %24, align 8
  %547 = load i64*, i64** %24, align 8
  %548 = icmp eq i64* %547, null
  br i1 %548, label %549, label %551

549:                                              ; preds = %539
  %550 = load i64*, i64** %23, align 8
  store i64* %550, i64** %22, align 8
  br label %644

551:                                              ; preds = %539
  %552 = load i64, i64* @B_TRUE, align 8
  store i64 %552, i64* %35, align 8
  %553 = load i64*, i64** %24, align 8
  %554 = getelementptr inbounds i64, i64* %553, i32 1
  store i64* %554, i64** %24, align 8
  %555 = load i64, i64* %553, align 8
  store i64 %555, i64* %30, align 8
  br label %556

556:                                              ; preds = %635, %551
  %557 = load i64, i64* %30, align 8
  %558 = icmp ugt i64 %557, 0
  br i1 %558, label %559, label %638

559:                                              ; preds = %556
  store i64 0, i64* %28, align 8
  br label %560

560:                                              ; preds = %573, %559
  %561 = load i64, i64* %28, align 8
  %562 = load i64, i64* %32, align 8
  %563 = icmp ult i64 %561, %562
  br i1 %563, label %564, label %578

564:                                              ; preds = %560
  %565 = load i64*, i64** %24, align 8
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* %28, align 8
  %568 = getelementptr inbounds i64, i64* %43, i64 %567
  %569 = load i64, i64* %568, align 8
  %570 = icmp ne i64 %566, %569
  br i1 %570, label %571, label %572

571:                                              ; preds = %564
  br label %578

572:                                              ; preds = %564
  br label %573

573:                                              ; preds = %572
  %574 = load i64*, i64** %24, align 8
  %575 = getelementptr inbounds i64, i64* %574, i32 1
  store i64* %575, i64** %24, align 8
  %576 = load i64, i64* %28, align 8
  %577 = add i64 %576, 1
  store i64 %577, i64* %28, align 8
  br label %560

578:                                              ; preds = %571, %560
  %579 = load i64, i64* %28, align 8
  %580 = load i64, i64* %32, align 8
  %581 = icmp uge i64 %579, %580
  br i1 %581, label %582, label %610

582:                                              ; preds = %578
  %583 = load i64*, i64** %24, align 8
  %584 = load i64, i64* %583, align 8
  %585 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %586 = icmp eq i64 %584, %585
  br i1 %586, label %587, label %610

587:                                              ; preds = %582
  %588 = load i64, i64* @B_FALSE, align 8
  store i64 %588, i64* %35, align 8
  %589 = load i64, i64* %31, align 8
  store i64 %589, i64* %29, align 8
  br label %590

590:                                              ; preds = %603, %587
  %591 = load i64*, i64** %24, align 8
  %592 = getelementptr inbounds i64, i64* %591, i32 1
  store i64* %592, i64** %24, align 8
  %593 = load i64, i64* %592, align 8
  %594 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %595 = icmp ne i64 %593, %594
  br i1 %595, label %596, label %609

596:                                              ; preds = %590
  %597 = load i64, i64* %29, align 8
  %598 = load i32, i32* @U8_STREAM_SAFE_TEXT_MAX, align 4
  %599 = sext i32 %598 to i64
  %600 = icmp uge i64 %597, %599
  br i1 %600, label %601, label %603

601:                                              ; preds = %596
  %602 = load i64*, i64** %23, align 8
  store i64* %602, i64** %22, align 8
  br label %645

603:                                              ; preds = %596
  %604 = load i64*, i64** %24, align 8
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* %29, align 8
  %607 = add i64 %606, 1
  store i64 %607, i64* %29, align 8
  %608 = getelementptr inbounds i64, i64* %40, i64 %606
  store i64 %605, i64* %608, align 8
  br label %590

609:                                              ; preds = %590
  br label %638

610:                                              ; preds = %582, %578
  %611 = load i64*, i64** %24, align 8
  %612 = load i64, i64* %611, align 8
  %613 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %614 = icmp ne i64 %612, %613
  br i1 %614, label %615, label %624

615:                                              ; preds = %610
  br label %616

616:                                              ; preds = %622, %615
  %617 = load i64*, i64** %24, align 8
  %618 = getelementptr inbounds i64, i64* %617, i32 1
  store i64* %618, i64** %24, align 8
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %621 = icmp ne i64 %619, %620
  br i1 %621, label %622, label %623

622:                                              ; preds = %616
  br label %616

623:                                              ; preds = %616
  br label %624

624:                                              ; preds = %623, %610
  br label %625

625:                                              ; preds = %631, %624
  %626 = load i64*, i64** %24, align 8
  %627 = getelementptr inbounds i64, i64* %626, i32 1
  store i64* %627, i64** %24, align 8
  %628 = load i64, i64* %627, align 8
  %629 = load i64, i64* @U8_TBL_ELEMENT_FILLER, align 8
  %630 = icmp ne i64 %628, %629
  br i1 %630, label %631, label %632

631:                                              ; preds = %625
  br label %625

632:                                              ; preds = %625
  %633 = load i64*, i64** %24, align 8
  %634 = getelementptr inbounds i64, i64* %633, i32 1
  store i64* %634, i64** %24, align 8
  br label %635

635:                                              ; preds = %632
  %636 = load i64, i64* %30, align 8
  %637 = add i64 %636, -1
  store i64 %637, i64* %30, align 8
  br label %556

638:                                              ; preds = %609, %556
  %639 = load i64, i64* %35, align 8
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %641, label %643

641:                                              ; preds = %638
  %642 = load i64*, i64** %23, align 8
  store i64* %642, i64** %22, align 8
  br label %644

643:                                              ; preds = %638
  br label %505

644:                                              ; preds = %641, %549, %523, %505
  br label %645

645:                                              ; preds = %644, %601
  %646 = load i64*, i64** %22, align 8
  %647 = load i64**, i64*** %15, align 8
  store i64* %646, i64** %647, align 8
  br label %648

648:                                              ; preds = %645, %489
  store i64 0, i64* %25, align 8
  br label %649

649:                                              ; preds = %660, %648
  %650 = load i64, i64* %25, align 8
  %651 = load i64, i64* %29, align 8
  %652 = icmp ult i64 %650, %651
  br i1 %652, label %653, label %663

653:                                              ; preds = %649
  %654 = load i64, i64* %25, align 8
  %655 = getelementptr inbounds i64, i64* %40, i64 %654
  %656 = load i64, i64* %655, align 8
  %657 = load i64*, i64** %10, align 8
  %658 = load i64, i64* %25, align 8
  %659 = getelementptr inbounds i64, i64* %657, i64 %658
  store i64 %656, i64* %659, align 8
  br label %660

660:                                              ; preds = %653
  %661 = load i64, i64* %25, align 8
  %662 = add i64 %661, 1
  store i64 %662, i64* %25, align 8
  br label %649

663:                                              ; preds = %649
  %664 = load i64*, i64** %10, align 8
  %665 = load i64, i64* %29, align 8
  %666 = getelementptr inbounds i64, i64* %664, i64 %665
  store i64 0, i64* %666, align 8
  %667 = load i64, i64* %29, align 8
  %668 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %668)
  ret i64 %667
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @U8_PUT_3BYTES_INTO_UTF32(i32, i64, i64, i64) #2

declare dso_local i64 @U8_HANGUL_JAMO_L(i32) #2

declare dso_local i64 @U8_HANGUL_JAMO_V(i32) #2

declare dso_local i64 @U8_HANGUL_JAMO_T(i32) #2

declare dso_local i32 @U8_SAVE_HANGUL_AS_UTF8(i64*, i32, i32, i32, i32) #2

declare dso_local i64* @find_composition_start(i64, i64*, i64) #2

declare dso_local i64 @blocked(i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
