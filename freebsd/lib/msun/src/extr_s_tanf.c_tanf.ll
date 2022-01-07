; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_tanf.c_tanf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_tanf.c_tanf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t1pio2 = common dso_local global float 0.000000e+00, align 4
@t2pio2 = common dso_local global float 0.000000e+00, align 4
@t3pio2 = common dso_local global float 0.000000e+00, align 4
@t4pio2 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @tanf(float %0) #0 {
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
  br label %113

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load float, float* %3, align 4
  %27 = fpext float %26 to double
  %28 = call float @__kernel_tandf(double %27, i32 1)
  store float %28, float* %2, align 4
  br label %113

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 1081824209
  br i1 %31, label %32, label %63

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 1075235811
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load float, float* %3, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load float, float* @t1pio2, align 4
  %41 = fneg float %40
  br label %44

42:                                               ; preds = %35
  %43 = load float, float* @t1pio2, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi float [ %41, %39 ], [ %43, %42 ]
  %46 = fadd float %36, %45
  %47 = fpext float %46 to double
  %48 = call float @__kernel_tandf(double %47, i32 -1)
  store float %48, float* %2, align 4
  br label %113

49:                                               ; preds = %32
  %50 = load float, float* %3, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load float, float* @t2pio2, align 4
  %55 = fneg float %54
  br label %58

56:                                               ; preds = %49
  %57 = load float, float* @t2pio2, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi float [ %55, %53 ], [ %57, %56 ]
  %60 = fadd float %50, %59
  %61 = fpext float %60 to double
  %62 = call float @__kernel_tandf(double %61, i32 1)
  store float %62, float* %2, align 4
  br label %113

63:                                               ; preds = %29
  %64 = load i32, i32* %7, align 4
  %65 = icmp sle i32 %64, 1088565717
  br i1 %65, label %66, label %97

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp sle i32 %67, 1085271519
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load float, float* %3, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load float, float* @t3pio2, align 4
  %75 = fneg float %74
  br label %78

76:                                               ; preds = %69
  %77 = load float, float* @t3pio2, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi float [ %75, %73 ], [ %77, %76 ]
  %80 = fadd float %70, %79
  %81 = fpext float %80 to double
  %82 = call float @__kernel_tandf(double %81, i32 -1)
  store float %82, float* %2, align 4
  br label %113

83:                                               ; preds = %66
  %84 = load float, float* %3, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load float, float* @t4pio2, align 4
  %89 = fneg float %88
  br label %92

90:                                               ; preds = %83
  %91 = load float, float* @t4pio2, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi float [ %89, %87 ], [ %91, %90 ]
  %94 = fadd float %84, %93
  %95 = fpext float %94 to double
  %96 = call float @__kernel_tandf(double %95, i32 1)
  store float %96, float* %2, align 4
  br label %113

97:                                               ; preds = %63
  %98 = load i32, i32* %7, align 4
  %99 = icmp sge i32 %98, 2139095040
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load float, float* %3, align 4
  %102 = load float, float* %3, align 4
  %103 = fsub float %101, %102
  store float %103, float* %2, align 4
  br label %113

104:                                              ; preds = %97
  %105 = load float, float* %3, align 4
  %106 = call i32 @__ieee754_rem_pio2f(float %105, double* %4)
  store i32 %106, i32* %5, align 4
  %107 = load double, double* %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 1
  %110 = shl i32 %109, 1
  %111 = sub nsw i32 1, %110
  %112 = call float @__kernel_tandf(double %107, i32 %111)
  store float %112, float* %2, align 4
  br label %113

113:                                              ; preds = %104, %100, %92, %78, %58, %44, %25, %22
  %114 = load float, float* %2, align 4
  ret float %114
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @__kernel_tandf(double, i32) #1

declare dso_local i32 @__ieee754_rem_pio2f(float, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
