; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_propdelay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_propdelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EARTHRADIUS = common dso_local global double 0.000000e+00, align 8
@PI = common dso_local global double 0.000000e+00, align 8
@LIGHTSPEED = common dso_local global double 0.000000e+00, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"propdelay dist %g height %g hops %d time %g\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, i32)* @propdelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @propdelay(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load double, double* %4, align 8
  %11 = load double, double* @EARTHRADIUS, align 8
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 2, %12
  %14 = sitofp i32 %13 to double
  %15 = fmul double %11, %14
  %16 = fdiv double %10, %15
  store double %16, double* %8, align 8
  %17 = load double, double* @PI, align 8
  %18 = fdiv double %17, 2.000000e+00
  %19 = load double, double* %5, align 8
  %20 = load double, double* @EARTHRADIUS, align 8
  %21 = load double, double* %8, align 8
  %22 = call double @sin(double %21) #3
  %23 = fmul double %20, %22
  %24 = fdiv double %19, %23
  %25 = load double, double* %8, align 8
  %26 = fdiv double %25, 2.000000e+00
  %27 = call i64 @tan(double %26)
  %28 = sitofp i64 %27 to double
  %29 = fadd double %24, %28
  %30 = fptosi double %29 to i64
  %31 = call double @atan(i64 %30)
  %32 = fsub double %18, %31
  store double %32, double* %7, align 8
  %33 = load double, double* %4, align 8
  %34 = load double, double* @LIGHTSPEED, align 8
  %35 = load double, double* %7, align 8
  %36 = call double @sin(double %35) #3
  %37 = fmul double %34, %36
  %38 = fdiv double %33, %37
  store double %38, double* %9, align 8
  %39 = load i32, i32* @debug, align 4
  %40 = icmp sge i32 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load double, double* %4, align 8
  %43 = load double, double* %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load double, double* %9, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), double %42, double %43, i32 %44, double %45)
  br label %47

47:                                               ; preds = %41, %3
  %48 = load double, double* %9, align 8
  ret double %48
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
