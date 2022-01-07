; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_modfl.c_modfl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_modfl.c_modfl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80, [16 x i8] }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@LDBL_MAX_EXP = common dso_local global i32 0, align 4
@HIBITS = common dso_local global i32 0, align 4
@zero = common dso_local global x86_fp80* null, align 8
@LDBL_MANT_DIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @modfl(x86_fp80 %0, x86_fp80* %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80*, align 8
  %6 = alloca %union.IEEEl2bits, align 16
  %7 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80* %1, x86_fp80** %5, align 8
  %8 = load x86_fp80, x86_fp80* %4, align 16
  %9 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  store x86_fp80 %8, x86_fp80* %9, align 16
  %10 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 16
  %13 = load i32, i32* @LDBL_MAX_EXP, align 4
  %14 = sub nsw i32 %12, %13
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @HIBITS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load x86_fp80*, x86_fp80** @zero, align 8
  %24 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds x86_fp80, x86_fp80* %23, i64 %26
  %28 = load x86_fp80, x86_fp80* %27, align 16
  %29 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %28, x86_fp80* %29, align 16
  %30 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %30, x86_fp80* %3, align 16
  br label %143

31:                                               ; preds = %19
  %32 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 16
  %35 = load i32, i32* @HIBITS, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @GETFRAC(i32 %34, i32 %38)
  %40 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %31
  %46 = load x86_fp80, x86_fp80* %4, align 16
  %47 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %46, x86_fp80* %47, align 16
  %48 = load x86_fp80*, x86_fp80** @zero, align 8
  %49 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds x86_fp80, x86_fp80* %48, i64 %51
  %53 = load x86_fp80, x86_fp80* %52, align 16
  store x86_fp80 %53, x86_fp80* %3, align 16
  br label %143

54:                                               ; preds = %31
  %55 = load i32, i32* @HIBITS, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %56, %57
  %59 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 16
  %62 = ashr i32 %61, %58
  store i32 %62, i32* %60, align 16
  %63 = load i32, i32* @HIBITS, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  %67 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 16
  %70 = shl i32 %69, %66
  store i32 %70, i32* %68, align 16
  %71 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store i32 0, i32* %72, align 4
  %73 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  %74 = load x86_fp80, x86_fp80* %73, align 16
  %75 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %74, x86_fp80* %75, align 16
  %76 = load x86_fp80, x86_fp80* %4, align 16
  %77 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  %78 = load x86_fp80, x86_fp80* %77, align 16
  %79 = fsub x86_fp80 %76, %78
  store x86_fp80 %79, x86_fp80* %3, align 16
  br label %143

80:                                               ; preds = %2
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @LDBL_MANT_DIG, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load x86_fp80, x86_fp80* %4, align 16
  %87 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %86, x86_fp80* %87, align 16
  %88 = load x86_fp80, x86_fp80* %4, align 16
  %89 = load x86_fp80, x86_fp80* %4, align 16
  %90 = fcmp une x86_fp80 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %92, x86_fp80* %3, align 16
  br label %143

93:                                               ; preds = %85
  %94 = load x86_fp80*, x86_fp80** @zero, align 8
  %95 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds x86_fp80, x86_fp80* %94, i64 %97
  %99 = load x86_fp80, x86_fp80* %98, align 16
  store x86_fp80 %99, x86_fp80* %3, align 16
  br label %143

100:                                              ; preds = %80
  %101 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @LDBL_MANT_DIG, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @GETFRAC(i32 %103, i32 %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %100
  %111 = load x86_fp80, x86_fp80* %4, align 16
  %112 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %111, x86_fp80* %112, align 16
  %113 = load x86_fp80*, x86_fp80** @zero, align 8
  %114 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds x86_fp80, x86_fp80* %113, i64 %116
  %118 = load x86_fp80, x86_fp80* %117, align 16
  store x86_fp80 %118, x86_fp80* %3, align 16
  br label %143

119:                                              ; preds = %100
  %120 = load i32, i32* @LDBL_MANT_DIG, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %121, %122
  %124 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @LDBL_MANT_DIG, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %129, %130
  %132 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  %137 = load x86_fp80, x86_fp80* %136, align 16
  %138 = load x86_fp80*, x86_fp80** %5, align 8
  store x86_fp80 %137, x86_fp80* %138, align 16
  %139 = load x86_fp80, x86_fp80* %4, align 16
  %140 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  %141 = load x86_fp80, x86_fp80* %140, align 16
  %142 = fsub x86_fp80 %139, %141
  store x86_fp80 %142, x86_fp80* %3, align 16
  br label %143

143:                                              ; preds = %119, %110, %93, %91, %54, %45, %22
  %144 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %144
}

declare dso_local i32 @GETFRAC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
