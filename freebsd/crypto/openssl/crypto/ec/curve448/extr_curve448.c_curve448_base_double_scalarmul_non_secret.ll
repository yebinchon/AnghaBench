; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_curve448.c_curve448_base_double_scalarmul_non_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/curve448/extr_curve448.c_curve448_base_double_scalarmul_non_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smvt_control = type { i32, i32 }

@C448_WNAF_VAR_TABLE_BITS = common dso_local global i32 0, align 4
@C448_WNAF_FIXED_TABLE_BITS = common dso_local global i32 0, align 4
@C448_SCALAR_BITS = common dso_local global i32 0, align 4
@curve448_point_identity = common dso_local global i32 0, align 4
@curve448_wnaf_base = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curve448_base_double_scalarmul_non_secret(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* @C448_WNAF_VAR_TABLE_BITS, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @C448_WNAF_FIXED_TABLE_BITS, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @C448_SCALAR_BITS, align 4
  %26 = load i32, i32* @C448_WNAF_VAR_TABLE_BITS, align 4
  %27 = add nsw i32 %26, 1
  %28 = sdiv i32 %25, %27
  %29 = add nsw i32 %28, 3
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca %struct.smvt_control, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %33 = load i32, i32* @C448_SCALAR_BITS, align 4
  %34 = load i32, i32* @C448_WNAF_FIXED_TABLE_BITS, align 4
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %33, %35
  %37 = add nsw i32 %36, 3
  %38 = zext i32 %37 to i64
  %39 = alloca %struct.smvt_control, i64 %38, align 16
  store i64 %38, i64* %13, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @recode_wnaf(%struct.smvt_control* %39, i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @recode_wnaf(%struct.smvt_control* %32, i32 %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @C448_WNAF_VAR_TABLE_BITS, align 4
  %47 = shl i32 1, %46
  %48 = zext i32 %47 to i64
  %49 = alloca %struct.smvt_control, i64 %48, align 16
  store i64 %48, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @prepare_wnaf_table(%struct.smvt_control* %49, i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %32, i64 0
  %54 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 16
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @curve448_point_identity, align 4
  %61 = call i32 @curve448_point_copy(i32 %59, i32 %60)
  store i32 1, i32* %20, align 4
  br label %310

62:                                               ; preds = %4
  %63 = load i32, i32* %19, align 4
  %64 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 0
  %65 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 16
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %32, i64 0
  %71 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %49, i64 %74
  %76 = bitcast %struct.smvt_control* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @pniels_to_pt(i32 %69, i64 %77)
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  br label %133

81:                                               ; preds = %62
  %82 = load i32, i32* %19, align 4
  %83 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 0
  %84 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 16
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %116

87:                                               ; preds = %81
  %88 = load i32, i32* %19, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %32, i64 0
  %93 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %49, i64 %96
  %98 = bitcast %struct.smvt_control* %97 to i64*
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @pniels_to_pt(i32 %91, i64 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32*, i32** @curve448_wnaf_base, align 8
  %103 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 0
  %104 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @add_niels_to_pt(i32 %101, i32 %109, i32 %110)
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %132

116:                                              ; preds = %87, %81
  %117 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 0
  %118 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 16
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32*, i32** @curve448_wnaf_base, align 8
  %122 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 0
  %123 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @niels_to_pt(i32 %120, i32 %128)
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %116, %90
  br label %133

133:                                              ; preds = %132, %68
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %285, %133
  %137 = load i32, i32* %19, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %288

139:                                              ; preds = %136
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %32, i64 %142
  %144 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %140, %145
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 %150
  %152 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %148, %153
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %22, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %19, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %139
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %22, align 4
  %165 = icmp ne i32 %164, 0
  br label %166

166:                                              ; preds = %163, %160
  %167 = phi i1 [ true, %160 ], [ %165, %163 ]
  %168 = xor i1 %167, true
  br label %169

169:                                              ; preds = %166, %139
  %170 = phi i1 [ false, %139 ], [ %168, %166 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @point_double_internal(i32 %156, i32 %157, i32 %171)
  %173 = load i32, i32* %21, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %236

175:                                              ; preds = %169
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %32, i64 %177
  %179 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @assert(i32 %180)
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %32, i64 %183
  %185 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %175
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %18, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %32, i64 %191
  %193 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %49, i64 %196
  %198 = load i32, i32* %19, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %188
  %201 = load i32, i32* %22, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  br label %204

204:                                              ; preds = %200, %188
  %205 = phi i1 [ false, %188 ], [ %203, %200 ]
  %206 = zext i1 %205 to i32
  %207 = bitcast %struct.smvt_control* %197 to i64*
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @add_pniels_to_pt(i32 %189, i64 %208, i32 %206)
  br label %233

210:                                              ; preds = %175
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %32, i64 %213
  %215 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 0, %216
  %218 = ashr i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %49, i64 %219
  %221 = load i32, i32* %19, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %210
  %224 = load i32, i32* %22, align 4
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  br label %227

227:                                              ; preds = %223, %210
  %228 = phi i1 [ false, %210 ], [ %226, %223 ]
  %229 = zext i1 %228 to i32
  %230 = bitcast %struct.smvt_control* %220 to i64*
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @sub_pniels_from_pt(i32 %211, i64 %231, i32 %229)
  br label %233

233:                                              ; preds = %227, %204
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  br label %236

236:                                              ; preds = %233, %169
  %237 = load i32, i32* %22, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %284

239:                                              ; preds = %236
  %240 = load i32, i32* %17, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 %241
  %243 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @assert(i32 %244)
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 %247
  %249 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %239
  %253 = load i32, i32* %5, align 4
  %254 = load i32*, i32** @curve448_wnaf_base, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 %256
  %258 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = ashr i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %254, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %19, align 4
  %265 = call i32 @add_niels_to_pt(i32 %253, i32 %263, i32 %264)
  br label %281

266:                                              ; preds = %239
  %267 = load i32, i32* %5, align 4
  %268 = load i32*, i32** @curve448_wnaf_base, align 8
  %269 = load i32, i32* %17, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %39, i64 %270
  %272 = getelementptr inbounds %struct.smvt_control, %struct.smvt_control* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 0, %273
  %275 = ashr i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %268, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %19, align 4
  %280 = call i32 @sub_niels_from_pt(i32 %267, i32 %278, i32 %279)
  br label %281

281:                                              ; preds = %266, %252
  %282 = load i32, i32* %17, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %17, align 4
  br label %284

284:                                              ; preds = %281, %236
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %19, align 4
  %287 = add nsw i32 %286, -1
  store i32 %287, i32* %19, align 4
  br label %136

288:                                              ; preds = %136
  %289 = mul nuw i64 8, %30
  %290 = trunc i64 %289 to i32
  %291 = call i32 @OPENSSL_cleanse(%struct.smvt_control* %32, i32 %290)
  %292 = mul nuw i64 8, %38
  %293 = trunc i64 %292 to i32
  %294 = call i32 @OPENSSL_cleanse(%struct.smvt_control* %39, i32 %293)
  %295 = mul nuw i64 8, %48
  %296 = trunc i64 %295 to i32
  %297 = call i32 @OPENSSL_cleanse(%struct.smvt_control* %49, i32 %296)
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %15, align 4
  %300 = icmp eq i32 %298, %299
  %301 = zext i1 %300 to i32
  %302 = call i32 @assert(i32 %301)
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* %14, align 4
  %306 = icmp eq i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert(i32 %307)
  %309 = load i32, i32* %14, align 4
  store i32 0, i32* %20, align 4
  br label %310

310:                                              ; preds = %288, %58
  %311 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %311)
  %312 = load i32, i32* %20, align 4
  switch i32 %312, label %314 [
    i32 0, label %313
    i32 1, label %313
  ]

313:                                              ; preds = %310, %310
  ret void

314:                                              ; preds = %310
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recode_wnaf(%struct.smvt_control*, i32, i32) #2

declare dso_local i32 @prepare_wnaf_table(%struct.smvt_control*, i32, i32) #2

declare dso_local i32 @curve448_point_copy(i32, i32) #2

declare dso_local i32 @pniels_to_pt(i32, i64) #2

declare dso_local i32 @add_niels_to_pt(i32, i32, i32) #2

declare dso_local i32 @niels_to_pt(i32, i32) #2

declare dso_local i32 @point_double_internal(i32, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @add_pniels_to_pt(i32, i64, i32) #2

declare dso_local i32 @sub_pniels_from_pt(i32, i64, i32) #2

declare dso_local i32 @sub_niels_from_pt(i32, i32, i32) #2

declare dso_local i32 @OPENSSL_cleanse(%struct.smvt_control*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
