; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nextafter.c_nextafter.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nextafter.c_nextafter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @nextafter(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load double, double* %4, align 8
  %16 = call i32 @EXTRACT_WORDS(i32 %13, i32 %14, double %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load double, double* %5, align 8
  %20 = call i32 @EXTRACT_WORDS(i32 %17, i32 %18, double %19)
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 2147483647
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 2147483647
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 2146435072
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 2146435072
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27, %2
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 2146435072
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 2146435072
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %27
  %43 = load double, double* %4, align 8
  %44 = load double, double* %5, align 8
  %45 = fadd double %43, %44
  store double %45, double* %3, align 8
  br label %172

46:                                               ; preds = %36, %33
  %47 = load double, double* %4, align 8
  %48 = load double, double* %5, align 8
  %49 = fcmp oeq double %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load double, double* %5, align 8
  store double %51, double* %3, align 8
  br label %172

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load double, double* %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, -2147483648
  %61 = call i32 @INSERT_WORDS(double %58, i32 %60, i32 1)
  %62 = load double, double* %4, align 8
  %63 = load double, double* %4, align 8
  %64 = fmul double %62, %63
  store volatile double %64, double* %6, align 8
  %65 = load volatile double, double* %6, align 8
  %66 = load double, double* %4, align 8
  %67 = fcmp oeq double %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load volatile double, double* %6, align 8
  store double %69, double* %3, align 8
  br label %172

70:                                               ; preds = %57
  %71 = load double, double* %4, align 8
  store double %71, double* %3, align 8
  br label %172

72:                                               ; preds = %52
  %73 = load i32, i32* %7, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83, %75
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %105

96:                                               ; preds = %83, %79
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %93
  br label %140

106:                                              ; preds = %72
  %107 = load i32, i32* %8, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %117, %109, %106
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %11, align 4
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %139

130:                                              ; preds = %117, %113
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %138, %127
  br label %140

140:                                              ; preds = %139, %105
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, 2146435072
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp sge i32 %143, 2146435072
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load double, double* %4, align 8
  %147 = load double, double* %4, align 8
  %148 = fadd double %146, %147
  store double %148, double* %3, align 8
  br label %172

149:                                              ; preds = %140
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 1048576
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = load double, double* %4, align 8
  %154 = load double, double* %4, align 8
  %155 = fmul double %153, %154
  store volatile double %155, double* %6, align 8
  %156 = load volatile double, double* %6, align 8
  %157 = load double, double* %4, align 8
  %158 = fcmp une double %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load double, double* %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @INSERT_WORDS(double %160, i32 %161, i32 %162)
  %164 = load double, double* %5, align 8
  store double %164, double* %3, align 8
  br label %172

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165, %149
  %167 = load double, double* %4, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @INSERT_WORDS(double %167, i32 %168, i32 %169)
  %171 = load double, double* %4, align 8
  store double %171, double* %3, align 8
  br label %172

172:                                              ; preds = %166, %159, %145, %70, %68, %50, %42
  %173 = load double, double* %3, align 8
  ret double %173
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
