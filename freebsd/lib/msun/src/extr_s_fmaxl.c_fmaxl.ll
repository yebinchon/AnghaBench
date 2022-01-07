; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmaxl.c_fmaxl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmaxl.c_fmaxl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80, [16 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local x86_fp80 @fmaxl(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca [2 x %union.IEEEl2bits], align 16
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  %7 = load x86_fp80, x86_fp80* %4, align 16
  %8 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 0
  %9 = bitcast %union.IEEEl2bits* %8 to x86_fp80*
  store x86_fp80 %7, x86_fp80* %9, align 16
  %10 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 0
  %11 = call i32 @mask_nbit_l(%union.IEEEl2bits* byval(%union.IEEEl2bits) align 16 %10)
  %12 = load x86_fp80, x86_fp80* %5, align 16
  %13 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 1
  %14 = bitcast %union.IEEEl2bits* %13 to x86_fp80*
  store x86_fp80 %12, x86_fp80* %14, align 16
  %15 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 1
  %16 = call i32 @mask_nbit_l(%union.IEEEl2bits* byval(%union.IEEEl2bits) align 16 %15)
  %17 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 0
  %18 = bitcast %union.IEEEl2bits* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = icmp eq i32 %20, 32767
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 0
  %24 = bitcast %union.IEEEl2bits* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 0
  %28 = bitcast %union.IEEEl2bits* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %34, x86_fp80* %3, align 16
  br label %86

35:                                               ; preds = %22, %2
  %36 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 1
  %37 = bitcast %union.IEEEl2bits* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 16
  %40 = icmp eq i32 %39, 32767
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 1
  %43 = bitcast %union.IEEEl2bits* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 1
  %47 = bitcast %union.IEEEl2bits* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %45, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %53, x86_fp80* %3, align 16
  br label %86

54:                                               ; preds = %41, %35
  %55 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 0
  %56 = bitcast %union.IEEEl2bits* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 16
  %59 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 1
  %60 = bitcast %union.IEEEl2bits* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 16
  %63 = icmp ne i64 %58, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = getelementptr inbounds [2 x %union.IEEEl2bits], [2 x %union.IEEEl2bits]* %6, i64 0, i64 0
  %66 = bitcast %union.IEEEl2bits* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 16
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load x86_fp80, x86_fp80* %5, align 16
  br label %74

72:                                               ; preds = %64
  %73 = load x86_fp80, x86_fp80* %4, align 16
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi x86_fp80 [ %71, %70 ], [ %73, %72 ]
  store x86_fp80 %75, x86_fp80* %3, align 16
  br label %86

76:                                               ; preds = %54
  %77 = load x86_fp80, x86_fp80* %4, align 16
  %78 = load x86_fp80, x86_fp80* %5, align 16
  %79 = fcmp ogt x86_fp80 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load x86_fp80, x86_fp80* %4, align 16
  br label %84

82:                                               ; preds = %76
  %83 = load x86_fp80, x86_fp80* %5, align 16
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi x86_fp80 [ %81, %80 ], [ %83, %82 ]
  store x86_fp80 %85, x86_fp80* %3, align 16
  br label %86

86:                                               ; preds = %84, %74, %52, %33
  %87 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %87
}

declare dso_local i32 @mask_nbit_l(%union.IEEEl2bits* byval(%union.IEEEl2bits) align 16) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
