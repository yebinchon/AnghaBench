; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_hypot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_hypot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @hypot(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %4, align 8
  %8 = call double @llvm.fabs.f64(double %7)
  %9 = load double, double* %5, align 8
  %10 = call double @llvm.fabs.f64(double %9)
  %11 = fadd double %8, %10
  store double %11, double* %6, align 8
  %12 = load double, double* %6, align 8
  %13 = fcmp oeq double %12, 0.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load double, double* %6, align 8
  store double %15, double* %3, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load double, double* %6, align 8
  %18 = load double, double* %4, align 8
  %19 = fdiv double %18, %17
  store double %19, double* %4, align 8
  %20 = load double, double* %6, align 8
  %21 = load double, double* %5, align 8
  %22 = fdiv double %21, %20
  store double %22, double* %5, align 8
  %23 = load double, double* %6, align 8
  %24 = load double, double* %4, align 8
  %25 = load double, double* %4, align 8
  %26 = fmul double %24, %25
  %27 = load double, double* %5, align 8
  %28 = load double, double* %5, align 8
  %29 = fmul double %27, %28
  %30 = fadd double %26, %29
  %31 = call double @sqrt(double %30) #3
  %32 = fmul double %23, %31
  store double %32, double* %3, align 8
  br label %33

33:                                               ; preds = %16, %14
  %34 = load double, double* %3, align 8
  ret double %34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
