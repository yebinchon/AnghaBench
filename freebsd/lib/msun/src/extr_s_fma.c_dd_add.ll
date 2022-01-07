; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fma.c_dd_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fma.c_dd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dd = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ double, double } (double, double)* @dd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { double, double } @dd_add(double %0, double %1) #0 {
  %3 = alloca %struct.dd, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %4, align 8
  %8 = load double, double* %5, align 8
  %9 = fadd double %7, %8
  %10 = getelementptr inbounds %struct.dd, %struct.dd* %3, i32 0, i32 0
  store double %9, double* %10, align 8
  %11 = getelementptr inbounds %struct.dd, %struct.dd* %3, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = load double, double* %4, align 8
  %14 = fsub double %12, %13
  store double %14, double* %6, align 8
  %15 = load double, double* %4, align 8
  %16 = getelementptr inbounds %struct.dd, %struct.dd* %3, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = load double, double* %6, align 8
  %19 = fsub double %17, %18
  %20 = fsub double %15, %19
  %21 = load double, double* %5, align 8
  %22 = load double, double* %6, align 8
  %23 = fsub double %21, %22
  %24 = fadd double %20, %23
  %25 = getelementptr inbounds %struct.dd, %struct.dd* %3, i32 0, i32 1
  store double %24, double* %25, align 8
  %26 = bitcast %struct.dd* %3 to { double, double }*
  %27 = load { double, double }, { double, double }* %26, align 8
  ret { double, double } %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
