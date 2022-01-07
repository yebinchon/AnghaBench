; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_floor.c_floor.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_floor.c_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @floor(double %0) #0 {
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
  br i1 %18, label %19, label %72

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load double, double* @huge, align 8
  %24 = load double, double* %3, align 8
  %25 = fadd double %23, %24
  %26 = fcmp ogt double %25, 0.000000e+00
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 2147483647
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1074790400, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %31
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %39, %22
  br label %71

41:                                               ; preds = %19
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 1048575, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load double, double* %3, align 8
  store double %51, double* %2, align 8
  br label %136

52:                                               ; preds = %41
  %53 = load double, double* @huge, align 8
  %54 = load double, double* %3, align 8
  %55 = fadd double %53, %54
  %56 = fcmp ogt double %55, 0.000000e+00
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 1048576, %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %7, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %65, %52
  br label %71

71:                                               ; preds = %70, %40
  br label %130

72:                                               ; preds = %1
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %73, 51
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 1024
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load double, double* %3, align 8
  %80 = load double, double* %3, align 8
  %81 = fadd double %79, %80
  store double %81, double* %2, align 8
  br label %136

82:                                               ; preds = %75
  %83 = load double, double* %3, align 8
  store double %83, double* %2, align 8
  br label %136

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 20
  %87 = ashr i32 -1, %86
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load double, double* %3, align 8
  store double %93, double* %2, align 8
  br label %136

94:                                               ; preds = %84
  %95 = load double, double* @huge, align 8
  %96 = load double, double* %3, align 8
  %97 = fadd double %95, %96
  %98 = fcmp ogt double %97, 0.000000e+00
  br i1 %98, label %99, label %128

99:                                               ; preds = %94
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 20
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %122

108:                                              ; preds = %102
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 52, %110
  %112 = shl i32 1, %111
  %113 = add nsw i32 %109, %112
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %108
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %105
  br label %123

123:                                              ; preds = %122, %99
  %124 = load i32, i32* %7, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %123, %94
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %71
  %131 = load double, double* %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @INSERT_WORDS(double %131, i32 %132, i32 %133)
  %135 = load double, double* %3, align 8
  store double %135, double* %2, align 8
  br label %136

136:                                              ; preds = %130, %92, %82, %78, %50
  %137 = load double, double* %2, align 8
  ret double %137
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
