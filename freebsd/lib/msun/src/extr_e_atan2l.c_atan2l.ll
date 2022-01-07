; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atan2l.c_atan2l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atan2l.c_atan2l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BIAS = common dso_local global i32 0, align 4
@LDBL_MAX_EXP = common dso_local global i32 0, align 4
@LDBL_NBIT = common dso_local global i32 0, align 4
@pi = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@tiny = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pio2_hi = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@LDBL_MANT_DIG = common dso_local global i32 0, align 4
@pio2_lo = common dso_local global double 0.000000e+00, align 8
@pi_lo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @atan2l(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca %union.IEEEl2bits, align 16
  %7 = alloca %union.IEEEl2bits, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  %15 = load x86_fp80, x86_fp80* %4, align 16
  %16 = bitcast %union.IEEEl2bits* %7 to x86_fp80*
  store x86_fp80 %15, x86_fp80* %16, align 16
  %17 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 16
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = and i32 %20, 32767
  store i32 %21, i32* %13, align 4
  %22 = load x86_fp80, x86_fp80* %5, align 16
  %23 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  store x86_fp80 %22, x86_fp80* %23, align 16
  %24 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 16
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %27, 32767
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @BIAS, align 4
  %31 = load i32, i32* @LDBL_MAX_EXP, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %2
  %35 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 16
  %38 = load i32, i32* @LDBL_NBIT, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %34, %2
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @BIAS, align 4
  %49 = load i32, i32* @LDBL_MAX_EXP, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 16
  %56 = load i32, i32* @LDBL_NBIT, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52, %34
  %65 = load x86_fp80, x86_fp80* %5, align 16
  %66 = load x86_fp80, x86_fp80* %4, align 16
  %67 = call x86_fp80 @nan_mix(x86_fp80 %65, x86_fp80 %66)
  store x86_fp80 %67, x86_fp80* %3, align 16
  br label %287

68:                                               ; preds = %52, %46
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @BIAS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 16
  %76 = load i32, i32* @LDBL_NBIT, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load x86_fp80, x86_fp80* %4, align 16
  %86 = call x86_fp80 @atanl(x86_fp80 %85) #4
  store x86_fp80 %86, x86_fp80* %3, align 16
  br label %287

87:                                               ; preds = %72, %68
  %88 = load i32, i32* %14, align 4
  %89 = ashr i32 %88, 15
  %90 = and i32 %89, 1
  %91 = load i32, i32* %12, align 4
  %92 = ashr i32 %91, 14
  %93 = and i32 %92, 2
  %94 = or i32 %90, %93
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %87
  %98 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 16
  %101 = load i32, i32* @LDBL_NBIT, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = bitcast %union.IEEEl2bits* %7 to %struct.TYPE_4__*
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %103, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  switch i32 %110, label %122 [
    i32 0, label %111
    i32 1, label %111
    i32 2, label %113
    i32 3, label %117
  ]

111:                                              ; preds = %109, %109
  %112 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %112, x86_fp80* %3, align 16
  br label %287

113:                                              ; preds = %109
  %114 = load x86_fp80, x86_fp80* @pi, align 16
  %115 = load x86_fp80, x86_fp80* @tiny, align 16
  %116 = fadd x86_fp80 %114, %115
  store x86_fp80 %116, x86_fp80* %3, align 16
  br label %287

117:                                              ; preds = %109
  %118 = load x86_fp80, x86_fp80* @pi, align 16
  %119 = fneg x86_fp80 %118
  %120 = load x86_fp80, x86_fp80* @tiny, align 16
  %121 = fsub x86_fp80 %119, %120
  store x86_fp80 %121, x86_fp80* %3, align 16
  br label %287

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122, %97, %87
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %123
  %127 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_4__*
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 16
  %130 = load i32, i32* @LDBL_NBIT, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_4__*
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %132, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %126
  %139 = load i32, i32* %14, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load double, double* @pio2_hi, align 8
  %143 = fneg double %142
  %144 = fpext double %143 to x86_fp80
  %145 = load x86_fp80, x86_fp80* @tiny, align 16
  %146 = fsub x86_fp80 %144, %145
  br label %152

147:                                              ; preds = %138
  %148 = load double, double* @pio2_hi, align 8
  %149 = fpext double %148 to x86_fp80
  %150 = load x86_fp80, x86_fp80* @tiny, align 16
  %151 = fadd x86_fp80 %149, %150
  br label %152

152:                                              ; preds = %147, %141
  %153 = phi x86_fp80 [ %146, %141 ], [ %151, %147 ]
  store x86_fp80 %153, x86_fp80* %3, align 16
  br label %287

154:                                              ; preds = %126, %123
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @BIAS, align 4
  %157 = load i32, i32* @LDBL_MAX_EXP, align 4
  %158 = add nsw i32 %156, %157
  %159 = icmp eq i32 %155, %158
  br i1 %159, label %160, label %212

160:                                              ; preds = %154
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @BIAS, align 4
  %163 = load i32, i32* @LDBL_MAX_EXP, align 4
  %164 = add nsw i32 %162, %163
  %165 = icmp eq i32 %161, %164
  br i1 %165, label %166, label %194

166:                                              ; preds = %160
  %167 = load i32, i32* %10, align 4
  switch i32 %167, label %193 [
    i32 0, label %168
    i32 1, label %174
    i32 2, label %181
    i32 3, label %187
  ]

168:                                              ; preds = %166
  %169 = load double, double* @pio2_hi, align 8
  %170 = fmul double %169, 5.000000e-01
  %171 = fpext double %170 to x86_fp80
  %172 = load x86_fp80, x86_fp80* @tiny, align 16
  %173 = fadd x86_fp80 %171, %172
  store x86_fp80 %173, x86_fp80* %3, align 16
  br label %287

174:                                              ; preds = %166
  %175 = load double, double* @pio2_hi, align 8
  %176 = fneg double %175
  %177 = fmul double %176, 5.000000e-01
  %178 = fpext double %177 to x86_fp80
  %179 = load x86_fp80, x86_fp80* @tiny, align 16
  %180 = fsub x86_fp80 %178, %179
  store x86_fp80 %180, x86_fp80* %3, align 16
  br label %287

181:                                              ; preds = %166
  %182 = load double, double* @pio2_hi, align 8
  %183 = fmul double 1.500000e+00, %182
  %184 = fpext double %183 to x86_fp80
  %185 = load x86_fp80, x86_fp80* @tiny, align 16
  %186 = fadd x86_fp80 %184, %185
  store x86_fp80 %186, x86_fp80* %3, align 16
  br label %287

187:                                              ; preds = %166
  %188 = load double, double* @pio2_hi, align 8
  %189 = fmul double -1.500000e+00, %188
  %190 = fpext double %189 to x86_fp80
  %191 = load x86_fp80, x86_fp80* @tiny, align 16
  %192 = fsub x86_fp80 %190, %191
  store x86_fp80 %192, x86_fp80* %3, align 16
  br label %287

193:                                              ; preds = %166
  br label %211

194:                                              ; preds = %160
  %195 = load i32, i32* %10, align 4
  switch i32 %195, label %210 [
    i32 0, label %196
    i32 1, label %198
    i32 2, label %201
    i32 3, label %205
  ]

196:                                              ; preds = %194
  %197 = load x86_fp80, x86_fp80* @zero, align 16
  store x86_fp80 %197, x86_fp80* %3, align 16
  br label %287

198:                                              ; preds = %194
  %199 = load x86_fp80, x86_fp80* @zero, align 16
  %200 = fneg x86_fp80 %199
  store x86_fp80 %200, x86_fp80* %3, align 16
  br label %287

201:                                              ; preds = %194
  %202 = load x86_fp80, x86_fp80* @pi, align 16
  %203 = load x86_fp80, x86_fp80* @tiny, align 16
  %204 = fadd x86_fp80 %202, %203
  store x86_fp80 %204, x86_fp80* %3, align 16
  br label %287

205:                                              ; preds = %194
  %206 = load x86_fp80, x86_fp80* @pi, align 16
  %207 = fneg x86_fp80 %206
  %208 = load x86_fp80, x86_fp80* @tiny, align 16
  %209 = fsub x86_fp80 %207, %208
  store x86_fp80 %209, x86_fp80* %3, align 16
  br label %287

210:                                              ; preds = %194
  br label %211

211:                                              ; preds = %210, %193
  br label %212

212:                                              ; preds = %211, %154
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @BIAS, align 4
  %215 = load i32, i32* @LDBL_MAX_EXP, align 4
  %216 = add nsw i32 %214, %215
  %217 = icmp eq i32 %213, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %212
  %219 = load i32, i32* %14, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = load double, double* @pio2_hi, align 8
  %223 = fneg double %222
  %224 = fpext double %223 to x86_fp80
  %225 = load x86_fp80, x86_fp80* @tiny, align 16
  %226 = fsub x86_fp80 %224, %225
  br label %232

227:                                              ; preds = %218
  %228 = load double, double* @pio2_hi, align 8
  %229 = fpext double %228 to x86_fp80
  %230 = load x86_fp80, x86_fp80* @tiny, align 16
  %231 = fadd x86_fp80 %229, %230
  br label %232

232:                                              ; preds = %227, %221
  %233 = phi x86_fp80 [ %226, %221 ], [ %231, %227 ]
  store x86_fp80 %233, x86_fp80* %3, align 16
  br label %287

234:                                              ; preds = %212
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %11, align 4
  %237 = sub nsw i32 %235, %236
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @LDBL_MANT_DIG, align 4
  %240 = add nsw i32 %239, 2
  %241 = icmp sgt i32 %238, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %234
  %243 = load double, double* @pio2_hi, align 8
  %244 = load double, double* @pio2_lo, align 8
  %245 = fadd double %243, %244
  %246 = fpext double %245 to x86_fp80
  store x86_fp80 %246, x86_fp80* %8, align 16
  %247 = load i32, i32* %10, align 4
  %248 = and i32 %247, 1
  store i32 %248, i32* %10, align 4
  br label %266

249:                                              ; preds = %234
  %250 = load i32, i32* %12, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @LDBL_MANT_DIG, align 4
  %255 = sub nsw i32 0, %254
  %256 = sub nsw i32 %255, 2
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  store x86_fp80 0xK00000000000000000000, x86_fp80* %8, align 16
  br label %265

259:                                              ; preds = %252, %249
  %260 = load x86_fp80, x86_fp80* %4, align 16
  %261 = load x86_fp80, x86_fp80* %5, align 16
  %262 = fdiv x86_fp80 %260, %261
  %263 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %262)
  %264 = call x86_fp80 @atanl(x86_fp80 %263) #4
  store x86_fp80 %264, x86_fp80* %8, align 16
  br label %265

