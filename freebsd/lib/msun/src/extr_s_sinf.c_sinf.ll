; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sinf.c_sinf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sinf.c_sinf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s1pio2 = common dso_local global double 0.000000e+00, align 8
@s2pio2 = common dso_local global float 0.000000e+00, align 4
@s3pio2 = common dso_local global double 0.000000e+00, align 8
@s4pio2 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @sinf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float %0, float* %3, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load float, float* %3, align 4
  %10 = call i32 @GET_FLOAT_WORD(i32 %8, float %9)
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 2147483647
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 1061752794
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 964689920
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load float, float* %3, align 4
  %20 = fptosi float %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load float, float* %3, align 4
  store float %23, float* %2, align 4
  br label %127

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load float, float* %3, align 4
  %27 = fpext float %26 to double
  %28 = call float @__kernel_sindf(double %27)
  store float %28, float* %2, align 4
  br label %127

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 1081824209
  br i1 %31, label %32, label %65

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 1075235811
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load float, float* %3, align 4
  %40 = fpext float %39 to double
  %41 = load double, double* @s1pio2, align 8
  %42 = fsub double %40, %41
  %43 = call float @__kernel_cosdf(double %42)
  store float %43, float* %2, align 4
  br label %127

44:                                               ; preds = %35
  %45 = load float, float* %3, align 4
  %46 = fpext float %45 to double
  %47 = load double, double* @s1pio2, align 8
  %48 = fadd double %46, %47
  %49 = call float @__kernel_cosdf(double %48)
  %50 = fneg float %49
  store float %50, float* %2, align 4
  br label %127

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load float, float* @s2pio2, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load float, float* @s2pio2, align 4
  %58 = fneg float %57
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi float [ %55, %54 ], [ %58, %56 ]
  %61 = load float, float* %3, align 4
  %62 = fsub float %60, %61
  %63 = fpext float %62 to double
  %64 = call float @__kernel_sindf(double %63)
  store float %64, float* %2, align 4
  br label %127

65:                                               ; preds = %29
  %66 = load i32, i32* %7, align 4
  %67 = icmp sle i32 %66, 1088565717
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp sle i32 %69, 1085271519
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load float, float* %3, align 4
  %76 = fpext float %75 to double
  %77 = load double, double* @s3pio2, align 8
  %78 = fsub double %76, %77
  %79 = call float @__kernel_cosdf(double %78)
  %80 = fneg float %79
  store float %80, float* %2, align 4
  br label %127

81:                                               ; preds = %71
  %82 = load float, float* %3, align 4
  %83 = fpext float %82 to double
  %84 = load double, double* @s3pio2, align 8
  %85 = fadd double %83, %84
  %86 = call float @__kernel_cosdf(double %85)
  store float %86, float* %2, align 4
  br label %127

87:                                               ; preds = %68
  %88 = load float, float* %3, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load float, float* @s4pio2, align 4
  %93 = fneg float %92
  br label %96

94:                                               ; preds = %87
  %95 = load float, float* @s4pio2, align 4
  br label %96

96:                                               ; preds = %94, %91
  %97 = phi float [ %93, %91 ], [ %95, %94 ]
  %98 = fadd float %88, %97
  %99 = fpext float %98 to double
  %100 = call float @__kernel_sindf(double %99)
  store float %100, float* %2, align 4
  br label %127

101:                                              ; preds = %65
  %102 = load i32, i32* %7, align 4
  %103 = icmp sge i32 %102, 2139095040
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load float, float* %3, align 4
  %106 = load float, float* %3, align 4
  %107 = fsub float %105, %106
  store float %107, float* %2, align 4
  br label %127

108:                                              ; preds = %101
  %109 = load float, float* %3, align 4
  %110 = call i32 @__ieee754_rem_pio2f(float %109, double* %4)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, 3
  switch i32 %112, label %123 [
    i32 0, label %113
    i32 1, label %116
    i32 2, label %119
  ]

113:                                              ; preds = %108
  %114 = load double, double* %4, align 8
  %115 = call float @__kernel_sindf(double %114)
  store float %115, float* %2, align 4
  br label %127

116:                                              ; preds = %108
  %117 = load double, double* %4, align 8
  %118 = call float @__kernel_cosdf(double %117)
  store float %118, float* %2, align 4
  br label %127

119:                                              ; preds = %108
  %120 = load double, double* %4, align 8
  %121 = fneg double %120
  %122 = call float @__kernel_sindf(double %121)
  store float %122, float* %2, align 4
  br label %127

123:                                              ; preds = %108
  %124 = load double, double* %4, align 8
  %125 = call float @__kernel_cosdf(double %124)
  %126 = fneg float %125
  store float %126, float* %2, align 4
  br label %127

127:                                              ; preds = %123, %119, %116, %113, %104, %96, %81, %74, %59, %44, %38, %25, %22
  %128 = load float, float* %2, align 4
  ret float %128
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @__kernel_sindf(double) #1

declare dso_local float @__kernel_cosdf(double) #1

declare dso_local i32 @__ieee754_rem_pio2f(float, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
