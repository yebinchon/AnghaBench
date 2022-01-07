; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ascii.c_ascii_hspan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ascii.c_ascii_hspan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.roffsu = type { i32, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.termp*, %struct.roffsu*)* @ascii_hspan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ascii_hspan(%struct.termp* %0, %struct.roffsu* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roffsu*, align 8
  %5 = alloca double, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roffsu* %1, %struct.roffsu** %4, align 8
  %6 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %7 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %50 [
    i32 137, label %9
    i32 136, label %13
    i32 133, label %19
    i32 132, label %24
    i32 131, label %29
    i32 128, label %34
    i32 130, label %34
    i32 129, label %39
    i32 134, label %45
    i32 135, label %45
  ]

9:                                                ; preds = %2
  %10 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %11 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %5, align 8
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %15 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = fmul double %16, 2.400000e+02
  %18 = fdiv double %17, 2.540000e+00
  store double %18, double* %5, align 8
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %21 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = fmul double %22, 6.553600e+04
  store double %23, double* %5, align 8
  br label %52

24:                                               ; preds = %2
  %25 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %26 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = fmul double %27, 2.400000e+02
  store double %28, double* %5, align 8
  br label %52

29:                                               ; preds = %2
  %30 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %31 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fmul double %32, 2.400000e-01
  store double %33, double* %5, align 8
  br label %52

34:                                               ; preds = %2, %2
  %35 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %36 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = fmul double %37, 4.000000e+01
  store double %38, double* %5, align 8
  br label %52

39:                                               ; preds = %2
  %40 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %41 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %40, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = fmul double %42, 1.000000e+01
  %44 = fdiv double %43, 3.000000e+00
  store double %44, double* %5, align 8
  br label %52

45:                                               ; preds = %2, %2
  %46 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %47 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = fmul double %48, 2.400000e+01
  store double %49, double* %5, align 8
  br label %52

50:                                               ; preds = %2
  %51 = call i32 (...) @abort() #2
  unreachable

52:                                               ; preds = %45, %39, %34, %29, %24, %19, %13, %9
  %53 = load double, double* %5, align 8
  %54 = fcmp ogt double %53, 0.000000e+00
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load double, double* %5, align 8
  %57 = fadd double %56, 1.000000e-02
  br label %61

58:                                               ; preds = %52
  %59 = load double, double* %5, align 8
  %60 = fsub double %59, 1.000000e-02
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi double [ %57, %55 ], [ %60, %58 ]
  %63 = fptosi double %62 to i32
  ret i32 %63
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
