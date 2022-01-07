; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_vspan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_vspan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.roffsu = type { i32, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @term_vspan(%struct.termp* %0, %struct.roffsu* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roffsu*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roffsu* %1, %struct.roffsu** %4, align 8
  %7 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %8 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %55 [
    i32 137, label %10
    i32 136, label %15
    i32 133, label %21
    i32 132, label %27
    i32 131, label %32
    i32 130, label %37
    i32 129, label %41
    i32 134, label %46
    i32 135, label %46
    i32 128, label %51
  ]

10:                                               ; preds = %2
  %11 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %12 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %11, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fdiv double %13, 4.000000e+01
  store double %14, double* %5, align 8
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %17 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = fmul double %18, 6.000000e+00
  %20 = fdiv double %19, 2.540000e+00
  store double %20, double* %5, align 8
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %23 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fmul double %24, 6.553600e+04
  %26 = fdiv double %25, 4.000000e+01
  store double %26, double* %5, align 8
  br label %57

27:                                               ; preds = %2
  %28 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %29 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %28, i32 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = fmul double %30, 6.000000e+00
  store double %31, double* %5, align 8
  br label %57

32:                                               ; preds = %2
  %33 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %34 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fmul double %35, 6.000000e-03
  store double %36, double* %5, align 8
  br label %57

37:                                               ; preds = %2
  %38 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %39 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  store double %40, double* %5, align 8
  br label %57

41:                                               ; preds = %2
  %42 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %43 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fdiv double %44, 1.200000e+01
  store double %45, double* %5, align 8
  br label %57

46:                                               ; preds = %2, %2
  %47 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %48 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fmul double %49, 6.000000e-01
  store double %50, double* %5, align 8
  br label %57

51:                                               ; preds = %2
  %52 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %53 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  store double %54, double* %5, align 8
  br label %57

55:                                               ; preds = %2
  %56 = call i32 (...) @abort() #2
  unreachable

57:                                               ; preds = %51, %46, %41, %37, %32, %27, %21, %15, %10
  %58 = load double, double* %5, align 8
  %59 = fcmp ogt double %58, 0.000000e+00
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load double, double* %5, align 8
  %62 = fadd double %61, 4.995000e-01
  br label %66

63:                                               ; preds = %57
  %64 = load double, double* %5, align 8
  %65 = fsub double %64, 4.995000e-01
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi double [ %62, %60 ], [ %65, %63 ]
  %68 = fptosi double %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 66
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 1, %73 ]
  ret i32 %75
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
