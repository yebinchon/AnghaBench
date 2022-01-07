; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_x931g.c_RSA_X931_derive_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_x931g.c_RSA_X931_derive_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_X931_derive_ex(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* null, i32** %28, align 8
  store i32* null, i32** %29, align 8
  store i32* null, i32** %30, align 8
  store i32* null, i32** %31, align 8
  store i32* null, i32** %32, align 8
  store i32* null, i32** %33, align 8
  store i32 0, i32* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %13
  br label %308

38:                                               ; preds = %13
  %39 = call i32* (...) @BN_CTX_new()
  store i32* %39, i32** %32, align 8
  %40 = load i32*, i32** %32, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %308

43:                                               ; preds = %38
  %44 = load i32*, i32** %32, align 8
  %45 = call i32 @BN_CTX_start(i32* %44)
  %46 = load i32*, i32** %32, align 8
  %47 = call i32* @BN_CTX_get(i32* %46)
  store i32* %47, i32** %28, align 8
  %48 = load i32*, i32** %32, align 8
  %49 = call i32* @BN_CTX_get(i32* %48)
  store i32* %49, i32** %29, align 8
  %50 = load i32*, i32** %32, align 8
  %51 = call i32* @BN_CTX_get(i32* %50)
  store i32* %51, i32** %30, align 8
  %52 = load i32*, i32** %32, align 8
  %53 = call i32* @BN_CTX_get(i32* %52)
  store i32* %53, i32** %31, align 8
  %54 = load i32*, i32** %31, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %308

57:                                               ; preds = %43
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %26, align 8
  %64 = call i32* @BN_dup(i32* %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %308

72:                                               ; preds = %62
  br label %77

73:                                               ; preds = %57
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %26, align 8
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i32*, i32** %22, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %111

80:                                               ; preds = %77
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = call i8* (...) @BN_new()
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %308

95:                                               ; preds = %85
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i32*, i32** %22, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = load i32*, i32** %21, align 8
  %104 = load i32*, i32** %26, align 8
  %105 = load i32*, i32** %32, align 8
  %106 = load i32*, i32** %27, align 8
  %107 = call i32 @BN_X931_derive_prime_ex(i32* %98, i32* %99, i32* %100, i32* %101, i32* %102, i32* %103, i32* %104, i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %95
  br label %308

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %80, %77
  %112 = load i32*, i32** %25, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %145

114:                                              ; preds = %111
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = call i8* (...) @BN_new()
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32* %121, i32** %123, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %308

129:                                              ; preds = %119
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32*, i32** %18, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = load i32*, i32** %25, align 8
  %136 = load i32*, i32** %23, align 8
  %137 = load i32*, i32** %24, align 8
  %138 = load i32*, i32** %26, align 8
  %139 = load i32*, i32** %32, align 8
  %140 = load i32*, i32** %27, align 8
  %141 = call i32 @BN_X931_derive_prime_ex(i32* %132, i32* %133, i32* %134, i32* %135, i32* %136, i32* %137, i32* %138, i32* %139, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %129
  br label %308

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %144, %114, %111
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %150, %145
  %156 = load i32*, i32** %32, align 8
  %157 = call i32 @BN_CTX_end(i32* %156)
  %158 = load i32*, i32** %32, align 8
  %159 = call i32 @BN_CTX_free(i32* %158)
  store i32 2, i32* %14, align 4
  br label %316

160:                                              ; preds = %150
  %161 = call i8* (...) @BN_new()
  %162 = bitcast i8* %161 to i32*
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 7
  store i32* %162, i32** %164, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 7
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %308

170:                                              ; preds = %160
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 7
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32*, i32** %32, align 8
  %181 = call i32 @BN_mul(i32* %173, i32* %176, i32* %179, i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %170
  br label %308

184:                                              ; preds = %170
  %185 = load i32*, i32** %29, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 (...) @BN_value_one()
  %190 = call i32 @BN_sub(i32* %185, i32* %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %184
  br label %308

193:                                              ; preds = %184
  %194 = load i32*, i32** %30, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 (...) @BN_value_one()
  %199 = call i32 @BN_sub(i32* %194, i32* %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %193
  br label %308

202:                                              ; preds = %193
  %203 = load i32*, i32** %28, align 8
  %204 = load i32*, i32** %29, align 8
  %205 = load i32*, i32** %30, align 8
  %206 = load i32*, i32** %32, align 8
  %207 = call i32 @BN_mul(i32* %203, i32* %204, i32* %205, i32* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %202
  br label %308

210:                                              ; preds = %202
  %211 = load i32*, i32** %31, align 8
  %212 = load i32*, i32** %29, align 8
  %213 = load i32*, i32** %30, align 8
  %214 = load i32*, i32** %32, align 8
  %215 = call i32 @BN_gcd(i32* %211, i32* %212, i32* %213, i32* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %210
  br label %308

218:                                              ; preds = %210
  %219 = load i32*, i32** %28, align 8
  %220 = load i32*, i32** %28, align 8
  %221 = load i32*, i32** %31, align 8
  %222 = load i32*, i32** %32, align 8
  %223 = call i32 @BN_div(i32* %219, i32* null, i32* %220, i32* %221, i32* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %218
  br label %308

226:                                              ; preds = %218
  %227 = call i32* (...) @BN_CTX_new()
  store i32* %227, i32** %33, align 8
  %228 = load i32*, i32** %33, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %308

231:                                              ; preds = %226
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 6
  %234 = load i32*, i32** %233, align 8
  %235 = load i32*, i32** %28, align 8
  %236 = load i32*, i32** %33, align 8
  %237 = call i8* @BN_mod_inverse(i32* null, i32* %234, i32* %235, i32* %236)
  %238 = bitcast i8* %237 to i32*
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 3
  store i32* %238, i32** %240, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = icmp eq i32* %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %231
  br label %308

246:                                              ; preds = %231
  %247 = call i8* (...) @BN_new()
  %248 = bitcast i8* %247 to i32*
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 5
  store i32* %248, i32** %250, align 8
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 5
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %246
  br label %308

256:                                              ; preds = %246
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 5
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = load i32*, i32** %29, align 8
  %264 = load i32*, i32** %32, align 8
  %265 = call i32 @BN_mod(i32* %259, i32* %262, i32* %263, i32* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %256
  br label %308

268:                                              ; preds = %256
  %269 = call i8* (...) @BN_new()
  %270 = bitcast i8* %269 to i32*
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 4
  store i32* %270, i32** %272, align 8
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 4
  %275 = load i32*, i32** %274, align 8
  %276 = icmp eq i32* %275, null
  br i1 %276, label %277, label %278

277:                                              ; preds = %268
  br label %308

278:                                              ; preds = %268
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  %285 = load i32*, i32** %30, align 8
  %286 = load i32*, i32** %32, align 8
  %287 = call i32 @BN_mod(i32* %281, i32* %284, i32* %285, i32* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %278
  br label %308

290:                                              ; preds = %278
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load i32*, i32** %33, align 8
  %298 = call i8* @BN_mod_inverse(i32* null, i32* %293, i32* %296, i32* %297)
  %299 = bitcast i8* %298 to i32*
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 0
  store i32* %299, i32** %301, align 8
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = icmp eq i32* %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %290
  br label %308

307:                                              ; preds = %290
  store i32 1, i32* %34, align 4
  br label %308

308:                                              ; preds = %307, %306, %289, %277, %267, %255, %245, %230, %225, %217, %209, %201, %192, %183, %169, %143, %128, %109, %94, %71, %56, %42, %37
  %309 = load i32*, i32** %32, align 8
  %310 = call i32 @BN_CTX_end(i32* %309)
  %311 = load i32*, i32** %32, align 8
  %312 = call i32 @BN_CTX_free(i32* %311)
  %313 = load i32*, i32** %33, align 8
  %314 = call i32 @BN_CTX_free(i32* %313)
  %315 = load i32, i32* %34, align 4
  store i32 %315, i32* %14, align 4
  br label %316

316:                                              ; preds = %308, %155
  %317 = load i32, i32* %14, align 4
  ret i32 %317
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @BN_X931_derive_prime_ex(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_gcd(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @BN_mod_inverse(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
