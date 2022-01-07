; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_key.c_PKCS12_key_gen_uni.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs12/extr_p12_key.c_PKCS12_key_gen_uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKCS12_F_PKCS12_KEY_GEN_UNI = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS12_key_gen_uni(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i32 0, i32* %31, align 4
  store i32* null, i32** %32, align 8
  %36 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %36, i32** %32, align 8
  %37 = load i32*, i32** %32, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %9
  br label %285

40:                                               ; preds = %9
  %41 = load i32*, i32** %18, align 8
  %42 = call i32 @EVP_MD_block_size(i32* %41)
  store i32 %42, i32* %30, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @EVP_MD_size(i32* %43)
  store i32 %44, i32* %29, align 4
  %45 = load i32, i32* %29, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %30, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %40
  br label %285

51:                                               ; preds = %47
  %52 = load i32, i32* %30, align 4
  %53 = call i8* @OPENSSL_malloc(i32 %52)
  store i8* %53, i8** %20, align 8
  %54 = load i32, i32* %29, align 4
  %55 = call i8* @OPENSSL_malloc(i32 %54)
  store i8* %55, i8** %23, align 8
  %56 = load i32, i32* %30, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i8* @OPENSSL_malloc(i32 %57)
  store i8* %58, i8** %19, align 8
  %59 = load i32, i32* %30, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %30, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %30, align 4
  %65 = sdiv i32 %63, %64
  %66 = mul nsw i32 %59, %65
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %51
  %70 = load i32, i32* %30, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %30, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %30, align 4
  %76 = sdiv i32 %74, %75
  %77 = mul nsw i32 %70, %76
  store i32 %77, i32* %25, align 4
  br label %79

78:                                               ; preds = %51
  store i32 0, i32* %25, align 4
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i32, i32* %24, align 4
  %81 = load i32, i32* %25, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %26, align 4
  %83 = load i32, i32* %26, align 4
  %84 = call i8* @OPENSSL_malloc(i32 %83)
  store i8* %84, i8** %21, align 8
  %85 = load i8*, i8** %20, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %79
  %88 = load i8*, i8** %23, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %19, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %21, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90, %87, %79
  br label %285

97:                                               ; preds = %93
  store i32 0, i32* %27, align 4
  br label %98

98:                                               ; preds = %109, %97
  %99 = load i32, i32* %27, align 4
  %100 = load i32, i32* %30, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i32, i32* %14, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %20, align 8
  %106 = load i32, i32* %27, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %27, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %27, align 4
  br label %98

112:                                              ; preds = %98
  %113 = load i8*, i8** %21, align 8
  store i8* %113, i8** %22, align 8
  store i32 0, i32* %27, align 4
  br label %114

114:                                              ; preds = %128, %112
  %115 = load i32, i32* %27, align 4
  %116 = load i32, i32* %24, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* %13, align 4
  %122 = srem i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %119, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %22, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %22, align 8
  store i8 %125, i8* %126, align 1
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %27, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %27, align 4
  br label %114

131:                                              ; preds = %114
  store i32 0, i32* %27, align 4
  br label %132

132:                                              ; preds = %146, %131
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %25, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i8*, i8** %10, align 8
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %11, align 4
  %140 = srem i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %22, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %22, align 8
  store i8 %143, i8* %144, align 1
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %27, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %27, align 4
  br label %132

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %284, %149
  %151 = load i32*, i32** %32, align 8
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @EVP_DigestInit_ex(i32* %151, i32* %152, i32* null)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %150
  %156 = load i32*, i32** %32, align 8
  %157 = load i8*, i8** %20, align 8
  %158 = load i32, i32* %30, align 4
  %159 = call i32 @EVP_DigestUpdate(i32* %156, i8* %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load i32*, i32** %32, align 8
  %163 = load i8*, i8** %21, align 8
  %164 = load i32, i32* %26, align 4
  %165 = call i32 @EVP_DigestUpdate(i32* %162, i8* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load i32*, i32** %32, align 8
  %169 = load i8*, i8** %23, align 8
  %170 = call i32 @EVP_DigestFinal_ex(i32* %168, i8* %169, i32* null)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167, %161, %155, %150
  br label %285

173:                                              ; preds = %167
  store i32 1, i32* %28, align 4
  br label %174

174:                                              ; preds = %196, %173
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %174
  %179 = load i32*, i32** %32, align 8
  %180 = load i32*, i32** %18, align 8
  %181 = call i32 @EVP_DigestInit_ex(i32* %179, i32* %180, i32* null)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load i32*, i32** %32, align 8
  %185 = load i8*, i8** %23, align 8
  %186 = load i32, i32* %29, align 4
  %187 = call i32 @EVP_DigestUpdate(i32* %184, i8* %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %183
  %190 = load i32*, i32** %32, align 8
  %191 = load i8*, i8** %23, align 8
  %192 = call i32 @EVP_DigestFinal_ex(i32* %190, i8* %191, i32* null)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189, %183, %178
  br label %285

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %28, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %28, align 4
  br label %174

199:                                              ; preds = %174
  %200 = load i8*, i8** %17, align 8
  %201 = load i8*, i8** %23, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %29, align 4
  %204 = call i32 @min(i32 %202, i32 %203)
  %205 = call i32 @memcpy(i8* %200, i8* %201, i32 %204)
  %206 = load i32, i32* %29, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp sge i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  store i32 1, i32* %31, align 4
  br label %289

210:                                              ; preds = %199
  %211 = load i32, i32* %29, align 4
  %212 = load i32, i32* %16, align 4
  %213 = sub nsw i32 %212, %211
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %29, align 4
  %215 = load i8*, i8** %17, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8* %217, i8** %17, align 8
  store i32 0, i32* %28, align 4
  br label %218

218:                                              ; preds = %234, %210
  %219 = load i32, i32* %28, align 4
  %220 = load i32, i32* %30, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %218
  %223 = load i8*, i8** %23, align 8
  %224 = load i32, i32* %28, align 4
  %225 = load i32, i32* %29, align 4
  %226 = srem i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %223, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = load i8*, i8** %19, align 8
  %231 = load i32, i32* %28, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  store i8 %229, i8* %233, align 1
  br label %234

234:                                              ; preds = %222
  %235 = load i32, i32* %28, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %28, align 4
  br label %218

237:                                              ; preds = %218
  store i32 0, i32* %28, align 4
  br label %238

238:                                              ; preds = %280, %237
  %239 = load i32, i32* %28, align 4
  %240 = load i32, i32* %26, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %284

242:                                              ; preds = %238
  %243 = load i8*, i8** %21, align 8
  %244 = load i32, i32* %28, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  store i8* %246, i8** %34, align 8
  store i32 1, i32* %35, align 4
  %247 = load i32, i32* %30, align 4
  %248 = sub nsw i32 %247, 1
  store i32 %248, i32* %33, align 4
  br label %249

249:                                              ; preds = %276, %242
  %250 = load i32, i32* %33, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %279

252:                                              ; preds = %249
  %253 = load i8*, i8** %34, align 8
  %254 = load i32, i32* %33, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = load i8*, i8** %19, align 8
  %260 = load i32, i32* %33, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %259, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = add nsw i32 %258, %264
  %266 = load i32, i32* %35, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %35, align 4
  %268 = load i32, i32* %35, align 4
  %269 = trunc i32 %268 to i8
  %270 = load i8*, i8** %34, align 8
  %271 = load i32, i32* %33, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  store i8 %269, i8* %273, align 1
  %274 = load i32, i32* %35, align 4
  %275 = ashr i32 %274, 8
  store i32 %275, i32* %35, align 4
  br label %276

276:                                              ; preds = %252
  %277 = load i32, i32* %33, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %33, align 4
  br label %249

279:                                              ; preds = %249
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %30, align 4
  %282 = load i32, i32* %28, align 4
  %283 = add nsw i32 %282, %281
  store i32 %283, i32* %28, align 4
  br label %238

284:                                              ; preds = %238
  br label %150

285:                                              ; preds = %194, %172, %96, %50, %39
  %286 = load i32, i32* @PKCS12_F_PKCS12_KEY_GEN_UNI, align 4
  %287 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %288 = call i32 @PKCS12err(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %285, %209
  %290 = load i8*, i8** %23, align 8
  %291 = call i32 @OPENSSL_free(i8* %290)
  %292 = load i8*, i8** %19, align 8
  %293 = call i32 @OPENSSL_free(i8* %292)
  %294 = load i8*, i8** %20, align 8
  %295 = call i32 @OPENSSL_free(i8* %294)
  %296 = load i8*, i8** %21, align 8
  %297 = call i32 @OPENSSL_free(i8* %296)
  %298 = load i32*, i32** %32, align 8
  %299 = call i32 @EVP_MD_CTX_free(i32* %298)
  %300 = load i32, i32* %31, align 4
  ret i32 %300
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @EVP_MD_block_size(i32*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
