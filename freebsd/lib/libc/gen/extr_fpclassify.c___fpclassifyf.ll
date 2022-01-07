; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fpclassify.c___fpclassifyf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fpclassify.c___fpclassifyf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEf2bits = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FP_ZERO = common dso_local global i32 0, align 4
@FP_SUBNORMAL = common dso_local global i32 0, align 4
@FP_INFINITE = common dso_local global i32 0, align 4
@FP_NAN = common dso_local global i32 0, align 4
@FP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fpclassifyf(float %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca %union.IEEEf2bits, align 8
  store float %0, float* %3, align 4
  %5 = load float, float* %3, align 4
  %6 = bitcast %union.IEEEf2bits* %4 to float*
  store float %5, float* %6, align 8
  %7 = bitcast %union.IEEEf2bits* %4 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = bitcast %union.IEEEf2bits* %4 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @FP_ZERO, align 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %11
  %19 = load i32, i32* @FP_SUBNORMAL, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = bitcast %union.IEEEf2bits* %4 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 255
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = bitcast %union.IEEEf2bits* %4 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @FP_INFINITE, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @FP_NAN, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @FP_NORMAL, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %30, %18, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
