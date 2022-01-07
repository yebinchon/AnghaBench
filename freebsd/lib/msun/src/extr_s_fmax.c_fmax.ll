; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmax.c_fmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmax.c_fmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEd2bits = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @fmax(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [2 x %union.IEEEd2bits], align 16
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %4, align 8
  %8 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 0
  %9 = bitcast %union.IEEEd2bits* %8 to double*
  store double %7, double* %9, align 16
  %10 = load double, double* %5, align 8
  %11 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 1
  %12 = bitcast %union.IEEEd2bits* %11 to double*
  store double %10, double* %12, align 8
  %13 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 0
  %14 = bitcast %union.IEEEd2bits* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp eq i32 %16, 2047
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 0
  %20 = bitcast %union.IEEEd2bits* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 0
  %24 = bitcast %union.IEEEd2bits* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load double, double* %5, align 8
  store double %30, double* %3, align 8
  br label %78

31:                                               ; preds = %18, %2
  %32 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 1
  %33 = bitcast %union.IEEEd2bits* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2047
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 1
  %39 = bitcast %union.IEEEd2bits* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 1
  %43 = bitcast %union.IEEEd2bits* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load double, double* %4, align 8
  store double %49, double* %3, align 8
  br label %78

50:                                               ; preds = %37, %31
  %51 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 0
  %52 = bitcast %union.IEEEd2bits* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 16
  %55 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 1
  %56 = bitcast %union.IEEEd2bits* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 0
  %62 = bitcast %union.IEEEd2bits* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 16
  %65 = getelementptr inbounds [2 x %union.IEEEd2bits], [2 x %union.IEEEd2bits]* %6, i64 0, i64 %64
  %66 = bitcast %union.IEEEd2bits* %65 to double*
  %67 = load double, double* %66, align 8
  store double %67, double* %3, align 8
  br label %78

68:                                               ; preds = %50
  %69 = load double, double* %4, align 8
  %70 = load double, double* %5, align 8
  %71 = fcmp ogt double %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load double, double* %4, align 8
  br label %76

74:                                               ; preds = %68
  %75 = load double, double* %5, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi double [ %73, %72 ], [ %75, %74 ]
  store double %77, double* %3, align 8
  br label %78

78:                                               ; preds = %76, %60, %48, %29
  %79 = load double, double* %3, align 8
  ret double %79
}

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
