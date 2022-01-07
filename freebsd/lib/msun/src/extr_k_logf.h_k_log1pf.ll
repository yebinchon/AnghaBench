; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_logf.h_k_log1pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_logf.h_k_log1pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Lg2 = common dso_local global float 0.000000e+00, align 4
@Lg4 = common dso_local global float 0.000000e+00, align 4
@Lg1 = common dso_local global float 0.000000e+00, align 4
@Lg3 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @k_log1pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @k_log1pf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float %0, float* %2, align 4
  %10 = load float, float* %2, align 4
  %11 = load float, float* %2, align 4
  %12 = fadd float 2.000000e+00, %11
  %13 = fdiv float %10, %12
  store float %13, float* %4, align 4
  %14 = load float, float* %4, align 4
  %15 = load float, float* %4, align 4
  %16 = fmul float %14, %15
  store float %16, float* %5, align 4
  %17 = load float, float* %5, align 4
  %18 = load float, float* %5, align 4
  %19 = fmul float %17, %18
  store float %19, float* %7, align 4
  %20 = load float, float* %7, align 4
  %21 = load float, float* @Lg2, align 4
  %22 = load float, float* %7, align 4
  %23 = load float, float* @Lg4, align 4
  %24 = fmul float %22, %23
  %25 = fadd float %21, %24
  %26 = fmul float %20, %25
  store float %26, float* %8, align 4
  %27 = load float, float* %5, align 4
  %28 = load float, float* @Lg1, align 4
  %29 = load float, float* %7, align 4
  %30 = load float, float* @Lg3, align 4
  %31 = fmul float %29, %30
  %32 = fadd float %28, %31
  %33 = fmul float %27, %32
  store float %33, float* %9, align 4
  %34 = load float, float* %9, align 4
  %35 = load float, float* %8, align 4
  %36 = fadd float %34, %35
  store float %36, float* %6, align 4
  %37 = load float, float* %2, align 4
  %38 = fmul float 5.000000e-01, %37
  %39 = load float, float* %2, align 4
  %40 = fmul float %38, %39
  store float %40, float* %3, align 4
  %41 = load float, float* %4, align 4
  %42 = load float, float* %3, align 4
  %43 = load float, float* %6, align 4
  %44 = fadd float %42, %43
  %45 = fmul float %41, %44
  ret float %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
