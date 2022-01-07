; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_scalbnf.c_scalbnf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_scalbnf.c_scalbnf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two25 = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4
@huge = common dso_local global float 0.000000e+00, align 4
@twom25 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @scalbnf(float %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float %0, float* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load float, float* %4, align 4
  %10 = call i32 @GET_FLOAT_WORD(i32 %8, float %9)
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 2139095040
  %13 = ashr i32 %12, 23
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 2147483647
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load float, float* %4, align 4
  store float %21, float* %3, align 4
  br label %102

22:                                               ; preds = %16
  %23 = load float, float* @two25, align 4
  %24 = load float, float* %4, align 4
  %25 = fmul float %24, %23
  store float %25, float* %4, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load float, float* %4, align 4
  %28 = call i32 @GET_FLOAT_WORD(i32 %26, float %27)
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 2139095040
  %31 = ashr i32 %30, 23
  %32 = sub nsw i32 %31, 25
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, -50000
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load float, float* @tiny, align 4
  %37 = load float, float* %4, align 4
  %38 = fmul float %36, %37
  store float %38, float* %3, align 4
  br label %102

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load float, float* %4, align 4
  %45 = load float, float* %4, align 4
  %46 = fadd float %44, %45
  store float %46, float* %3, align 4
  br label %102

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 254
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load float, float* @huge, align 4
  %55 = load float, float* @huge, align 4
  %56 = load float, float* %4, align 4
  %57 = call float @llvm.copysign.f32(float %55, float %56)
  %58 = fmul float %54, %57
  store float %58, float* %3, align 4
  br label %102

59:                                               ; preds = %47
  %60 = load i32, i32* %6, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load float, float* %4, align 4
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, -2139095041
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 23
  %68 = or i32 %65, %67
  %69 = call i32 @SET_FLOAT_WORD(float %63, i32 %68)
  %70 = load float, float* %4, align 4
  store float %70, float* %3, align 4
  br label %102

71:                                               ; preds = %59
  %72 = load i32, i32* %6, align 4
  %73 = icmp sle i32 %72, -25
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp sgt i32 %75, 50000
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load float, float* @huge, align 4
  %79 = load float, float* @huge, align 4
  %80 = load float, float* %4, align 4
  %81 = call float @llvm.copysign.f32(float %79, float %80)
  %82 = fmul float %78, %81
  store float %82, float* %3, align 4
  br label %102

83:                                               ; preds = %74
  %84 = load float, float* @tiny, align 4
  %85 = load float, float* @tiny, align 4
  %86 = load float, float* %4, align 4
  %87 = call float @llvm.copysign.f32(float %85, float %86)
  %88 = fmul float %84, %87
  store float %88, float* %3, align 4
  br label %102

89:                                               ; preds = %71
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 25
  store i32 %91, i32* %6, align 4
  %92 = load float, float* %4, align 4
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, -2139095041
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 %95, 23
  %97 = or i32 %94, %96
  %98 = call i32 @SET_FLOAT_WORD(float %92, i32 %97)
  %99 = load float, float* %4, align 4
  %100 = load float, float* @twom25, align 4
  %101 = fmul float %99, %100
  store float %101, float* %3, align 4
  br label %102

102:                                              ; preds = %89, %83, %77, %62, %53, %43, %35, %20
  %103 = load float, float* %3, align 4
  ret float %103
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.copysign.f32(float, float) #2

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
