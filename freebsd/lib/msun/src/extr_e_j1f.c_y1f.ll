; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1f.c_y1f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1f.c_y1f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vone = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4
@vzero = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@invsqrtpi = common dso_local global float 0.000000e+00, align 4
@tpi = common dso_local global float 0.000000e+00, align 4
@U0 = common dso_local global float* null, align 8
@V0 = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_y1f(float %0) #0 {
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
  br label %193

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
  br label %193

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load float, float* @vzero, align 4
  %41 = load float, float* @vzero, align 4
  %42 = fdiv float %40, %41
  store float %42, float* %2, align 4
  br label %193

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %44, 1073741824
  br i1 %45, label %46, label %106

46:                                               ; preds = %43
  %47 = load float, float* %3, align 4
  %48 = call i32 @sincosf(float %47, float* %5, float* %6)
  %49 = load float, float* %5, align 4
  %50 = fneg float %49
  %51 = load float, float* %6, align 4
  %52 = fsub float %50, %51
  store float %52, float* %7, align 4
  %53 = load float, float* %5, align 4
  %54 = load float, float* %6, align 4
  %55 = fsub float %53, %54
  store float %55, float* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 2130706432
  br i1 %57, label %58, label %77

58:                                               ; preds = %46
  %59 = load float, float* %3, align 4
  %60 = load float, float* %3, align 4
  %61 = fadd float %59, %60
  %62 = call float @cosf(float %61) #3
  store float %62, float* %4, align 4
  %63 = load float, float* %5, align 4
  %64 = load float, float* %6, align 4
  %65 = fmul float %63, %64
  %66 = load float, float* @zero, align 4
  %67 = fcmp ogt float %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load float, float* %4, align 4
  %70 = load float, float* %7, align 4
  %71 = fdiv float %69, %70
  store float %71, float* %8, align 4
  br label %76

72:                                               ; preds = %58
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
  %89 = call float @ponef(float %88)
  store float %89, float* %9, align 4
  %90 = load float, float* %3, align 4
  %91 = call float @qonef(float %90)
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
  br label %193

106:                                              ; preds = %43
  %107 = load i32, i32* %12, align 4
  %108 = icmp sle i32 %107, 855638016
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load float, float* @tpi, align 4
  %111 = fneg float %110
  %112 = load float, float* %3, align 4
  %113 = fdiv float %111, %112
  store float %113, float* %2, align 4
  br label %193

114:                                              ; preds = %106
  %115 = load float, float* %3, align 4
  %116 = load float, float* %3, align 4
  %117 = fmul float %115, %116
  store float %117, float* %4, align 4
  %118 = load float*, float** @U0, align 8
  %119 = getelementptr inbounds float, float* %118, i64 0
  %120 = load float, float* %119, align 4
  %121 = load float, float* %4, align 4
  %122 = load float*, float** @U0, align 8
  %123 = getelementptr inbounds float, float* %122, i64 1
  %124 = load float, float* %123, align 4
  %125 = load float, float* %4, align 4
  %126 = load float*, float** @U0, align 8
  %127 = getelementptr inbounds float, float* %126, i64 2
  %128 = load float, float* %127, align 4
  %129 = load float, float* %4, align 4
  %130 = load float*, float** @U0, align 8
  %131 = getelementptr inbounds float, float* %130, i64 3
  %132 = load float, float* %131, align 4
  %133 = load float, float* %4, align 4
  %134 = load float*, float** @U0, align 8
  %135 = getelementptr inbounds float, float* %134, i64 4
  %136 = load float, float* %135, align 4
  %137 = fmul float %133, %136
  %138 = fadd float %132, %137
  %139 = fmul float %129, %138
  %140 = fadd float %128, %139
  %141 = fmul float %125, %140
  %142 = fadd float %124, %141
  %143 = fmul float %121, %142
  %144 = fadd float %120, %143
  store float %144, float* %9, align 4
  %145 = load float, float* @one, align 4
  %146 = load float, float* %4, align 4
  %147 = load float*, float** @V0, align 8
  %148 = getelementptr inbounds float, float* %147, i64 0
  %149 = load float, float* %148, align 4
  %150 = load float, float* %4, align 4
  %151 = load float*, float** @V0, align 8
  %152 = getelementptr inbounds float, float* %151, i64 1
  %153 = load float, float* %152, align 4
  %154 = load float, float* %4, align 4
  %155 = load float*, float** @V0, align 8
  %156 = getelementptr inbounds float, float* %155, i64 2
  %157 = load float, float* %156, align 4
  %158 = load float, float* %4, align 4
  %159 = load float*, float** @V0, align 8
  %160 = getelementptr inbounds float, float* %159, i64 3
  %161 = load float, float* %160, align 4
  %162 = load float, float* %4, align 4
  %163 = load float*, float** @V0, align 8
  %164 = getelementptr inbounds float, float* %163, i64 4
  %165 = load float, float* %164, align 4
  %166 = fmul float %162, %165
  %167 = fadd float %161, %166
  %168 = fmul float %158, %167
  %169 = fadd float %157, %168
  %170 = fmul float %154, %169
  %171 = fadd float %153, %170
  %172 = fmul float %150, %171
  %173 = fadd float %149, %172
  %174 = fmul float %146, %173
  %175 = fadd float %145, %174
  store float %175, float* %10, align 4
  %176 = load float, float* %3, align 4
  %177 = load float, float* %9, align 4
  %178 = load float, float* %10, align 4
  %179 = fdiv float %177, %178
  %180 = fmul float %176, %179
  %181 = load float, float* @tpi, align 4
  %182 = load float, float* %3, align 4
  %183 = call float @__ieee754_j1f(float %182)
  %184 = load float, float* %3, align 4
  %185 = call float @__ieee754_logf(float %184)
  %186 = fmul float %183, %185
  %187 = load float, float* @one, align 4
  %188 = load float, float* %3, align 4
  %189 = fdiv float %187, %188
  %190 = fsub float %186, %189
  %191 = fmul float %181, %190
  %192 = fadd float %180, %191
  store float %192, float* %2, align 4
  br label %193

193:                                              ; preds = %114, %109, %104, %39, %31, %20
  %194 = load float, float* %2, align 4
  ret float %194
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @sincosf(float, float*, float*) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local float @ponef(float) #1

declare dso_local float @qonef(float) #1

declare dso_local float @__ieee754_j1f(float) #1

declare dso_local float @__ieee754_logf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
