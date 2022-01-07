; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j0.c_y0.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j0.c_y0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vone = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@vzero = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@invsqrtpi = common dso_local global double 0.000000e+00, align 8
@u00 = common dso_local global double 0.000000e+00, align 8
@tpi = common dso_local global double 0.000000e+00, align 8
@u01 = common dso_local global double 0.000000e+00, align 8
@u02 = common dso_local global double 0.000000e+00, align 8
@u03 = common dso_local global double 0.000000e+00, align 8
@u04 = common dso_local global double 0.000000e+00, align 8
@u05 = common dso_local global double 0.000000e+00, align 8
@u06 = common dso_local global double 0.000000e+00, align 8
@v01 = common dso_local global double 0.000000e+00, align 8
@v02 = common dso_local global double 0.000000e+00, align 8
@v03 = common dso_local global double 0.000000e+00, align 8
@v04 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_y0(double %0) #0 {
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
  br label %177

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
  br label %177

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load double, double* @vzero, align 8
  %45 = load double, double* @vzero, align 8
  %46 = fdiv double %44, %45
  store double %46, double* %2, align 8
  br label %177

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 1073741824
  br i1 %49, label %50, label %110

50:                                               ; preds = %47
  %51 = load double, double* %3, align 8
  %52 = call i32 @sincos(double %51, double* %5, double* %6)
  %53 = load double, double* %5, align 8
  %54 = load double, double* %6, align 8
  %55 = fsub double %53, %54
  store double %55, double* %7, align 8
  %56 = load double, double* %5, align 8
  %57 = load double, double* %6, align 8
  %58 = fadd double %56, %57
  store double %58, double* %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 2145386496
  br i1 %60, label %61, label %81

61:                                               ; preds = %50
  %62 = load double, double* %3, align 8
  %63 = load double, double* %3, align 8
  %64 = fadd double %62, %63
  %65 = call double @cos(double %64) #3
  %66 = fneg double %65
  store double %66, double* %4, align 8
  %67 = load double, double* %5, align 8
  %68 = load double, double* %6, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* @zero, align 8
  %71 = fcmp olt double %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load double, double* %4, align 8
  %74 = load double, double* %7, align 8
  %75 = fdiv double %73, %74
  store double %75, double* %8, align 8
  br label %80

76:                                               ; preds = %61
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
  %93 = call double @pzero(double %92)
  store double %93, double* %9, align 8
  %94 = load double, double* %3, align 8
  %95 = call double @qzero(double %94)
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
  br label %177

110:                                              ; preds = %47
  %111 = load i32, i32* %12, align 4
  %112 = icmp sle i32 %111, 1044381696
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load double, double* @u00, align 8
  %115 = load double, double* @tpi, align 8
  %116 = load double, double* %3, align 8
  %117 = call double @__ieee754_log(double %116)
  %118 = fmul double %115, %117
  %119 = fadd double %114, %118
  store double %119, double* %2, align 8
  br label %177

120:                                              ; preds = %110
  %121 = load double, double* %3, align 8
  %122 = load double, double* %3, align 8
  %123 = fmul double %121, %122
  store double %123, double* %4, align 8
  %124 = load double, double* @u00, align 8
  %125 = load double, double* %4, align 8
  %126 = load double, double* @u01, align 8
  %127 = load double, double* %4, align 8
  %128 = load double, double* @u02, align 8
  %129 = load double, double* %4, align 8
  %130 = load double, double* @u03, align 8
  %131 = load double, double* %4, align 8
  %132 = load double, double* @u04, align 8
  %133 = load double, double* %4, align 8
  %134 = load double, double* @u05, align 8
  %135 = load double, double* %4, align 8
  %136 = load double, double* @u06, align 8
  %137 = fmul double %135, %136
  %138 = fadd double %134, %137
  %139 = fmul double %133, %138
  %140 = fadd double %132, %139
  %141 = fmul double %131, %140
  %142 = fadd double %130, %141
  %143 = fmul double %129, %142
  %144 = fadd double %128, %143
  %145 = fmul double %127, %144
  %146 = fadd double %126, %145
  %147 = fmul double %125, %146
  %148 = fadd double %124, %147
  store double %148, double* %9, align 8
  %149 = load double, double* @one, align 8
  %150 = load double, double* %4, align 8
  %151 = load double, double* @v01, align 8
  %152 = load double, double* %4, align 8
  %153 = load double, double* @v02, align 8
  %154 = load double, double* %4, align 8
  %155 = load double, double* @v03, align 8
  %156 = load double, double* %4, align 8
  %157 = load double, double* @v04, align 8
  %158 = fmul double %156, %157
  %159 = fadd double %155, %158
  %160 = fmul double %154, %159
  %161 = fadd double %153, %160
  %162 = fmul double %152, %161
  %163 = fadd double %151, %162
  %164 = fmul double %150, %163
  %165 = fadd double %149, %164
  store double %165, double* %10, align 8
  %166 = load double, double* %9, align 8
  %167 = load double, double* %10, align 8
  %168 = fdiv double %166, %167
  %169 = load double, double* @tpi, align 8
  %170 = load double, double* %3, align 8
  %171 = call double @__ieee754_j0(double %170)
  %172 = load double, double* %3, align 8
  %173 = call double @__ieee754_log(double %172)
  %174 = fmul double %171, %173
  %175 = fmul double %169, %174
  %176 = fadd double %168, %175
  store double %176, double* %2, align 8
  br label %177

177:                                              ; preds = %120, %113, %108, %43, %35, %22
  %178 = load double, double* %2, align 8
  ret double %178
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @sincos(double, double*, double*) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local double @pzero(double) #1

declare dso_local double @qzero(double) #1

declare dso_local double @__ieee754_log(double) #1

declare dso_local double @__ieee754_j0(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
