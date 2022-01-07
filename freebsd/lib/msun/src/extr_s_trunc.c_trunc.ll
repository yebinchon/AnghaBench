; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_trunc.c_trunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_trunc.c_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @trunc(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load double, double* %3, align 8
  %11 = call i32 @EXTRACT_WORDS(i32 %8, i32 %9, double %10)
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 20
  %14 = and i32 %13, 2047
  %15 = sub nsw i32 %14, 1023
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 20
  br i1 %17, label %18, label %53

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load double, double* @huge, align 8
  %23 = load double, double* %3, align 8
  %24 = fadd double %22, %23
  %25 = fcmp ogt double %24, 0.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, -2147483648
  store i32 %28, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %21
  br label %52

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 1048575, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load double, double* %3, align 8
  store double %40, double* %2, align 8
  br label %93

41:                                               ; preds = %30
  %42 = load double, double* @huge, align 8
  %43 = load double, double* %3, align 8
  %44 = fadd double %42, %43
  %45 = fcmp ogt double %44, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %29
  br label %87

53:                                               ; preds = %1
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 51
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 1024
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load double, double* %3, align 8
  %61 = load double, double* %3, align 8
  %62 = fadd double %60, %61
  store double %62, double* %2, align 8
  br label %93

63:                                               ; preds = %56
  %64 = load double, double* %3, align 8
  store double %64, double* %2, align 8
  br label %93

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 20
  %68 = ashr i32 -1, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load double, double* %3, align 8
  store double %74, double* %2, align 8
  br label %93

75:                                               ; preds = %65
  %76 = load double, double* @huge, align 8
  %77 = load double, double* %3, align 8
  %78 = fadd double %76, %77
  %79 = fcmp ogt double %78, 0.000000e+00
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %52
  %88 = load double, double* %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @INSERT_WORDS(double %88, i32 %89, i32 %90)
  %92 = load double, double* %3, align 8
  store double %92, double* %2, align 8
  br label %93

93:                                               ; preds = %87, %73, %63, %59, %39
  %94 = load double, double* %2, align 8
  ret double %94
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
