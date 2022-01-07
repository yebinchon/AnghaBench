; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sqrtf.c_sqrtf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sqrtf.c_sqrtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_sqrtf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %3, align 4
  store i32 -2147483648, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load float, float* %3, align 4
  %15 = call i32 @GET_FLOAT_WORD(i32 %13, float %14)
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 2139095040
  %18 = icmp eq i32 %17, 2139095040
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load float, float* %3, align 4
  %21 = load float, float* %3, align 4
  %22 = fmul float %20, %21
  %23 = load float, float* %3, align 4
  %24 = fadd float %22, %23
  store float %24, float* %2, align 4
  br label %154

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load float, float* %3, align 4
  store float %35, float* %2, align 4
  br label %154

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load float, float* %3, align 4
  %41 = load float, float* %3, align 4
  %42 = fsub float %40, %41
  %43 = load float, float* %3, align 4
  %44 = load float, float* %3, align 4
  %45 = fsub float %43, %44
  %46 = fdiv float %42, %45
  store float %46, float* %2, align 4
  br label %154

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 23
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %62, %54
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 8388608
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %55

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %65, %49
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 127
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 8388607
  %75 = or i32 %74, 8388608
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %70
  %84 = load i32, i32* %9, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 16777216, i32* %12, align 4
  br label %89

89:                                               ; preds = %109, %83
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %99, %92
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %12, align 4
  %114 = ashr i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %89

115:                                              ; preds = %89
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %115
  %119 = load float, float* @one, align 4
  %120 = load float, float* @tiny, align 4
  %121 = fsub float %119, %120
  store float %121, float* %4, align 4
  %122 = load float, float* %4, align 4
  %123 = load float, float* @one, align 4
  %124 = fcmp oge float %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %118
  %126 = load float, float* @one, align 4
  %127 = load float, float* @tiny, align 4
  %128 = fadd float %126, %127
  store float %128, float* %4, align 4
  %129 = load float, float* %4, align 4
  %130 = load float, float* @one, align 4
  %131 = fcmp ogt float %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 2
  store i32 %134, i32* %8, align 4
  br label %140

135:                                              ; preds = %125
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, 1
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %135, %132
  br label %141

141:                                              ; preds = %140, %118
  br label %142

142:                                              ; preds = %141, %115
  %143 = load i32, i32* %8, align 4
  %144 = ashr i32 %143, 1
  %145 = add nsw i32 %144, 1056964608
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %9, align 4
  %147 = shl i32 %146, 23
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load float, float* %4, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @SET_FLOAT_WORD(float %150, i32 %151)
  %153 = load float, float* %4, align 4
  store float %153, float* %2, align 4
  br label %154

154:                                              ; preds = %142, %39, %34, %19
  %155 = load float, float* %2, align 4
  ret float %155
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
