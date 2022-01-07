; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_waveangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_waveangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EARTHRADIUS = common dso_local global double 0.000000e+00, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"waveangle dist %g height %g hops %d angle %g\0A\00", align 1
@RADPERDEG = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, i32)* @waveangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @waveangle(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load double, double* %4, align 8
  %10 = load double, double* @EARTHRADIUS, align 8
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 2, %11
  %13 = sitofp i32 %12 to double
  %14 = fmul double %10, %13
  %15 = fdiv double %9, %14
  store double %15, double* %7, align 8
  %16 = load double, double* %5, align 8
  %17 = load double, double* @EARTHRADIUS, align 8
  %18 = load double, double* %7, align 8
  %19 = call double @sin(double %18) #3
  %20 = fmul double %17, %19
  %21 = fdiv double %16, %20
  %22 = load double, double* %7, align 8
  %23 = fdiv double %22, 2.000000e+00
  %24 = call i64 @tan(double %23)
  %25 = sitofp i64 %24 to double
  %26 = fadd double %21, %25
  %27 = fptosi double %26 to i64
  %28 = call double @atan(i64 %27)
  %29 = load double, double* %7, align 8
  %30 = fsub double %28, %29
  store double %30, double* %8, align 8
  %31 = load i32, i32* @debug, align 4
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load double, double* %4, align 8
  %35 = load double, double* %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load double, double* %8, align 8
  %38 = load double, double* @RADPERDEG, align 8
  %39 = fdiv double %37, %38
  %40 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), double %34, double %35, i32 %36, double %39)
  br label %41

41:                                               ; preds = %33, %3
  %42 = load double, double* %8, align 8
  ret double %42
}

declare dso_local double @atan(i64) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local i64 @tan(double) #1

declare dso_local i32 @printf(i8*, double, double, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
