; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-snprintf.c_my_modf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-snprintf.c_my_modf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double*)* @my_modf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @my_modf(double %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  store double* %1, double** %5, align 8
  %12 = load double, double* %4, align 8
  store double %12, double* %8, align 8
  store double 1.000000e+00, double* %9, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load double, double* %8, align 8
  %18 = fptosi double %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = sitofp i64 %19 to double
  %21 = load double, double* %8, align 8
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp ole double %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = sitofp i64 %25 to double
  %27 = load double, double* %8, align 8
  %28 = fsub double %27, 1.000000e+00
  %29 = fcmp oge double %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %39

31:                                               ; preds = %24, %16
  %32 = load double, double* %8, align 8
  %33 = fmul double %32, 1.000000e-01
  store double %33, double* %8, align 8
  %34 = load double, double* %9, align 8
  %35 = fmul double %34, 1.000000e+01
  store double %35, double* %9, align 8
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %13

39:                                               ; preds = %30, %13
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 100
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %43, align 8
  store double 0.000000e+00, double* %3, align 8
  br label %71

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load double, double* %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sitofp i64 %49 to double
  %51 = load double, double* %9, align 8
  %52 = fmul double %50, %51
  %53 = fsub double %48, %52
  %54 = call double @my_modf(double %53, double* %10)
  store double %54, double* %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sitofp i64 %55 to double
  %57 = load double, double* %9, align 8
  %58 = fmul double %56, %57
  %59 = load double, double* %10, align 8
  %60 = fadd double %58, %59
  %61 = load double*, double** %5, align 8
  store double %60, double* %61, align 8
  %62 = load double, double* %11, align 8
  store double %62, double* %3, align 8
  br label %71

63:                                               ; preds = %44
  %64 = load i64, i64* %7, align 8
  %65 = sitofp i64 %64 to double
  %66 = load double*, double** %5, align 8
  store double %65, double* %66, align 8
  %67 = load double, double* %8, align 8
  %68 = load double*, double** %5, align 8
  %69 = load double, double* %68, align 8
  %70 = fsub double %67, %69
  store double %70, double* %3, align 8
  br label %71

71:                                               ; preds = %63, %47, %42
  %72 = load double, double* %3, align 8
  ret double %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
