; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_asinf.c_asinf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_asinf.c_asinf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pio2 = common dso_local global float 0.000000e+00, align 4
@huge = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4
@pS0 = common dso_local global float 0.000000e+00, align 4
@pS1 = common dso_local global float 0.000000e+00, align 4
@pS2 = common dso_local global float 0.000000e+00, align 4
@qS1 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_asinf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float %0, float* %3, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load float, float* %3, align 4
  %13 = call i32 @GET_FLOAT_WORD(i32 %11, float %12)
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, 2147483647
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sge i32 %16, 1065353216
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 1065353216
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load float, float* %3, align 4
  %23 = load float, float* @pio2, align 4
  %24 = fmul float %22, %23
  store float %24, float* %2, align 4
  br label %123

25:                                               ; preds = %18
  %26 = load float, float* %3, align 4
  %27 = load float, float* %3, align 4
  %28 = fsub float %26, %27
  %29 = load float, float* %3, align 4
  %30 = load float, float* %3, align 4
  %31 = fsub float %29, %30
  %32 = fdiv float %28, %31
  store float %32, float* %2, align 4
  br label %123

33:                                               ; preds = %1
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 1056964608
  br i1 %35, label %36, label %76

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 964689920
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load float, float* @huge, align 4
  %41 = load float, float* %3, align 4
  %42 = fadd float %40, %41
  %43 = load float, float* @one, align 4
  %44 = fcmp ogt float %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load float, float* %3, align 4
  store float %46, float* %2, align 4
  br label %123

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %36
  %49 = load float, float* %3, align 4
  %50 = load float, float* %3, align 4
  %51 = fmul float %49, %50
  store float %51, float* %5, align 4
  %52 = load float, float* %5, align 4
  %53 = load float, float* @pS0, align 4
  %54 = load float, float* %5, align 4
  %55 = load float, float* @pS1, align 4
  %56 = load float, float* %5, align 4
  %57 = load float, float* @pS2, align 4
  %58 = fmul float %56, %57
  %59 = fadd float %55, %58
  %60 = fmul float %54, %59
  %61 = fadd float %53, %60
  %62 = fmul float %52, %61
  store float %62, float* %7, align 4
  %63 = load float, float* @one, align 4
  %64 = load float, float* %5, align 4
  %65 = load float, float* @qS1, align 4
  %66 = fmul float %64, %65
  %67 = fadd float %63, %66
  store float %67, float* %8, align 4
  %68 = load float, float* %7, align 4
  %69 = load float, float* %8, align 4
  %70 = fdiv float %68, %69
  store float %70, float* %6, align 4
  %71 = load float, float* %3, align 4
  %72 = load float, float* %3, align 4
  %73 = load float, float* %6, align 4
  %74 = fmul float %72, %73
  %75 = fadd float %71, %74
  store float %75, float* %2, align 4
  br label %123

76:                                               ; preds = %33
  br label %77

77:                                               ; preds = %76
  %78 = load float, float* @one, align 4
  %79 = load float, float* %3, align 4
  %80 = call float @llvm.fabs.f32(float %79)
  %81 = fsub float %78, %80
  store float %81, float* %6, align 4
  %82 = load float, float* %6, align 4
  %83 = fmul float %82, 5.000000e-01
  store float %83, float* %5, align 4
  %84 = load float, float* %5, align 4
  %85 = load float, float* @pS0, align 4
  %86 = load float, float* %5, align 4
  %87 = load float, float* @pS1, align 4
  %88 = load float, float* %5, align 4
  %89 = load float, float* @pS2, align 4
  %90 = fmul float %88, %89
  %91 = fadd float %87, %90
  %92 = fmul float %86, %91
  %93 = fadd float %85, %92
  %94 = fmul float %84, %93
  store float %94, float* %7, align 4
  %95 = load float, float* @one, align 4
  %96 = load float, float* %5, align 4
  %97 = load float, float* @qS1, align 4
  %98 = fmul float %96, %97
  %99 = fadd float %95, %98
  store float %99, float* %8, align 4
  %100 = load float, float* %5, align 4
  %101 = call double @sqrt(float %100)
  store double %101, double* %4, align 8
  %102 = load float, float* %7, align 4
  %103 = load float, float* %8, align 4
  %104 = fdiv float %102, %103
  store float %104, float* %6, align 4
  %105 = load float, float* @pio2, align 4
  %106 = fpext float %105 to double
  %107 = load double, double* %4, align 8
  %108 = load double, double* %4, align 8
  %109 = load float, float* %6, align 4
  %110 = fpext float %109 to double
  %111 = fmul double %108, %110
  %112 = fadd double %107, %111
  %113 = fmul double 2.000000e+00, %112
  %114 = fsub double %106, %113
  %115 = fptrunc double %114 to float
  store float %115, float* %5, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %77
  %119 = load float, float* %5, align 4
  store float %119, float* %2, align 4
  br label %123

120:                                              ; preds = %77
  %121 = load float, float* %5, align 4
  %122 = fneg float %121
  store float %122, float* %2, align 4
  br label %123

123:                                              ; preds = %120, %118, %48, %45, %25, %21
  %124 = load float, float* %2, align 4
  ret float %124
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local double @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
