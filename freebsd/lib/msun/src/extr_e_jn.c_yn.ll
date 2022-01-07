; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_jn.c_yn.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_jn.c_yn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8
@vzero = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@invsqrtpi = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_yn(i32 %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load double, double* %5, align 8
  %20 = call i32 @EXTRACT_WORDS(i32 %17, i32 %18, double %19)
  %21 = load i32, i32* %7, align 4
  %22 = and i32 2147483647, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 0, %25
  %27 = or i32 %24, %26
  %28 = ashr i32 %27, 31
  %29 = or i32 %23, %28
  %30 = icmp sgt i32 %29, 2146435072
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load double, double* %5, align 8
  %33 = load double, double* %5, align 8
  %34 = fadd double %32, %33
  store double %34, double* %3, align 8
  br label %161

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load double, double* @one, align 8
  %42 = fneg double %41
  %43 = load double, double* @vzero, align 8
  %44 = fdiv double %42, %43
  store double %44, double* %3, align 8
  br label %161

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load double, double* @vzero, align 8
  %50 = load double, double* @vzero, align 8
  %51 = fdiv double %49, %50
  store double %51, double* %3, align 8
  br label %161

52:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 1
  %60 = shl i32 %59, 1
  %61 = sub nsw i32 1, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load double, double* %5, align 8
  %67 = call double @__ieee754_y0(double %66)
  store double %67, double* %3, align 8
  br label %161

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = load double, double* %5, align 8
  %74 = call i32 @__ieee754_y1(double %73)
  %75 = mul nsw i32 %72, %74
  %76 = sitofp i32 %75 to double
  store double %76, double* %3, align 8
  br label %161

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 2146435072
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load double, double* @zero, align 8
  store double %81, double* %3, align 8
  br label %161

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %83, 1389363200
  br i1 %84, label %85, label %115

85:                                               ; preds = %82
  %86 = load double, double* %5, align 8
  %87 = call i32 @sincos(double %86, double* %14, double* %13)
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 3
  switch i32 %89, label %108 [
    i32 0, label %90
    i32 1, label %94
    i32 2, label %99
    i32 3, label %104
  ]

90:                                               ; preds = %85
  %91 = load double, double* %14, align 8
  %92 = load double, double* %13, align 8
  %93 = fsub double %91, %92
  store double %93, double* %15, align 8
  br label %108

94:                                               ; preds = %85
  %95 = load double, double* %14, align 8
  %96 = fneg double %95
  %97 = load double, double* %13, align 8
  %98 = fsub double %96, %97
  store double %98, double* %15, align 8
  br label %108

99:                                               ; preds = %85
  %100 = load double, double* %14, align 8
  %101 = fneg double %100
  %102 = load double, double* %13, align 8
  %103 = fadd double %101, %102
  store double %103, double* %15, align 8
  br label %108

104:                                              ; preds = %85
  %105 = load double, double* %14, align 8
  %106 = load double, double* %13, align 8
  %107 = fadd double %105, %106
  store double %107, double* %15, align 8
  br label %108

108:                                              ; preds = %85, %104, %99, %94, %90
  %109 = load double, double* @invsqrtpi, align 8
  %110 = load double, double* %15, align 8
  %111 = fmul double %109, %110
  %112 = load double, double* %5, align 8
  %113 = call double @sqrt(double %112) #3
  %114 = fdiv double %111, %113
  store double %114, double* %12, align 8
  br label %153

115:                                              ; preds = %82
  %116 = load double, double* %5, align 8
  %117 = call double @__ieee754_y0(double %116)
  store double %117, double* %11, align 8
  %118 = load double, double* %5, align 8
  %119 = call i32 @__ieee754_y1(double %118)
  %120 = sitofp i32 %119 to double
  store double %120, double* %12, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load double, double* %12, align 8
  %123 = call i32 @GET_HIGH_WORD(i32 %121, double %122)
  store i32 1, i32* %6, align 4
  br label %124

124:                                              ; preds = %149, %115
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, -1048576
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi i1 [ false, %124 ], [ %130, %128 ]
  br i1 %132, label %133, label %152

133:                                              ; preds = %131
  %134 = load double, double* %12, align 8
  store double %134, double* %15, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %135, %136
  %138 = sitofp i32 %137 to double
  %139 = load double, double* %5, align 8
  %140 = fdiv double %138, %139
  %141 = load double, double* %12, align 8
  %142 = fmul double %140, %141
  %143 = load double, double* %11, align 8
  %144 = fsub double %142, %143
  store double %144, double* %12, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load double, double* %12, align 8
  %147 = call i32 @GET_HIGH_WORD(i32 %145, double %146)
  %148 = load double, double* %15, align 8
  store double %148, double* %11, align 8
  br label %149

149:                                              ; preds = %133
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %124

152:                                              ; preds = %131
  br label %153

153:                                              ; preds = %152, %108
  %154 = load i32, i32* %10, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load double, double* %12, align 8
  store double %157, double* %3, align 8
  br label %161

158:                                              ; preds = %153
  %159 = load double, double* %12, align 8
  %160 = fneg double %159
  store double %160, double* %3, align 8
  br label %161

161:                                              ; preds = %158, %156, %80, %71, %65, %48, %40, %31
  %162 = load double, double* %3, align 8
  ret double %162
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local double @__ieee754_y0(double) #1

declare dso_local i32 @__ieee754_y1(double) #1

declare dso_local i32 @sincos(double, double*, double*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
