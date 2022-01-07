; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_mult.c_ec_wNAF_precompute_mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_mult.c_ec_wNAF_precompute_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32**, i32* }

@EC_F_EC_WNAF_PRECOMPUTE_MULT = common dso_local global i32 0, align 4
@EC_R_UNDEFINED_GENERATOR = common dso_local global i32 0, align 4
@EC_R_UNKNOWN_ORDER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_wNAF_precompute_mult(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32**, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %10, align 8
  store i32** null, i32*** %19, align 8
  store i32 0, i32* %21, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @EC_pre_comp_free(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_5__* @ec_pre_comp_new(i32* %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %20, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %289

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @EC_GROUP_get0_generator(i32* %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @EC_F_EC_WNAF_PRECOMPUTE_MULT, align 4
  %38 = load i32, i32* @EC_R_UNDEFINED_GENERATOR, align 4
  %39 = call i32 @ECerr(i32 %37, i32 %38)
  br label %258

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = call i32* (...) @BN_CTX_new()
  store i32* %44, i32** %10, align 8
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %258

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @BN_CTX_start(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32* @EC_GROUP_get0_order(i32* %52)
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %258

57:                                               ; preds = %49
  %58 = load i32*, i32** %11, align 8
  %59 = call i64 @BN_is_zero(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @EC_F_EC_WNAF_PRECOMPUTE_MULT, align 4
  %63 = load i32, i32* @EC_R_UNKNOWN_ORDER, align 4
  %64 = call i32 @ECerr(i32 %62, i32 %63)
  br label %258

65:                                               ; preds = %57
  %66 = load i32*, i32** %11, align 8
  %67 = call i64 @BN_num_bits(i32* %66)
  store i64 %67, i64* %13, align 8
  store i64 8, i64* %16, align 8
  store i64 4, i64* %14, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @EC_window_bits_for_scalar_size(i64 %68)
  %70 = load i64, i64* %14, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i64, i64* %13, align 8
  %74 = call i64 @EC_window_bits_for_scalar_size(i64 %73)
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %16, align 8
  %78 = add i64 %76, %77
  %79 = sub i64 %78, 1
  %80 = load i64, i64* %16, align 8
  %81 = udiv i64 %79, %80
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %14, align 8
  %83 = sub i64 %82, 1
  %84 = shl i64 1, %83
  store i64 %84, i64* %15, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %17, align 8
  %87 = mul i64 %85, %86
  store i64 %87, i64* %18, align 8
  %88 = load i64, i64* %18, align 8
  %89 = add i64 %88, 1
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32** @OPENSSL_malloc(i32 %91)
  store i32** %92, i32*** %19, align 8
  %93 = load i32**, i32*** %19, align 8
  %94 = icmp eq i32** %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %75
  %96 = load i32, i32* @EC_F_EC_WNAF_PRECOMPUTE_MULT, align 4
  %97 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %98 = call i32 @ECerr(i32 %96, i32 %97)
  br label %258

99:                                               ; preds = %75
  %100 = load i32**, i32*** %19, align 8
  store i32** %100, i32*** %9, align 8
  %101 = load i32**, i32*** %9, align 8
  %102 = load i64, i64* %18, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  store i32* null, i32** %103, align 8
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %120, %99
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %18, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load i32*, i32** %4, align 8
  %110 = call i32* @EC_POINT_new(i32* %109)
  %111 = load i32**, i32*** %9, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32*, i32** %111, i64 %112
  store i32* %110, i32** %113, align 8
  %114 = icmp eq i32* %110, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @EC_F_EC_WNAF_PRECOMPUTE_MULT, align 4
  %117 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %118 = call i32 @ECerr(i32 %116, i32 %117)
  br label %258

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %12, align 8
  br label %104

123:                                              ; preds = %104
  %124 = load i32*, i32** %4, align 8
  %125 = call i32* @EC_POINT_new(i32* %124)
  store i32* %125, i32** %7, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32*, i32** %4, align 8
  %129 = call i32* @EC_POINT_new(i32* %128)
  store i32* %129, i32** %8, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %127, %123
  %132 = load i32, i32* @EC_F_EC_WNAF_PRECOMPUTE_MULT, align 4
  %133 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %134 = call i32 @ECerr(i32 %132, i32 %133)
  br label %258

135:                                              ; preds = %127
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @EC_POINT_copy(i32* %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  br label %258

141:                                              ; preds = %135
  store i64 0, i64* %12, align 8
  br label %142

142:                                              ; preds = %224, %141
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* %17, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %227

146:                                              ; preds = %142
  %147 = load i32*, i32** %4, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @EC_POINT_dbl(i32* %147, i32* %148, i32* %149, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %146
  br label %258

154:                                              ; preds = %146
  %155 = load i32**, i32*** %9, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i32 1
  store i32** %156, i32*** %9, align 8
  %157 = load i32*, i32** %155, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @EC_POINT_copy(i32* %157, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  br label %258

162:                                              ; preds = %154
  store i64 1, i64* %22, align 8
  br label %163

163:                                              ; preds = %180, %162
  %164 = load i64, i64* %22, align 8
  %165 = load i64, i64* %15, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %163
  %168 = load i32*, i32** %4, align 8
  %169 = load i32**, i32*** %9, align 8
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = load i32**, i32*** %9, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 -1
  %174 = load i32*, i32** %173, align 8
  %175 = load i32*, i32** %5, align 8
  %176 = call i32 @EC_POINT_add(i32* %168, i32* %170, i32* %171, i32* %174, i32* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %167
  br label %258

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %22, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %22, align 8
  %183 = load i32**, i32*** %9, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i32 1
  store i32** %184, i32*** %9, align 8
  br label %163

185:                                              ; preds = %163
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* %17, align 8
  %188 = sub i64 %187, 1
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %190, label %223

190:                                              ; preds = %185
  %191 = load i64, i64* %16, align 8
  %192 = icmp ule i64 %191, 2
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* @EC_F_EC_WNAF_PRECOMPUTE_MULT, align 4
  %195 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %196 = call i32 @ECerr(i32 %194, i32 %195)
  br label %258

197:                                              ; preds = %190
  %198 = load i32*, i32** %4, align 8
  %199 = load i32*, i32** %8, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = call i32 @EC_POINT_dbl(i32* %198, i32* %199, i32* %200, i32* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %197
  br label %258

205:                                              ; preds = %197
  store i64 2, i64* %23, align 8
  br label %206

206:                                              ; preds = %219, %205
  %207 = load i64, i64* %23, align 8
  %208 = load i64, i64* %16, align 8
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = load i32*, i32** %4, align 8
  %212 = load i32*, i32** %8, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = call i32 @EC_POINT_dbl(i32* %211, i32* %212, i32* %213, i32* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %210
  br label %258

218:                                              ; preds = %210
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %23, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %23, align 8
  br label %206

222:                                              ; preds = %206
  br label %223

223:                                              ; preds = %222, %185
  br label %224

224:                                              ; preds = %223
  %225 = load i64, i64* %12, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %12, align 8
  br label %142

227:                                              ; preds = %142
  %228 = load i32*, i32** %4, align 8
  %229 = load i64, i64* %18, align 8
  %230 = load i32**, i32*** %19, align 8
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @EC_POINTs_make_affine(i32* %228, i64 %229, i32** %230, i32* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %227
  br label %258

235:                                              ; preds = %227
  %236 = load i32*, i32** %4, align 8
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 5
  store i32* %236, i32** %238, align 8
  %239 = load i64, i64* %16, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load i64, i64* %17, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  store i64 %242, i64* %244, align 8
  %245 = load i64, i64* %14, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  %248 = load i32**, i32*** %19, align 8
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 4
  store i32** %248, i32*** %250, align 8
  store i32** null, i32*** %19, align 8
  %251 = load i64, i64* %18, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  store i64 %251, i64* %253, align 8
  %254 = load i32*, i32** %4, align 8
  %255 = load i32, i32* @ec, align 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %257 = call i32 @SETPRECOMP(i32* %254, i32 %255, %struct.TYPE_5__* %256)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %20, align 8
  store i32 1, i32* %21, align 4
  br label %258

258:                                              ; preds = %235, %234, %217, %204, %193, %178, %161, %153, %140, %131, %115, %95, %61, %56, %47, %36
  %259 = load i32*, i32** %5, align 8
  %260 = call i32 @BN_CTX_end(i32* %259)
  %261 = load i32*, i32** %10, align 8
  %262 = call i32 @BN_CTX_free(i32* %261)
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %264 = call i32 @EC_ec_pre_comp_free(%struct.TYPE_5__* %263)
  %265 = load i32**, i32*** %19, align 8
  %266 = icmp ne i32** %265, null
  br i1 %266, label %267, label %283

267:                                              ; preds = %258
  %268 = load i32**, i32*** %19, align 8
  store i32** %268, i32*** %24, align 8
  br label %269

269:                                              ; preds = %277, %267
  %270 = load i32**, i32*** %24, align 8
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %280

273:                                              ; preds = %269
  %274 = load i32**, i32*** %24, align 8
  %275 = load i32*, i32** %274, align 8
  %276 = call i32 @EC_POINT_free(i32* %275)
  br label %277

277:                                              ; preds = %273
  %278 = load i32**, i32*** %24, align 8
  %279 = getelementptr inbounds i32*, i32** %278, i32 1
  store i32** %279, i32*** %24, align 8
  br label %269

280:                                              ; preds = %269
  %281 = load i32**, i32*** %19, align 8
  %282 = call i32 @OPENSSL_free(i32** %281)
  br label %283

283:                                              ; preds = %280, %258
  %284 = load i32*, i32** %7, align 8
  %285 = call i32 @EC_POINT_free(i32* %284)
  %286 = load i32*, i32** %8, align 8
  %287 = call i32 @EC_POINT_free(i32* %286)
  %288 = load i32, i32* %21, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %283, %30
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @EC_pre_comp_free(i32*) #1

declare dso_local %struct.TYPE_5__* @ec_pre_comp_new(i32*) #1

declare dso_local i32* @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i64 @EC_window_bits_for_scalar_size(i64) #1

declare dso_local i32** @OPENSSL_malloc(i32) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_copy(i32*, i32*) #1

declare dso_local i32 @EC_POINT_dbl(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINTs_make_affine(i32*, i64, i32**, i32*) #1

declare dso_local i32 @SETPRECOMP(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_ec_pre_comp_free(%struct.TYPE_5__*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
