; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_exp.c___ldexp_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_exp.c___ldexp_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ldexp_exp(double %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load double, double* %3, align 8
  %9 = call double @__frexp_exp(double %8, i32* %7)
  store double %9, double* %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load double, double* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 1023, %14
  %16 = shl i32 %15, 20
  %17 = call i32 @INSERT_WORDS(double %13, i32 %16, i32 0)
  %18 = load double, double* %5, align 8
  %19 = load double, double* %6, align 8
  %20 = fmul double %18, %19
  ret double %20
}

declare dso_local double @__frexp_exp(double, i32*) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
