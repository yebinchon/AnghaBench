; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_exp.c_BN_mod_exp_mont_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_exp.c_BN_mod_exp_mont_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32* }

@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@BN_F_BN_MOD_EXP_MONT_WORD = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4
@BN_R_CALLED_WITH_EVEN_MODULUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_exp_mont_word(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_23__* %2, %struct.TYPE_23__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %25 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %26 = call i64 @BN_get_flags(%struct.TYPE_23__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %6
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %30 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %31 = call i64 @BN_get_flags(%struct.TYPE_23__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %6
  %34 = load i32, i32* @BN_F_BN_MOD_EXP_MONT_WORD, align 4
  %35 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %36 = call i32 @BNerr(i32 %34, i32 %35)
  store i32 0, i32* %7, align 4
  br label %306

37:                                               ; preds = %28
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %39 = call i32 @bn_check_top(%struct.TYPE_23__* %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %41 = call i32 @bn_check_top(%struct.TYPE_23__* %40)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %43 = call i32 @BN_is_odd(%struct.TYPE_23__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @BN_F_BN_MOD_EXP_MONT_WORD, align 4
  %47 = load i32, i32* @BN_R_CALLED_WITH_EVEN_MODULUS, align 4
  %48 = call i32 @BNerr(i32 %46, i32 %47)
  store i32 0, i32* %7, align 4
  br label %306

49:                                               ; preds = %37
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = srem i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %64 = call i32 @BN_num_bits(%struct.TYPE_23__* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %69 = call i64 @BN_abs_is_word(%struct.TYPE_23__* %68, i32 1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  store i32 1, i32* %17, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %73 = call i32 @BN_zero(%struct.TYPE_23__* %72)
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %76 = call i32 @BN_one(%struct.TYPE_23__* %75)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %7, align 4
  br label %306

79:                                               ; preds = %62
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %84 = call i32 @BN_zero(%struct.TYPE_23__* %83)
  store i32 1, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %7, align 4
  br label %306

86:                                               ; preds = %79
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @BN_CTX_start(i32* %87)
  %89 = load i32*, i32** %12, align 8
  %90 = call %struct.TYPE_23__* @BN_CTX_get(i32* %89)
  store %struct.TYPE_23__* %90, %struct.TYPE_23__** %21, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call %struct.TYPE_23__* @BN_CTX_get(i32* %91)
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %22, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %94 = icmp eq %struct.TYPE_23__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %294

96:                                               ; preds = %86
  %97 = load i32*, i32** %13, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32*, i32** %13, align 8
  store i32* %100, i32** %14, align 8
  br label %113

101:                                              ; preds = %96
  %102 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %102, i32** %14, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %294

105:                                              ; preds = %101
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @BN_MONT_CTX_set(i32* %106, %struct.TYPE_23__* %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %294

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %99
  store i32 1, i32* %18, align 4
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %115, 2
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %233, %113
  %118 = load i32, i32* %15, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %236

120:                                              ; preds = %117
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = mul nsw i32 %121, %122
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %19, align 4
  %126 = sdiv i32 %124, %125
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %165

129:                                              ; preds = %120
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %134 = load i32, i32* %19, align 4
  %135 = call i32 (%struct.TYPE_23__*, i32, ...) bitcast (i32 (...)* @BN_set_word to i32 (%struct.TYPE_23__*, i32, ...)*)(%struct.TYPE_23__* %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*, ...) bitcast (i32 (...)* @BN_to_montgomery to i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*, ...)*)(%struct.TYPE_23__* %138, %struct.TYPE_23__* %139, i32* %140, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %137, %132
  br label %294

145:                                              ; preds = %137
  store i32 0, i32* %18, align 4
  br label %164

146:                                              ; preds = %129
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %148 = load i32, i32* %19, align 4
  %149 = call i32 (%struct.TYPE_23__*, i32, ...) bitcast (i32 (...)* @BN_mul_word to i32 (%struct.TYPE_23__*, i32, ...)*)(%struct.TYPE_23__* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, ...) bitcast (i32 (...)* @BN_mod to i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, ...)*)(%struct.TYPE_23__* %152, %struct.TYPE_23__* %153, %struct.TYPE_23__* %154, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %23, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %160, %struct.TYPE_23__** %21, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %161, %struct.TYPE_23__** %22, align 8
  br i1 true, label %163, label %162

162:                                              ; preds = %158, %151, %146
  br label %294

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %145
  store i32 1, i32* %20, align 4
  br label %165

165:                                              ; preds = %164, %120
  %166 = load i32, i32* %20, align 4
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %18, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %165
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_23__* %170, %struct.TYPE_23__* %171, %struct.TYPE_23__* %172, i32* %173, i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %169
  br label %294

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %165
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i64 @BN_is_bit_set(%struct.TYPE_23__* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %232

184:                                              ; preds = %179
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %9, align 4
  %187 = mul nsw i32 %185, %186
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %9, align 4
  %190 = sdiv i32 %188, %189
  %191 = load i32, i32* %19, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %230

193:                                              ; preds = %184
  %194 = load i32, i32* %18, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %193
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %198 = load i32, i32* %19, align 4
  %199 = call i32 (%struct.TYPE_23__*, i32, ...) bitcast (i32 (...)* @BN_set_word to i32 (%struct.TYPE_23__*, i32, ...)*)(%struct.TYPE_23__* %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = call i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*, ...) bitcast (i32 (...)* @BN_to_montgomery to i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*, ...)*)(%struct.TYPE_23__* %202, %struct.TYPE_23__* %203, i32* %204, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %201, %196
  br label %294

209:                                              ; preds = %201
  store i32 0, i32* %18, align 4
  br label %228

210:                                              ; preds = %193
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %212 = load i32, i32* %19, align 4
  %213 = call i32 (%struct.TYPE_23__*, i32, ...) bitcast (i32 (...)* @BN_mul_word to i32 (%struct.TYPE_23__*, i32, ...)*)(%struct.TYPE_23__* %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %210
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %219 = load i32*, i32** %12, align 8
  %220 = call i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, ...) bitcast (i32 (...)* @BN_mod to i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, ...)*)(%struct.TYPE_23__* %216, %struct.TYPE_23__* %217, %struct.TYPE_23__* %218, i32* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %223, %struct.TYPE_23__** %23, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %224, %struct.TYPE_23__** %21, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %225, %struct.TYPE_23__** %22, align 8
  br i1 true, label %227, label %226

226:                                              ; preds = %222, %215, %210
  br label %294

227:                                              ; preds = %222
  br label %228

228:                                              ; preds = %227, %209
  %229 = load i32, i32* %9, align 4
  store i32 %229, i32* %20, align 4
  br label %230

230:                                              ; preds = %228, %184
  %231 = load i32, i32* %20, align 4
  store i32 %231, i32* %19, align 4
  br label %232

232:                                              ; preds = %230, %179
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %15, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %15, align 4
  br label %117

236:                                              ; preds = %117
  %237 = load i32, i32* %19, align 4
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %275

239:                                              ; preds = %236
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %244 = load i32, i32* %19, align 4
  %245 = call i32 (%struct.TYPE_23__*, i32, ...) bitcast (i32 (...)* @BN_set_word to i32 (%struct.TYPE_23__*, i32, ...)*)(%struct.TYPE_23__* %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %242
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %250 = load i32*, i32** %14, align 8
  %251 = load i32*, i32** %12, align 8
  %252 = call i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*, ...) bitcast (i32 (...)* @BN_to_montgomery to i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*, ...)*)(%struct.TYPE_23__* %248, %struct.TYPE_23__* %249, i32* %250, i32* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %247, %242
  br label %294

255:                                              ; preds = %247
  store i32 0, i32* %18, align 4
  br label %274

256:                                              ; preds = %239
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %258 = load i32, i32* %19, align 4
  %259 = call i32 (%struct.TYPE_23__*, i32, ...) bitcast (i32 (...)* @BN_mul_word to i32 (%struct.TYPE_23__*, i32, ...)*)(%struct.TYPE_23__* %257, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %256
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %265 = load i32*, i32** %12, align 8
  %266 = call i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, ...) bitcast (i32 (...)* @BN_mod to i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, ...)*)(%struct.TYPE_23__* %262, %struct.TYPE_23__* %263, %struct.TYPE_23__* %264, i32* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %261
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %269, %struct.TYPE_23__** %23, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %270, %struct.TYPE_23__** %21, align 8
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  store %struct.TYPE_23__* %271, %struct.TYPE_23__** %22, align 8
  br i1 true, label %273, label %272

272:                                              ; preds = %268, %261, %256
  br label %294

273:                                              ; preds = %268
  br label %274

274:                                              ; preds = %273, %255
  br label %275

275:                                              ; preds = %274, %236
  %276 = load i32, i32* %18, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %275
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %280 = call i32 @BN_one(%struct.TYPE_23__* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %278
  br label %294

283:                                              ; preds = %278
  br label %293

284:                                              ; preds = %275
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %287 = load i32*, i32** %14, align 8
  %288 = load i32*, i32** %12, align 8
  %289 = call i32 @BN_from_montgomery(%struct.TYPE_23__* %285, %struct.TYPE_23__* %286, i32* %287, i32* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %284
  br label %294

292:                                              ; preds = %284
  br label %293

293:                                              ; preds = %292, %283
  store i32 1, i32* %17, align 4
  br label %294

294:                                              ; preds = %293, %291, %282, %272, %254, %226, %208, %177, %162, %144, %111, %104, %95
  %295 = load i32*, i32** %13, align 8
  %296 = icmp eq i32* %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load i32*, i32** %14, align 8
  %299 = call i32 @BN_MONT_CTX_free(i32* %298)
  br label %300

300:                                              ; preds = %297, %294
  %301 = load i32*, i32** %12, align 8
  %302 = call i32 @BN_CTX_end(i32* %301)
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %304 = call i32 @bn_check_top(%struct.TYPE_23__* %303)
  %305 = load i32, i32* %17, align 4
  store i32 %305, i32* %7, align 4
  br label %306

306:                                              ; preds = %300, %82, %77, %45, %33
  %307 = load i32, i32* %7, align 4
  ret i32 %307
}

declare dso_local i64 @BN_get_flags(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_23__*) #1

declare dso_local i32 @BN_is_odd(%struct.TYPE_23__*) #1

declare dso_local i32 @BN_num_bits(%struct.TYPE_23__*) #1

declare dso_local i64 @BN_abs_is_word(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @BN_zero(%struct.TYPE_23__*) #1

declare dso_local i32 @BN_one(%struct.TYPE_23__*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local %struct.TYPE_23__* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_MONT_CTX_new(...) #1

declare dso_local i32 @BN_MONT_CTX_set(i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @BN_set_word(...) #1

declare dso_local i32 @BN_to_montgomery(...) #1

declare dso_local i32 @BN_mul_word(...) #1

declare dso_local i32 @BN_mod(...) #1

declare dso_local i32 @BN_mod_mul_montgomery(%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i64 @BN_is_bit_set(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @BN_from_montgomery(%struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
