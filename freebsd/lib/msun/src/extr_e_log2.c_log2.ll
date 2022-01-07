; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_log2.c_log2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_log2.c_log2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two54 = common dso_local global double 0.000000e+00, align 8
@vzero = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@ivln2hi = common dso_local global double 0.000000e+00, align 8
@ivln2lo = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_log2(double %0) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store double %0, double* %3, align 8
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %16, align 4
  %19 = load double, double* %3, align 8
  %20 = call i32 @EXTRACT_WORDS(i32 %17, i32 %18, double %19)
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %21, 1048576
  br i1 %22, label %23, label %52

23:                                               ; preds = %1
  %24 = load i32, i32* %15, align 4
  %25 = and i32 %24, 2147483647
  %26 = load i32, i32* %16, align 4
  %27 = or i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load double, double* @two54, align 8
  %31 = fneg double %30
  %32 = load double, double* @vzero, align 8
  %33 = fdiv double %31, %32
  store double %33, double* %2, align 8
  br label %136

34:                                               ; preds = %23
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load double, double* %3, align 8
  %39 = load double, double* %3, align 8
  %40 = fsub double %38, %39
  %41 = load double, double* @zero, align 8
  %42 = fdiv double %40, %41
  store double %42, double* %2, align 8
  br label %136

43:                                               ; preds = %34
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 %44, 54
  store i32 %45, i32* %14, align 4
  %46 = load double, double* @two54, align 8
  %47 = load double, double* %3, align 8
  %48 = fmul double %47, %46
  store double %48, double* %3, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load double, double* %3, align 8
  %51 = call i32 @GET_HIGH_WORD(i32 %49, double %50)
  br label %52

52:                                               ; preds = %43, %1
  %53 = load i32, i32* %15, align 4
  %54 = icmp sge i32 %53, 2146435072
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load double, double* %3, align 8
  %57 = load double, double* %3, align 8
  %58 = fadd double %56, %57
  store double %58, double* %2, align 8
  br label %136

59:                                               ; preds = %52
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 1072693248
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load double, double* @zero, align 8
  store double %66, double* %2, align 8
  br label %136

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %15, align 4
  %69 = ashr i32 %68, 20
  %70 = sub nsw i32 %69, 1023
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %73, 1048575
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 614244
  %77 = and i32 %76, 1048576
  store i32 %77, i32* %13, align 4
  %78 = load double, double* %3, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %13, align 4
  %81 = xor i32 %80, 1072693248
  %82 = or i32 %79, %81
  %83 = call i32 @SET_HIGH_WORD(double %78, i32 %82)
  %84 = load i32, i32* %13, align 4
  %85 = ashr i32 %84, 20
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sitofp i32 %88 to double
  store double %89, double* %12, align 8
  %90 = load double, double* %3, align 8
  %91 = fsub double %90, 1.000000e+00
  store double %91, double* %4, align 8
  %92 = load double, double* %4, align 8
  %93 = fmul double 5.000000e-01, %92
  %94 = load double, double* %4, align 8
  %95 = fmul double %93, %94
  store double %95, double* %5, align 8
  %96 = load double, double* %4, align 8
  %97 = call double @k_log1p(double %96)
  store double %97, double* %8, align 8
  %98 = load double, double* %4, align 8
  %99 = load double, double* %5, align 8
  %100 = fsub double %98, %99
  store double %100, double* %6, align 8
  %101 = load double, double* %6, align 8
  %102 = call i32 @SET_LOW_WORD(double %101, i32 0)
  %103 = load double, double* %4, align 8
  %104 = load double, double* %6, align 8
  %105 = fsub double %103, %104
  %106 = load double, double* %5, align 8
  %107 = fsub double %105, %106
  %108 = load double, double* %8, align 8
  %109 = fadd double %107, %108
  store double %109, double* %7, align 8
  %110 = load double, double* %6, align 8
  %111 = load double, double* @ivln2hi, align 8
  %112 = fmul double %110, %111
  store double %112, double* %9, align 8
  %113 = load double, double* %7, align 8
  %114 = load double, double* %6, align 8
  %115 = fadd double %113, %114
  %116 = load double, double* @ivln2lo, align 8
  %117 = fmul double %115, %116
  %118 = load double, double* %7, align 8
  %119 = load double, double* @ivln2hi, align 8
  %120 = fmul double %118, %119
  %121 = fadd double %117, %120
  store double %121, double* %10, align 8
  %122 = load double, double* %12, align 8
  %123 = load double, double* %9, align 8
  %124 = fadd double %122, %123
  store double %124, double* %11, align 8
  %125 = load double, double* %12, align 8
  %126 = load double, double* %11, align 8
  %127 = fsub double %125, %126
  %128 = load double, double* %9, align 8
  %129 = fadd double %127, %128
  %130 = load double, double* %10, align 8
  %131 = fadd double %130, %129
  store double %131, double* %10, align 8
  %132 = load double, double* %11, align 8
  store double %132, double* %9, align 8
  %133 = load double, double* %10, align 8
  %134 = load double, double* %9, align 8
  %135 = fadd double %133, %134
  store double %135, double* %2, align 8
  br label %136

136:                                              ; preds = %67, %65, %55, %37, %29
  %137 = load double, double* %2, align 8
  ret double %137
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

declare dso_local double @k_log1p(double) #1

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
