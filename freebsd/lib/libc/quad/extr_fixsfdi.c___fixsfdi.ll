; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_fixsfdi.c___fixsfdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_fixsfdi.c___fixsfdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUAD_MIN = common dso_local global float 0.000000e+00, align 4
@QUAD_MAX = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__fixsfdi(float %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp olt float %4, 0.000000e+00
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load float, float* %3, align 4
  %8 = load float, float* @QUAD_MIN, align 4
  %9 = fcmp ole float %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load float, float* @QUAD_MIN, align 4
  %12 = fptosi float %11 to i64
  store i64 %12, i64* %2, align 8
  br label %28

13:                                               ; preds = %6
  %14 = load float, float* %3, align 4
  %15 = fneg float %14
  %16 = fptosi float %15 to i64
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %2, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load float, float* %3, align 4
  %20 = load float, float* @QUAD_MAX, align 4
  %21 = fcmp oge float %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load float, float* @QUAD_MAX, align 4
  %24 = fptosi float %23 to i64
  store i64 %24, i64* %2, align 8
  br label %28

25:                                               ; preds = %18
  %26 = load float, float* %3, align 4
  %27 = fptosi float %26 to i64
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %25, %22, %13, %10
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
