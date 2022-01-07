; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_quartile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_quartile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehist = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @timehist_quartile(%struct.timehist* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.timehist*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  store %struct.timehist* %0, %struct.timehist** %4, align 8
  store double %1, double* %5, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  %12 = load %struct.timehist*, %struct.timehist** %4, align 8
  %13 = icmp ne %struct.timehist* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.timehist*, %struct.timehist** %4, align 8
  %16 = getelementptr inbounds %struct.timehist, %struct.timehist* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  store double 0.000000e+00, double* %3, align 8
  br label %125

20:                                               ; preds = %14
  %21 = load %struct.timehist*, %struct.timehist** %4, align 8
  %22 = call i64 @timehist_count(%struct.timehist* %21)
  %23 = sitofp i64 %22 to double
  store double %23, double* %6, align 8
  %24 = load double, double* %6, align 8
  %25 = fcmp olt double %24, 4.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store double 0.000000e+00, double* %3, align 8
  br label %125

27:                                               ; preds = %20
  %28 = load double, double* %5, align 8
  %29 = load double, double* %6, align 8
  %30 = fmul double %29, %28
  store double %30, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %53, %27
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  %34 = load %struct.timehist*, %struct.timehist** %4, align 8
  %35 = getelementptr inbounds %struct.timehist, %struct.timehist* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load double, double* %7, align 8
  %40 = load %struct.timehist*, %struct.timehist** %4, align 8
  %41 = getelementptr inbounds %struct.timehist, %struct.timehist* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = fadd double %39, %47
  %49 = load double, double* %6, align 8
  %50 = fcmp olt double %48, %49
  br label %51

51:                                               ; preds = %38, %31
  %52 = phi i1 [ false, %31 ], [ %50, %38 ]
  br i1 %52, label %53, label %65

53:                                               ; preds = %51
  %54 = load %struct.timehist*, %struct.timehist** %4, align 8
  %55 = getelementptr inbounds %struct.timehist, %struct.timehist* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to double
  %63 = load double, double* %7, align 8
  %64 = fadd double %63, %62
  store double %64, double* %7, align 8
  br label %31

65:                                               ; preds = %51
  %66 = load %struct.timehist*, %struct.timehist** %4, align 8
  %67 = getelementptr inbounds %struct.timehist, %struct.timehist* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = load %struct.timehist*, %struct.timehist** %4, align 8
  %76 = getelementptr inbounds %struct.timehist, %struct.timehist* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sitofp i64 %82 to double
  %84 = fdiv double %83, 1.000000e+06
  %85 = fadd double %74, %84
  store double %85, double* %9, align 8
  %86 = load %struct.timehist*, %struct.timehist** %4, align 8
  %87 = getelementptr inbounds %struct.timehist, %struct.timehist* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sitofp i64 %93 to double
  %95 = load %struct.timehist*, %struct.timehist** %4, align 8
  %96 = getelementptr inbounds %struct.timehist, %struct.timehist* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sitofp i64 %102 to double
  %104 = fdiv double %103, 1.000000e+06
  %105 = fadd double %94, %104
  store double %105, double* %10, align 8
  %106 = load double, double* %6, align 8
  %107 = load double, double* %7, align 8
  %108 = fsub double %106, %107
  %109 = load double, double* %10, align 8
  %110 = load double, double* %9, align 8
  %111 = fsub double %109, %110
  %112 = fmul double %108, %111
  %113 = load %struct.timehist*, %struct.timehist** %4, align 8
  %114 = getelementptr inbounds %struct.timehist, %struct.timehist* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sitofp i64 %119 to double
  %121 = fdiv double %112, %120
  store double %121, double* %8, align 8
  %122 = load double, double* %9, align 8
  %123 = load double, double* %8, align 8
  %124 = fadd double %122, %123
  store double %124, double* %3, align 8
  br label %125

125:                                              ; preds = %65, %26, %19
  %126 = load double, double* %3, align 8
  ret double %126
}

declare dso_local i64 @timehist_count(%struct.timehist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
