; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigf.c_do_hard_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigf.c_do_hard_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_crossover = common dso_local global float 0.000000e+00, align 4
@FLT_EPSILON = common dso_local global i32 0, align 4
@FOUR_SQRT_MIN = common dso_local global float 0.000000e+00, align 4
@B_crossover = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float*, i32*, float*, float*, float*)* @do_hard_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_hard_work(float %0, float %1, float* %2, i32* %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store float %0, float* %8, align 4
  store float %1, float* %9, align 4
  store float* %2, float** %10, align 8
  store i32* %3, i32** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %20 = load float, float* %8, align 4
  %21 = load float, float* %9, align 4
  %22 = fadd float %21, 1.000000e+00
  %23 = call float @hypotf(float %20, float %22) #3
  store float %23, float* %15, align 4
  %24 = load float, float* %8, align 4
  %25 = load float, float* %9, align 4
  %26 = fsub float %25, 1.000000e+00
  %27 = call float @hypotf(float %24, float %26) #3
  store float %27, float* %16, align 4
  %28 = load float, float* %15, align 4
  %29 = load float, float* %16, align 4
  %30 = fadd float %28, %29
  %31 = fdiv float %30, 2.000000e+00
  store float %31, float* %17, align 4
  %32 = load float, float* %17, align 4
  %33 = fcmp olt float %32, 1.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store float 1.000000e+00, float* %17, align 4
  br label %35

35:                                               ; preds = %34, %7
  %36 = load float, float* %17, align 4
  %37 = load float, float* @A_crossover, align 4
  %38 = fcmp olt float %36, %37
  br i1 %38, label %39, label %116

39:                                               ; preds = %35
  %40 = load float, float* %9, align 4
  %41 = fcmp oeq float %40, 1.000000e+00
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load float, float* %8, align 4
  %44 = load i32, i32* @FLT_EPSILON, align 4
  %45 = load i32, i32* @FLT_EPSILON, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 128
  %48 = sitofp i32 %47 to float
  %49 = fcmp olt float %43, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load float, float* %8, align 4
  %52 = fptosi float %51 to i32
  %53 = call float @sqrtf(i32 %52)
  %54 = load float*, float** %10, align 8
  store float %53, float* %54, align 4
  br label %115

55:                                               ; preds = %42, %39
  %56 = load float, float* %8, align 4
  %57 = load i32, i32* @FLT_EPSILON, align 4
  %58 = load float, float* %9, align 4
  %59 = fsub float %58, 1.000000e+00
  %60 = call i32 @fabsf(float %59)
  %61 = mul nsw i32 %57, %60
  %62 = sitofp i32 %61 to float
  %63 = fcmp oge float %56, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %55
  %65 = load float, float* %8, align 4
  %66 = load float, float* %9, align 4
  %67 = fadd float 1.000000e+00, %66
  %68 = load float, float* %15, align 4
  %69 = call float @f(float %65, float %67, float %68)
  %70 = load float, float* %8, align 4
  %71 = load float, float* %9, align 4
  %72 = fsub float 1.000000e+00, %71
  %73 = load float, float* %16, align 4
  %74 = call float @f(float %70, float %72, float %73)
  %75 = fadd float %69, %74
  store float %75, float* %18, align 4
  %76 = load float, float* %18, align 4
  %77 = load float, float* %18, align 4
  %78 = load float, float* %17, align 4
  %79 = fadd float %78, 1.000000e+00
  %80 = fmul float %77, %79
  %81 = fptosi float %80 to i32
  %82 = call float @sqrtf(i32 %81)
  %83 = fadd float %76, %82
  %84 = call float @log1pf(float %83) #3
  %85 = load float*, float** %10, align 8
  store float %84, float* %85, align 4
  br label %114

86:                                               ; preds = %55
  %87 = load float, float* %9, align 4
  %88 = fcmp olt float %87, 1.000000e+00
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load float, float* %8, align 4
  %91 = load float, float* %9, align 4
  %92 = fsub float 1.000000e+00, %91
  %93 = load float, float* %9, align 4
  %94 = fadd float 1.000000e+00, %93
  %95 = fmul float %92, %94
  %96 = fptosi float %95 to i32
  %97 = call float @sqrtf(i32 %96)
  %98 = fdiv float %90, %97
  %99 = load float*, float** %10, align 8
  store float %98, float* %99, align 4
  br label %113

100:                                              ; preds = %86
  %101 = load float, float* %9, align 4
  %102 = fsub float %101, 1.000000e+00
  %103 = load float, float* %9, align 4
  %104 = fsub float %103, 1.000000e+00
  %105 = load float, float* %9, align 4
  %106 = fadd float %105, 1.000000e+00
  %107 = fmul float %104, %106
  %108 = fptosi float %107 to i32
  %109 = call float @sqrtf(i32 %108)
  %110 = fadd float %102, %109
  %111 = call float @log1pf(float %110) #3
  %112 = load float*, float** %10, align 8
  store float %111, float* %112, align 4
  br label %113

113:                                              ; preds = %100, %89
  br label %114

114:                                              ; preds = %113, %64
  br label %115

115:                                              ; preds = %114, %50
  br label %127

116:                                              ; preds = %35
  %117 = load float, float* %17, align 4
  %118 = load float, float* %17, align 4
  %119 = load float, float* %17, align 4
  %120 = fmul float %118, %119
  %121 = fsub float %120, 1.000000e+00
  %122 = fptosi float %121 to i32
  %123 = call float @sqrtf(i32 %122)
  %124 = fadd float %117, %123
  %125 = call float @logf(float %124) #3
  %126 = load float*, float** %10, align 8
  store float %125, float* %126, align 4
  br label %127

127:                                              ; preds = %116, %115
  %128 = load float, float* %9, align 4
  %129 = load float*, float** %14, align 8
  store float %128, float* %129, align 4
  %130 = load float, float* %9, align 4
  %131 = load float, float* @FOUR_SQRT_MIN, align 4
  %132 = fcmp olt float %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load i32*, i32** %11, align 8
  store i32 0, i32* %134, align 4
  %135 = load float, float* %17, align 4
  %136 = load i32, i32* @FLT_EPSILON, align 4
  %137 = sdiv i32 2, %136
  %138 = sitofp i32 %137 to float
  %139 = fmul float %135, %138
  %140 = load float*, float** %13, align 8
  store float %139, float* %140, align 4
  %141 = load float, float* %9, align 4
  %142 = load i32, i32* @FLT_EPSILON, align 4
  %143 = sdiv i32 2, %142
  %144 = sitofp i32 %143 to float
  %145 = fmul float %141, %144
  %146 = load float*, float** %14, align 8
  store float %145, float* %146, align 4
  br label %250

147:                                              ; preds = %127
  %148 = load float, float* %9, align 4
  %149 = load float, float* %17, align 4
  %150 = fdiv float %148, %149
  %151 = load float*, float** %12, align 8
  store float %150, float* %151, align 4
  %152 = load i32*, i32** %11, align 8
  store i32 1, i32* %152, align 4
  %153 = load float*, float** %12, align 8
  %154 = load float, float* %153, align 4
  %155 = load float, float* @B_crossover, align 4
  %156 = fcmp ogt float %154, %155
  br i1 %156, label %157, label %250

157:                                              ; preds = %147
  %158 = load i32*, i32** %11, align 8
  store i32 0, i32* %158, align 4
  %159 = load float, float* %9, align 4
  %160 = fcmp oeq float %159, 1.000000e+00
  br i1 %160, label %161, label %179

161:                                              ; preds = %157
  %162 = load float, float* %8, align 4
  %163 = load i32, i32* @FLT_EPSILON, align 4
  %164 = sdiv i32 %163, 128
  %165 = sitofp i32 %164 to float
  %166 = fcmp olt float %162, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load float, float* %8, align 4
  %169 = fptosi float %168 to i32
  %170 = call float @sqrtf(i32 %169)
  %171 = load float, float* %17, align 4
  %172 = load float, float* %9, align 4
  %173 = fadd float %171, %172
  %174 = fdiv float %173, 2.000000e+00
  %175 = fptosi float %174 to i32
  %176 = call float @sqrtf(i32 %175)
  %177 = fmul float %170, %176
  %178 = load float*, float** %13, align 8
  store float %177, float* %178, align 4
  br label %249

179:                                              ; preds = %161, %157
  %180 = load float, float* %8, align 4
  %181 = load i32, i32* @FLT_EPSILON, align 4
  %182 = load float, float* %9, align 4
  %183 = fsub float %182, 1.000000e+00
  %184 = call i32 @fabsf(float %183)
  %185 = mul nsw i32 %181, %184
  %186 = sitofp i32 %185 to float
  %187 = fcmp oge float %180, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %179
  %189 = load float, float* %8, align 4
  %190 = load float, float* %9, align 4
  %191 = fadd float %190, 1.000000e+00
  %192 = load float, float* %15, align 4
  %193 = call float @f(float %189, float %191, float %192)
  %194 = load float, float* %8, align 4
  %195 = load float, float* %9, align 4
  %196 = fsub float %195, 1.000000e+00
  %197 = load float, float* %16, align 4
  %198 = call float @f(float %194, float %196, float %197)
  %199 = fadd float %193, %198
  store float %199, float* %19, align 4
  %200 = load float, float* %19, align 4
  %201 = load float, float* %17, align 4
  %202 = load float, float* %9, align 4
  %203 = fadd float %201, %202
  %204 = fmul float %200, %203
  %205 = fptosi float %204 to i32
  %206 = call float @sqrtf(i32 %205)
  %207 = load float*, float** %13, align 8
  store float %206, float* %207, align 4
  br label %248

208:                                              ; preds = %179
  %209 = load float, float* %9, align 4
  %210 = fcmp ogt float %209, 1.000000e+00
  br i1 %210, label %211, label %238

211:                                              ; preds = %208
  %212 = load float, float* %8, align 4
  %213 = load i32, i32* @FLT_EPSILON, align 4
  %214 = sdiv i32 4, %213
  %215 = load i32, i32* @FLT_EPSILON, align 4
  %216 = sdiv i32 %214, %215
  %217 = sitofp i32 %216 to float
  %218 = fmul float %212, %217
  %219 = load float, float* %9, align 4
  %220 = fmul float %218, %219
  %221 = load float, float* %9, align 4
  %222 = fadd float %221, 1.000000e+00
  %223 = load float, float* %9, align 4
  %224 = fsub float %223, 1.000000e+00
  %225 = fmul float %222, %224
  %226 = fptosi float %225 to i32
  %227 = call float @sqrtf(i32 %226)
  %228 = fdiv float %220, %227
  %229 = load float*, float** %13, align 8
  store float %228, float* %229, align 4
  %230 = load float, float* %9, align 4
  %231 = load i32, i32* @FLT_EPSILON, align 4
  %232 = sdiv i32 4, %231
  %233 = load i32, i32* @FLT_EPSILON, align 4
  %234 = sdiv i32 %232, %233
  %235 = sitofp i32 %234 to float
  %236 = fmul float %230, %235
  %237 = load float*, float** %14, align 8
  store float %236, float* %237, align 4
  br label %247

238:                                              ; preds = %208
  %239 = load float, float* %9, align 4
  %240 = fsub float 1.000000e+00, %239
  %241 = load float, float* %9, align 4
  %242 = fadd float 1.000000e+00, %241
  %243 = fmul float %240, %242
  %244 = fptosi float %243 to i32
  %245 = call float @sqrtf(i32 %244)
  %246 = load float*, float** %13, align 8
  store float %245, float* %246, align 4
  br label %247

247:                                              ; preds = %238, %211
  br label %248

248:                                              ; preds = %247, %188
  br label %249

249:                                              ; preds = %248, %167
  br label %250

250:                                              ; preds = %133, %249, %147
  ret void
}

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

declare dso_local float @sqrtf(i32) #2

declare dso_local i32 @fabsf(float) #2

declare dso_local float @f(float, float, float) #2

; Function Attrs: nounwind
declare dso_local float @log1pf(float) #1

; Function Attrs: nounwind
declare dso_local float @logf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
