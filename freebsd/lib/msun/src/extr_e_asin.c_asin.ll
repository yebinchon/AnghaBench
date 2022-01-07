; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_asin.c_asin.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_asin.c_asin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pio2_hi = common dso_local global double 0.000000e+00, align 8
@pio2_lo = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@pS0 = common dso_local global double 0.000000e+00, align 8
@pS1 = common dso_local global double 0.000000e+00, align 8
@pS2 = common dso_local global double 0.000000e+00, align 8
@pS3 = common dso_local global double 0.000000e+00, align 8
@pS4 = common dso_local global double 0.000000e+00, align 8
@pS5 = common dso_local global double 0.000000e+00, align 8
@qS1 = common dso_local global double 0.000000e+00, align 8
@qS2 = common dso_local global double 0.000000e+00, align 8
@qS3 = common dso_local global double 0.000000e+00, align 8
@qS4 = common dso_local global double 0.000000e+00, align 8
@pio4_hi = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_asin(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %14 = load i32, i32* %11, align 4
  %15 = load double, double* %3, align 8
  %16 = call i32 @GET_HIGH_WORD(i32 %14, double %15)
  %17 = load i32, i32* %11, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp sge i32 %19, 1072693248
  br i1 %20, label %21, label %46

21:                                               ; preds = %1
  %22 = load i32, i32* %13, align 4
  %23 = load double, double* %3, align 8
  %24 = call i32 @GET_LOW_WORD(i32 %22, double %23)
  %25 = load i32, i32* %12, align 4
  %26 = sub nsw i32 %25, 1072693248
  %27 = load i32, i32* %13, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load double, double* %3, align 8
  %32 = load double, double* @pio2_hi, align 8
  %33 = fmul double %31, %32
  %34 = load double, double* %3, align 8
  %35 = load double, double* @pio2_lo, align 8
  %36 = fmul double %34, %35
  %37 = fadd double %33, %36
  store double %37, double* %2, align 8
  br label %221

38:                                               ; preds = %21
  %39 = load double, double* %3, align 8
  %40 = load double, double* %3, align 8
  %41 = fsub double %39, %40
  %42 = load double, double* %3, align 8
  %43 = load double, double* %3, align 8
  %44 = fsub double %42, %43
  %45 = fdiv double %41, %44
  store double %45, double* %2, align 8
  br label %221

46:                                               ; preds = %1
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 1071644672
  br i1 %48, label %49, label %113

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 1045430272
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load double, double* @huge, align 8
  %54 = load double, double* %3, align 8
  %55 = fadd double %53, %54
  %56 = load double, double* @one, align 8
  %57 = fcmp ogt double %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load double, double* %3, align 8
  store double %59, double* %2, align 8
  br label %221

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %49
  %62 = load double, double* %3, align 8
  %63 = load double, double* %3, align 8
  %64 = fmul double %62, %63
  store double %64, double* %4, align 8
  %65 = load double, double* %4, align 8
  %66 = load double, double* @pS0, align 8
  %67 = load double, double* %4, align 8
  %68 = load double, double* @pS1, align 8
  %69 = load double, double* %4, align 8
  %70 = load double, double* @pS2, align 8
  %71 = load double, double* %4, align 8
  %72 = load double, double* @pS3, align 8
  %73 = load double, double* %4, align 8
  %74 = load double, double* @pS4, align 8
  %75 = load double, double* %4, align 8
  %76 = load double, double* @pS5, align 8
  %77 = fmul double %75, %76
  %78 = fadd double %74, %77
  %79 = fmul double %73, %78
  %80 = fadd double %72, %79
  %81 = fmul double %71, %80
  %82 = fadd double %70, %81
  %83 = fmul double %69, %82
  %84 = fadd double %68, %83
  %85 = fmul double %67, %84
  %86 = fadd double %66, %85
  %87 = fmul double %65, %86
  store double %87, double* %6, align 8
  %88 = load double, double* @one, align 8
  %89 = load double, double* %4, align 8
  %90 = load double, double* @qS1, align 8
  %91 = load double, double* %4, align 8
  %92 = load double, double* @qS2, align 8
  %93 = load double, double* %4, align 8
  %94 = load double, double* @qS3, align 8
  %95 = load double, double* %4, align 8
  %96 = load double, double* @qS4, align 8
  %97 = fmul double %95, %96
  %98 = fadd double %94, %97
  %99 = fmul double %93, %98
  %100 = fadd double %92, %99
  %101 = fmul double %91, %100
  %102 = fadd double %90, %101
  %103 = fmul double %89, %102
  %104 = fadd double %88, %103
  store double %104, double* %7, align 8
  %105 = load double, double* %6, align 8
  %106 = load double, double* %7, align 8
  %107 = fdiv double %105, %106
  store double %107, double* %5, align 8
  %108 = load double, double* %3, align 8
  %109 = load double, double* %3, align 8
  %110 = load double, double* %5, align 8
  %111 = fmul double %109, %110
  %112 = fadd double %108, %111
  store double %112, double* %2, align 8
  br label %221

113:                                              ; preds = %46
  br label %114

114:                                              ; preds = %113
  %115 = load double, double* @one, align 8
  %116 = load double, double* %3, align 8
  %117 = call double @llvm.fabs.f64(double %116)
  %118 = fsub double %115, %117
  store double %118, double* %5, align 8
  %119 = load double, double* %5, align 8
  %120 = fmul double %119, 5.000000e-01
  store double %120, double* %4, align 8
  %121 = load double, double* %4, align 8
  %122 = load double, double* @pS0, align 8
  %123 = load double, double* %4, align 8
  %124 = load double, double* @pS1, align 8
  %125 = load double, double* %4, align 8
  %126 = load double, double* @pS2, align 8
  %127 = load double, double* %4, align 8
  %128 = load double, double* @pS3, align 8
  %129 = load double, double* %4, align 8
  %130 = load double, double* @pS4, align 8
  %131 = load double, double* %4, align 8
  %132 = load double, double* @pS5, align 8
  %133 = fmul double %131, %132
  %134 = fadd double %130, %133
  %135 = fmul double %129, %134
  %136 = fadd double %128, %135
  %137 = fmul double %127, %136
  %138 = fadd double %126, %137
  %139 = fmul double %125, %138
  %140 = fadd double %124, %139
  %141 = fmul double %123, %140
  %142 = fadd double %122, %141
  %143 = fmul double %121, %142
  store double %143, double* %6, align 8
  %144 = load double, double* @one, align 8
  %145 = load double, double* %4, align 8
  %146 = load double, double* @qS1, align 8
  %147 = load double, double* %4, align 8
  %148 = load double, double* @qS2, align 8
  %149 = load double, double* %4, align 8
  %150 = load double, double* @qS3, align 8
  %151 = load double, double* %4, align 8
  %152 = load double, double* @qS4, align 8
  %153 = fmul double %151, %152
  %154 = fadd double %150, %153
  %155 = fmul double %149, %154
  %156 = fadd double %148, %155
  %157 = fmul double %147, %156
  %158 = fadd double %146, %157
  %159 = fmul double %145, %158
  %160 = fadd double %144, %159
  store double %160, double* %7, align 8
  %161 = load double, double* %4, align 8
  %162 = call double @sqrt(double %161) #4
  store double %162, double* %10, align 8
  %163 = load i32, i32* %12, align 4
  %164 = icmp sge i32 %163, 1072640819
  br i1 %164, label %165, label %179

165:                                              ; preds = %114
  %166 = load double, double* %6, align 8
  %167 = load double, double* %7, align 8
  %168 = fdiv double %166, %167
  store double %168, double* %5, align 8
  %169 = load double, double* @pio2_hi, align 8
  %170 = load double, double* %10, align 8
  %171 = load double, double* %10, align 8
  %172 = load double, double* %5, align 8
  %173 = fmul double %171, %172
  %174 = fadd double %170, %173
  %175 = fmul double 2.000000e+00, %174
  %176 = load double, double* @pio2_lo, align 8
  %177 = fsub double %175, %176
  %178 = fsub double %169, %177
  store double %178, double* %4, align 8
  br label %213

179:                                              ; preds = %114
  %180 = load double, double* %10, align 8
  store double %180, double* %5, align 8
  %181 = load double, double* %5, align 8
  %182 = call i32 @SET_LOW_WORD(double %181, i32 0)
  %183 = load double, double* %4, align 8
  %184 = load double, double* %5, align 8
  %185 = load double, double* %5, align 8
  %186 = fmul double %184, %185
  %187 = fsub double %183, %186
  %188 = load double, double* %10, align 8
  %189 = load double, double* %5, align 8
  %190 = fadd double %188, %189
  %191 = fdiv double %187, %190
  store double %191, double* %8, align 8
  %192 = load double, double* %6, align 8
  %193 = load double, double* %7, align 8
  %194 = fdiv double %192, %193
  store double %194, double* %9, align 8
  %195 = load double, double* %10, align 8
  %196 = fmul double 2.000000e+00, %195
  %197 = load double, double* %9, align 8
  %198 = fmul double %196, %197
  %199 = load double, double* @pio2_lo, align 8
  %200 = load double, double* %8, align 8
  %201 = fmul double 2.000000e+00, %200
  %202 = fsub double %199, %201
  %203 = fsub double %198, %202
  store double %203, double* %6, align 8
  %204 = load double, double* @pio4_hi, align 8
  %205 = load double, double* %5, align 8
  %206 = fmul double 2.000000e+00, %205
  %207 = fsub double %204, %206
  store double %207, double* %7, align 8
  %208 = load double, double* @pio4_hi, align 8
  %209 = load double, double* %6, align 8
  %210 = load double, double* %7, align 8
  %211 = fsub double %209, %210
  %212 = fsub double %208, %211
  store double %212, double* %4, align 8
  br label %213

213:                                              ; preds = %179, %165
  %214 = load i32, i32* %11, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load double, double* %4, align 8
  store double %217, double* %2, align 8
  br label %221

218:                                              ; preds = %213
  %219 = load double, double* %4, align 8
  %220 = fneg double %219
  store double %220, double* %2, align 8
  br label %221

221:                                              ; preds = %218, %216, %61, %58, %38, %30
  %222 = load double, double* %2, align 8
  ret double %222
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @GET_LOW_WORD(i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
