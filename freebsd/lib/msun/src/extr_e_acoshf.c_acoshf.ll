; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acoshf.c_acoshf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acoshf.c_acoshf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ln2 = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_acoshf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store float %0, float* %3, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load float, float* %3, align 4
  %8 = call i32 @GET_FLOAT_WORD(i32 %6, float %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 1065353216
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load float, float* %3, align 4
  %13 = load float, float* %3, align 4
  %14 = fsub float %12, %13
  %15 = load float, float* %3, align 4
  %16 = load float, float* %3, align 4
  %17 = fsub float %15, %16
  %18 = fdiv float %14, %17
  store float %18, float* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 1300234240
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 2139095040
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load float, float* %3, align 4
  %27 = load float, float* %3, align 4
  %28 = fadd float %26, %27
  store float %28, float* %2, align 4
  br label %71

29:                                               ; preds = %22
  %30 = load float, float* %3, align 4
  %31 = call float @__ieee754_logf(float %30)
  %32 = load float, float* @ln2, align 4
  %33 = fadd float %31, %32
  store float %33, float* %2, align 4
  br label %71

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 1065353216
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store float 0.000000e+00, float* %2, align 4
  br label %71

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 1073741824
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load float, float* %3, align 4
  %43 = load float, float* %3, align 4
  %44 = fmul float %42, %43
  store float %44, float* %4, align 4
  %45 = load float, float* %3, align 4
  %46 = fmul float 2.000000e+00, %45
  %47 = load float, float* @one, align 4
  %48 = load float, float* %3, align 4
  %49 = load float, float* %4, align 4
  %50 = load float, float* @one, align 4
  %51 = fsub float %49, %50
  %52 = call float @__ieee754_sqrtf(float %51)
  %53 = fadd float %48, %52
  %54 = fdiv float %47, %53
  %55 = fsub float %46, %54
  %56 = call float @__ieee754_logf(float %55)
  store float %56, float* %2, align 4
  br label %71

57:                                               ; preds = %38
  %58 = load float, float* %3, align 4
  %59 = load float, float* @one, align 4
  %60 = fsub float %58, %59
  store float %60, float* %4, align 4
  %61 = load float, float* %4, align 4
  %62 = load float, float* %4, align 4
  %63 = fmul float 2.000000e+00, %62
  %64 = load float, float* %4, align 4
  %65 = load float, float* %4, align 4
  %66 = fmul float %64, %65
  %67 = fadd float %63, %66
  %68 = call float @__ieee754_sqrtf(float %67)
  %69 = fadd float %61, %68
  %70 = call float @log1pf(float %69) #3
  store float %70, float* %2, align 4
  br label %71

71:                                               ; preds = %57, %41, %37, %29, %25, %11
  %72 = load float, float* %2, align 4
  ret float %72
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @__ieee754_logf(float) #1

declare dso_local float @__ieee754_sqrtf(float) #1

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
