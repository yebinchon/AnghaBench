; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrig.c_do_hard_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrig.c_do_hard_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_crossover = common dso_local global double 0.000000e+00, align 8
@DBL_EPSILON = common dso_local global i32 0, align 4
@FOUR_SQRT_MIN = common dso_local global double 0.000000e+00, align 8
@B_crossover = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double*, i32*, double*, double*, double*)* @do_hard_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_hard_work(double %0, double %1, double* %2, i32* %3, double* %4, double* %5, double* %6) #0 {
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %8, align 8
  store double %1, double* %9, align 8
  store double* %2, double** %10, align 8
  store i32* %3, i32** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  store double* %6, double** %14, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %9, align 8
  %22 = fadd double %21, 1.000000e+00
  %23 = call double @hypot(double %20, double %22) #3
  store double %23, double* %15, align 8
  %24 = load double, double* %8, align 8
  %25 = load double, double* %9, align 8
  %26 = fsub double %25, 1.000000e+00
  %27 = call double @hypot(double %24, double %26) #3
  store double %27, double* %16, align 8
  %28 = load double, double* %15, align 8
  %29 = load double, double* %16, align 8
  %30 = fadd double %28, %29
  %31 = fdiv double %30, 2.000000e+00
  store double %31, double* %17, align 8
  %32 = load double, double* %17, align 8
  %33 = fcmp olt double %32, 1.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store double 1.000000e+00, double* %17, align 8
  br label %35

35:                                               ; preds = %34, %7
  %36 = load double, double* %17, align 8
  %37 = load double, double* @A_crossover, align 8
  %38 = fcmp olt double %36, %37
  br i1 %38, label %39, label %116

39:                                               ; preds = %35
  %40 = load double, double* %9, align 8
  %41 = fcmp oeq double %40, 1.000000e+00
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load double, double* %8, align 8
  %44 = load i32, i32* @DBL_EPSILON, align 4
  %45 = load i32, i32* @DBL_EPSILON, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 128
  %48 = sitofp i32 %47 to double
  %49 = fcmp olt double %43, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load double, double* %8, align 8
  %52 = fptosi double %51 to i32
  %53 = call double @sqrt(i32 %52)
  %54 = load double*, double** %10, align 8
  store double %53, double* %54, align 8
  br label %115

55:                                               ; preds = %42, %39
  %56 = load double, double* %8, align 8
  %57 = load i32, i32* @DBL_EPSILON, align 4
  %58 = load double, double* %9, align 8
  %59 = fsub double %58, 1.000000e+00
  %60 = call i32 @fabs(double %59)
  %61 = mul nsw i32 %57, %60
  %62 = sitofp i32 %61 to double
  %63 = fcmp oge double %56, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %55
  %65 = load double, double* %8, align 8
  %66 = load double, double* %9, align 8
  %67 = fadd double 1.000000e+00, %66
  %68 = load double, double* %15, align 8
  %69 = call double @f(double %65, double %67, double %68)
  %70 = load double, double* %8, align 8
  %71 = load double, double* %9, align 8
  %72 = fsub double 1.000000e+00, %71
  %73 = load double, double* %16, align 8
  %74 = call double @f(double %70, double %72, double %73)
  %75 = fadd double %69, %74
  store double %75, double* %18, align 8
  %76 = load double, double* %18, align 8
  %77 = load double, double* %18, align 8
  %78 = load double, double* %17, align 8
  %79 = fadd double %78, 1.000000e+00
  %80 = fmul double %77, %79
  %81 = fptosi double %80 to i32
  %82 = call double @sqrt(i32 %81)
  %83 = fadd double %76, %82
  %84 = call double @log1p(double %83) #3
  %85 = load double*, double** %10, align 8
  store double %84, double* %85, align 8
  br label %114

