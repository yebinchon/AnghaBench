; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_frexpf.c_frexpf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_frexpf.c_frexpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two25 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @frexpf(float %0, i32* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store float %0, float* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load float, float* %4, align 4
  %10 = call i32 @GET_FLOAT_WORD(i32 %8, float %9)
  %11 = load i32, i32* %6, align 4
  %12 = and i32 2147483647, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 2139095040
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %2
  %20 = load float, float* %4, align 4
  store float %20, float* %3, align 4
  br label %48

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 8388608
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load float, float* @two25, align 4
  %26 = load float, float* %4, align 4
  %27 = fmul float %26, %25
  store float %27, float* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load float, float* %4, align 4
  %30 = call i32 @GET_FLOAT_WORD(i32 %28, float %29)
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 2147483647
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 -25, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 23
  %37 = sub nsw i32 %36, 126
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, -2139095041
  %43 = or i32 %42, 1056964608
  store i32 %43, i32* %6, align 4
  %44 = load float, float* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @SET_FLOAT_WORD(float %44, i32 %45)
  %47 = load float, float* %4, align 4
  store float %47, float* %3, align 4
  br label %48

48:                                               ; preds = %34, %19
  %49 = load float, float* %3, align 4
  ret float %49
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
