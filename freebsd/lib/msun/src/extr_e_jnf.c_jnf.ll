; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_jnf.c_jnf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_jnf.c_jnf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global i32 0, align 4
@two = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_jnf(i32 %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load float, float* %5, align 4
  %26 = call i32 @GET_FLOAT_WORD(i32 %24, float %25)
  %27 = load i32, i32* %7, align 4
  %28 = and i32 2147483647, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 2139095040
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load float, float* %5, align 4
  %33 = load float, float* %5, align 4
  %34 = fadd float %32, %33
  store float %34, float* %3, align 4
  br label %315

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  %41 = load float, float* %5, align 4
  %42 = fneg float %41
  store float %42, float* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, -2147483648
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load float, float* %5, align 4
  %50 = call float @__ieee754_j0f(float %49)
  store float %50, float* %3, align 4
  br label %315

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load float, float* %5, align 4
  %56 = call float @__ieee754_j1f(float %55)
  store float %56, float* %3, align 4
  br label %315

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 31
  %62 = and i32 %59, %61
  store i32 %62, i32* %9, align 4
  %63 = load float, float* %5, align 4
  %64 = call float @llvm.fabs.f32(float %63)
  store float %64, float* %5, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 2139095040
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %57
  %71 = load float, float* @zero, align 4
  store float %71, float* %11, align 4
  br label %307

72:                                               ; preds = %67
  %73 = load i32, i32* %4, align 4
  %74 = sitofp i32 %73 to float
  %75 = load float, float* %5, align 4
  %76 = fcmp ole float %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %72
  %78 = load float, float* %5, align 4
  %79 = call float @__ieee754_j0f(float %78)
  store float %79, float* %10, align 4
  %80 = load float, float* %5, align 4
  %81 = call float @__ieee754_j1f(float %80)
  store float %81, float* %11, align 4
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %99, %77
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load float, float* %11, align 4
  store float %87, float* %12, align 4
  %88 = load float, float* %11, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %89, %90
  %92 = sitofp i32 %91 to float
  %93 = load float, float* %5, align 4
  %94 = fdiv float %92, %93
  %95 = fmul float %88, %94
  %96 = load float, float* %10, align 4
  %97 = fsub float %95, %96
  store float %97, float* %11, align 4
  %98 = load float, float* %12, align 4
  store float %98, float* %10, align 4
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %82

102:                                              ; preds = %82
  br label %306

103:                                              ; preds = %72
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 813694976
  br i1 %105, label %106, label %137

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = icmp sgt i32 %107, 33
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load float, float* @zero, align 4
  store float %110, float* %11, align 4
  br label %136

111:                                              ; preds = %106
  %112 = load float, float* %5, align 4
  %113 = fmul float %112, 5.000000e-01
  store float %113, float* %12, align 4
  %114 = load float, float* %12, align 4
  store float %114, float* %11, align 4
  %115 = load i32, i32* @one, align 4
  %116 = sitofp i32 %115 to float
  store float %116, float* %10, align 4
  store i32 2, i32* %6, align 4
  br label %117

117:                                              ; preds = %129, %111
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32, i32* %6, align 4
  %123 = sitofp i32 %122 to float
  %124 = load float, float* %10, align 4
  %125 = fmul float %124, %123
  store float %125, float* %10, align 4
  %126 = load float, float* %12, align 4
  %127 = load float, float* %11, align 4
  %128 = fmul float %127, %126
  store float %128, float* %11, align 4
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %117

132:                                              ; preds = %117
  %133 = load float, float* %11, align 4
  %134 = load float, float* %10, align 4
  %135 = fdiv float %133, %134
  store float %135, float* %11, align 4
  br label %136

136:                                              ; preds = %132, %109
  br label %305

137:                                              ; preds = %103
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %138, %139
  %141 = sitofp i32 %140 to float
  %142 = load float, float* %5, align 4
  %143 = fdiv float %141, %142
  store float %143, float* %15, align 4
  %144 = load float, float* %5, align 4
  %145 = fdiv float 2.000000e+00, %144
  store float %145, float* %20, align 4
  %146 = load float, float* %15, align 4
  store float %146, float* %18, align 4
  %147 = load float, float* %15, align 4
  %148 = load float, float* %20, align 4
  %149 = fadd float %147, %148
  store float %149, float* %14, align 4
  %150 = load float, float* %15, align 4
  %151 = load float, float* %14, align 4
  %152 = fmul float %150, %151
  %153 = fsub float %152, 1.000000e+00
  store float %153, float* %19, align 4
  store i32 1, i32* %22, align 4
  br label %154

154:                                              ; preds = %157, %137
  %155 = load float, float* %19, align 4
  %156 = fcmp olt float %155, 1.000000e+09
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %22, align 4
  %160 = load float, float* %20, align 4
  %161 = load float, float* %14, align 4
  %162 = fadd float %161, %160
  store float %162, float* %14, align 4
  %163 = load float, float* %14, align 4
  %164 = load float, float* %19, align 4
  %165 = fmul float %163, %164
  %166 = load float, float* %18, align 4
  %167 = fsub float %165, %166
  store float %167, float* %21, align 4
  %168 = load float, float* %19, align 4
  store float %168, float* %18, align 4
  %169 = load float, float* %21, align 4
  store float %169, float* %19, align 4
  br label %154

170:                                              ; preds = %154
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %171, %172
  store i32 %173, i32* %23, align 4
  %174 = load float, float* @zero, align 4
  store float %174, float* %16, align 4
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* %22, align 4
  %177 = add nsw i32 %175, %176
  %178 = mul nsw i32 2, %177
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %193, %170
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %23, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = load i32, i32* @one, align 4
  %185 = sitofp i32 %184 to float
  %186 = load i32, i32* %6, align 4
  %187 = sitofp i32 %186 to float
  %188 = load float, float* %5, align 4
  %189 = fdiv float %187, %188
  %190 = load float, float* %16, align 4
  %191 = fsub float %189, %190
  %192 = fdiv float %185, %191
  store float %192, float* %16, align 4
  br label %193

193:                                              ; preds = %183
  %194 = load i32, i32* %6, align 4
  %195 = sub nsw i32 %194, 2
  store i32 %195, i32* %6, align 4
  br label %179

196:                                              ; preds = %179
  %197 = load float, float* %16, align 4
  store float %197, float* %10, align 4
  %198 = load i32, i32* @one, align 4
  %199 = sitofp i32 %198 to float
  store float %199, float* %11, align 4
  %200 = load i32, i32* %4, align 4
  %201 = sitofp i32 %200 to float
  store float %201, float* %21, align 4
  %202 = load float, float* @two, align 4
  %203 = load float, float* %5, align 4
  %204 = fdiv float %202, %203
  store float %204, float* %17, align 4
  %205 = load float, float* %21, align 4
  %206 = load float, float* %17, align 4
  %207 = load float, float* %21, align 4
  %208 = fmul float %206, %207
  %209 = call float @llvm.fabs.f32(float %208)
  %210 = call float @__ieee754_logf(float %209)
  %211 = fmul float %205, %210
  store float %211, float* %21, align 4
  %212 = load float, float* %21, align 4
  %213 = fcmp olt float %212, 0x40562E3000000000
  br i1 %213, label %214, label %242

214:                                              ; preds = %196
  %215 = load i32, i32* %4, align 4
  %216 = sub nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %217, %218
  %220 = sitofp i32 %219 to float
  store float %220, float* %13, align 4
  br label %221

221:                                              ; preds = %238, %214
  %222 = load i32, i32* %6, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %221
  %225 = load float, float* %11, align 4
  store float %225, float* %12, align 4
  %226 = load float, float* %13, align 4
  %227 = load float, float* %11, align 4
  %228 = fmul float %227, %226
  store float %228, float* %11, align 4
  %229 = load float, float* %11, align 4
  %230 = load float, float* %5, align 4
  %231 = fdiv float %229, %230
  %232 = load float, float* %10, align 4
  %233 = fsub float %231, %232
  store float %233, float* %11, align 4
  %234 = load float, float* %12, align 4
  store float %234, float* %10, align 4
  %235 = load float, float* @two, align 4
  %236 = load float, float* %13, align 4
  %237 = fsub float %236, %235
  store float %237, float* %13, align 4
  br label %238

238:                                              ; preds = %224
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %6, align 4
  br label %221

241:                                              ; preds = %221
  br label %282

242:                                              ; preds = %196
  %243 = load i32, i32* %4, align 4
  %244 = sub nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %245, %246
  %248 = sitofp i32 %247 to float
  store float %248, float* %13, align 4
  br label %249

249:                                              ; preds = %278, %242
  %250 = load i32, i32* %6, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %281

252:                                              ; preds = %249
  %253 = load float, float* %11, align 4
  store float %253, float* %12, align 4
  %254 = load float, float* %13, align 4
  %255 = load float, float* %11, align 4
  %256 = fmul float %255, %254
  store float %256, float* %11, align 4
  %257 = load float, float* %11, align 4
  %258 = load float, float* %5, align 4
  %259 = fdiv float %257, %258
  %260 = load float, float* %10, align 4
  %261 = fsub float %259, %260
  store float %261, float* %11, align 4
  %262 = load float, float* %12, align 4
  store float %262, float* %10, align 4
  %263 = load float, float* @two, align 4
  %264 = load float, float* %13, align 4
  %265 = fsub float %264, %263
  store float %265, float* %13, align 4
  %266 = load float, float* %11, align 4
  %267 = fcmp ogt float %266, 1.000000e+10
  br i1 %267, label %268, label %277

268:                                              ; preds = %252
  %269 = load float, float* %11, align 4
  %270 = load float, float* %10, align 4
  %271 = fdiv float %270, %269
  store float %271, float* %10, align 4
  %272 = load float, float* %11, align 4
  %273 = load float, float* %16, align 4
  %274 = fdiv float %273, %272
  store float %274, float* %16, align 4
  %275 = load i32, i32* @one, align 4
  %276 = sitofp i32 %275 to float
  store float %276, float* %11, align 4
  br label %277

277:                                              ; preds = %268, %252
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %6, align 4
  br label %249

281:                                              ; preds = %249
  br label %282

282:                                              ; preds = %281, %241
  %283 = load float, float* %5, align 4
  %284 = call float @__ieee754_j0f(float %283)
  store float %284, float* %14, align 4
  %285 = load float, float* %5, align 4
  %286 = call float @__ieee754_j1f(float %285)
  store float %286, float* %15, align 4
  %287 = load float, float* %14, align 4
  %288 = call float @llvm.fabs.f32(float %287)
  %289 = load float, float* %15, align 4
  %290 = call float @llvm.fabs.f32(float %289)
  %291 = fcmp oge float %288, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %282
  %293 = load float, float* %16, align 4
  %294 = load float, float* %14, align 4
  %295 = fmul float %293, %294
  %296 = load float, float* %11, align 4
  %297 = fdiv float %295, %296
  store float %297, float* %11, align 4
  br label %304

298:                                              ; preds = %282
  %299 = load float, float* %16, align 4
  %300 = load float, float* %15, align 4
  %301 = fmul float %299, %300
  %302 = load float, float* %10, align 4
  %303 = fdiv float %301, %302
  store float %303, float* %11, align 4
  br label %304

304:                                              ; preds = %298, %292
  br label %305

305:                                              ; preds = %304, %136
  br label %306

306:                                              ; preds = %305, %102
  br label %307

307:                                              ; preds = %306, %70
  %308 = load i32, i32* %9, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load float, float* %11, align 4
  %312 = fneg float %311
  store float %312, float* %3, align 4
  br label %315

313:                                              ; preds = %307
  %314 = load float, float* %11, align 4
  store float %314, float* %3, align 4
  br label %315

315:                                              ; preds = %313, %310, %54, %48, %31
  %316 = load float, float* %3, align 4
  ret float %316
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @__ieee754_j0f(float) #1

declare dso_local float @__ieee754_j1f(float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @__ieee754_logf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
