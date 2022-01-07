; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fpclassify.c___fpclassifyl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fpclassify.c___fpclassifyl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@FP_ZERO = common dso_local global i32 0, align 4
@FP_SUBNORMAL = common dso_local global i32 0, align 4
@FP_INFINITE = common dso_local global i32 0, align 4
@FP_NAN = common dso_local global i32 0, align 4
@FP_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fpclassifyl(x86_fp80 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca x86_fp80, align 16
  %4 = alloca %union.IEEEl2bits, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  %5 = load x86_fp80, x86_fp80* %3, align 16
  %6 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %5, x86_fp80* %6, align 16
  %7 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @FP_ZERO, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %11
  %23 = load i32, i32* @FP_SUBNORMAL, align 4
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %1
  %25 = bitcast %union.IEEEl2bits* %4 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 16
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @mask_nbit_l(i64 %27, i64 %29)
  %31 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = icmp eq i32 %33, 32767
  br i1 %34, label %35, label %48

35:                                               ; preds = %24
  %36 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %38, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @FP_INFINITE, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %35
  %47 = load i32, i32* @FP_NAN, align 4
  store i32 %47, i32* %2, align 4
  br label %50

48:                                               ; preds = %24
  %49 = load i32, i32* @FP_NORMAL, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %46, %44, %22, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mask_nbit_l(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
