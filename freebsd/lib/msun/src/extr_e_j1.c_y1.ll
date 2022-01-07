; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1.c_y1.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1.c_y1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vone = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@vzero = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@invsqrtpi = common dso_local global double 0.000000e+00, align 8
@tpi = common dso_local global double 0.000000e+00, align 8
@U0 = common dso_local global double* null, align 8
@V0 = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_y1(double %0) #0 {
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
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %13, align 4
  %16 = load double, double* %3, align 8
  %17 = call i32 @EXTRACT_WORDS(i32 %14, i32 %15, double %16)
  %18 = load i32, i32* %11, align 4
  %19 = and i32 2147483647, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sge i32 %20, 2146435072
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load double, double* @vone, align 8
  %24 = load double, double* %3, align 8
  %25 = load double, double* %3, align 8
  %26 = load double, double* %3, align 8
  %27 = fmul double %25, %26
  %28 = fadd double %24, %27
  %29 = fdiv double %23, %28
  store double %29, double* %2, align 8
  br label %197

30:                                               ; preds = %1
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load double, double* @one, align 8
  %37 = fneg double %36
  %38 = load double, double* @vzero, align 8
  %39 = fdiv double %37, %38
  store double %39, double* %2, align 8
  br label %197

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load double, double* @vzero, align 8
  %45 = load double, double* @vzero, align 8
  %46 = fdiv double %44, %45
  store double %46, double* %2, align 8
  br label %197

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 1073741824
  br i1 %49, label %50, label %110

50:                                               ; preds = %47
  %51 = load double, double* %3, align 8
  %52 = call i32 @sincos(double %51, double* %5, double* %6)
  %53 = load double, double* %5, align 8
  %54 = fneg double %53
  %55 = load double, double* %6, align 8
  %56 = fsub double %54, %55
  store double %56, double* %7, align 8
  %57 = load double, double* %5, align 8
  %58 = load double, double* %6, align 8
  %59 = fsub double %57, %58
  store double %59, double* %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 2145386496
  br i1 %61, label %62, label %81

62:                                               ; preds = %50
  %63 = load double, double* %3, align 8
  %64 = load double, double* %3, align 8
  %65 = fadd double %63, %64
  %66 = call double @cos(double %65) #3
  store double %66, double* %4, align 8
  %67 = load double, double* %5, align 8
  %68 = load double, double* %6, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* @zero, align 8
  %71 = fcmp ogt double %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load double, double* %4, align 8
  %74 = load double, double* %7, align 8
  %75 = fdiv double %73, %74
  store double %75, double* %8, align 8
  br label %80

76:                                               ; preds = %62
  %77 = load double, double* %4, align 8
  %78 = load double, double* %8, align 8
  %79 = fdiv double %77, %78
  store double %79, double* %7, align 8
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %50
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 1207959552
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load double, double* @invsqrtpi, align 8
  %86 = load double, double* %7, align 8
  %87 = fmul double %85, %86
  %88 = load double, double* %3, align 8
  %89 = call double @sqrt(double %88) #3
  %90 = fdiv double %87, %89
  store double %90, double* %4, align 8
  br label %108

91:                                               ; preds = %81
  %92 = load double, double* %3, align 8
  %93 = call double @pone(double %92)
  store double %93, double* %9, align 8
  %94 = load double, double* %3, align 8
  %95 = call double @qone(double %94)
  store double %95, double* %10, align 8
  %96 = load double, double* @invsqrtpi, align 8
  %97 = load double, double* %9, align 8
  %98 = load double, double* %7, align 8
  %99 = fmul double %97, %98
  %100 = load double, double* %10, align 8
  %101 = load double, double* %8, align 8
  %102 = fmul double %100, %101
  %103 = fadd double %99, %102
  %104 = fmul double %96, %103
  %105 = load double, double* %3, align 8
  %106 = call double @sqrt(double %105) #3
  %107 = fdiv double %104, %106
  store double %107, double* %4, align 8
  br label %108

108:                                              ; preds = %91, %84
  %109 = load double, double* %4, align 8
  store double %109, double* %2, align 8
  br label %197

