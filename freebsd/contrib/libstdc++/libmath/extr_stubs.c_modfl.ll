; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_modfl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_modfl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @modfl(x86_fp80 %0, x86_fp80* %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80* %1, x86_fp80** %4, align 8
  %7 = load x86_fp80, x86_fp80* %3, align 16
  %8 = fptrunc x86_fp80 %7 to double
  %9 = call double @modf(double %8, double* %6) #2
  store double %9, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fpext double %10 to x86_fp80
  %12 = load x86_fp80*, x86_fp80** %4, align 8
  store x86_fp80 %11, x86_fp80* %12, align 16
  %13 = load double, double* %5, align 8
  %14 = fpext double %13 to x86_fp80
  ret x86_fp80 %14
}

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
