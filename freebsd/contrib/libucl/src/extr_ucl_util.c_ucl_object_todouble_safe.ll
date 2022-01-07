; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_todouble_safe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_todouble_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_object_todouble_safe(%struct.TYPE_5__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store double* %1, double** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load double*, double** %5, align 8
  %10 = icmp eq double* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 130, label %22
    i32 128, label %22
  ]

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = load double*, double** %5, align 8
  store double %20, double* %21, align 8
  br label %29

22:                                               ; preds = %12, %12
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = load double*, double** %5, align 8
  store double %26, double* %27, align 8
  br label %29

28:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; preds = %22, %16
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
