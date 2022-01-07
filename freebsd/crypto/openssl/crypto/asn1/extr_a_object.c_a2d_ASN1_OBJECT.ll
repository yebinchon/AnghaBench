; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_object.c_a2d_ASN1_OBJECT.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_object.c_a2d_ASN1_OBJECT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_A2D_ASN1_OBJECT = common dso_local global i32 0, align 4
@ASN1_R_FIRST_NUM_TOO_LARGE = common dso_local global i32 0, align 4
@ASN1_R_MISSING_SECOND_NUMBER = common dso_local global i32 0, align 4
@ASN1_R_INVALID_SEPARATOR = common dso_local global i32 0, align 4
@ASN1_R_INVALID_DIGIT = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@ASN1_R_SECOND_NUMBER_TOO_LARGE = common dso_local global i32 0, align 4
@ASN1_R_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a2d_ASN1_OBJECT(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [24 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %23 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  store i8* %23, i8** %16, align 8
  store i32 24, i32* %17, align 4
  store i32* null, i32** %20, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %321

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %18, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %18, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp sge i32 %42, 48
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i32, i32* %13, align 4
  %46 = icmp sle i32 %45, 50
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 48
  store i32 %49, i32* %11, align 4
  br label %54

50:                                               ; preds = %44, %34
  %51 = load i32, i32* @ASN1_F_A2D_ASN1_OBJECT, align 4
  %52 = load i32, i32* @ASN1_R_FIRST_NUM_TOO_LARGE, align 4
  %53 = call i32 @ASN1err(i32 %51, i32 %52)
  br label %311

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @ASN1_F_A2D_ASN1_OBJECT, align 4
  %59 = load i32, i32* @ASN1_R_MISSING_SECOND_NUMBER, align 4
  %60 = call i32 @ASN1err(i32 %58, i32 %59)
  br label %311

61:                                               ; preds = %54
  %62 = load i8*, i8** %18, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %18, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %299, %61
  %69 = load i32, i32* %9, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %300

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 46
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 32
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @ASN1_F_A2D_ASN1_OBJECT, align 4
  %80 = load i32, i32* @ASN1_R_INVALID_SEPARATOR, align 4
  %81 = call i32 @ASN1err(i32 %79, i32 %80)
  br label %311

82:                                               ; preds = %75, %72
  store i64 0, i64* %19, align 8
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %155, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %156

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  %90 = load i8*, i8** %18, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %18, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 46
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %87
  br label %156

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @ossl_isdigit(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @ASN1_F_A2D_ASN1_OBJECT, align 4
  %106 = load i32, i32* @ASN1_R_INVALID_DIGIT, align 4
  %107 = call i32 @ASN1err(i32 %105, i32 %106)
  br label %311

108:                                              ; preds = %100
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %133, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %19, align 8
  %113 = load i32, i32* @ULONG_MAX, align 4
  %114 = sub nsw i32 %113, 80
  %115 = sext i32 %114 to i64
  %116 = sdiv i64 %115, 10
  %117 = icmp uge i64 %112, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %111
  store i32 1, i32* %14, align 4
  %119 = load i32*, i32** %20, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32* (...) @BN_new()
  store i32* %122, i32** %20, align 8
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32*, i32** %20, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load i32*, i32** %20, align 8
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @BN_set_word(i32* %127, i64 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126, %123
  br label %311

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %111, %108
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i32*, i32** %20, align 8
  %138 = call i32 @BN_mul_word(i32* %137, i64 10)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32*, i32** %20, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sub nsw i32 %142, 48
  %144 = call i32 @BN_add_word(i32* %141, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140, %136
  br label %311

147:                                              ; preds = %140
  br label %155

148:                                              ; preds = %133
  %149 = load i64, i64* %19, align 8
  %150 = mul i64 %149, 10
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %151, 48
  %153 = sext i32 %152 to i64
  %154 = add i64 %150, %153
  store i64 %154, i64* %19, align 8
  br label %155

155:                                              ; preds = %148, %147
  br label %83

156:                                              ; preds = %99, %86
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %187

159:                                              ; preds = %156
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %160, 2
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i64, i64* %19, align 8
  %164 = icmp uge i64 %163, 40
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* @ASN1_F_A2D_ASN1_OBJECT, align 4
  %167 = load i32, i32* @ASN1_R_SECOND_NUMBER_TOO_LARGE, align 4
  %168 = call i32 @ASN1err(i32 %166, i32 %167)
  br label %311

169:                                              ; preds = %162, %159
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* %11, align 4
  %175 = mul nsw i32 %174, 40
  %176 = call i32 @BN_add_word(i32* %173, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %172
  br label %311

179:                                              ; preds = %172
  br label %186

180:                                              ; preds = %169
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = mul nsw i64 %182, 40
  %184 = load i64, i64* %19, align 8
  %185 = add i64 %184, %183
  store i64 %185, i64* %19, align 8
  br label %186

186:                                              ; preds = %180, %179
  br label %187

187:                                              ; preds = %186, %156
  store i32 0, i32* %10, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %235

190:                                              ; preds = %187
  %191 = load i32*, i32** %20, align 8
  %192 = call i32 @BN_num_bits(i32* %191)
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %21, align 4
  %194 = add nsw i32 %193, 6
  %195 = sdiv i32 %194, 7
  store i32 %195, i32* %21, align 4
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %17, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %190
  %200 = load i8*, i8** %16, align 8
  %201 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %202 = icmp ne i8* %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load i8*, i8** %16, align 8
  %205 = call i32 @OPENSSL_free(i8* %204)
  br label %206

206:                                              ; preds = %203, %199
  %207 = load i32, i32* %21, align 4
  %208 = add nsw i32 %207, 32
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i8* @OPENSSL_malloc(i32 %209)
  store i8* %210, i8** %16, align 8
  %211 = load i8*, i8** %16, align 8
  %212 = icmp eq i8* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %206
  br label %311

214:                                              ; preds = %206
  br label %215

215:                                              ; preds = %214, %190
  br label %216

216:                                              ; preds = %226, %215
  %217 = load i32, i32* %21, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %21, align 4
  %219 = icmp ne i32 %217, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = load i32*, i32** %20, align 8
  %222 = call i64 @BN_div_word(i32* %221, i32 128)
  store i64 %222, i64* %22, align 8
  %223 = load i64, i64* %22, align 8
  %224 = icmp eq i64 %223, -1
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %311

226:                                              ; preds = %220
  %227 = load i64, i64* %22, align 8
  %228 = trunc i64 %227 to i8
  %229 = load i8*, i8** %16, align 8
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  store i8 %228, i8* %233, align 1
  br label %216

234:                                              ; preds = %216
  br label %254

235:                                              ; preds = %187
  br label %236

236:                                              ; preds = %252, %235
  %237 = load i64, i64* %19, align 8
  %238 = trunc i64 %237 to i8
  %239 = zext i8 %238 to i32
  %240 = and i32 %239, 127
  %241 = trunc i32 %240 to i8
  %242 = load i8*, i8** %16, align 8
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %10, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8, i8* %242, i64 %245
  store i8 %241, i8* %246, align 1
  %247 = load i64, i64* %19, align 8
  %248 = lshr i64 %247, 7
  store i64 %248, i64* %19, align 8
  %249 = load i64, i64* %19, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %236
  br label %253

252:                                              ; preds = %236
  br label %236

253:                                              ; preds = %251
  br label %254

254:                                              ; preds = %253, %234
  %255 = load i8*, i8** %6, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %295

257:                                              ; preds = %254
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %258, %259
  %261 = load i32, i32* %7, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load i32, i32* @ASN1_F_A2D_ASN1_OBJECT, align 4
  %265 = load i32, i32* @ASN1_R_BUFFER_TOO_SMALL, align 4
  %266 = call i32 @ASN1err(i32 %264, i32 %265)
  br label %311

267:                                              ; preds = %257
  br label %268

268:                                              ; preds = %272, %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %10, align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %268
  %273 = load i8*, i8** %16, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = or i32 %278, 128
  %280 = trunc i32 %279 to i8
  %281 = load i8*, i8** %6, align 8
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %12, align 4
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i8, i8* %281, i64 %284
  store i8 %280, i8* %285, align 1
  br label %268

286:                                              ; preds = %268
  %287 = load i8*, i8** %16, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = load i8*, i8** %6, align 8
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %12, align 4
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i8, i8* %290, i64 %293
  store i8 %289, i8* %294, align 1
  br label %299

295:                                              ; preds = %254
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %12, align 4
  br label %299

299:                                              ; preds = %295, %286
  br label %68

300:                                              ; preds = %71
  %301 = load i8*, i8** %16, align 8
  %302 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %303 = icmp ne i8* %301, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = load i8*, i8** %16, align 8
  %306 = call i32 @OPENSSL_free(i8* %305)
  br label %307

307:                                              ; preds = %304, %300
  %308 = load i32*, i32** %20, align 8
  %309 = call i32 @BN_free(i32* %308)
  %310 = load i32, i32* %12, align 4
  store i32 %310, i32* %5, align 4
  br label %321

311:                                              ; preds = %263, %225, %213, %178, %165, %146, %131, %104, %78, %57, %50
  %312 = load i8*, i8** %16, align 8
  %313 = getelementptr inbounds [24 x i8], [24 x i8]* %15, i64 0, i64 0
  %314 = icmp ne i8* %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %311
  %316 = load i8*, i8** %16, align 8
  %317 = call i32 @OPENSSL_free(i8* %316)
  br label %318

318:                                              ; preds = %315, %311
  %319 = load i32*, i32** %20, align 8
  %320 = call i32 @BN_free(i32* %319)
  store i32 0, i32* %5, align 4
  br label %321

321:                                              ; preds = %318, %307, %26
  %322 = load i32, i32* %5, align 4
  ret i32 %322
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ossl_isdigit(i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i64) #1

declare dso_local i32 @BN_mul_word(i32*, i64) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i64 @BN_div_word(i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
