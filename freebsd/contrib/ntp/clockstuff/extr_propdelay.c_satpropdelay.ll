; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_satpropdelay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_propdelay.c_satpropdelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EARTHRADIUS = common dso_local global double 0.000000e+00, align 8
@SATHEIGHT = common dso_local global double 0.000000e+00, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Theta %g k1 %g k2 %g\0A\00", align 1
@LIGHTSPEED = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"propdelay dist %g height %g time %g\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @satpropdelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @satpropdelay(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %2, align 8
  %8 = load double, double* %2, align 8
  %9 = load double, double* @EARTHRADIUS, align 8
  %10 = fdiv double %8, %9
  store double %10, double* %6, align 8
  %11 = load double, double* @EARTHRADIUS, align 8
  %12 = load double, double* %6, align 8
  %13 = call double @sin(double %12) #3
  %14 = fmul double %11, %13
  store double %14, double* %3, align 8
  %15 = load double, double* @SATHEIGHT, align 8
  %16 = load double, double* @EARTHRADIUS, align 8
  %17 = load double, double* %6, align 8
  %18 = call double @cos(double %17) #3
  %19 = fmul double %16, %18
  %20 = fsub double %15, %19
  store double %20, double* %4, align 8
  %21 = load i32, i32* @debug, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load double, double* %6, align 8
  %25 = load double, double* %3, align 8
  %26 = load double, double* %4, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), double %24, double %25, double %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load double, double* %3, align 8
  %30 = load double, double* %3, align 8
  %31 = fmul double %29, %30
  %32 = load double, double* %4, align 8
  %33 = load double, double* %4, align 8
  %34 = fmul double %32, %33
  %35 = fadd double %31, %34
  %36 = call double @sqrt(double %35) #3
  store double %36, double* %5, align 8
  %37 = load double, double* %5, align 8
  %38 = load double, double* @LIGHTSPEED, align 8
  %39 = fdiv double %37, %38
  store double %39, double* %7, align 8
  %40 = load i32, i32* @debug, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load double, double* %2, align 8
  %44 = load double, double* %5, align 8
  %45 = load double, double* %7, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), double %43, double %44, double %45)
  br label %47

47:                                               ; preds = %42, %28
  %48 = load double, double* %7, align 8
  ret double %48
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

declare dso_local i32 @printf(i8*, double, double, double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
