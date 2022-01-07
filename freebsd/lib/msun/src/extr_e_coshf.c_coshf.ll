; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_coshf.c_coshf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_coshf.c_coshf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@half = common dso_local global float 0.000000e+00, align 4
@huge = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_coshf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float %0, float* %3, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load float, float* %3, align 4
  %9 = call i32 @GET_FLOAT_WORD(i32 %7, float %8)
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 2147483647
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 2139095040
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load float, float* %3, align 4
  %16 = load float, float* %3, align 4
  %17 = fmul float %15, %16
  store float %17, float* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 1051816472
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load float, float* %3, align 4
  %23 = call i32 @fabsf(float %22)
  %24 = call float @expm1f(i32 %23)
  store float %24, float* %4, align 4
  %25 = load float, float* @one, align 4
  %26 = load float, float* %4, align 4
  %27 = fadd float %25, %26
  store float %27, float* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 964689920
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load float, float* @one, align 4
  store float %31, float* %2, align 4
  br label %76

32:                                               ; preds = %21
  %33 = load float, float* @one, align 4
  %34 = load float, float* %4, align 4
  %35 = load float, float* %4, align 4
  %36 = fmul float %34, %35
  %37 = load float, float* %5, align 4
  %38 = load float, float* %5, align 4
  %39 = fadd float %37, %38
  %40 = fdiv float %36, %39
  %41 = fadd float %33, %40
  store float %41, float* %2, align 4
  br label %76

42:                                               ; preds = %18
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 1091567616
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load float, float* %3, align 4
  %47 = call i32 @fabsf(float %46)
  %48 = call float @__ieee754_expf(i32 %47)
  store float %48, float* %4, align 4
  %49 = load float, float* @half, align 4
  %50 = load float, float* %4, align 4
  %51 = fmul float %49, %50
  %52 = load float, float* @half, align 4
  %53 = load float, float* %4, align 4
  %54 = fdiv float %52, %53
  %55 = fadd float %51, %54
  store float %55, float* %2, align 4
  br label %76

56:                                               ; preds = %42
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 1118925335
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load float, float* @half, align 4
  %61 = load float, float* %3, align 4
  %62 = call i32 @fabsf(float %61)
  %63 = call float @__ieee754_expf(i32 %62)
  %64 = fmul float %60, %63
  store float %64, float* %2, align 4
  br label %76

65:                                               ; preds = %56
  %66 = load i32, i32* %6, align 4
  %67 = icmp sle i32 %66, 1119016188
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load float, float* %3, align 4
  %70 = call i32 @fabsf(float %69)
  %71 = call float @__ldexp_expf(i32 %70, i32 -1)
  store float %71, float* %2, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load float, float* @huge, align 4
  %74 = load float, float* @huge, align 4
  %75 = fmul float %73, %74
  store float %75, float* %2, align 4
  br label %76

76:                                               ; preds = %72, %68, %59, %45, %32, %30, %14
  %77 = load float, float* %2, align 4
  ret float %77
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
