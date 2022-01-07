; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sqrt.c_sqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sqrt.c_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@tiny = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_sqrt(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 -2147483648, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load double, double* %3, align 8
  %20 = call i32 @EXTRACT_WORDS(i32 %17, i32 %18, double %19)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 2146435072
  %23 = icmp eq i32 %22, 2146435072
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load double, double* %3, align 8
  %26 = load double, double* %3, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* %3, align 8
  %29 = fadd double %27, %28
  store double %29, double* %2, align 8
  br label %302

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %15, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load double, double* %3, align 8
  store double %42, double* %2, align 8
  br label %302

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load double, double* %3, align 8
  %48 = load double, double* %3, align 8
  %49 = fsub double %47, %48
  %50 = load double, double* %3, align 8
  %51 = load double, double* %3, align 8
  %52 = fsub double %50, %51
  %53 = fdiv double %49, %52
  store double %53, double* %2, align 8
  br label %302

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 20
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %65, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 21
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %15, align 4
  %69 = ashr i32 %68, 11
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %15, align 4
  %73 = shl i32 %72, 21
  store i32 %73, i32* %15, align 4
  br label %62

74:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %82, %74
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, 1048576
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %75

85:                                               ; preds = %75
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 32, %91
  %93 = ashr i32 %90, %92
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %15, align 4
  %98 = shl i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %85, %56
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %100, 1023
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 1048575
  %104 = or i32 %103, 1048576
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %99
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %110, %111
  %113 = ashr i32 %112, 31
  %114 = add nsw i32 %109, %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %108, %99
  %121 = load i32, i32* %9, align 4
  %122 = ashr i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %124, %125
  %127 = ashr i32 %126, 31
  %128 = add nsw i32 %123, %127
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %8, align 4
  store i32 2097152, i32* %12, align 4
  br label %134

134:                                              ; preds = %154, %120
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %137
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %6, align 4
  %150 = sub nsw i32 %149, %148
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %144, %137
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %156, %157
  %159 = ashr i32 %158, 31
  %160 = add nsw i32 %155, %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %12, align 4
  %167 = ashr i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %134

168:                                              ; preds = %134
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %223, %168
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %237

173:                                              ; preds = %170
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %223

185:                                              ; preds = %181
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %189, label %223

189:                                              ; preds = %185, %173
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %190, %191
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %5, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* %5, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %189
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %5, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %203, %198, %189
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %6, align 4
  %209 = sub nsw i32 %208, %207
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %13, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load i32, i32* %6, align 4
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %213, %206
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %15, align 4
  %219 = sub nsw i32 %218, %217
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %16, align 4
  br label %223

223:                                              ; preds = %216, %185, %181
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %225, %226
  %228 = ashr i32 %227, 31
  %229 = add nsw i32 %224, %228
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* %12, align 4
  %236 = ashr i32 %235, 1
  store i32 %236, i32* %12, align 4
  br label %170

237:                                              ; preds = %170
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %15, align 4
  %240 = or i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %279

242:                                              ; preds = %237
  %243 = load double, double* @one, align 8
  %244 = load double, double* @tiny, align 8
  %245 = fsub double %243, %244
  store double %245, double* %4, align 8
  %246 = load double, double* %4, align 8
  %247 = load double, double* @one, align 8
  %248 = fcmp oge double %246, %247
  br i1 %248, label %249, label %278

249:                                              ; preds = %242
  %250 = load double, double* @one, align 8
  %251 = load double, double* @tiny, align 8
  %252 = fadd double %250, %251
  store double %252, double* %4, align 8
  %253 = load i32, i32* %16, align 4
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  store i32 0, i32* %16, align 4
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %8, align 4
  br label %277

258:                                              ; preds = %249
  %259 = load double, double* %4, align 8
  %260 = load double, double* @one, align 8
  %261 = fcmp ogt double %259, %260
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load i32, i32* %16, align 4
  %264 = icmp eq i32 %263, -2
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %265, %262
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 %269, 2
  store i32 %270, i32* %16, align 4
  br label %276

271:                                              ; preds = %258
  %272 = load i32, i32* %16, align 4
  %273 = and i32 %272, 1
  %274 = load i32, i32* %16, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %16, align 4
  br label %276

276:                                              ; preds = %271, %268
  br label %277

277:                                              ; preds = %276, %255
  br label %278

278:                                              ; preds = %277, %242
  br label %279

279:                                              ; preds = %278, %237
  %280 = load i32, i32* %8, align 4
  %281 = ashr i32 %280, 1
  %282 = add nsw i32 %281, 1071644672
  store i32 %282, i32* %6, align 4
  %283 = load i32, i32* %16, align 4
  %284 = ashr i32 %283, 1
  store i32 %284, i32* %15, align 4
  %285 = load i32, i32* %8, align 4
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %292

288:                                              ; preds = %279
  %289 = load i32, i32* %5, align 4
  %290 = load i32, i32* %15, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %15, align 4
  br label %292

292:                                              ; preds = %288, %279
  %293 = load i32, i32* %9, align 4
  %294 = shl i32 %293, 20
  %295 = load i32, i32* %6, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %6, align 4
  %297 = load double, double* %4, align 8
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* %15, align 4
  %300 = call i32 @INSERT_WORDS(double %297, i32 %298, i32 %299)
  %301 = load double, double* %4, align 8
  store double %301, double* %2, align 8
  br label %302

302:                                              ; preds = %292, %46, %41, %24
  %303 = load double, double* %2, align 8
  ret double %303
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