265:                                              ; preds = %259, %258
  br label %266

266:                                              ; preds = %265, %242
  %267 = load i32, i32* %10, align 4
  switch i32 %267, label %280 [
    i32 0, label %268
    i32 1, label %270
    i32 2, label %273
  ]

268:                                              ; preds = %266
  %269 = load x86_fp80, x86_fp80* %8, align 16
  store x86_fp80 %269, x86_fp80* %3, align 16
  br label %287

270:                                              ; preds = %266
  %271 = load x86_fp80, x86_fp80* %8, align 16
  %272 = fneg x86_fp80 %271
  store x86_fp80 %272, x86_fp80* %3, align 16
  br label %287

273:                                              ; preds = %266
  %274 = load x86_fp80, x86_fp80* @pi, align 16
  %275 = load x86_fp80, x86_fp80* %8, align 16
  %276 = load i32, i32* @pi_lo, align 4
  %277 = sitofp i32 %276 to x86_fp80
  %278 = fsub x86_fp80 %275, %277
  %279 = fsub x86_fp80 %274, %278
  store x86_fp80 %279, x86_fp80* %3, align 16
  br label %287

280:                                              ; preds = %266
  %281 = load x86_fp80, x86_fp80* %8, align 16
  %282 = load i32, i32* @pi_lo, align 4
  %283 = sitofp i32 %282 to x86_fp80
  %284 = fsub x86_fp80 %281, %283
  %285 = load x86_fp80, x86_fp80* @pi, align 16
  %286 = fsub x86_fp80 %284, %285
  store x86_fp80 %286, x86_fp80* %3, align 16
  br label %287

287:                                              ; preds = %280, %273, %270, %268, %232, %205, %201, %198, %196, %187, %181, %174, %168, %152, %117, %113, %111, %84, %64
  %288 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %288
}

declare dso_local x86_fp80 @nan_mix(x86_fp80, x86_fp80) #1

; Function Attrs: nounwind
declare dso_local x86_fp80 @atanl(x86_fp80) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
