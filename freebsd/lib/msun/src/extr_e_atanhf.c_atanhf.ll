; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atanhf.c_atanhf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atanhf.c_atanhf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = common dso_local global float 0.000000e+00, align 4
@huge = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_atanhf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store float %0, float* %3, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load float, float* %3, align 4
  %9 = call i32 @GET_FLOAT_WORD(i32 %7, float %8)
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 2147483647
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 1065353216
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load float, float* %3, align 4
  %16 = load float, float* %3, align 4
  %17 = fsub float %15, %16
  %18 = load float, float* %3, align 4
  %19 = load float, float* %3, align 4
  %20 = fsub float %18, %19
  %21 = fdiv float %17, %20
  store float %21, float* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1065353216
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load float, float* %3, align 4
  %27 = load float, float* @zero, align 4
  %28 = fdiv float %26, %27
  store float %28, float* %2, align 4
  br label %79

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 830472192
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load float, float* @huge, align 4
  %34 = load float, float* %3, align 4
  %35 = fadd float %33, %34
  %36 = load float, float* @zero, align 4
  %37 = fcmp ogt float %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load float, float* %3, align 4
  store float %39, float* %2, align 4
  br label %79

40:                                               ; preds = %32, %29
  %41 = load float, float* %3, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @SET_FLOAT_WORD(float %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 1056964608
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load float, float* %3, align 4
  %48 = load float, float* %3, align 4
  %49 = fadd float %47, %48
  store float %49, float* %4, align 4
  %50 = load float, float* %4, align 4
  %51 = load float, float* %4, align 4
  %52 = load float, float* %3, align 4
  %53 = fmul float %51, %52
  %54 = load float, float* @one, align 4
  %55 = load float, float* %3, align 4
  %56 = fsub float %54, %55
  %57 = fdiv float %53, %56
  %58 = fadd float %50, %57
  %59 = call float @log1pf(float %58) #3
  %60 = fmul float 5.000000e-01, %59
  store float %60, float* %4, align 4
  br label %71

61:                                               ; preds = %40
  %62 = load float, float* %3, align 4
  %63 = load float, float* %3, align 4
  %64 = fadd float %62, %63
  %65 = load float, float* @one, align 4
  %66 = load float, float* %3, align 4
  %67 = fsub float %65, %66
  %68 = fdiv float %64, %67
  %69 = call float @log1pf(float %68) #3
  %70 = fmul float 5.000000e-01, %69
  store float %70, float* %4, align 4
  br label %71

71:                                               ; preds = %61, %46
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load float, float* %4, align 4
  store float %75, float* %2, align 4
  br label %79

76:                                               ; preds = %71
  %77 = load float, float* %4, align 4
  %78 = fneg float %77
  store float %78, float* %2, align 4
  br label %79

79:                                               ; preds = %76, %74, %38, %25, %14
  %80 = load float, float* %2, align 4
  ret float %80
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

; Function Attrs: nounwind
declare dso_local float @log1pf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
