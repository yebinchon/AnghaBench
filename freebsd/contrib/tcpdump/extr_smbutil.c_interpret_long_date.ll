; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_smbutil.c_interpret_long_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_smbutil.c_interpret_long_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (double*)* @interpret_long_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @interpret_long_date(double* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  store double* %0, double** %3, align 8
  %6 = load double*, double** %3, align 8
  %7 = getelementptr inbounds double, double* %6, i64 4
  %8 = call double @EXTRACT_LE_32BITS(double* %7)
  %9 = fmul double %8, 2.560000e+02
  %10 = load double*, double** %3, align 8
  %11 = getelementptr inbounds double, double* %10, i64 3
  %12 = load double, double* %11, align 8
  %13 = fadd double %9, %12
  %14 = fmul double %13, 0x3FFAD7F29ABCAF48
  store double %14, double* %4, align 8
  %15 = load double, double* %4, align 8
  %16 = fsub double %15, 0x4205B0A6CF000000
  store double %16, double* %4, align 8
  %17 = load double, double* %4, align 8
  %18 = fadd double %17, 2.808020e+05
  store double %18, double* %4, align 8
  %19 = load double, double* %4, align 8
  %20 = fcmp olt double %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load double, double* %4, align 8
  %24 = fptosi double %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %22, %21
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local double @EXTRACT_LE_32BITS(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