86:                                               ; preds = %55
  %87 = load double, double* %9, align 8
  %88 = fcmp olt double %87, 1.000000e+00
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load double, double* %8, align 8
  %91 = load double, double* %9, align 8
  %92 = fsub double 1.000000e+00, %91
  %93 = load double, double* %9, align 8
  %94 = fadd double 1.000000e+00, %93
  %95 = fmul double %92, %94
  %96 = fptosi double %95 to i32
  %97 = call double @sqrt(i32 %96)
  %98 = fdiv double %90, %97
  %99 = load double*, double** %10, align 8
  store double %98, double* %99, align 8
  br label %113

100:                                              ; preds = %86
  %101 = load double, double* %9, align 8
  %102 = fsub double %101, 1.000000e+00
  %103 = load double, double* %9, align 8
  %104 = fsub double %103, 1.000000e+00
  %105 = load double, double* %9, align 8
  %106 = fadd double %105, 1.000000e+00
  %107 = fmul double %104, %106
  %108 = fptosi double %107 to i32
  %109 = call double @sqrt(i32 %108)
  %110 = fadd double %102, %109
  %111 = call double @log1p(double %110) #3
  %112 = load double*, double** %10, align 8
  store double %111, double* %112, align 8
  br label %113

113:                                              ; preds = %100, %89
  br label %114

114:                                              ; preds = %113, %64
  br label %115

115:                                              ; preds = %114, %50
  br label %127

116:                                              ; preds = %35
  %117 = load double, double* %17, align 8
  %118 = load double, double* %17, align 8
  %119 = load double, double* %17, align 8
  %120 = fmul double %118, %119
  %121 = fsub double %120, 1.000000e+00
  %122 = fptosi double %121 to i32
  %123 = call double @sqrt(i32 %122)
  %124 = fadd double %117, %123
  %125 = call double @log(double %124) #3
  %126 = load double*, double** %10, align 8
  store double %125, double* %126, align 8
  br label %127

127:                                              ; preds = %116, %115
  %128 = load double, double* %9, align 8
  %129 = load double*, double** %14, align 8
  store double %128, double* %129, align 8
  %130 = load double, double* %9, align 8
  %131 = load double, double* @FOUR_SQRT_MIN, align 8
  %132 = fcmp olt double %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load i32*, i32** %11, align 8
  store i32 0, i32* %134, align 4
  %135 = load double, double* %17, align 8
  %136 = load i32, i32* @DBL_EPSILON, align 4
  %137 = sdiv i32 2, %136
  %138 = sitofp i32 %137 to double
  %139 = fmul double %135, %138
  %140 = load double*, double** %13, align 8
  store double %139, double* %140, align 8
  %141 = load double, double* %9, align 8
  %142 = load i32, i32* @DBL_EPSILON, align 4
  %143 = sdiv i32 2, %142
  %144 = sitofp i32 %143 to double
  %145 = fmul double %141, %144
  %146 = load double*, double** %14, align 8
  store double %145, double* %146, align 8
  br label %250

147:                                              ; preds = %127
  %148 = load double, double* %9, align 8
  %149 = load double, double* %17, align 8
  %150 = fdiv double %148, %149
  %151 = load double*, double** %12, align 8
  store double %150, double* %151, align 8
  %152 = load i32*, i32** %11, align 8
  store i32 1, i32* %152, align 4
  %153 = load double*, double** %12, align 8
  %154 = load double, double* %153, align 8
  %155 = load double, double* @B_crossover, align 8
  %156 = fcmp ogt double %154, %155
  br i1 %156, label %157, label %250

157:                                              ; preds = %147
  %158 = load i32*, i32** %11, align 8
  store i32 0, i32* %158, align 4
  %159 = load double, double* %9, align 8
  %160 = fcmp oeq double %159, 1.000000e+00
  br i1 %160, label %161, label %179

161:                                              ; preds = %157
  %162 = load double, double* %8, align 8
  %163 = load i32, i32* @DBL_EPSILON, align 4
  %164 = sdiv i32 %163, 128
  %165 = sitofp i32 %164 to double
  %166 = fcmp olt double %162, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load double, double* %8, align 8
  %169 = fptosi double %168 to i32
  %170 = call double @sqrt(i32 %169)
  %171 = load double, double* %17, align 8
  %172 = load double, double* %9, align 8
  %173 = fadd double %171, %172
  %174 = fdiv double %173, 2.000000e+00
  %175 = fptosi double %174 to i32
  %176 = call double @sqrt(i32 %175)
  %177 = fmul double %170, %176
  %178 = load double*, double** %13, align 8
  store double %177, double* %178, align 8
  br label %249

