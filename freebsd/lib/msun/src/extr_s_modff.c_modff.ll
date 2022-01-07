; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_modff.c_modff.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_modff.c_modff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @modff(float %0, float* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float* %1, float** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load float, float* %4, align 4
  %13 = call i32 @GET_FLOAT_WORD(i32 %11, float %12)
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 23
  %16 = and i32 %15, 255
  %17 = sub nsw i32 %16, 127
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 23
  br i1 %19, label %20, label %60

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load float*, float** %5, align 8
  %25 = load float, float* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, -2147483648
  %28 = call i32 @SET_FLOAT_WORD(float %25, i32 %27)
  %29 = load float, float* %4, align 4
  store float %29, float* %3, align 4
  br label %79

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 8388607, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load float, float* %4, align 4
  %39 = load float*, float** %5, align 8
  store float %38, float* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load float, float* %4, align 4
  %42 = call i32 @GET_FLOAT_WORD(i32 %40, float %41)
  %43 = load float, float* %4, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, -2147483648
  %46 = call i32 @SET_FLOAT_WORD(float %43, i32 %45)
  %47 = load float, float* %4, align 4
  store float %47, float* %3, align 4
  br label %79

48:                                               ; preds = %30
  %49 = load float*, float** %5, align 8
  %50 = load float, float* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @SET_FLOAT_WORD(float %50, i32 %54)
  %56 = load float, float* %4, align 4
  %57 = load float*, float** %5, align 8
  %58 = load float, float* %57, align 4
  %59 = fsub float %56, %58
  store float %59, float* %3, align 4
  br label %79

60:                                               ; preds = %2
  %61 = load float, float* %4, align 4
  %62 = load float, float* @one, align 4
  %63 = fmul float %61, %62
  %64 = load float*, float** %5, align 8
  store float %63, float* %64, align 4
  %65 = load float, float* %4, align 4
  %66 = load float, float* %4, align 4
  %67 = fcmp une float %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load float, float* %4, align 4
  store float %69, float* %3, align 4
  br label %79

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = load float, float* %4, align 4
  %73 = call i32 @GET_FLOAT_WORD(i32 %71, float %72)
  %74 = load float, float* %4, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, -2147483648
  %77 = call i32 @SET_FLOAT_WORD(float %74, i32 %76)
  %78 = load float, float* %4, align 4
  store float %78, float* %3, align 4
  br label %79

79:                                               ; preds = %70, %68, %48, %37, %23
  %80 = load float, float* %3, align 4
  ret float %80
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
