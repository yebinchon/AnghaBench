; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fpclassify.c___fpclassifyd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fpclassify.c___fpclassifyd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEd2bits = type { double, [8 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32 }

@FP_ZERO = common dso_local global i32 0, align 4
@FP_SUBNORMAL = common dso_local global i32 0, align 4
@FP_INFINITE = common dso_local global i32 0, align 4
@FP_NAN = common dso_local global i32 0, align 4
@FP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fpclassifyd(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca %union.IEEEd2bits, align 8
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = bitcast %union.IEEEd2bits* %4 to double*
  store double %5, double* %6, align 8
  %7 = bitcast %union.IEEEd2bits* %4 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = bitcast %union.IEEEd2bits* %4 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = bitcast %union.IEEEd2bits* %4 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @FP_ZERO, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %11
  %23 = load i32, i32* @FP_SUBNORMAL, align 4
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = bitcast %union.IEEEd2bits* %4 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2047
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = bitcast %union.IEEEd2bits* %4 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = bitcast %union.IEEEd2bits* %4 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %32, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @FP_INFINITE, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @FP_NAN, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @FP_NORMAL, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %22, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
