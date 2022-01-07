; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sinhf.c_sinhf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sinhf.c_sinhf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shuge = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_sinhf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float %0, float* %3, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load float, float* %3, align 4
  %10 = call i32 @GET_FLOAT_WORD(i32 %8, float %9)
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 2147483647
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 2139095040
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load float, float* %3, align 4
  %17 = load float, float* %3, align 4
  %18 = fadd float %16, %17
  store float %18, float* %2, align 4
  br label %92

19:                                               ; preds = %1
  store float 5.000000e-01, float* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load float, float* %5, align 4
  %24 = fneg float %23
  store float %24, float* %5, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 1091567616
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 964689920
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load float, float* @shuge, align 4
  %33 = load float, float* %3, align 4
  %34 = fadd float %32, %33
  %35 = load float, float* @one, align 4
  %36 = fcmp ogt float %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load float, float* %3, align 4
  store float %38, float* %2, align 4
  br label %92

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %28
  %41 = load float, float* %3, align 4
  %42 = call i32 @fabsf(float %41)
  %43 = call float @expm1f(i32 %42)
  store float %43, float* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 1065353216
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load float, float* %5, align 4
  %48 = load float, float* %4, align 4
  %49 = fmul float 2.000000e+00, %48
  %50 = load float, float* %4, align 4
  %51 = load float, float* %4, align 4
  %52 = fmul float %50, %51
  %53 = load float, float* %4, align 4
  %54 = load float, float* @one, align 4
  %55 = fadd float %53, %54
  %56 = fdiv float %52, %55
  %57 = fsub float %49, %56
  %58 = fmul float %47, %57
  store float %58, float* %2, align 4
  br label %92

59:                                               ; preds = %40
  %60 = load float, float* %5, align 4
  %61 = load float, float* %4, align 4
  %62 = load float, float* %4, align 4
  %63 = load float, float* %4, align 4
  %64 = load float, float* @one, align 4
  %65 = fadd float %63, %64
  %66 = fdiv float %62, %65
  %67 = fadd float %61, %66
  %68 = fmul float %60, %67
  store float %68, float* %2, align 4
  br label %92

69:                                               ; preds = %25
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 1118925335
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load float, float* %5, align 4
  %74 = load float, float* %3, align 4
  %75 = call i32 @fabsf(float %74)
  %76 = call float @__ieee754_expf(i32 %75)
  %77 = fmul float %73, %76
  store float %77, float* %2, align 4
  br label %92

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  %80 = icmp sle i32 %79, 1119016188
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load float, float* %5, align 4
  %83 = fmul float %82, 2.000000e+00
  %84 = load float, float* %3, align 4
  %85 = call i32 @fabsf(float %84)
  %86 = call float @__ldexp_expf(i32 %85, i32 -1)
  %87 = fmul float %83, %86
  store float %87, float* %2, align 4
  br label %92

88:                                               ; preds = %78
  %89 = load float, float* %3, align 4
  %90 = load float, float* @shuge, align 4
  %91 = fmul float %89, %90
  store float %91, float* %2, align 4
  br label %92

92:                                               ; preds = %88, %81, %72, %59, %46, %37, %15
  %93 = load float, float* %2, align 4
  ret float %93
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @expm1f(i32) #1

declare dso_local i32 @fabsf(float) #1

declare dso_local float @__ieee754_expf(i32) #1

declare dso_local float @__ldexp_expf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