110:                                              ; preds = %47
  %111 = load i32, i32* %12, align 4
  %112 = icmp sle i32 %111, 1016070144
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load double, double* @tpi, align 8
  %115 = fneg double %114
  %116 = load double, double* %3, align 8
  %117 = fdiv double %115, %116
  store double %117, double* %2, align 8
  br label %197

118:                                              ; preds = %110
  %119 = load double, double* %3, align 8
  %120 = load double, double* %3, align 8
  %121 = fmul double %119, %120
  store double %121, double* %4, align 8
  %122 = load double*, double** @U0, align 8
  %123 = getelementptr inbounds double, double* %122, i64 0
  %124 = load double, double* %123, align 8
  %125 = load double, double* %4, align 8
  %126 = load double*, double** @U0, align 8
  %127 = getelementptr inbounds double, double* %126, i64 1
  %128 = load double, double* %127, align 8
  %129 = load double, double* %4, align 8
  %130 = load double*, double** @U0, align 8
  %131 = getelementptr inbounds double, double* %130, i64 2
  %132 = load double, double* %131, align 8
  %133 = load double, double* %4, align 8
  %134 = load double*, double** @U0, align 8
  %135 = getelementptr inbounds double, double* %134, i64 3
  %136 = load double, double* %135, align 8
  %137 = load double, double* %4, align 8
  %138 = load double*, double** @U0, align 8
  %139 = getelementptr inbounds double, double* %138, i64 4
  %140 = load double, double* %139, align 8
  %141 = fmul double %137, %140
  %142 = fadd double %136, %141
  %143 = fmul double %133, %142
  %144 = fadd double %132, %143
  %145 = fmul double %129, %144
  %146 = fadd double %128, %145
  %147 = fmul double %125, %146
  %148 = fadd double %124, %147
  store double %148, double* %9, align 8
  %149 = load double, double* @one, align 8
  %150 = load double, double* %4, align 8
  %151 = load double*, double** @V0, align 8
  %152 = getelementptr inbounds double, double* %151, i64 0
  %153 = load double, double* %152, align 8
  %154 = load double, double* %4, align 8
  %155 = load double*, double** @V0, align 8
  %156 = getelementptr inbounds double, double* %155, i64 1
  %157 = load double, double* %156, align 8
  %158 = load double, double* %4, align 8
  %159 = load double*, double** @V0, align 8
  %160 = getelementptr inbounds double, double* %159, i64 2
  %161 = load double, double* %160, align 8
  %162 = load double, double* %4, align 8
  %163 = load double*, double** @V0, align 8
  %164 = getelementptr inbounds double, double* %163, i64 3
  %165 = load double, double* %164, align 8
  %166 = load double, double* %4, align 8
  %167 = load double*, double** @V0, align 8
  %168 = getelementptr inbounds double, double* %167, i64 4
  %169 = load double, double* %168, align 8
  %170 = fmul double %166, %169
  %171 = fadd double %165, %170
  %172 = fmul double %162, %171
  %173 = fadd double %161, %172
  %174 = fmul double %158, %173
  %175 = fadd double %157, %174
  %176 = fmul double %154, %175
  %177 = fadd double %153, %176
  %178 = fmul double %150, %177
  %179 = fadd double %149, %178
  store double %179, double* %10, align 8
  %180 = load double, double* %3, align 8
  %181 = load double, double* %9, align 8
  %182 = load double, double* %10, align 8
  %183 = fdiv double %181, %182
  %184 = fmul double %180, %183
  %185 = load double, double* @tpi, align 8
  %186 = load double, double* %3, align 8
  %187 = call double @__ieee754_j1(double %186)
  %188 = load double, double* %3, align 8
  %189 = call double @__ieee754_log(double %188)
  %190 = fmul double %187, %189
  %191 = load double, double* @one, align 8
  %192 = load double, double* %3, align 8
  %193 = fdiv double %191, %192
  %194 = fsub double %190, %193
  %195 = fmul double %185, %194
  %196 = fadd double %184, %195
  store double %196, double* %2, align 8
  br label %197

197:                                              ; preds = %118, %113, %108, %43, %35, %22
  %198 = load double, double* %2, align 8
  ret double %198
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @sincos(double, double*, double*) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local double @pone(double) #1

declare dso_local double @qone(double) #1

declare dso_local double @__ieee754_j1(double) #1

declare dso_local double @__ieee754_log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
