; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1.c_j1.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1.c_j1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@invsqrtpi = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@r00 = common dso_local global double 0.000000e+00, align 8
@r01 = common dso_local global double 0.000000e+00, align 8
@r02 = common dso_local global double 0.000000e+00, align 8
@r03 = common dso_local global double 0.000000e+00, align 8
@s01 = common dso_local global double 0.000000e+00, align 8
@s02 = common dso_local global double 0.000000e+00, align 8
@s03 = common dso_local global double 0.000000e+00, align 8
@s04 = common dso_local global double 0.000000e+00, align 8
@s05 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_j1(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %3, align 8
  %15 = load i32, i32* %13, align 4
  %16 = load double, double* %3, align 8
  %17 = call i32 @GET_HIGH_WORD(i32 %15, double %16)
  %18 = load i32, i32* %13, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp sge i32 %20, 2146435072
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load double, double* @one, align 8
  %24 = load double, double* %3, align 8
  %25 = fdiv double %23, %24
  store double %25, double* %2, align 8
  br label %159

26:                                               ; preds = %1
  %27 = load double, double* %3, align 8
  %28 = call double @llvm.fabs.f64(double %27)
  store double %28, double* %12, align 8
  %29 = load i32, i32* %14, align 4
  %30 = icmp sge i32 %29, 1073741824
  br i1 %30, label %31, label %97

31:                                               ; preds = %26
  %32 = load double, double* %12, align 8
  %33 = call i32 @sincos(double %32, double* %5, double* %6)
  %34 = load double, double* %5, align 8
  %35 = fneg double %34
  %36 = load double, double* %6, align 8
  %37 = fsub double %35, %36
  store double %37, double* %7, align 8
  %38 = load double, double* %5, align 8
  %39 = load double, double* %6, align 8
  %40 = fsub double %38, %39
  store double %40, double* %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 2145386496
  br i1 %42, label %43, label %62

43:                                               ; preds = %31
  %44 = load double, double* %12, align 8
  %45 = load double, double* %12, align 8
  %46 = fadd double %44, %45
  %47 = call double @cos(double %46) #4
  store double %47, double* %4, align 8
  %48 = load double, double* %5, align 8
  %49 = load double, double* %6, align 8
  %50 = fmul double %48, %49
  %51 = load double, double* @zero, align 8
  %52 = fcmp ogt double %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load double, double* %4, align 8
  %55 = load double, double* %7, align 8
  %56 = fdiv double %54, %55
  store double %56, double* %8, align 8
  br label %61

57:                                               ; preds = %43
  %58 = load double, double* %4, align 8
  %59 = load double, double* %8, align 8
  %60 = fdiv double %58, %59
  store double %60, double* %7, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %14, align 4
  %64 = icmp sgt i32 %63, 1207959552
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load double, double* @invsqrtpi, align 8
  %67 = load double, double* %8, align 8
  %68 = fmul double %66, %67
  %69 = load double, double* %12, align 8
  %70 = call double @sqrt(double %69) #4
  %71 = fdiv double %68, %70
  store double %71, double* %4, align 8
  br label %89

72:                                               ; preds = %62
  %73 = load double, double* %12, align 8
  %74 = call double @pone(double %73)
  store double %74, double* %10, align 8
  %75 = load double, double* %12, align 8
  %76 = call double @qone(double %75)
  store double %76, double* %11, align 8
  %77 = load double, double* @invsqrtpi, align 8
  %78 = load double, double* %10, align 8
  %79 = load double, double* %8, align 8
  %80 = fmul double %78, %79
  %81 = load double, double* %11, align 8
  %82 = load double, double* %7, align 8
  %83 = fmul double %81, %82
  %84 = fsub double %80, %83
  %85 = fmul double %77, %84
  %86 = load double, double* %12, align 8
  %87 = call double @sqrt(double %86) #4
  %88 = fdiv double %85, %87
  store double %88, double* %4, align 8
  br label %89

89:                                               ; preds = %72, %65
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load double, double* %4, align 8
  %94 = fneg double %93
  store double %94, double* %2, align 8
  br label %159

95:                                               ; preds = %89
  %96 = load double, double* %4, align 8
  store double %96, double* %2, align 8
  br label %159

97:                                               ; preds = %26
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 1044381696
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load double, double* @huge, align 8
  %102 = load double, double* %3, align 8
  %103 = fadd double %101, %102
  %104 = load double, double* @one, align 8
  %105 = fcmp ogt double %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load double, double* %3, align 8
  %108 = fmul double 5.000000e-01, %107
  store double %108, double* %2, align 8
  br label %159

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %97
  %111 = load double, double* %3, align 8
  %112 = load double, double* %3, align 8
  %113 = fmul double %111, %112
  store double %113, double* %4, align 8
  %114 = load double, double* %4, align 8
  %115 = load double, double* @r00, align 8
  %116 = load double, double* %4, align 8
  %117 = load double, double* @r01, align 8
  %118 = load double, double* %4, align 8
  %119 = load double, double* @r02, align 8
  %120 = load double, double* %4, align 8
  %121 = load double, double* @r03, align 8
  %122 = fmul double %120, %121
  %123 = fadd double %119, %122
  %124 = fmul double %118, %123
  %125 = fadd double %117, %124
  %126 = fmul double %116, %125
  %127 = fadd double %115, %126
  %128 = fmul double %114, %127
  store double %128, double* %9, align 8
  %129 = load double, double* @one, align 8
  %130 = load double, double* %4, align 8
  %131 = load double, double* @s01, align 8
  %132 = load double, double* %4, align 8
  %133 = load double, double* @s02, align 8
  %134 = load double, double* %4, align 8
  %135 = load double, double* @s03, align 8
  %136 = load double, double* %4, align 8
  %137 = load double, double* @s04, align 8
  %138 = load double, double* %4, align 8
  %139 = load double, double* @s05, align 8
  %140 = fmul double %138, %139
  %141 = fadd double %137, %140
  %142 = fmul double %136, %141
  %143 = fadd double %135, %142
  %144 = fmul double %134, %143
  %145 = fadd double %133, %144
  %146 = fmul double %132, %145
  %147 = fadd double %131, %146
  %148 = fmul double %130, %147
  %149 = fadd double %129, %148
  store double %149, double* %5, align 8
  %150 = load double, double* %3, align 8
  %151 = load double, double* %9, align 8
  %152 = fmul double %151, %150
  store double %152, double* %9, align 8
  %153 = load double, double* %3, align 8
  %154 = fmul double %153, 5.000000e-01
  %155 = load double, double* %9, align 8
  %156 = load double, double* %5, align 8
  %157 = fdiv double %155, %156
  %158 = fadd double %154, %157
  store double %158, double* %2, align 8
  br label %159

159:                                              ; preds = %110, %106, %95, %92, %22
  %160 = load double, double* %2, align 8
  ret double %160
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @sincos(double, double*, double*) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local double @pone(double) #1

declare dso_local double @qone(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
