; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_asinhf.c_asinhf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_asinhf.c_asinhf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4
@ln2 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @asinhf(float %0) #0 {
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
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load float, float* %3, align 4
  %17 = load float, float* %3, align 4
  %18 = fadd float %16, %17
  store float %18, float* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 830472192
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load float, float* @huge, align 4
  %24 = load float, float* %3, align 4
  %25 = fadd float %23, %24
  %26 = load float, float* @one, align 4
  %27 = fcmp ogt float %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load float, float* %3, align 4
  store float %29, float* %2, align 4
  br label %85

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 1300234240
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load float, float* %3, align 4
  %36 = call float @llvm.fabs.f32(float %35)
  %37 = call float @__ieee754_logf(float %36)
  %38 = load float, float* @ln2, align 4
  %39 = fadd float %37, %38
  store float %39, float* %5, align 4
  br label %77

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 1073741824
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load float, float* %3, align 4
  %45 = call float @llvm.fabs.f32(float %44)
  store float %45, float* %4, align 4
  %46 = load float, float* %4, align 4
  %47 = fmul float 2.000000e+00, %46
  %48 = load float, float* @one, align 4
  %49 = load float, float* %3, align 4
  %50 = load float, float* %3, align 4
  %51 = fmul float %49, %50
  %52 = load float, float* @one, align 4
  %53 = fadd float %51, %52
  %54 = call float @__ieee754_sqrtf(float %53)
  %55 = load float, float* %4, align 4
  %56 = fadd float %54, %55
  %57 = fdiv float %48, %56
  %58 = fadd float %47, %57
  %59 = call float @__ieee754_logf(float %58)
  store float %59, float* %5, align 4
  br label %76

60:                                               ; preds = %40
  %61 = load float, float* %3, align 4
  %62 = load float, float* %3, align 4
  %63 = fmul float %61, %62
  store float %63, float* %4, align 4
  %64 = load float, float* %3, align 4
  %65 = call float @llvm.fabs.f32(float %64)
  %66 = load float, float* %4, align 4
  %67 = load float, float* @one, align 4
  %68 = load float, float* @one, align 4
  %69 = load float, float* %4, align 4
  %70 = fadd float %68, %69
  %71 = call float @__ieee754_sqrtf(float %70)
  %72 = fadd float %67, %71
  %73 = fdiv float %66, %72
  %74 = fadd float %65, %73
  %75 = call float @log1pf(float %74) #4
  store float %75, float* %5, align 4
  br label %76

76:                                               ; preds = %60, %43
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load float, float* %5, align 4
  store float %81, float* %2, align 4
  br label %85

82:                                               ; preds = %77
  %83 = load float, float* %5, align 4
  %84 = fneg float %83
  store float %84, float* %2, align 4
  br label %85

85:                                               ; preds = %82, %80, %28, %15
  %86 = load float, float* %2, align 4
  ret float %86
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @__ieee754_logf(float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @__ieee754_sqrtf(float) #1

; Function Attrs: nounwind
declare dso_local float @log1pf(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
