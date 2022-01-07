; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_readDoubleFromChar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_readDoubleFromChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8**)* @readDoubleFromChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @readDoubleFromChar(i8** %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8**, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i8** %0, i8*** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  store double 1.000000e+01, double* %5, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp sge i32 %10, 48
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i8**, i8*** %3, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp sle i32 %16, 57
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i1 [ false, %6 ], [ %17, %12 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load double, double* %4, align 8
  %22 = fmul double %21, 1.000000e+01
  store double %22, double* %4, align 8
  %23 = load i8**, i8*** %3, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 %26, 48
  %28 = sitofp i32 %27 to double
  %29 = load double, double* %4, align 8
  %30 = fadd double %29, %28
  store double %30, double* %4, align 8
  %31 = load i8**, i8*** %3, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  br label %6

34:                                               ; preds = %18
  %35 = load i8**, i8*** %3, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 46
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load double, double* %4, align 8
  store double %41, double* %2, align 8
  br label %78

42:                                               ; preds = %34
  %43 = load i8**, i8*** %3, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  br label %46

46:                                               ; preds = %60, %42
  %47 = load i8**, i8*** %3, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i8**, i8*** %3, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 57
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ false, %46 ], [ %57, %52 ]
  br i1 %59, label %60, label %76

60:                                               ; preds = %58
  %61 = load i8**, i8*** %3, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = sitofp i32 %65 to double
  %67 = load double, double* %5, align 8
  %68 = fdiv double %66, %67
  %69 = load double, double* %4, align 8
  %70 = fadd double %69, %68
  store double %70, double* %4, align 8
  %71 = load double, double* %5, align 8
  %72 = fmul double %71, 1.000000e+01
  store double %72, double* %5, align 8
  %73 = load i8**, i8*** %3, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  br label %46

76:                                               ; preds = %58
  %77 = load double, double* %4, align 8
  store double %77, double* %2, align 8
  br label %78

78:                                               ; preds = %76, %40
  %79 = load double, double* %2, align 8
  ret double %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
