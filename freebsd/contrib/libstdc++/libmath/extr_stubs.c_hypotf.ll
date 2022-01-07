; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_hypotf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_hypotf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @hypotf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %7 = load float, float* %4, align 4
  %8 = call float @llvm.fabs.f32(float %7)
  %9 = load float, float* %5, align 4
  %10 = call float @llvm.fabs.f32(float %9)
  %11 = fadd float %8, %10
  store float %11, float* %6, align 4
  %12 = load float, float* %6, align 4
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load float, float* %6, align 4
  store float %15, float* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load float, float* %6, align 4
  %18 = load float, float* %4, align 4
  %19 = fdiv float %18, %17
  store float %19, float* %4, align 4
  %20 = load float, float* %6, align 4
  %21 = load float, float* %5, align 4
  %22 = fdiv float %21, %20
  store float %22, float* %5, align 4
  %23 = load float, float* %6, align 4
  %24 = load float, float* %4, align 4
  %25 = load float, float* %4, align 4
  %26 = fmul float %24, %25
  %27 = load float, float* %5, align 4
  %28 = load float, float* %5, align 4
  %29 = fmul float %27, %28
  %30 = fadd float %26, %29
  %31 = call float @sqrtf(float %30) #3
  %32 = fmul float %23, %31
  store float %32, float* %3, align 4
  br label %33

33:                                               ; preds = %16, %14
  %34 = load float, float* %3, align 4
  ret float %34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
