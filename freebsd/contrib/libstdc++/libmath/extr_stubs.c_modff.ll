; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_modff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_modff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @modff(float %0, float* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store float %0, float* %3, align 4
  store float* %1, float** %4, align 8
  %7 = load float, float* %3, align 4
  %8 = call double @modf(float %7, double* %6)
  store double %8, double* %5, align 8
  %9 = load double, double* %6, align 8
  %10 = fptrunc double %9 to float
  %11 = load float*, float** %4, align 8
  store float %10, float* %11, align 4
  %12 = load double, double* %5, align 8
  %13 = fptrunc double %12 to float
  ret float %13
}

declare dso_local double @modf(float, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
