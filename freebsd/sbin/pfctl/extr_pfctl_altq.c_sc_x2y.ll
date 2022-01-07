; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_sc_x2y.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_sc_x2y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_curve = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.service_curve*, double)* @sc_x2y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @sc_x2y(%struct.service_curve* %0, double %1) #0 {
  %3 = alloca %struct.service_curve*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.service_curve* %0, %struct.service_curve** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = load %struct.service_curve*, %struct.service_curve** %3, align 8
  %8 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = fcmp ole double %6, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load double, double* %4, align 8
  %14 = load %struct.service_curve*, %struct.service_curve** %3, align 8
  %15 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = sitofp i64 %16 to double
  %18 = fmul double %13, %17
  store double %18, double* %5, align 8
  br label %41

19:                                               ; preds = %2
  %20 = load %struct.service_curve*, %struct.service_curve** %3, align 8
  %21 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sitofp i64 %22 to double
  %24 = load %struct.service_curve*, %struct.service_curve** %3, align 8
  %25 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = fmul double %23, %27
  %29 = load double, double* %4, align 8
  %30 = load %struct.service_curve*, %struct.service_curve** %3, align 8
  %31 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sitofp i64 %32 to double
  %34 = fsub double %29, %33
  %35 = load %struct.service_curve*, %struct.service_curve** %3, align 8
  %36 = getelementptr inbounds %struct.service_curve, %struct.service_curve* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to double
  %39 = fmul double %34, %38
  %40 = fadd double %28, %39
  store double %40, double* %5, align 8
  br label %41

41:                                               ; preds = %19, %12
  %42 = load double, double* %5, align 8
  ret double %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
