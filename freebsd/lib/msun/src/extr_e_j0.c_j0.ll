; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j0.c_j0.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j0.c_j0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@invsqrtpi = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@R02 = common dso_local global double 0.000000e+00, align 8
@R03 = common dso_local global double 0.000000e+00, align 8
@R04 = common dso_local global double 0.000000e+00, align 8
@R05 = common dso_local global double 0.000000e+00, align 8
@S01 = common dso_local global double 0.000000e+00, align 8
@S02 = common dso_local global double 0.000000e+00, align 8
@S03 = common dso_local global double 0.000000e+00, align 8
@S04 = common dso_local global double 0.000000e+00, align 8
@qrtr = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_j0(double %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store double %0, double* %3, align 8
  %14 = load i32, i32* %12, align 4
  %15 = load double, double* %3, align 8
  %16 = call i32 @GET_HIGH_WORD(i32 %14, double %15)
  %17 = load i32, i32* %12, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp sge i32 %19, 2146435072
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load double, double* @one, align 8
  %23 = load double, double* %3, align 8
  %24 = load double, double* %3, align 8
  %25 = fmul double %23, %24
  %26 = fdiv double %22, %25
  store double %26, double* %2, align 8
  br label %178

27:                                               ; preds = %1
  %28 = load double, double* %3, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  store double %29, double* %3, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp sge i32 %30, 1073741824
  br i1 %31, label %32, label %92

32:                                               ; preds = %27
  %33 = load double, double* %3, align 8
  %34 = call i32 @sincos(double %33, double* %5, double* %6)
  %35 = load double, double* %5, align 8
  %36 = load double, double* %6, align 8
  %37 = fsub double %35, %36
  store double %37, double* %7, align 8
  %38 = load double, double* %5, align 8
  %39 = load double, double* %6, align 8
  %40 = fadd double %38, %39
  store double %40, double* %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 2145386496
  br i1 %42, label %43, label %63

43:                                               ; preds = %32
  %44 = load double, double* %3, align 8
  %45 = load double, double* %3, align 8
  %46 = fadd double %44, %45
  %47 = call double @cos(double %46) #4
  %48 = fneg double %47
  store double %48, double* %4, align 8
  %49 = load double, double* %5, align 8
  %50 = load double, double* %6, align 8
  %51 = fmul double %49, %50
  %52 = load double, double* @zero, align 8
  %53 = fcmp olt double %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load double, double* %4, align 8
  %56 = load double, double* %7, align 8
  %57 = fdiv double %55, %56
  store double %57, double* %8, align 8
  br label %62

58:                                               ; preds = %43
  %59 = load double, double* %4, align 8
  %60 = load double, double* %8, align 8
  %61 = fdiv double %59, %60
  store double %61, double* %7, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %32
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %64, 1207959552
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load double, double* @invsqrtpi, align 8
  %68 = load double, double* %8, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* %3, align 8
  %71 = call double @sqrt(double %70) #4
  %72 = fdiv double %69, %71
  store double %72, double* %4, align 8
  br label %90

73:                                               ; preds = %63
  %74 = load double, double* %3, align 8
  %75 = call double @pzero(double %74)
  store double %75, double* %10, align 8
  %76 = load double, double* %3, align 8
  %77 = call double @qzero(double %76)
  store double %77, double* %11, align 8
  %78 = load double, double* @invsqrtpi, align 8
  %79 = load double, double* %10, align 8
  %80 = load double, double* %8, align 8
  %81 = fmul double %79, %80
  %82 = load double, double* %11, align 8
  %83 = load double, double* %7, align 8
  %84 = fmul double %82, %83
  %85 = fsub double %81, %84
  %86 = fmul double %78, %85
  %87 = load double, double* %3, align 8
  %88 = call double @sqrt(double %87) #4
  %89 = fdiv double %86, %88
  store double %89, double* %4, align 8
  br label %90

90:                                               ; preds = %73, %66
  %91 = load double, double* %4, align 8
  store double %91, double* %2, align 8
  br label %178

92:                                               ; preds = %27
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 1059061760
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  %96 = load double, double* @huge, align 8
  %97 = load double, double* %3, align 8
  %98 = fadd double %96, %97
  %99 = load double, double* @one, align 8
  %100 = fcmp ogt double %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 1044381696
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load double, double* @one, align 8
  store double %105, double* %2, align 8
  br label %178

106:                                              ; preds = %101
  %107 = load double, double* @one, align 8
  %108 = load double, double* %3, align 8
  %109 = load double, double* %3, align 8
  %110 = fmul double %108, %109
  %111 = fdiv double %110, 4.000000e+00
  %112 = fsub double %107, %111
  store double %112, double* %2, align 8
  br label %178

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %92
  %115 = load double, double* %3, align 8
  %116 = load double, double* %3, align 8
  %117 = fmul double %115, %116
  store double %117, double* %4, align 8
  %118 = load double, double* %4, align 8
  %119 = load double, double* @R02, align 8
  %120 = load double, double* %4, align 8
  %121 = load double, double* @R03, align 8
  %122 = load double, double* %4, align 8
  %123 = load double, double* @R04, align 8
  %124 = load double, double* %4, align 8
  %125 = load double, double* @R05, align 8
  %126 = fmul double %124, %125
  %127 = fadd double %123, %126
  %128 = fmul double %122, %127
  %129 = fadd double %121, %128
  %130 = fmul double %120, %129
  %131 = fadd double %119, %130
  %132 = fmul double %118, %131
  store double %132, double* %9, align 8
  %133 = load double, double* @one, align 8
  %134 = load double, double* %4, align 8
  %135 = load double, double* @S01, align 8
  %136 = load double, double* %4, align 8
  %137 = load double, double* @S02, align 8
  %138 = load double, double* %4, align 8
  %139 = load double, double* @S03, align 8
  %140 = load double, double* %4, align 8
  %141 = load double, double* @S04, align 8
  %142 = fmul double %140, %141
  %143 = fadd double %139, %142
  %144 = fmul double %138, %143
  %145 = fadd double %137, %144
  %146 = fmul double %136, %145
  %147 = fadd double %135, %146
  %148 = fmul double %134, %147
  %149 = fadd double %133, %148
  store double %149, double* %5, align 8
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 1072693248
  br i1 %151, label %152, label %162

152:                                              ; preds = %114
  %153 = load double, double* @one, align 8
  %154 = load double, double* %4, align 8
  %155 = load double, double* %9, align 8
  %156 = load double, double* %5, align 8
  %157 = fdiv double %155, %156
  %158 = load double, double* @qrtr, align 8
  %159 = fsub double %157, %158
  %160 = fmul double %154, %159
  %161 = fadd double %153, %160
  store double %161, double* %2, align 8
  br label %178

162:                                              ; preds = %114
  %163 = load double, double* %3, align 8
  %164 = fdiv double %163, 2.000000e+00
  store double %164, double* %10, align 8
  %165 = load double, double* @one, align 8
  %166 = load double, double* %10, align 8
  %167 = fadd double %165, %166
  %168 = load double, double* @one, align 8
  %169 = load double, double* %10, align 8
  %170 = fsub double %168, %169
  %171 = fmul double %167, %170
  %172 = load double, double* %4, align 8
  %173 = load double, double* %9, align 8
  %174 = load double, double* %5, align 8
  %175 = fdiv double %173, %174
  %176 = fmul double %172, %175
  %177 = fadd double %171, %176
  store double %177, double* %2, align 8
  br label %178

178:                                              ; preds = %162, %152, %106, %104, %90, %21
  %179 = load double, double* %2, align 8
  ret double %179
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @sincos(double, double*, double*) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local double @pzero(double) #1

declare dso_local double @qzero(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
