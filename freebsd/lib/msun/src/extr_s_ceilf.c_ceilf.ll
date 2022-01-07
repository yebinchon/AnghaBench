; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_ceilf.c_ceilf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_ceilf.c_ceilf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local float @ceilf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store float %0, float* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load float, float* %3, align 4
  %9 = call i32 @GET_FLOAT_WORD(i32 %7, float %8)
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 23
  %12 = and i32 %11, 255
  %13 = sub nsw i32 %12, 127
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 23
  br i1 %15, label %16, label %64

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load float, float* @huge, align 4
  %21 = load float, float* %3, align 4
  %22 = fadd float %20, %21
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -2147483648, i32* %4, align 4
  br label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1065353216, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %27
  br label %34

34:                                               ; preds = %33, %19
  br label %63

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 8388607, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load float, float* %3, align 4
  store float %43, float* %2, align 4
  br label %78

44:                                               ; preds = %35
  %45 = load float, float* @huge, align 4
  %46 = load float, float* %3, align 4
  %47 = fadd float %45, %46
  %48 = fcmp ogt float %47, 0.000000e+00
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 8388608, %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %6, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %44
  br label %63

63:                                               ; preds = %62, %34
  br label %73

64:                                               ; preds = %1
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load float, float* %3, align 4
  %69 = load float, float* %3, align 4
  %70 = fadd float %68, %69
  store float %70, float* %2, align 4
  br label %78

71:                                               ; preds = %64
  %72 = load float, float* %3, align 4
  store float %72, float* %2, align 4
  br label %78

73:                                               ; preds = %63
  %74 = load float, float* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @SET_FLOAT_WORD(float %74, i32 %75)
  %77 = load float, float* %3, align 4
  store float %77, float* %2, align 4
  br label %78

78:                                               ; preds = %73, %71, %67, %42
  %79 = load float, float* %2, align 4
  ret float %79
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
