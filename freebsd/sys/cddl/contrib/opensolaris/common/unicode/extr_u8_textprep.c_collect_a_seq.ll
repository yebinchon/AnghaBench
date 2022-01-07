; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_collect_a_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_collect_a_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U8_MAX_CHARS_A_SEQ = common dso_local global i32 0, align 4
@U8_MB_CUR_MAX = common dso_local global i32 0, align 4
@U8_STREAM_SAFE_TEXT_MAX = common dso_local global i32 0, align 4
@u8_number_of_bytes = common dso_local global i32* null, align 8
@EILSEQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@U8_STATE_START = common dso_local global i64 0, align 8
@U8_STATE_COMBINING_MARK = common dso_local global i64 0, align 8
@U8_HANGUL_JAMO_1ST_BYTE = common dso_local global i64 0, align 8
@U8_STATE_HANGUL_LV = common dso_local global i64 0, align 8
@U8_STATE_HANGUL_LVT = common dso_local global i64 0, align 8
@U8_COMBINING_CLASS_STARTER = common dso_local global i64 0, align 8
@U8_UPPER_LIMIT_IN_A_SEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64**, i64*, i64, i64, i64, i64, i64, i32*, i64*)* @collect_a_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @collect_a_seq(i64 %0, i64* %1, i64** %2, i64* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i32* %9, i64* %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i64 %0, i64* %13, align 8
  store i64* %1, i64** %14, align 8
  store i64** %2, i64*** %15, align 8
  store i64* %3, i64** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store i32* %9, i32** %22, align 8
  store i64* %10, i64** %23, align 8
  %42 = load i32, i32* @U8_MAX_CHARS_A_SEQ, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %31, align 8
  %45 = alloca i64, i64 %43, align 16
  store i64 %43, i64* %32, align 8
  %46 = load i32, i32* @U8_MAX_CHARS_A_SEQ, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i64, i64 %47, align 16
  store i64 %47, i64* %33, align 8
  %49 = load i32, i32* @U8_MAX_CHARS_A_SEQ, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i64, i64 %50, align 16
  store i64 %50, i64* %34, align 8
  %52 = load i32, i32* @U8_MB_CUR_MAX, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i64, i64 %53, align 16
  store i64 %53, i64* %35, align 8
  %55 = load i32, i32* @U8_STREAM_SAFE_TEXT_MAX, align 4
  %56 = add nsw i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = alloca i64, i64 %57, align 16
  store i64 %57, i64* %36, align 8
  %59 = load i64**, i64*** %15, align 8
  %60 = load i64*, i64** %59, align 8
  store i64* %60, i64** %24, align 8
  %61 = load i64*, i64** %24, align 8
  %62 = load i64*, i64** %16, align 8
  %63 = icmp uge i64* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %11
  %65 = load i64*, i64** %14, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 0, i64* %66, align 8
  store i64 0, i64* %12, align 8
  store i32 1, i32* %41, align 4
  br label %587

67:                                               ; preds = %11
  %68 = load i32*, i32** @u8_number_of_bytes, align 8
  %69 = load i64*, i64** %24, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %25, align 4
  %73 = load i32, i32* %25, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load i32, i32* @EILSEQ, align 4
  %77 = load i32*, i32** %22, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i64*, i64** %24, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %24, align 8
  %80 = load i64, i64* %78, align 8
  %81 = load i64*, i64** %14, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  store i64 %80, i64* %82, align 8
  %83 = load i64*, i64** %14, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  store i64 0, i64* %84, align 8
  %85 = load i64*, i64** %24, align 8
  %86 = load i64**, i64*** %15, align 8
  store i64* %85, i64** %86, align 8
  store i64 1, i64* %12, align 8
  store i32 1, i32* %41, align 4
  br label %587

87:                                               ; preds = %67
  %88 = load i32, i32* %25, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %119

90:                                               ; preds = %87
  %91 = load i64, i64* %17, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i64*, i64** %24, align 8
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @U8_ASCII_TOUPPER(i64 %95)
  %97 = load i64*, i64** %14, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 %96, i64* %98, align 8
  br label %114

99:                                               ; preds = %90
  %100 = load i64, i64* %18, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i64*, i64** %24, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @U8_ASCII_TOLOWER(i64 %104)
  %106 = load i64*, i64** %14, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 %105, i64* %107, align 8
  br label %113

108:                                              ; preds = %99
  %109 = load i64*, i64** %24, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %14, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %108, %102
  br label %114

114:                                              ; preds = %113, %93
  %115 = load i64*, i64** %24, align 8
  %116 = getelementptr inbounds i64, i64* %115, i32 1
  store i64* %116, i64** %24, align 8
  %117 = load i64*, i64** %14, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  store i64 0, i64* %118, align 8
  br label %187

119:                                              ; preds = %87
  %120 = load i64*, i64** %24, align 8
  %121 = load i32, i32* %25, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64*, i64** %16, align 8
  %125 = icmp ugt i64* %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %119
  %127 = load i32, i32* @EINVAL, align 4
  %128 = load i32*, i32** %22, align 8
  store i32 %127, i32* %128, align 4
  store i64 0, i64* %27, align 8
  br label %129

129:                                              ; preds = %133, %126
  %130 = load i64*, i64** %24, align 8
  %131 = load i64*, i64** %16, align 8
  %132 = icmp ult i64* %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i64*, i64** %24, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %24, align 8
  %136 = load i64, i64* %134, align 8
  %137 = load i64*, i64** %14, align 8
  %138 = load i64, i64* %27, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %27, align 8
  %140 = getelementptr inbounds i64, i64* %137, i64 %138
  store i64 %136, i64* %140, align 8
  br label %129

141:                                              ; preds = %129
  %142 = load i64*, i64** %14, align 8
  %143 = load i64, i64* %27, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  store i64 0, i64* %144, align 8
  %145 = load i64*, i64** %24, align 8
  %146 = load i64**, i64*** %15, align 8
  store i64* %145, i64** %146, align 8
  %147 = load i64, i64* %27, align 8
  store i64 %147, i64* %12, align 8
  store i32 1, i32* %41, align 4
  br label %587

148:                                              ; preds = %119
  %149 = load i64, i64* %17, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i64, i64* %18, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151, %148
  %155 = load i64, i64* %13, align 8
  %156 = load i64*, i64** %14, align 8
  %157 = load i64*, i64** %24, align 8
  %158 = load i32, i32* %25, align 4
  %159 = load i64, i64* %17, align 8
  %160 = call i64 @do_case_conv(i64 %155, i64* %156, i64* %157, i32 %158, i64 %159)
  store i64 %160, i64* %27, align 8
  %161 = load i32, i32* %25, align 4
  %162 = load i64*, i64** %24, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  store i64* %164, i64** %24, align 8
  %165 = load i64, i64* %27, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %25, align 4
  br label %185

167:                                              ; preds = %151
  store i64 0, i64* %27, align 8
  br label %168

168:                                              ; preds = %173, %167
  %169 = load i64, i64* %27, align 8
  %170 = load i32, i32* %25, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp ult i64 %169, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load i64*, i64** %24, align 8
  %175 = getelementptr inbounds i64, i64* %174, i32 1
  store i64* %175, i64** %24, align 8
  %176 = load i64, i64* %174, align 8
  %177 = load i64*, i64** %14, align 8
  %178 = load i64, i64* %27, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %27, align 8
  %180 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 %176, i64* %180, align 8
  br label %168

181:                                              ; preds = %168
  %182 = load i64*, i64** %14, align 8
  %183 = load i64, i64* %27, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64 0, i64* %184, align 8
  br label %185

185:                                              ; preds = %181, %154
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %114
  %188 = load i64, i64* %19, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* %20, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %582

193:                                              ; preds = %190, %187
  %194 = load i32, i32* %25, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i64, i64* @U8_STATE_START, align 8
  %198 = load i64*, i64** %23, align 8
  store i64 %197, i64* %198, align 8
  store i32 1, i32* %26, align 4
  %199 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 0, i64* %199, align 16
  %200 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 0, i64* %200, align 16
  %201 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 1, i64* %201, align 16
  store i64 1, i64* %38, align 8
  br label %261

202:                                              ; preds = %193
  %203 = load i64, i64* %13, align 8
  %204 = load i64*, i64** %14, align 8
  %205 = load i64*, i64** %14, align 8
  %206 = load i32, i32* %25, align 4
  %207 = load i64, i64* %19, align 8
  %208 = load i64*, i64** %23, align 8
  %209 = call i8* @do_decomp(i64 %203, i64* %204, i64* %205, i32 %206, i64 %207, i64* %208)
  %210 = ptrtoint i8* %209 to i32
  store i32 %210, i32* %26, align 4
  store i64 0, i64* %38, align 8
  store i64 0, i64* %27, align 8
  br label %211

211:                                              ; preds = %216, %202
  %212 = load i64, i64* %27, align 8
  %213 = load i32, i32* %26, align 4
  %214 = sext i32 %213 to i64
  %215 = icmp ult i64 %212, %214
  br i1 %215, label %216, label %245

216:                                              ; preds = %211
  %217 = load i32*, i32** @u8_number_of_bytes, align 8
  %218 = load i64*, i64** %14, align 8
  %219 = load i64, i64* %27, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds i32, i32* %217, i64 %221
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %25, align 4
  %224 = load i64, i64* %13, align 8
  %225 = load i64*, i64** %14, align 8
  %226 = load i64, i64* %27, align 8
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  %228 = load i32, i32* %25, align 4
  %229 = call i64 @combining_class(i64 %224, i64* %227, i32 %228)
  %230 = load i64, i64* %38, align 8
  %231 = getelementptr inbounds i64, i64* %45, i64 %230
  store i64 %229, i64* %231, align 8
  %232 = load i64, i64* %27, align 8
  %233 = load i64, i64* %38, align 8
  %234 = getelementptr inbounds i64, i64* %51, i64 %233
  store i64 %232, i64* %234, align 8
  %235 = load i32, i32* %25, align 4
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* %38, align 8
  %238 = getelementptr inbounds i64, i64* %48, i64 %237
  store i64 %236, i64* %238, align 8
  %239 = load i64, i64* %38, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %38, align 8
  %241 = load i32, i32* %25, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %27, align 8
  %244 = add i64 %243, %242
  store i64 %244, i64* %27, align 8
  br label %211

245:                                              ; preds = %211
  %246 = load i64*, i64** %23, align 8
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @U8_STATE_START, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %260

250:                                              ; preds = %245
  %251 = load i64, i64* %38, align 8
  %252 = sub i64 %251, 1
  %253 = getelementptr inbounds i64, i64* %45, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load i64, i64* @U8_STATE_COMBINING_MARK, align 8
  %258 = load i64*, i64** %23, align 8
  store i64 %257, i64* %258, align 8
  br label %259

259:                                              ; preds = %256, %250
  br label %260

260:                                              ; preds = %259, %245
  br label %261

261:                                              ; preds = %260, %196
  %262 = load i64, i64* %38, align 8
  store i64 %262, i64* %39, align 8
  br label %263

263:                                              ; preds = %518, %261
  %264 = load i64*, i64** %24, align 8
  %265 = load i64*, i64** %16, align 8
  %266 = icmp ult i64* %264, %265
  br i1 %266, label %267, label %519

267:                                              ; preds = %263
  %268 = load i32*, i32** @u8_number_of_bytes, align 8
  %269 = load i64*, i64** %24, align 8
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %25, align 4
  %273 = load i32, i32* %25, align 4
  %274 = icmp sle i32 %273, 1
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %519

276:                                              ; preds = %267
  %277 = load i64*, i64** %24, align 8
  %278 = load i32, i32* %25, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %277, i64 %279
  %281 = load i64*, i64** %16, align 8
  %282 = icmp ugt i64* %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  br label %519

284:                                              ; preds = %276
  %285 = load i64*, i64** %24, align 8
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @U8_HANGUL_JAMO_1ST_BYTE, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %318

289:                                              ; preds = %284
  %290 = load i32, i32* %40, align 4
  %291 = load i64*, i64** %24, align 8
  %292 = load i64, i64* %291, align 8
  %293 = load i64*, i64** %24, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 1
  %295 = load i64, i64* %294, align 8
  %296 = load i64*, i64** %24, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 2
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @U8_PUT_3BYTES_INTO_UTF32(i32 %290, i64 %292, i64 %295, i64 %298)
  %300 = load i64*, i64** %23, align 8
  %301 = load i64, i64* %300, align 8
  %302 = load i32, i32* %40, align 4
  %303 = call i64 @U8_HANGUL_COMPOSABLE_L_V(i64 %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %289
  store i64 0, i64* %27, align 8
  %306 = load i64, i64* @U8_STATE_HANGUL_LV, align 8
  %307 = load i64*, i64** %23, align 8
  store i64 %306, i64* %307, align 8
  br label %341

308:                                              ; preds = %289
  %309 = load i64*, i64** %23, align 8
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* %40, align 4
  %312 = call i64 @U8_HANGUL_COMPOSABLE_LV_T(i64 %310, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %308
  store i64 0, i64* %27, align 8
  %315 = load i64, i64* @U8_STATE_HANGUL_LVT, align 8
  %316 = load i64*, i64** %23, align 8
  store i64 %315, i64* %316, align 8
  br label %341

317:                                              ; preds = %308
  br label %318

318:                                              ; preds = %317, %284
  %319 = load i64, i64* %13, align 8
  %320 = load i64*, i64** %24, align 8
  %321 = load i32, i32* %25, align 4
  %322 = call i64 @combining_class(i64 %319, i64* %320, i32 %321)
  store i64 %322, i64* %27, align 8
  %323 = load i64, i64* %27, align 8
  %324 = load i64, i64* @U8_COMBINING_CLASS_STARTER, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %519

327:                                              ; preds = %318
  %328 = load i64*, i64** %23, align 8
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @U8_STATE_START, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %338

332:                                              ; preds = %327
  %333 = load i64*, i64** %23, align 8
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @U8_STATE_COMBINING_MARK, align 8
  %336 = icmp ne i64 %334, %335
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  br label %519

338:                                              ; preds = %332, %327
  %339 = load i64, i64* @U8_STATE_COMBINING_MARK, align 8
  %340 = load i64*, i64** %23, align 8
  store i64 %339, i64* %340, align 8
  br label %341

341:                                              ; preds = %338, %314, %305
  %342 = load i64, i64* %38, align 8
  %343 = load i64, i64* @U8_UPPER_LIMIT_IN_A_SEQ, align 8
  %344 = icmp uge i64 %342, %343
  br i1 %344, label %345, label %369

345:                                              ; preds = %341
  br label %346

346:                                              ; preds = %418, %345
  %347 = load i64, i64* @U8_STATE_START, align 8
  %348 = load i64*, i64** %23, align 8
  store i64 %347, i64* %348, align 8
  %349 = load i64, i64* %38, align 8
  %350 = getelementptr inbounds i64, i64* %45, i64 %349
  store i64 0, i64* %350, align 8
  %351 = load i32, i32* %26, align 4
  %352 = sext i32 %351 to i64
  %353 = load i64, i64* %38, align 8
  %354 = getelementptr inbounds i64, i64* %51, i64 %353
  store i64 %352, i64* %354, align 8
  %355 = load i64, i64* %38, align 8
  %356 = getelementptr inbounds i64, i64* %48, i64 %355
  store i64 2, i64* %356, align 8
  %357 = load i64, i64* %38, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %38, align 8
  %359 = load i64*, i64** %14, align 8
  %360 = load i32, i32* %26, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %26, align 4
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i64, i64* %359, i64 %362
  store i64 205, i64* %363, align 8
  %364 = load i64*, i64** %14, align 8
  %365 = load i32, i32* %26, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %26, align 4
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i64, i64* %364, i64 %367
  store i64 143, i64* %368, align 8
  br label %519

369:                                              ; preds = %341
  %370 = load i64*, i64** %23, align 8
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @U8_STATE_COMBINING_MARK, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %451

374:                                              ; preds = %369
  %375 = load i64, i64* %38, align 8
  store i64 %375, i64* %29, align 8
  %376 = load i32, i32* %25, align 4
  %377 = sext i32 %376 to i64
  store i64 %377, i64* %30, align 8
  %378 = load i64, i64* %13, align 8
  %379 = load i64*, i64** %24, align 8
  %380 = load i32, i32* %25, align 4
  %381 = load i64, i64* %19, align 8
  %382 = load i64*, i64** %23, align 8
  %383 = call i8* @do_decomp(i64 %378, i64* %58, i64* %379, i32 %380, i64 %381, i64* %382)
  %384 = ptrtoint i8* %383 to i64
  store i64 %384, i64* %27, align 8
  store i64 0, i64* %28, align 8
  br label %385

385:                                              ; preds = %420, %374
  %386 = load i64, i64* %28, align 8
  %387 = load i64, i64* %27, align 8
  %388 = icmp ult i64 %386, %387
  br i1 %388, label %389, label %425

389:                                              ; preds = %385
  %390 = load i32*, i32** @u8_number_of_bytes, align 8
  %391 = load i64, i64* %28, align 8
  %392 = getelementptr inbounds i64, i64* %58, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds i32, i32* %390, i64 %393
  %395 = load i32, i32* %394, align 4
  store i32 %395, i32* %25, align 4
  %396 = load i64, i64* %13, align 8
  %397 = load i64, i64* %28, align 8
  %398 = getelementptr inbounds i64, i64* %58, i64 %397
  %399 = load i32, i32* %25, align 4
  %400 = call i64 @combining_class(i64 %396, i64* %398, i32 %399)
  %401 = load i64, i64* %38, align 8
  %402 = getelementptr inbounds i64, i64* %45, i64 %401
  store i64 %400, i64* %402, align 8
  %403 = load i32, i32* %26, align 4
  %404 = sext i32 %403 to i64
  %405 = load i64, i64* %28, align 8
  %406 = add i64 %404, %405
  %407 = load i64, i64* %38, align 8
  %408 = getelementptr inbounds i64, i64* %51, i64 %407
  store i64 %406, i64* %408, align 8
  %409 = load i32, i32* %25, align 4
  %410 = sext i32 %409 to i64
  %411 = load i64, i64* %38, align 8
  %412 = getelementptr inbounds i64, i64* %48, i64 %411
  store i64 %410, i64* %412, align 8
  %413 = load i64, i64* %38, align 8
  %414 = add i64 %413, 1
  store i64 %414, i64* %38, align 8
  %415 = load i64, i64* %38, align 8
  %416 = load i64, i64* @U8_UPPER_LIMIT_IN_A_SEQ, align 8
  %417 = icmp uge i64 %415, %416
  br i1 %417, label %418, label %420

418:                                              ; preds = %389
  %419 = load i64, i64* %29, align 8
  store i64 %419, i64* %38, align 8
  br label %346

420:                                              ; preds = %389
  %421 = load i32, i32* %25, align 4
  %422 = sext i32 %421 to i64
  %423 = load i64, i64* %28, align 8
  %424 = add i64 %423, %422
  store i64 %424, i64* %28, align 8
  br label %385

425:                                              ; preds = %385
  %426 = load i64, i64* @U8_STATE_COMBINING_MARK, align 8
  %427 = load i64*, i64** %23, align 8
  store i64 %426, i64* %427, align 8
  %428 = load i64, i64* %27, align 8
  %429 = trunc i64 %428 to i32
  store i32 %429, i32* %25, align 4
  %430 = load i64, i64* %30, align 8
  %431 = load i64*, i64** %24, align 8
  %432 = getelementptr inbounds i64, i64* %431, i64 %430
  store i64* %432, i64** %24, align 8
  store i64 0, i64* %27, align 8
  br label %433

433:                                              ; preds = %447, %425
  %434 = load i64, i64* %27, align 8
  %435 = load i32, i32* %25, align 4
  %436 = sext i32 %435 to i64
  %437 = icmp ult i64 %434, %436
  br i1 %437, label %438, label %450

438:                                              ; preds = %433
  %439 = load i64, i64* %27, align 8
  %440 = getelementptr inbounds i64, i64* %58, i64 %439
  %441 = load i64, i64* %440, align 8
  %442 = load i64*, i64** %14, align 8
  %443 = load i32, i32* %26, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %26, align 4
  %445 = sext i32 %443 to i64
  %446 = getelementptr inbounds i64, i64* %442, i64 %445
  store i64 %441, i64* %446, align 8
  br label %447

447:                                              ; preds = %438
  %448 = load i64, i64* %27, align 8
  %449 = add i64 %448, 1
  store i64 %449, i64* %27, align 8
  br label %433

450:                                              ; preds = %433
  br label %483

451:                                              ; preds = %369
  %452 = load i64, i64* %27, align 8
  %453 = load i64, i64* %38, align 8
  %454 = getelementptr inbounds i64, i64* %45, i64 %453
  store i64 %452, i64* %454, align 8
  %455 = load i32, i32* %26, align 4
  %456 = sext i32 %455 to i64
  %457 = load i64, i64* %38, align 8
  %458 = getelementptr inbounds i64, i64* %51, i64 %457
  store i64 %456, i64* %458, align 8
  %459 = load i32, i32* %25, align 4
  %460 = sext i32 %459 to i64
  %461 = load i64, i64* %38, align 8
  %462 = getelementptr inbounds i64, i64* %48, i64 %461
  store i64 %460, i64* %462, align 8
  %463 = load i64, i64* %38, align 8
  %464 = add i64 %463, 1
  store i64 %464, i64* %38, align 8
  store i64 0, i64* %27, align 8
  br label %465

465:                                              ; preds = %479, %451
  %466 = load i64, i64* %27, align 8
  %467 = load i32, i32* %25, align 4
  %468 = sext i32 %467 to i64
  %469 = icmp ult i64 %466, %468
  br i1 %469, label %470, label %482

470:                                              ; preds = %465
  %471 = load i64*, i64** %24, align 8
  %472 = getelementptr inbounds i64, i64* %471, i32 1
  store i64* %472, i64** %24, align 8
  %473 = load i64, i64* %471, align 8
  %474 = load i64*, i64** %14, align 8
  %475 = load i32, i32* %26, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %26, align 4
  %477 = sext i32 %475 to i64
  %478 = getelementptr inbounds i64, i64* %474, i64 %477
  store i64 %473, i64* %478, align 8
  br label %479

479:                                              ; preds = %470
  %480 = load i64, i64* %27, align 8
  %481 = add i64 %480, 1
  store i64 %481, i64* %27, align 8
  br label %465

482:                                              ; preds = %465
  br label %483

483:                                              ; preds = %482, %450
  %484 = load i64, i64* %17, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %516

486:                                              ; preds = %483
  %487 = load i32, i32* %25, align 4
  %488 = icmp sge i32 %487, 2
  br i1 %488, label %489, label %516

489:                                              ; preds = %486
  %490 = load i64*, i64** %14, align 8
  %491 = load i32, i32* %26, align 4
  %492 = sub nsw i32 %491, 2
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i64, i64* %490, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = icmp eq i64 %495, 205
  br i1 %496, label %497, label %516

497:                                              ; preds = %489
  %498 = load i64*, i64** %14, align 8
  %499 = load i32, i32* %26, align 4
  %500 = sub nsw i32 %499, 1
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i64, i64* %498, i64 %501
  %503 = load i64, i64* %502, align 8
  %504 = icmp eq i64 %503, 133
  br i1 %504, label %505, label %516

505:                                              ; preds = %497
  %506 = load i64*, i64** %14, align 8
  %507 = load i32, i32* %26, align 4
  %508 = sub nsw i32 %507, 2
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i64, i64* %506, i64 %509
  store i64 206, i64* %510, align 8
  %511 = load i64*, i64** %14, align 8
  %512 = load i32, i32* %26, align 4
  %513 = sub nsw i32 %512, 1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i64, i64* %511, i64 %514
  store i64 153, i64* %515, align 8
  br label %516

516:                                              ; preds = %505, %497, %489, %486, %483
  br label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517
  br label %263

519:                                              ; preds = %346, %337, %326, %283, %275, %263
  %520 = load i64, i64* %38, align 8
  %521 = add i64 %520, -1
  store i64 %521, i64* %38, align 8
  %522 = load i64, i64* %38, align 8
  %523 = load i64, i64* %39, align 8
  %524 = icmp uge i64 %522, %523
  br i1 %524, label %525, label %564

525:                                              ; preds = %519
  store i64 0, i64* %27, align 8
  br label %526

526:                                              ; preds = %560, %525
  %527 = load i64, i64* %27, align 8
  %528 = load i64, i64* %38, align 8
  %529 = icmp ult i64 %527, %528
  br i1 %529, label %530, label %563

530:                                              ; preds = %526
  %531 = load i64, i64* %38, align 8
  store i64 %531, i64* %28, align 8
  br label %532

532:                                              ; preds = %556, %530
  %533 = load i64, i64* %28, align 8
  %534 = load i64, i64* %27, align 8
  %535 = icmp ugt i64 %533, %534
  br i1 %535, label %536, label %559

536:                                              ; preds = %532
  %537 = load i64, i64* %28, align 8
  %538 = getelementptr inbounds i64, i64* %45, i64 %537
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %555

541:                                              ; preds = %536
  %542 = load i64, i64* %28, align 8
  %543 = sub i64 %542, 1
  %544 = getelementptr inbounds i64, i64* %45, i64 %543
  %545 = load i64, i64* %544, align 8
  %546 = load i64, i64* %28, align 8
  %547 = getelementptr inbounds i64, i64* %45, i64 %546
  %548 = load i64, i64* %547, align 8
  %549 = icmp ugt i64 %545, %548
  br i1 %549, label %550, label %555

550:                                              ; preds = %541
  %551 = load i64, i64* %28, align 8
  %552 = sub i64 %551, 1
  %553 = load i64, i64* %28, align 8
  %554 = call i32 @U8_SWAP_COMB_MARKS(i64 %552, i64 %553)
  br label %555

555:                                              ; preds = %550, %541, %536
  br label %556

556:                                              ; preds = %555
  %557 = load i64, i64* %28, align 8
  %558 = add i64 %557, -1
  store i64 %558, i64* %28, align 8
  br label %532

559:                                              ; preds = %532
  br label %560

560:                                              ; preds = %559
  %561 = load i64, i64* %27, align 8
  %562 = add i64 %561, 1
  store i64 %562, i64* %27, align 8
  br label %526

563:                                              ; preds = %526
  br label %564

564:                                              ; preds = %563, %519
  %565 = load i64*, i64** %24, align 8
  %566 = load i64**, i64*** %15, align 8
  store i64* %565, i64** %566, align 8
  %567 = load i64, i64* %21, align 8
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %576, label %569

569:                                              ; preds = %564
  %570 = load i64*, i64** %14, align 8
  %571 = load i32, i32* %26, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i64, i64* %570, i64 %572
  store i64 0, i64* %573, align 8
  %574 = load i32, i32* %26, align 4
  %575 = sext i32 %574 to i64
  store i64 %575, i64* %12, align 8
  store i32 1, i32* %41, align 4
  br label %587

576:                                              ; preds = %564
  %577 = load i64, i64* %13, align 8
  %578 = load i64*, i64** %14, align 8
  %579 = load i64, i64* %38, align 8
  %580 = load i64*, i64** %16, align 8
  %581 = call i32 @do_composition(i64 %577, i64* %578, i64* %45, i64* %51, i64* %48, i64 %579, i64** %24, i64* %580)
  store i32 %581, i32* %25, align 4
  br label %582

582:                                              ; preds = %576, %190
  %583 = load i64*, i64** %24, align 8
  %584 = load i64**, i64*** %15, align 8
  store i64* %583, i64** %584, align 8
  %585 = load i32, i32* %25, align 4
  %586 = sext i32 %585 to i64
  store i64 %586, i64* %12, align 8
  store i32 1, i32* %41, align 4
  br label %587

587:                                              ; preds = %582, %569, %141, %75, %64
  %588 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %588)
  %589 = load i64, i64* %12, align 8
  ret i64 %589
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @U8_ASCII_TOUPPER(i64) #2

declare dso_local i64 @U8_ASCII_TOLOWER(i64) #2

declare dso_local i64 @do_case_conv(i64, i64*, i64*, i32, i64) #2

declare dso_local i8* @do_decomp(i64, i64*, i64*, i32, i64, i64*) #2

declare dso_local i64 @combining_class(i64, i64*, i32) #2

declare dso_local i32 @U8_PUT_3BYTES_INTO_UTF32(i32, i64, i64, i64) #2

declare dso_local i64 @U8_HANGUL_COMPOSABLE_L_V(i64, i32) #2

declare dso_local i64 @U8_HANGUL_COMPOSABLE_LV_T(i64, i32) #2

declare dso_local i32 @U8_SWAP_COMB_MARKS(i64, i64) #2

declare dso_local i32 @do_composition(i64, i64*, i64*, i64*, i64*, i64, i64**, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
