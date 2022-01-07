; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nexttoward.c_nexttoward.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nexttoward.c_nexttoward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@LDBL_NBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @nexttoward(double %0, x86_fp80 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca x86_fp80, align 16
  %6 = alloca %union.IEEEl2bits, align 16
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %4, align 8
  store x86_fp80 %1, x86_fp80* %5, align 16
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load double, double* %4, align 8
  %14 = call i32 @EXTRACT_WORDS(i32 %11, i32 %12, double %13)
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 2147483647
  store i32 %16, i32* %9, align 4
  %17 = load x86_fp80, x86_fp80* %5, align 16
  %18 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  store x86_fp80 %17, x86_fp80* %18, align 16
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 2146435072
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 2146435072
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %21, %2
  %28 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp eq i32 %30, 32767
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LDBL_NBIT, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32, %21
  %45 = load double, double* %4, align 8
  %46 = fpext double %45 to x86_fp80
  %47 = load x86_fp80, x86_fp80* %5, align 16
  %48 = fadd x86_fp80 %46, %47
  %49 = fptrunc x86_fp80 %48 to double
  store double %49, double* %3, align 8
  br label %140

50:                                               ; preds = %32, %27
  %51 = load double, double* %4, align 8
  %52 = fpext double %51 to x86_fp80
  %53 = load x86_fp80, x86_fp80* %5, align 16
  %54 = fcmp oeq x86_fp80 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load x86_fp80, x86_fp80* %5, align 16
  %57 = fptrunc x86_fp80 %56 to double
  store double %57, double* %3, align 8
  br label %140

58:                                               ; preds = %50
  %59 = load double, double* %4, align 8
  %60 = fcmp oeq double %59, 0.000000e+00
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load double, double* %4, align 8
  %63 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 31
  %67 = call i32 @INSERT_WORDS(double %62, i32 %66, i32 1)
  %68 = load double, double* %4, align 8
  %69 = load double, double* %4, align 8
  %70 = fmul double %68, %69
  store volatile double %70, double* %7, align 8
  %71 = load volatile double, double* %7, align 8
  %72 = load double, double* %4, align 8
  %73 = fcmp oeq double %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load volatile double, double* %7, align 8
  store double %75, double* %3, align 8
  br label %140

76:                                               ; preds = %61
  %77 = load double, double* %4, align 8
  store double %77, double* %3, align 8
  br label %140

78:                                               ; preds = %58
  %79 = load i32, i32* %8, align 4
  %80 = sitofp i32 %79 to double
  %81 = fcmp ogt double %80, 0.000000e+00
  %82 = zext i1 %81 to i32
  %83 = load double, double* %4, align 8
  %84 = fpext double %83 to x86_fp80
  %85 = load x86_fp80, x86_fp80* %5, align 16
  %86 = fcmp olt x86_fp80 %84, %85
  %87 = zext i1 %86 to i32
  %88 = xor i32 %82, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %78
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %108

99:                                               ; preds = %78
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %96
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 2146435072
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp sge i32 %111, 2146435072
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load double, double* %4, align 8
  %115 = load double, double* %4, align 8
  %116 = fadd double %114, %115
  store double %116, double* %3, align 8
  br label %140

117:                                              ; preds = %108
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 1048576
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load double, double* %4, align 8
  %122 = load double, double* %4, align 8
  %123 = fmul double %121, %122
  store volatile double %123, double* %7, align 8
  %124 = load volatile double, double* %7, align 8
  %125 = load double, double* %4, align 8
  %126 = fcmp une double %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load double, double* %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @INSERT_WORDS(double %128, i32 %129, i32 %130)
  %132 = load double, double* %4, align 8
  store double %132, double* %3, align 8
  br label %140

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %117
  %135 = load double, double* %4, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @INSERT_WORDS(double %135, i32 %136, i32 %137)
  %139 = load double, double* %4, align 8
  store double %139, double* %3, align 8
  br label %140

140:                                              ; preds = %134, %127, %113, %76, %74, %55, %44
  %141 = load double, double* %3, align 8
  ret double %141
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
