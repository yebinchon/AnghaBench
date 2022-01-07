; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_ceil.c_ceil.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_ceil.c_ceil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @ceil(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, double* %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load double, double* %3, align 8
  %12 = call i32 @EXTRACT_WORDS(i32 %9, i32 %10, double %11)
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 20
  %15 = and i32 %14, 2047
  %16 = sub nsw i32 %15, 1023
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 20
  br i1 %18, label %19, label %71

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load double, double* @huge, align 8
  %24 = load double, double* %3, align 8
  %25 = fadd double %23, %24
  %26 = fcmp ogt double %25, 0.000000e+00
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -2147483648, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1072693248, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %31
  br label %38

38:                                               ; preds = %37, %30
  br label %39

39:                                               ; preds = %38, %22
  br label %70

40:                                               ; preds = %19
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 1048575, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load double, double* %3, align 8
  store double %50, double* %2, align 8
  br label %135

51:                                               ; preds = %40
  %52 = load double, double* @huge, align 8
  %53 = load double, double* %3, align 8
  %54 = fadd double %52, %53
  %55 = fcmp ogt double %54, 0.000000e+00
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 1048576, %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %7, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %51
  br label %70

70:                                               ; preds = %69, %39
  br label %129

71:                                               ; preds = %1
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 51
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 1024
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load double, double* %3, align 8
  %79 = load double, double* %3, align 8
  %80 = fadd double %78, %79
  store double %80, double* %2, align 8
  br label %135

81:                                               ; preds = %74
  %82 = load double, double* %3, align 8
  store double %82, double* %2, align 8
  br label %135

83:                                               ; preds = %71
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %84, 20
  %86 = ashr i32 -1, %85
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load double, double* %3, align 8
  store double %92, double* %2, align 8
  br label %135

93:                                               ; preds = %83
  %94 = load double, double* @huge, align 8
  %95 = load double, double* %3, align 8
  %96 = fadd double %94, %95
  %97 = fcmp ogt double %96, 0.000000e+00
  br i1 %97, label %98, label %127

98:                                               ; preds = %93
  %99 = load i32, i32* %4, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 20
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %121

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 52, %109
  %111 = shl i32 1, %110
  %112 = add nsw i32 %108, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %107
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %104
  br label %122

122:                                              ; preds = %121, %98
  %123 = load i32, i32* %7, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %122, %93
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128, %70
  %130 = load double, double* %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @INSERT_WORDS(double %130, i32 %131, i32 %132)
  %134 = load double, double* %3, align 8
  store double %134, double* %2, align 8
  br label %135

135:                                              ; preds = %129, %91, %81, %77, %49
  %136 = load double, double* %2, align 8
  ret double %136
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
