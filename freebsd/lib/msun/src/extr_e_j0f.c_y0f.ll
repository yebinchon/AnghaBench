; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j0f.c_y0f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j0f.c_y0f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vone = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4
@vzero = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@invsqrtpi = common dso_local global float 0.000000e+00, align 4
@u00 = common dso_local global float 0.000000e+00, align 4
@tpi = common dso_local global float 0.000000e+00, align 4
@u01 = common dso_local global float 0.000000e+00, align 4
@u02 = common dso_local global float 0.000000e+00, align 4
@u03 = common dso_local global float 0.000000e+00, align 4
@u04 = common dso_local global float 0.000000e+00, align 4
@u05 = common dso_local global float 0.000000e+00, align 4
@u06 = common dso_local global float 0.000000e+00, align 4
@v01 = common dso_local global float 0.000000e+00, align 4
@v02 = common dso_local global float 0.000000e+00, align 4
@v03 = common dso_local global float 0.000000e+00, align 4
@v04 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_y0f(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %3, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load float, float* %3, align 4
  %15 = call i32 @GET_FLOAT_WORD(i32 %13, float %14)
  %16 = load i32, i32* %11, align 4
  %17 = and i32 2147483647, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp sge i32 %18, 2139095040
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load float, float* @vone, align 4
  %22 = load float, float* %3, align 4
  %23 = load float, float* %3, align 4
  %24 = load float, float* %3, align 4
  %25 = fmul float %23, %24
  %26 = fadd float %22, %25
  %27 = fdiv float %21, %26
  store float %27, float* %2, align 4
  br label %173

28:                                               ; preds = %1
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load float, float* @one, align 4
  %33 = fneg float %32
  %34 = load float, float* @vzero, align 4
  %35 = fdiv float %33, %34
  store float %35, float* %2, align 4
  br label %173

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load float, float* @vzero, align 4
  %41 = load float, float* @vzero, align 4
  %42 = fdiv float %40, %41
  store float %42, float* %2, align 4
  br label %173

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %44, 1073741824
  br i1 %45, label %46, label %106

46:                                               ; preds = %43
  %47 = load float, float* %3, align 4
  %48 = call i32 @sincosf(float %47, float* %5, float* %6)
  %49 = load float, float* %5, align 4
  %50 = load float, float* %6, align 4
  %51 = fsub float %49, %50
  store float %51, float* %7, align 4
  %52 = load float, float* %5, align 4
  %53 = load float, float* %6, align 4
  %54 = fadd float %52, %53
  store float %54, float* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 2130706432
  br i1 %56, label %57, label %77

57:                                               ; preds = %46
  %58 = load float, float* %3, align 4
  %59 = load float, float* %3, align 4
  %60 = fadd float %58, %59
  %61 = call float @cosf(float %60) #3
  %62 = fneg float %61
  store float %62, float* %4, align 4
  %63 = load float, float* %5, align 4
  %64 = load float, float* %6, align 4
  %65 = fmul float %63, %64
  %66 = load float, float* @zero, align 4
  %67 = fcmp olt float %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load float, float* %4, align 4
  %70 = load float, float* %7, align 4
  %71 = fdiv float %69, %70
  store float %71, float* %8, align 4
  br label %76

72:                                               ; preds = %57
  %73 = load float, float* %4, align 4
  %74 = load float, float* %8, align 4
  %75 = fdiv float %73, %74
  store float %75, float* %7, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 1476395008
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load float, float* @invsqrtpi, align 4
  %82 = load float, float* %7, align 4
  %83 = fmul float %81, %82
  %84 = load float, float* %3, align 4
  %85 = call float @sqrtf(float %84) #3
  %86 = fdiv float %83, %85
  store float %86, float* %4, align 4
  br label %104

87:                                               ; preds = %77
  %88 = load float, float* %3, align 4
  %89 = call float @pzerof(float %88)
  store float %89, float* %9, align 4
  %90 = load float, float* %3, align 4
  %91 = call float @qzerof(float %90)
  store float %91, float* %10, align 4
  %92 = load float, float* @invsqrtpi, align 4
  %93 = load float, float* %9, align 4
  %94 = load float, float* %7, align 4
  %95 = fmul float %93, %94
  %96 = load float, float* %10, align 4
  %97 = load float, float* %8, align 4
  %98 = fmul float %96, %97
  %99 = fadd float %95, %98
  %100 = fmul float %92, %99
  %101 = load float, float* %3, align 4
  %102 = call float @sqrtf(float %101) #3
  %103 = fdiv float %100, %102
  store float %103, float* %4, align 4
  br label %104

104:                                              ; preds = %87, %80
  %105 = load float, float* %4, align 4
  store float %105, float* %2, align 4
  br label %173

106:                                              ; preds = %43
  %107 = load i32, i32* %12, align 4
  %108 = icmp sle i32 %107, 956301312
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load float, float* @u00, align 4
  %111 = load float, float* @tpi, align 4
  %112 = load float, float* %3, align 4
  %113 = call float @__ieee754_logf(float %112)
  %114 = fmul float %111, %113
  %115 = fadd float %110, %114
  store float %115, float* %2, align 4
  br label %173

116:                                              ; preds = %106
  %117 = load float, float* %3, align 4
  %118 = load float, float* %3, align 4
  %119 = fmul float %117, %118
  store float %119, float* %4, align 4
  %120 = load float, float* @u00, align 4
  %121 = load float, float* %4, align 4
  %122 = load float, float* @u01, align 4
  %123 = load float, float* %4, align 4
  %124 = load float, float* @u02, align 4
  %125 = load float, float* %4, align 4
  %126 = load float, float* @u03, align 4
  %127 = load float, float* %4, align 4
  %128 = load float, float* @u04, align 4
  %129 = load float, float* %4, align 4
  %130 = load float, float* @u05, align 4
  %131 = load float, float* %4, align 4
  %132 = load float, float* @u06, align 4
  %133 = fmul float %131, %132
  %134 = fadd float %130, %133
  %135 = fmul float %129, %134
  %136 = fadd float %128, %135
  %137 = fmul float %127, %136
  %138 = fadd float %126, %137
  %139 = fmul float %125, %138
  %140 = fadd float %124, %139
  %141 = fmul float %123, %140
  %142 = fadd float %122, %141
  %143 = fmul float %121, %142
  %144 = fadd float %120, %143
  store float %144, float* %9, align 4
  %145 = load float, float* @one, align 4
  %146 = load float, float* %4, align 4
  %147 = load float, float* @v01, align 4
  %148 = load float, float* %4, align 4
  %149 = load float, float* @v02, align 4
  %150 = load float, float* %4, align 4
  %151 = load float, float* @v03, align 4
  %152 = load float, float* %4, align 4
  %153 = load float, float* @v04, align 4
  %154 = fmul float %152, %153
  %155 = fadd float %151, %154
  %156 = fmul float %150, %155
  %157 = fadd float %149, %156
  %158 = fmul float %148, %157
  %159 = fadd float %147, %158
  %160 = fmul float %146, %159
  %161 = fadd float %145, %160
  store float %161, float* %10, align 4
  %162 = load float, float* %9, align 4
  %163 = load float, float* %10, align 4
  %164 = fdiv float %162, %163
  %165 = load float, float* @tpi, align 4
  %166 = load float, float* %3, align 4
  %167 = call float @__ieee754_j0f(float %166)
  %168 = load float, float* %3, align 4
  %169 = call float @__ieee754_logf(float %168)
  %170 = fmul float %167, %169
  %171 = fmul float %165, %170
  %172 = fadd float %164, %171
  store float %172, float* %2, align 4
  br label %173

173:                                              ; preds = %116, %109, %104, %39, %31, %20
  %174 = load float, float* %2, align 4
  ret float %174
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @sincosf(float, float*, float*) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local float @pzerof(float) #1

declare dso_local float @qzerof(float) #1

declare dso_local float @__ieee754_logf(float) #1

declare dso_local float @__ieee754_j0f(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
