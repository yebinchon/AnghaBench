; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_print.c_fmtfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_print.c_fmtfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DP_F_PLUS = common dso_local global i32 0, align 4
@DP_F_SPACE = common dso_local global i32 0, align 4
@G_FORMAT = common dso_local global i32 0, align 4
@F_FORMAT = common dso_local global i32 0, align 4
@E_FORMAT = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@DP_F_MINUS = common dso_local global i32 0, align 4
@DP_F_ZERO = common dso_local global i32 0, align 4
@DP_F_NUM = common dso_local global i32 0, align 4
@DP_F_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*, i64*, double, i32, i32, i32, i32)* @fmtfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmtfp(i8** %0, i8** %1, i64* %2, i64* %3, double %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca [20 x i8], align 16
  %24 = alloca [20 x i8], align 16
  %25 = alloca [20 x i8], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8, align 1
  store i8** %0, i8*** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store double %4, double* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i64 0, i64* %31, align 8
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %9
  store i32 6, i32* %17, align 4
  br label %41

41:                                               ; preds = %40, %9
  %42 = load double, double* %15, align 8
  %43 = fcmp olt double %42, 0.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 45, i32* %20, align 4
  br label %59

45:                                               ; preds = %41
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @DP_F_PLUS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 43, i32* %20, align 4
  br label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @DP_F_SPACE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 32, i32* %20, align 4
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* @G_FORMAT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load double, double* %15, align 8
  %65 = fcmp oeq double %64, 0.000000e+00
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @F_FORMAT, align 4
  store i32 %67, i32* %35, align 4
  br label %93

68:                                               ; preds = %63
  %69 = load double, double* %15, align 8
  %70 = fcmp olt double %69, 1.000000e-04
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @E_FORMAT, align 4
  store i32 %72, i32* %35, align 4
  br label %92

73:                                               ; preds = %68
  %74 = load i32, i32* %17, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load double, double* %15, align 8
  %78 = fcmp oge double %77, 1.000000e+01
  br i1 %78, label %87, label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %17, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load double, double* %15, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call double @pow_10(i32 %84)
  %86 = fcmp oge double %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %76
  %88 = load i32, i32* @E_FORMAT, align 4
  store i32 %88, i32* %35, align 4
  br label %91

89:                                               ; preds = %82, %79
  %90 = load i32, i32* @F_FORMAT, align 4
  store i32 %90, i32* %35, align 4
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92, %66
  br label %96

94:                                               ; preds = %59
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %35, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* @F_FORMAT, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %157

100:                                              ; preds = %96
  %101 = load double, double* %15, align 8
  store double %101, double* %22, align 8
  %102 = load double, double* %15, align 8
  %103 = fcmp une double %102, 0.000000e+00
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %108, %104
  %106 = load double, double* %22, align 8
  %107 = fcmp olt double %106, 1.000000e+00
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load double, double* %22, align 8
  %110 = fmul double %109, 1.000000e+01
  store double %110, double* %22, align 8
  %111 = load i64, i64* %31, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %31, align 8
  br label %105

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %117, %113
  %115 = load double, double* %22, align 8
  %116 = fcmp ogt double %115, 1.000000e+01
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load double, double* %22, align 8
  %119 = fdiv double %118, 1.000000e+01
  store double %119, double* %22, align 8
  %120 = load i64, i64* %31, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %31, align 8
  br label %114

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %100
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @G_FORMAT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load i32, i32* %17, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 1, i32* %17, align 4
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, i32* %35, align 4
  %133 = load i32, i32* @F_FORMAT, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load i64, i64* %31, align 8
  %137 = add nsw i64 %136, 1
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i32 0, i32* %10, align 4
  br label %571

145:                                              ; preds = %135
  br label %149

146:                                              ; preds = %131
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %146, %145
  br label %150

150:                                              ; preds = %149, %123
  %151 = load i32, i32* %35, align 4
  %152 = load i32, i32* @E_FORMAT, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load double, double* %22, align 8
  store double %155, double* %15, align 8
  br label %156

156:                                              ; preds = %154, %150
  br label %157

157:                                              ; preds = %156, %96
  %158 = load double, double* %15, align 8
  %159 = call double @abs_val(double %158)
  store double %159, double* %21, align 8
  %160 = load double, double* %21, align 8
  %161 = load double, double* @ULONG_MAX, align 8
  %162 = fcmp ogt double %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store i32 0, i32* %10, align 4
  br label %571

164:                                              ; preds = %157
  %165 = load double, double* %21, align 8
  %166 = fptoui double %165 to i64
  store i64 %166, i64* %32, align 8
  %167 = load i32, i32* %17, align 4
  %168 = icmp sgt i32 %167, 9
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 9, i32* %17, align 4
  br label %170

170:                                              ; preds = %169, %164
  %171 = load i32, i32* %17, align 4
  %172 = call double @pow_10(i32 %171)
  %173 = call i64 @roundv(double %172)
  store i64 %173, i64* %34, align 8
  %174 = load i32, i32* %17, align 4
  %175 = call double @pow_10(i32 %174)
  %176 = load double, double* %21, align 8
  %177 = load i64, i64* %32, align 8
  %178 = uitofp i64 %177 to double
  %179 = fsub double %176, %178
  %180 = fmul double %175, %179
  %181 = call i64 @roundv(double %180)
  store i64 %181, i64* %33, align 8
  %182 = load i64, i64* %33, align 8
  %183 = load i64, i64* %34, align 8
  %184 = icmp uge i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %170
  %186 = load i64, i64* %32, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %32, align 8
  %188 = load i64, i64* %34, align 8
  %189 = load i64, i64* %33, align 8
  %190 = sub i64 %189, %188
  store i64 %190, i64* %33, align 8
  br label %191

191:                                              ; preds = %185, %170
  br label %192

192:                                              ; preds = %209, %191
  %193 = load i64, i64* %32, align 8
  %194 = urem i64 %193, 10
  %195 = getelementptr inbounds [11 x i8], [11 x i8]* @.str, i64 0, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = load i32, i32* %26, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %26, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 %199
  store i8 %196, i8* %200, align 1
  %201 = load i64, i64* %32, align 8
  %202 = udiv i64 %201, 10
  store i64 %202, i64* %32, align 8
  br label %203

203:                                              ; preds = %192
  %204 = load i64, i64* %32, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %26, align 4
  %208 = icmp slt i32 %207, 20
  br label %209

209:                                              ; preds = %206, %203
  %210 = phi i1 [ false, %203 ], [ %208, %206 ]
  br i1 %210, label %192, label %211

211:                                              ; preds = %209
  %212 = load i32, i32* %26, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp eq i64 %213, 20
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* %26, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %26, align 4
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i32, i32* %26, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 %220
  store i8 0, i8* %221, align 1
  br label %222

222:                                              ; preds = %247, %245, %218
  %223 = load i32, i32* %27, align 4
  %224 = load i32, i32* %17, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %258

226:                                              ; preds = %222
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* @G_FORMAT, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %247

230:                                              ; preds = %226
  %231 = load i32, i32* %27, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %230
  %234 = load i64, i64* %33, align 8
  %235 = urem i64 %234, 10
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = load i32, i32* %17, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %17, align 4
  %240 = load i64, i64* %33, align 8
  %241 = udiv i64 %240, 10
  store i64 %241, i64* %33, align 8
  %242 = load i32, i32* %27, align 4
  %243 = load i32, i32* %17, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %222

246:                                              ; preds = %237
  br label %258

247:                                              ; preds = %233, %230, %226
  %248 = load i64, i64* %33, align 8
  %249 = urem i64 %248, 10
  %250 = getelementptr inbounds [11 x i8], [11 x i8]* @.str, i64 0, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = load i32, i32* %27, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %27, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 %254
  store i8 %251, i8* %255, align 1
  %256 = load i64, i64* %33, align 8
  %257 = udiv i64 %256, 10
  store i64 %257, i64* %33, align 8
  br label %222

258:                                              ; preds = %246, %222
  %259 = load i32, i32* %27, align 4
  %260 = sext i32 %259 to i64
  %261 = icmp eq i64 %260, 20
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load i32, i32* %27, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %27, align 4
  br label %265

265:                                              ; preds = %262, %258
  %266 = load i32, i32* %27, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 %267
  store i8 0, i8* %268, align 1
  %269 = load i32, i32* %35, align 4
  %270 = load i32, i32* @E_FORMAT, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %316

272:                                              ; preds = %265
  %273 = load i64, i64* %31, align 8
  %274 = icmp slt i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i64, i64* %31, align 8
  %277 = sub nsw i64 0, %276
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %36, align 4
  br label %282

279:                                              ; preds = %272
  %280 = load i64, i64* %31, align 8
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %36, align 4
  br label %282

282:                                              ; preds = %279, %275
  br label %283

283:                                              ; preds = %301, %282
  %284 = load i32, i32* %36, align 4
  %285 = srem i32 %284, 10
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [11 x i8], [11 x i8]* @.str, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = load i32, i32* %28, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %28, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds [20 x i8], [20 x i8]* %25, i64 0, i64 %291
  store i8 %288, i8* %292, align 1
  %293 = load i32, i32* %36, align 4
  %294 = sdiv i32 %293, 10
  store i32 %294, i32* %36, align 4
  br label %295

295:                                              ; preds = %283
  %296 = load i32, i32* %36, align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* %28, align 4
  %300 = icmp slt i32 %299, 20
  br label %301

301:                                              ; preds = %298, %295
  %302 = phi i1 [ false, %295 ], [ %300, %298 ]
  br i1 %302, label %283, label %303

303:                                              ; preds = %301
  %304 = load i32, i32* %36, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  store i32 0, i32* %10, align 4
  br label %571

307:                                              ; preds = %303
  %308 = load i32, i32* %28, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load i32, i32* %28, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %28, align 4
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds [20 x i8], [20 x i8]* %25, i64 0, i64 %313
  store i8 48, i8* %314, align 1
  br label %315

315:                                              ; preds = %310, %307
  br label %316

316:                                              ; preds = %315, %265
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* %26, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load i32, i32* %17, align 4
  %321 = sub nsw i32 %319, %320
  %322 = load i32, i32* %17, align 4
  %323 = icmp sgt i32 %322, 0
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i32 1, i32 0
  %326 = sub nsw i32 %321, %325
  %327 = load i32, i32* %20, align 4
  %328 = icmp ne i32 %327, 0
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i32 1, i32 0
  %331 = sub nsw i32 %326, %330
  store i32 %331, i32* %29, align 4
  %332 = load i32, i32* %35, align 4
  %333 = load i32, i32* @E_FORMAT, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %340

335:                                              ; preds = %316
  %336 = load i32, i32* %28, align 4
  %337 = add nsw i32 2, %336
  %338 = load i32, i32* %29, align 4
  %339 = sub nsw i32 %338, %337
  store i32 %339, i32* %29, align 4
  br label %340

340:                                              ; preds = %335, %316
  %341 = load i32, i32* %17, align 4
  %342 = load i32, i32* %27, align 4
  %343 = sub nsw i32 %341, %342
  store i32 %343, i32* %30, align 4
  %344 = load i32, i32* %30, align 4
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %340
  store i32 0, i32* %30, align 4
  br label %347

347:                                              ; preds = %346, %340
  %348 = load i32, i32* %29, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  store i32 0, i32* %29, align 4
  br label %351

351:                                              ; preds = %350, %347
  %352 = load i32, i32* %18, align 4
  %353 = load i32, i32* @DP_F_MINUS, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = load i32, i32* %29, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %29, align 4
  br label %359

359:                                              ; preds = %356, %351
  %360 = load i32, i32* %18, align 4
  %361 = load i32, i32* @DP_F_ZERO, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %399

364:                                              ; preds = %359
  %365 = load i32, i32* %29, align 4
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %399

367:                                              ; preds = %364
  %368 = load i32, i32* %20, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %383

370:                                              ; preds = %367
  %371 = load i8**, i8*** %11, align 8
  %372 = load i8**, i8*** %12, align 8
  %373 = load i64*, i64** %13, align 8
  %374 = load i64*, i64** %14, align 8
  %375 = load i32, i32* %20, align 4
  %376 = trunc i32 %375 to i8
  %377 = call i32 @doapr_outch(i8** %371, i8** %372, i64* %373, i64* %374, i8 signext %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %370
  store i32 0, i32* %10, align 4
  br label %571

380:                                              ; preds = %370
  %381 = load i32, i32* %29, align 4
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %29, align 4
  store i32 0, i32* %20, align 4
  br label %383

383:                                              ; preds = %380, %367
  br label %384

384:                                              ; preds = %395, %383
  %385 = load i32, i32* %29, align 4
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %384
  %388 = load i8**, i8*** %11, align 8
  %389 = load i8**, i8*** %12, align 8
  %390 = load i64*, i64** %13, align 8
  %391 = load i64*, i64** %14, align 8
  %392 = call i32 @doapr_outch(i8** %388, i8** %389, i64* %390, i64* %391, i8 signext 48)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %387
  store i32 0, i32* %10, align 4
  br label %571

395:                                              ; preds = %387
  %396 = load i32, i32* %29, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %29, align 4
  br label %384

398:                                              ; preds = %384
  br label %399

399:                                              ; preds = %398, %364, %359
  br label %400

400:                                              ; preds = %411, %399
  %401 = load i32, i32* %29, align 4
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %400
  %404 = load i8**, i8*** %11, align 8
  %405 = load i8**, i8*** %12, align 8
  %406 = load i64*, i64** %13, align 8
  %407 = load i64*, i64** %14, align 8
  %408 = call i32 @doapr_outch(i8** %404, i8** %405, i64* %406, i64* %407, i8 signext 32)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %411, label %410

410:                                              ; preds = %403
  store i32 0, i32* %10, align 4
  br label %571

411:                                              ; preds = %403
  %412 = load i32, i32* %29, align 4
  %413 = add nsw i32 %412, -1
  store i32 %413, i32* %29, align 4
  br label %400

414:                                              ; preds = %400
  %415 = load i32, i32* %20, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %427

417:                                              ; preds = %414
  %418 = load i8**, i8*** %11, align 8
  %419 = load i8**, i8*** %12, align 8
  %420 = load i64*, i64** %13, align 8
  %421 = load i64*, i64** %14, align 8
  %422 = load i32, i32* %20, align 4
  %423 = trunc i32 %422 to i8
  %424 = call i32 @doapr_outch(i8** %418, i8** %419, i64* %420, i64* %421, i8 signext %423)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %427, label %426

426:                                              ; preds = %417
  store i32 0, i32* %10, align 4
  br label %571

427:                                              ; preds = %417, %414
  br label %428

428:                                              ; preds = %444, %427
  %429 = load i32, i32* %26, align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %445

431:                                              ; preds = %428
  %432 = load i8**, i8*** %11, align 8
  %433 = load i8**, i8*** %12, align 8
  %434 = load i64*, i64** %13, align 8
  %435 = load i64*, i64** %14, align 8
  %436 = load i32, i32* %26, align 4
  %437 = add nsw i32 %436, -1
  store i32 %437, i32* %26, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [20 x i8], [20 x i8]* %23, i64 0, i64 %438
  %440 = load i8, i8* %439, align 1
  %441 = call i32 @doapr_outch(i8** %432, i8** %433, i64* %434, i64* %435, i8 signext %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %431
  store i32 0, i32* %10, align 4
  br label %571

444:                                              ; preds = %431
  br label %428

445:                                              ; preds = %428
  %446 = load i32, i32* %17, align 4
  %447 = icmp sgt i32 %446, 0
  br i1 %447, label %453, label %448

448:                                              ; preds = %445
  %449 = load i32, i32* %18, align 4
  %450 = load i32, i32* @DP_F_NUM, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %480

453:                                              ; preds = %448, %445
  %454 = load i8**, i8*** %11, align 8
  %455 = load i8**, i8*** %12, align 8
  %456 = load i64*, i64** %13, align 8
  %457 = load i64*, i64** %14, align 8
  %458 = call i32 @doapr_outch(i8** %454, i8** %455, i64* %456, i64* %457, i8 signext 46)
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %461, label %460

460:                                              ; preds = %453
  store i32 0, i32* %10, align 4
  br label %571

461:                                              ; preds = %453
  br label %462

462:                                              ; preds = %478, %461
  %463 = load i32, i32* %27, align 4
  %464 = icmp sgt i32 %463, 0
  br i1 %464, label %465, label %479

465:                                              ; preds = %462
  %466 = load i8**, i8*** %11, align 8
  %467 = load i8**, i8*** %12, align 8
  %468 = load i64*, i64** %13, align 8
  %469 = load i64*, i64** %14, align 8
  %470 = load i32, i32* %27, align 4
  %471 = add nsw i32 %470, -1
  store i32 %471, i32* %27, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 %472
  %474 = load i8, i8* %473, align 1
  %475 = call i32 @doapr_outch(i8** %466, i8** %467, i64* %468, i64* %469, i8 signext %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %478, label %477

477:                                              ; preds = %465
  store i32 0, i32* %10, align 4
  br label %571

478:                                              ; preds = %465
  br label %462

479:                                              ; preds = %462
  br label %480

480:                                              ; preds = %479, %448
  br label %481

481:                                              ; preds = %492, %480
  %482 = load i32, i32* %30, align 4
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %484, label %495

484:                                              ; preds = %481
  %485 = load i8**, i8*** %11, align 8
  %486 = load i8**, i8*** %12, align 8
  %487 = load i64*, i64** %13, align 8
  %488 = load i64*, i64** %14, align 8
  %489 = call i32 @doapr_outch(i8** %485, i8** %486, i64* %487, i64* %488, i8 signext 48)
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %492, label %491

491:                                              ; preds = %484
  store i32 0, i32* %10, align 4
  br label %571

492:                                              ; preds = %484
  %493 = load i32, i32* %30, align 4
  %494 = add nsw i32 %493, -1
  store i32 %494, i32* %30, align 4
  br label %481

495:                                              ; preds = %481
  %496 = load i32, i32* %35, align 4
  %497 = load i32, i32* @E_FORMAT, align 4
  %498 = icmp eq i32 %496, %497
  br i1 %498, label %499, label %555

499:                                              ; preds = %495
  %500 = load i32, i32* %18, align 4
  %501 = load i32, i32* @DP_F_UP, align 4
  %502 = and i32 %500, %501
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %499
  store i8 101, i8* %37, align 1
  br label %506

505:                                              ; preds = %499
  store i8 69, i8* %37, align 1
  br label %506

506:                                              ; preds = %505, %504
  %507 = load i8**, i8*** %11, align 8
  %508 = load i8**, i8*** %12, align 8
  %509 = load i64*, i64** %13, align 8
  %510 = load i64*, i64** %14, align 8
  %511 = load i8, i8* %37, align 1
  %512 = call i32 @doapr_outch(i8** %507, i8** %508, i64* %509, i64* %510, i8 signext %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %515, label %514

514:                                              ; preds = %506
  store i32 0, i32* %10, align 4
  br label %571

515:                                              ; preds = %506
  %516 = load i64, i64* %31, align 8
  %517 = icmp slt i64 %516, 0
  br i1 %517, label %518, label %527

518:                                              ; preds = %515
  %519 = load i8**, i8*** %11, align 8
  %520 = load i8**, i8*** %12, align 8
  %521 = load i64*, i64** %13, align 8
  %522 = load i64*, i64** %14, align 8
  %523 = call i32 @doapr_outch(i8** %519, i8** %520, i64* %521, i64* %522, i8 signext 45)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %526, label %525

525:                                              ; preds = %518
  store i32 0, i32* %10, align 4
  br label %571

526:                                              ; preds = %518
  br label %536

527:                                              ; preds = %515
  %528 = load i8**, i8*** %11, align 8
  %529 = load i8**, i8*** %12, align 8
  %530 = load i64*, i64** %13, align 8
  %531 = load i64*, i64** %14, align 8
  %532 = call i32 @doapr_outch(i8** %528, i8** %529, i64* %530, i64* %531, i8 signext 43)
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %535, label %534

534:                                              ; preds = %527
  store i32 0, i32* %10, align 4
  br label %571

535:                                              ; preds = %527
  br label %536

536:                                              ; preds = %535, %526
  br label %537

537:                                              ; preds = %553, %536
  %538 = load i32, i32* %28, align 4
  %539 = icmp sgt i32 %538, 0
  br i1 %539, label %540, label %554

540:                                              ; preds = %537
  %541 = load i8**, i8*** %11, align 8
  %542 = load i8**, i8*** %12, align 8
  %543 = load i64*, i64** %13, align 8
  %544 = load i64*, i64** %14, align 8
  %545 = load i32, i32* %28, align 4
  %546 = add nsw i32 %545, -1
  store i32 %546, i32* %28, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [20 x i8], [20 x i8]* %25, i64 0, i64 %547
  %549 = load i8, i8* %548, align 1
  %550 = call i32 @doapr_outch(i8** %541, i8** %542, i64* %543, i64* %544, i8 signext %549)
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %553, label %552

552:                                              ; preds = %540
  store i32 0, i32* %10, align 4
  br label %571

553:                                              ; preds = %540
  br label %537

554:                                              ; preds = %537
  br label %555

555:                                              ; preds = %554, %495
  br label %556

556:                                              ; preds = %567, %555
  %557 = load i32, i32* %29, align 4
  %558 = icmp slt i32 %557, 0
  br i1 %558, label %559, label %570

559:                                              ; preds = %556
  %560 = load i8**, i8*** %11, align 8
  %561 = load i8**, i8*** %12, align 8
  %562 = load i64*, i64** %13, align 8
  %563 = load i64*, i64** %14, align 8
  %564 = call i32 @doapr_outch(i8** %560, i8** %561, i64* %562, i64* %563, i8 signext 32)
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %567, label %566

566:                                              ; preds = %559
  store i32 0, i32* %10, align 4
  br label %571

567:                                              ; preds = %559
  %568 = load i32, i32* %29, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %29, align 4
  br label %556

570:                                              ; preds = %556
  store i32 1, i32* %10, align 4
  br label %571

571:                                              ; preds = %570, %566, %552, %534, %525, %514, %491, %477, %460, %443, %426, %410, %394, %379, %306, %163, %144
  %572 = load i32, i32* %10, align 4
  ret i32 %572
}

declare dso_local double @pow_10(i32) #1

declare dso_local double @abs_val(double) #1

declare dso_local i64 @roundv(double) #1

declare dso_local i32 @doapr_outch(i8**, i8**, i64*, i64*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
