; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_rintl.c_rintl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_rintl.c_rintl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32 }

@BIAS = common dso_local global i32 0, align 4
@LDBL_MANT_DIG = common dso_local global i32 0, align 4
@LDBL_MAX_EXP = common dso_local global i32 0, align 4
@shift = common dso_local global i64* null, align 8
@zero = common dso_local global x86_fp80* null, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local x86_fp80 @rintl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %union.IEEEl2bits, align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %8 = load x86_fp80, x86_fp80* %3, align 16
  %9 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %8, x86_fp80* %9, align 16
  %10 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 16
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 32767
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @BIAS, align 4
  %17 = load i32, i32* @LDBL_MANT_DIG, align 4
  %18 = add nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  %20 = icmp sge i32 %15, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @BIAS, align 4
  %24 = load i32, i32* @LDBL_MAX_EXP, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load x86_fp80, x86_fp80* %3, align 16
  %29 = load x86_fp80, x86_fp80* %3, align 16
  %30 = fadd x86_fp80 %28, %29
  store x86_fp80 %30, x86_fp80* %2, align 16
  br label %66

31:                                               ; preds = %21
  %32 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %32, x86_fp80* %2, align 16
  br label %66

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 15
  store i32 %35, i32* %7, align 4
  %36 = load i64*, i64** @shift, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to x86_fp80
  %42 = load x86_fp80, x86_fp80* %3, align 16
  %43 = fadd x86_fp80 %42, %41
  store x86_fp80 %43, x86_fp80* %3, align 16
  %44 = load i64*, i64** @shift, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = sitofp i64 %48 to x86_fp80
  %50 = load x86_fp80, x86_fp80* %3, align 16
  %51 = fsub x86_fp80 %50, %49
  store x86_fp80 %51, x86_fp80* %3, align 16
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @BIAS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %33
  %56 = load x86_fp80, x86_fp80* %3, align 16
  %57 = fcmp oeq x86_fp80 %56, 0xK00000000000000000000
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load x86_fp80*, x86_fp80** @zero, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds x86_fp80, x86_fp80* %59, i64 %61
  %63 = load x86_fp80, x86_fp80* %62, align 16
  store x86_fp80 %63, x86_fp80* %2, align 16
  br label %66

64:                                               ; preds = %55, %33
  %65 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %65, x86_fp80* %2, align 16
  br label %66

66:                                               ; preds = %64, %58, %31, %27
  %67 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %67
}

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
