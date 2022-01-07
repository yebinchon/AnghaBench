; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_greatcircle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_greatcircle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADPERDEG = common dso_local global double 0.000000e+00, align 8
@EARTHRADIUS = common dso_local global double 0.000000e+00, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"greatcircle lat1 %g long1 %g lat2 %g long2 %g dist %g\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double, double)* @greatcircle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @greatcircle(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %12 = load double, double* %5, align 8
  %13 = load double, double* @RADPERDEG, align 8
  %14 = fmul double %12, %13
  store double %14, double* %10, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* @RADPERDEG, align 8
  %17 = fmul double %15, %16
  store double %17, double* %11, align 8
  %18 = load double, double* @EARTHRADIUS, align 8
  %19 = load double, double* %10, align 8
  %20 = call i32 @cos(double %19)
  %21 = load double, double* %11, align 8
  %22 = call i32 @cos(double %21)
  %23 = mul nsw i32 %20, %22
  %24 = load double, double* %8, align 8
  %25 = load double, double* %6, align 8
  %26 = fsub double %24, %25
  %27 = load double, double* @RADPERDEG, align 8
  %28 = fmul double %26, %27
  %29 = call i32 @cos(double %28)
  %30 = mul nsw i32 %23, %29
  %31 = load double, double* %10, align 8
  %32 = call i32 @sin(double %31)
  %33 = load double, double* %11, align 8
  %34 = call i32 @sin(double %33)
  %35 = mul nsw i32 %32, %34
  %36 = add nsw i32 %30, %35
  %37 = call double @acos(i32 %36)
  %38 = fmul double %18, %37
  store double %38, double* %9, align 8
  %39 = load i32, i32* @debug, align 4
  %40 = icmp sge i32 %39, 2
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = load double, double* %5, align 8
  %43 = load double, double* %6, align 8
  %44 = load double, double* %7, align 8
  %45 = load double, double* %8, align 8
  %46 = load double, double* %9, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), double %42, double %43, double %44, double %45, double %46)
  br label %48

48:                                               ; preds = %41, %4
  %49 = load double, double* %9, align 8
  ret double %49
}

declare dso_local double @acos(i32) #1

declare dso_local i32 @cos(double) #1

declare dso_local i32 @sin(double) #1

declare dso_local i32 @printf(i8*, double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
