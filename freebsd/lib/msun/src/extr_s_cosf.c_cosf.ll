; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cosf.c_cosf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cosf.c_cosf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c2pio2 = common dso_local global float 0.000000e+00, align 4
@c1pio2 = common dso_local global double 0.000000e+00, align 8
@c4pio2 = common dso_local global float 0.000000e+00, align 4
@c3pio2 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @cosf(float %0) #0 {
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
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 964689920
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load float, float* %3, align 4
  %20 = fptosi float %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store float 1.000000e+00, float* %2, align 4
  br label %126

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %15
  %25 = load float, float* %3, align 4
  %26 = fpext float %25 to double
  %27 = call float @__kernel_cosdf(double %26)
  store float %27, float* %2, align 4
  br label %126

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 1081824209
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 1075235811
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load float, float* %3, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load float, float* @c2pio2, align 4
  %40 = fneg float %39
  br label %43

41:                                               ; preds = %34
  %42 = load float, float* @c2pio2, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi float [ %40, %38 ], [ %42, %41 ]
  %45 = fadd float %35, %44
  %46 = fpext float %45 to double
  %47 = call float @__kernel_cosdf(double %46)
  %48 = fneg float %47
  store float %48, float* %2, align 4
  br label %126

49:                                               ; preds = %31
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load double, double* @c1pio2, align 8
  %54 = load float, float* %3, align 4
  %55 = fpext float %54 to double
  %56 = fsub double %53, %55
  %57 = call float @__kernel_sindf(double %56)
  store float %57, float* %2, align 4
  br label %126

58:                                               ; preds = %49
  %59 = load float, float* %3, align 4
  %60 = fpext float %59 to double
  %61 = load double, double* @c1pio2, align 8
  %62 = fadd double %60, %61
  %63 = call float @__kernel_sindf(double %62)
  store float %63, float* %2, align 4
  br label %126

64:                                               ; preds = %28
  %65 = load i32, i32* %7, align 4
  %66 = icmp sle i32 %65, 1088565717
  br i1 %66, label %67, label %100

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 1085271519
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load float, float* %3, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load float, float* @c4pio2, align 4
  %76 = fneg float %75
  br label %79

77:                                               ; preds = %70
  %78 = load float, float* @c4pio2, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi float [ %76, %74 ], [ %78, %77 ]
  %81 = fadd float %71, %80
  %82 = fpext float %81 to double
  %83 = call float @__kernel_cosdf(double %82)
  store float %83, float* %2, align 4
  br label %126

84:                                               ; preds = %67
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load float, float* %3, align 4
  %89 = load float, float* @c3pio2, align 4
  %90 = fsub float %88, %89
  %91 = fpext float %90 to double
  %92 = call float @__kernel_sindf(double %91)
  store float %92, float* %2, align 4
  br label %126

93:                                               ; preds = %84
  %94 = load float, float* @c3pio2, align 4
  %95 = fneg float %94
  %96 = load float, float* %3, align 4
  %97 = fsub float %95, %96
  %98 = fpext float %97 to double
  %99 = call float @__kernel_sindf(double %98)
  store float %99, float* %2, align 4
  br label %126

100:                                              ; preds = %64
  %101 = load i32, i32* %7, align 4
  %102 = icmp sge i32 %101, 2139095040
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load float, float* %3, align 4
  %105 = load float, float* %3, align 4
  %106 = fsub float %104, %105
  store float %106, float* %2, align 4
  br label %126

107:                                              ; preds = %100
  %108 = load float, float* %3, align 4
  %109 = call i32 @__ieee754_rem_pio2f(float %108, double* %4)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, 3
  switch i32 %111, label %123 [
    i32 0, label %112
    i32 1, label %115
    i32 2, label %119
  ]

112:                                              ; preds = %107
  %113 = load double, double* %4, align 8
  %114 = call float @__kernel_cosdf(double %113)
  store float %114, float* %2, align 4
  br label %126

115:                                              ; preds = %107
  %116 = load double, double* %4, align 8
  %117 = fneg double %116
  %118 = call float @__kernel_sindf(double %117)
  store float %118, float* %2, align 4
  br label %126

119:                                              ; preds = %107
  %120 = load double, double* %4, align 8
  %121 = call float @__kernel_cosdf(double %120)
  %122 = fneg float %121
  store float %122, float* %2, align 4
  br label %126

123:                                              ; preds = %107
  %124 = load double, double* %4, align 8
  %125 = call float @__kernel_sindf(double %124)
  store float %125, float* %2, align 4
  br label %126

126:                                              ; preds = %123, %119, %115, %112, %103, %93, %87, %79, %58, %52, %43, %24, %22
  %127 = load float, float* %2, align 4
  ret float %127
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @__kernel_cosdf(double) #1

declare dso_local float @__kernel_sindf(double) #1

declare dso_local i32 @__ieee754_rem_pio2f(float, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
