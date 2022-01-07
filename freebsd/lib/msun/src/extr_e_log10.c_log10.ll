; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_log10.c_log10.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_log10.c_log10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two54 = common dso_local global double 0.000000e+00, align 8
@vzero = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@ivln10hi = common dso_local global double 0.000000e+00, align 8
@log10_2hi = common dso_local global double 0.000000e+00, align 8
@log10_2lo = common dso_local global double 0.000000e+00, align 8
@ivln10lo = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_log10(double %0) #0 {
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
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store double %0, double* %3, align 8
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* %17, align 4
  %20 = load double, double* %3, align 8
  %21 = call i32 @EXTRACT_WORDS(i32 %18, i32 %19, double %20)
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp slt i32 %22, 1048576
  br i1 %23, label %24, label %53

24:                                               ; preds = %1
  %25 = load i32, i32* %16, align 4
  %26 = and i32 %25, 2147483647
  %27 = load i32, i32* %17, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load double, double* @two54, align 8
  %32 = fneg double %31
  %33 = load double, double* @vzero, align 8
  %34 = fdiv double %32, %33
  store double %34, double* %2, align 8
  br label %144

35:                                               ; preds = %24
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load double, double* %3, align 8
  %40 = load double, double* %3, align 8
  %41 = fsub double %39, %40
  %42 = load double, double* @zero, align 8
  %43 = fdiv double %41, %42
  store double %43, double* %2, align 8
  br label %144

44:                                               ; preds = %35
  %45 = load i32, i32* %15, align 4
  %46 = sub nsw i32 %45, 54
  store i32 %46, i32* %15, align 4
  %47 = load double, double* @two54, align 8
  %48 = load double, double* %3, align 8
  %49 = fmul double %48, %47
  store double %49, double* %3, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load double, double* %3, align 8
  %52 = call i32 @GET_HIGH_WORD(i32 %50, double %51)
  br label %53

53:                                               ; preds = %44, %1
  %54 = load i32, i32* %16, align 4
  %55 = icmp sge i32 %54, 2146435072
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load double, double* %3, align 8
  %58 = load double, double* %3, align 8
  %59 = fadd double %57, %58
  store double %59, double* %2, align 8
  br label %144

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, 1072693248
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load double, double* @zero, align 8
  store double %67, double* %2, align 8
  br label %144

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %16, align 4
  %70 = ashr i32 %69, 20
  %71 = sub nsw i32 %70, 1023
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = and i32 %74, 1048575
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 614244
  %78 = and i32 %77, 1048576
  store i32 %78, i32* %14, align 4
  %79 = load double, double* %3, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %14, align 4
  %82 = xor i32 %81, 1072693248
  %83 = or i32 %80, %82
  %84 = call i32 @SET_HIGH_WORD(double %79, i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = ashr i32 %85, 20
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sitofp i32 %89 to double
  store double %90, double* %12, align 8
  %91 = load double, double* %3, align 8
  %92 = fsub double %91, 1.000000e+00
  store double %92, double* %4, align 8
  %93 = load double, double* %4, align 8
  %94 = fmul double 5.000000e-01, %93
  %95 = load double, double* %4, align 8
  %96 = fmul double %94, %95
  store double %96, double* %5, align 8
  %97 = load double, double* %4, align 8
  %98 = call double @k_log1p(double %97)
  store double %98, double* %8, align 8
  %99 = load double, double* %4, align 8
  %100 = load double, double* %5, align 8
  %101 = fsub double %99, %100
  store double %101, double* %6, align 8
  %102 = load double, double* %6, align 8
  %103 = call i32 @SET_LOW_WORD(double %102, i32 0)
  %104 = load double, double* %4, align 8
  %105 = load double, double* %6, align 8
  %106 = fsub double %104, %105
  %107 = load double, double* %5, align 8
  %108 = fsub double %106, %107
  %109 = load double, double* %8, align 8
  %110 = fadd double %108, %109
  store double %110, double* %7, align 8
  %111 = load double, double* %6, align 8
  %112 = load double, double* @ivln10hi, align 8
  %113 = fmul double %111, %112
  store double %113, double* %9, align 8
  %114 = load double, double* %12, align 8
  %115 = load double, double* @log10_2hi, align 8
  %116 = fmul double %114, %115
  store double %116, double* %13, align 8
  %117 = load double, double* %12, align 8
  %118 = load double, double* @log10_2lo, align 8
  %119 = fmul double %117, %118
  %120 = load double, double* %7, align 8
  %121 = load double, double* %6, align 8
  %122 = fadd double %120, %121
  %123 = load double, double* @ivln10lo, align 8
  %124 = fmul double %122, %123
  %125 = fadd double %119, %124
  %126 = load double, double* %7, align 8
  %127 = load double, double* @ivln10hi, align 8
  %128 = fmul double %126, %127
  %129 = fadd double %125, %128
  store double %129, double* %10, align 8
  %130 = load double, double* %13, align 8
  %131 = load double, double* %9, align 8
  %132 = fadd double %130, %131
  store double %132, double* %11, align 8
  %133 = load double, double* %13, align 8
  %134 = load double, double* %11, align 8
  %135 = fsub double %133, %134
  %136 = load double, double* %9, align 8
  %137 = fadd double %135, %136
  %138 = load double, double* %10, align 8
  %139 = fadd double %138, %137
  store double %139, double* %10, align 8
  %140 = load double, double* %11, align 8
  store double %140, double* %9, align 8
  %141 = load double, double* %10, align 8
  %142 = load double, double* %9, align 8
  %143 = fadd double %141, %142
  store double %143, double* %2, align 8
  br label %144

144:                                              ; preds = %68, %66, %56, %38, %30
  %145 = load double, double* %2, align 8
  ret double %145
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
