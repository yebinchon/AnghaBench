; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmaxf.c_fmaxf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fmaxf.c_fmaxf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEf2bits = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local float @fmaxf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x %union.IEEEf2bits], align 16
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %7 = load float, float* %4, align 4
  %8 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 0
  %9 = bitcast %union.IEEEf2bits* %8 to float*
  store float %7, float* %9, align 16
  %10 = load float, float* %5, align 4
  %11 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 1
  %12 = bitcast %union.IEEEf2bits* %11 to float*
  store float %10, float* %12, align 8
  %13 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 0
  %14 = bitcast %union.IEEEf2bits* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 0
  %20 = bitcast %union.IEEEf2bits* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load float, float* %5, align 4
  store float %25, float* %3, align 4
  br label %68

26:                                               ; preds = %18, %2
  %27 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 1
  %28 = bitcast %union.IEEEf2bits* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 1
  %34 = bitcast %union.IEEEf2bits* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load float, float* %4, align 4
  store float %39, float* %3, align 4
  br label %68

40:                                               ; preds = %32, %26
  %41 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 0
  %42 = bitcast %union.IEEEf2bits* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 16
  %45 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 1
  %46 = bitcast %union.IEEEf2bits* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 0
  %52 = bitcast %union.IEEEf2bits* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 16
  %55 = getelementptr inbounds [2 x %union.IEEEf2bits], [2 x %union.IEEEf2bits]* %6, i64 0, i64 %54
  %56 = bitcast %union.IEEEf2bits* %55 to float*
  %57 = load float, float* %56, align 8
  store float %57, float* %3, align 4
  br label %68

58:                                               ; preds = %40
  %59 = load float, float* %4, align 4
  %60 = load float, float* %5, align 4
  %61 = fcmp ogt float %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load float, float* %4, align 4
  br label %66

64:                                               ; preds = %58
  %65 = load float, float* %5, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi float [ %63, %62 ], [ %65, %64 ]
  store float %67, float* %3, align 4
  br label %68

68:                                               ; preds = %66, %50, %38, %24
  %69 = load float, float* %3, align 4
  ret float %69
}

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
