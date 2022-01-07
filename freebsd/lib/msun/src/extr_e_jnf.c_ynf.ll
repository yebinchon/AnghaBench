; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_jnf.c_ynf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_jnf.c_ynf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@vzero = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_ynf(i32 %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load float, float* %5, align 4
  %16 = call i32 @GET_FLOAT_WORD(i32 %14, float %15)
  %17 = load i32, i32* %7, align 4
  %18 = and i32 2147483647, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 2139095040
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load float, float* %5, align 4
  %23 = load float, float* %5, align 4
  %24 = fadd float %22, %23
  store float %24, float* %3, align 4
  br label %115

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load float, float* @one, align 4
  %30 = fneg float %29
  %31 = load float, float* @vzero, align 4
  %32 = fdiv float %30, %31
  store float %32, float* %3, align 4
  br label %115

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load float, float* @vzero, align 4
  %38 = load float, float* @vzero, align 4
  %39 = fdiv float %37, %38
  store float %39, float* %3, align 4
  br label %115

40:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 1
  %48 = shl i32 %47, 1
  %49 = sub nsw i32 1, %48
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load float, float* %5, align 4
  %55 = call float @__ieee754_y0f(float %54)
  store float %55, float* %3, align 4
  br label %115

56:                                               ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load float, float* %5, align 4
  %62 = call i32 @__ieee754_y1f(float %61)
  %63 = mul nsw i32 %60, %62
  %64 = sitofp i32 %63 to float
  store float %64, float* %3, align 4
  br label %115

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 2139095040
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load float, float* @zero, align 4
  store float %69, float* %3, align 4
  br label %115

70:                                               ; preds = %65
  %71 = load float, float* %5, align 4
  %72 = call float @__ieee754_y0f(float %71)
  store float %72, float* %11, align 4
  %73 = load float, float* %5, align 4
  %74 = call i32 @__ieee754_y1f(float %73)
  %75 = sitofp i32 %74 to float
  store float %75, float* %12, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load float, float* %12, align 4
  %78 = call i32 @GET_FLOAT_WORD(i32 %76, float %77)
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %104, %70
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, -8388608
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i1 [ false, %79 ], [ %85, %83 ]
  br i1 %87, label %88, label %107

88:                                               ; preds = %86
  %89 = load float, float* %12, align 4
  store float %89, float* %13, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %90, %91
  %93 = sitofp i32 %92 to float
  %94 = load float, float* %5, align 4
  %95 = fdiv float %93, %94
  %96 = load float, float* %12, align 4
  %97 = fmul float %95, %96
  %98 = load float, float* %11, align 4
  %99 = fsub float %97, %98
  store float %99, float* %12, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load float, float* %12, align 4
  %102 = call i32 @GET_FLOAT_WORD(i32 %100, float %101)
  %103 = load float, float* %13, align 4
  store float %103, float* %11, align 4
  br label %104

104:                                              ; preds = %88
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %79

107:                                              ; preds = %86
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load float, float* %12, align 4
  store float %111, float* %3, align 4
  br label %115

112:                                              ; preds = %107
  %113 = load float, float* %12, align 4
  %114 = fneg float %113
  store float %114, float* %3, align 4
  br label %115

115:                                              ; preds = %112, %110, %68, %59, %53, %36, %28, %21
  %116 = load float, float* %3, align 4
  ret float %116
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @__ieee754_y0f(float) #1

declare dso_local i32 @__ieee754_y1f(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