179:                                              ; preds = %161, %157
  %180 = load double, double* %8, align 8
  %181 = load i32, i32* @DBL_EPSILON, align 4
  %182 = load double, double* %9, align 8
  %183 = fsub double %182, 1.000000e+00
  %184 = call i32 @fabs(double %183)
  %185 = mul nsw i32 %181, %184
  %186 = sitofp i32 %185 to double
  %187 = fcmp oge double %180, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %179
  %189 = load double, double* %8, align 8
  %190 = load double, double* %9, align 8
  %191 = fadd double %190, 1.000000e+00
  %192 = load double, double* %15, align 8
  %193 = call double @f(double %189, double %191, double %192)
  %194 = load double, double* %8, align 8
  %195 = load double, double* %9, align 8
  %196 = fsub double %195, 1.000000e+00
  %197 = load double, double* %16, align 8
  %198 = call double @f(double %194, double %196, double %197)
  %199 = fadd double %193, %198
  store double %199, double* %19, align 8
  %200 = load double, double* %19, align 8
  %201 = load double, double* %17, align 8
  %202 = load double, double* %9, align 8
  %203 = fadd double %201, %202
  %204 = fmul double %200, %203
  %205 = fptosi double %204 to i32
  %206 = call double @sqrt(i32 %205)
  %207 = load double*, double** %13, align 8
  store double %206, double* %207, align 8
  br label %248

208:                                              ; preds = %179
  %209 = load double, double* %9, align 8
  %210 = fcmp ogt double %209, 1.000000e+00
  br i1 %210, label %211, label %238

211:                                              ; preds = %208
  %212 = load double, double* %8, align 8
  %213 = load i32, i32* @DBL_EPSILON, align 4
  %214 = sdiv i32 4, %213
  %215 = load i32, i32* @DBL_EPSILON, align 4
  %216 = sdiv i32 %214, %215
  %217 = sitofp i32 %216 to double
  %218 = fmul double %212, %217
  %219 = load double, double* %9, align 8
  %220 = fmul double %218, %219
  %221 = load double, double* %9, align 8
  %222 = fadd double %221, 1.000000e+00
  %223 = load double, double* %9, align 8
  %224 = fsub double %223, 1.000000e+00
  %225 = fmul double %222, %224
  %226 = fptosi double %225 to i32
  %227 = call double @sqrt(i32 %226)
  %228 = fdiv double %220, %227
  %229 = load double*, double** %13, align 8
  store double %228, double* %229, align 8
  %230 = load double, double* %9, align 8
  %231 = load i32, i32* @DBL_EPSILON, align 4
  %232 = sdiv i32 4, %231
  %233 = load i32, i32* @DBL_EPSILON, align 4
  %234 = sdiv i32 %232, %233
  %235 = sitofp i32 %234 to double
  %236 = fmul double %230, %235
  %237 = load double*, double** %14, align 8
  store double %236, double* %237, align 8
  br label %247

238:                                              ; preds = %208
  %239 = load double, double* %9, align 8
  %240 = fsub double 1.000000e+00, %239
  %241 = load double, double* %9, align 8
  %242 = fadd double 1.000000e+00, %241
  %243 = fmul double %240, %242
  %244 = fptosi double %243 to i32
  %245 = call double @sqrt(i32 %244)
  %246 = load double*, double** %13, align 8
  store double %245, double* %246, align 8
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
declare dso_local double @hypot(double, double) #1

declare dso_local double @sqrt(i32) #2

declare dso_local i32 @fabs(double) #2

declare dso_local double @f(double, double, double) #2

; Function Attrs: nounwind
declare dso_local double @log1p(double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
