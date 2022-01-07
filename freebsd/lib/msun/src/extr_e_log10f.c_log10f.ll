; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_log10f.c_log10f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_log10f.c_log10f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two25 = common dso_local global float 0.000000e+00, align 4
@vzero = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@log10_2lo = common dso_local global float 0.000000e+00, align 4
@ivln10lo = common dso_local global float 0.000000e+00, align 4
@ivln10hi = common dso_local global float 0.000000e+00, align 4
@log10_2hi = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_log10f(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %3, align 4
  %13 = load i32, i32* %12, align 4
  %14 = load float, float* %3, align 4
  %15 = call i32 @GET_FLOAT_WORD(i32 %13, float %14)
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 8388608
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load i32, i32* %12, align 4
  %20 = and i32 %19, 2147483647
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load float, float* @two25, align 4
  %24 = fneg float %23
  %25 = load float, float* @vzero, align 4
  %26 = fdiv float %24, %25
  store float %26, float* %2, align 4
  br label %126

27:                                               ; preds = %18
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load float, float* %3, align 4
  %32 = load float, float* %3, align 4
  %33 = fsub float %31, %32
  %34 = load float, float* @zero, align 4
  %35 = fdiv float %33, %34
  store float %35, float* %2, align 4
  br label %126

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %37, 25
  store i32 %38, i32* %11, align 4
  %39 = load float, float* @two25, align 4
  %40 = load float, float* %3, align 4
  %41 = fmul float %40, %39
  store float %41, float* %3, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load float, float* %3, align 4
  %44 = call i32 @GET_FLOAT_WORD(i32 %42, float %43)
  br label %45

45:                                               ; preds = %36, %1
  %46 = load i32, i32* %12, align 4
  %47 = icmp sge i32 %46, 2139095040
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load float, float* %3, align 4
  %50 = load float, float* %3, align 4
  %51 = fadd float %49, %50
  store float %51, float* %2, align 4
  br label %126

52:                                               ; preds = %45
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 1065353216
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load float, float* @zero, align 4
  store float %56, float* %2, align 4
  br label %126

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, 23
  %60 = sub nsw i32 %59, 127
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 8388607
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 4913933
  %67 = and i32 %66, 8388608
  store i32 %67, i32* %10, align 4
  %68 = load float, float* %3, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = xor i32 %70, 1065353216
  %72 = or i32 %69, %71
  %73 = call i32 @SET_FLOAT_WORD(float %68, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 23
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sitofp i32 %78 to float
  store float %79, float* %9, align 4
  %80 = load float, float* %3, align 4
  %81 = fsub float %80, 1.000000e+00
  store float %81, float* %4, align 4
  %82 = load float, float* %4, align 4
  %83 = fmul float 5.000000e-01, %82
  %84 = load float, float* %4, align 4
  %85 = fmul float %83, %84
  store float %85, float* %5, align 4
  %86 = load float, float* %4, align 4
  %87 = call float @k_log1pf(float %86)
  store float %87, float* %8, align 4
  %88 = load float, float* %4, align 4
  %89 = load float, float* %5, align 4
  %90 = fsub float %88, %89
  store float %90, float* %6, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load float, float* %6, align 4
  %93 = call i32 @GET_FLOAT_WORD(i32 %91, float %92)
  %94 = load float, float* %6, align 4
  %95 = load i32, i32* %12, align 4
  %96 = and i32 %95, -4096
  %97 = call i32 @SET_FLOAT_WORD(float %94, i32 %96)
  %98 = load float, float* %4, align 4
  %99 = load float, float* %6, align 4
  %100 = fsub float %98, %99
  %101 = load float, float* %5, align 4
  %102 = fsub float %100, %101
  %103 = load float, float* %8, align 4
  %104 = fadd float %102, %103
  store float %104, float* %7, align 4
  %105 = load float, float* %9, align 4
  %106 = load float, float* @log10_2lo, align 4
  %107 = fmul float %105, %106
  %108 = load float, float* %7, align 4
  %109 = load float, float* %6, align 4
  %110 = fadd float %108, %109
  %111 = load float, float* @ivln10lo, align 4
  %112 = fmul float %110, %111
  %113 = fadd float %107, %112
  %114 = load float, float* %7, align 4
  %115 = load float, float* @ivln10hi, align 4
  %116 = fmul float %114, %115
  %117 = fadd float %113, %116
  %118 = load float, float* %6, align 4
  %119 = load float, float* @ivln10hi, align 4
  %120 = fmul float %118, %119
  %121 = fadd float %117, %120
  %122 = load float, float* %9, align 4
  %123 = load float, float* @log10_2hi, align 4
  %124 = fmul float %122, %123
  %125 = fadd float %121, %124
  store float %125, float* %2, align 4
  br label %126

126:                                              ; preds = %57, %55, %48, %30, %22
  %127 = load float, float* %2, align 4
  ret float %127
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

declare dso_local float @k_log1pf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
