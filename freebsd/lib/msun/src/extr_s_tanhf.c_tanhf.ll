; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_tanhf.c_tanhf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_tanhf.c_tanhf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@huge = common dso_local global float 0.000000e+00, align 4
@two = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @tanhf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
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
  %14 = icmp sge i32 %13, 2139095040
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load float, float* @one, align 4
  %20 = load float, float* %3, align 4
  %21 = fdiv float %19, %20
  %22 = load float, float* @one, align 4
  %23 = fadd float %21, %22
  store float %23, float* %2, align 4
  br label %89

24:                                               ; preds = %15
  %25 = load float, float* @one, align 4
  %26 = load float, float* %3, align 4
  %27 = fdiv float %25, %26
  %28 = load float, float* @one, align 4
  %29 = fsub float %27, %28
  store float %29, float* %2, align 4
  br label %89

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 1091567616
  br i1 %32, label %33, label %75

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 964689920
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load float, float* @huge, align 4
  %38 = load float, float* %3, align 4
  %39 = fadd float %37, %38
  %40 = load float, float* @one, align 4
  %41 = fcmp ogt float %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load float, float* %3, align 4
  store float %43, float* %2, align 4
  br label %89

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 1065353216
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load float, float* @two, align 4
  %50 = load float, float* %3, align 4
  %51 = call float @llvm.fabs.f32(float %50)
  %52 = fmul float %49, %51
  %53 = call float @expm1f(float %52) #4
  store float %53, float* %4, align 4
  %54 = load float, float* @one, align 4
  %55 = load float, float* @two, align 4
  %56 = load float, float* %4, align 4
  %57 = load float, float* @two, align 4
  %58 = fadd float %56, %57
  %59 = fdiv float %55, %58
  %60 = fsub float %54, %59
  store float %60, float* %5, align 4
  br label %74

61:                                               ; preds = %45
  %62 = load float, float* @two, align 4
  %63 = fneg float %62
  %64 = load float, float* %3, align 4
  %65 = call float @llvm.fabs.f32(float %64)
  %66 = fmul float %63, %65
  %67 = call float @expm1f(float %66) #4
  store float %67, float* %4, align 4
  %68 = load float, float* %4, align 4
  %69 = fneg float %68
  %70 = load float, float* %4, align 4
  %71 = load float, float* @two, align 4
  %72 = fadd float %70, %71
  %73 = fdiv float %69, %72
  store float %73, float* %5, align 4
  br label %74

74:                                               ; preds = %61, %48
  br label %79

75:                                               ; preds = %30
  %76 = load float, float* @one, align 4
  %77 = load float, float* @tiny, align 4
  %78 = fsub float %76, %77
  store float %78, float* %5, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load float, float* %5, align 4
  br label %87

84:                                               ; preds = %79
  %85 = load float, float* %5, align 4
  %86 = fneg float %85
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi float [ %83, %82 ], [ %86, %84 ]
  store float %88, float* %2, align 4
  br label %89

89:                                               ; preds = %87, %42, %24, %18
  %90 = load float, float* %2, align 4
  ret float %90
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind
declare dso_local float @expm1f(float) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
