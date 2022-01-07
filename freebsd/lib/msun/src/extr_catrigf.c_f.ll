; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigf.c_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigf.c_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float)* @f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @f(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %8 = load float, float* %6, align 4
  %9 = fcmp olt float %8, 0.000000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load float, float* %7, align 4
  %12 = load float, float* %6, align 4
  %13 = fsub float %11, %12
  %14 = fdiv float %13, 2.000000e+00
  store float %14, float* %4, align 4
  br label %30

15:                                               ; preds = %3
  %16 = load float, float* %6, align 4
  %17 = fcmp oeq float %16, 0.000000e+00
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load float, float* %5, align 4
  %20 = fdiv float %19, 2.000000e+00
  store float %20, float* %4, align 4
  br label %30

21:                                               ; preds = %15
  %22 = load float, float* %5, align 4
  %23 = load float, float* %5, align 4
  %24 = fmul float %22, %23
  %25 = load float, float* %7, align 4
  %26 = load float, float* %6, align 4
  %27 = fadd float %25, %26
  %28 = fdiv float %24, %27
  %29 = fdiv float %28, 2.000000e+00
  store float %29, float* %4, align 4
  br label %30

30:                                               ; preds = %21, %18, %10
  %31 = load float, float* %4, align 4
  ret float %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
