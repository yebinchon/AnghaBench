; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1f.c_j1f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1f.c_j1f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@invsqrtpi = common dso_local global float 0.000000e+00, align 4
@huge = common dso_local global float 0.000000e+00, align 4
@r00 = common dso_local global float 0.000000e+00, align 4
@r01 = common dso_local global float 0.000000e+00, align 4
@r02 = common dso_local global float 0.000000e+00, align 4
@r03 = common dso_local global float 0.000000e+00, align 4
@s01 = common dso_local global float 0.000000e+00, align 4
@s02 = common dso_local global float 0.000000e+00, align 4
@s03 = common dso_local global float 0.000000e+00, align 4
@s04 = common dso_local global float 0.000000e+00, align 4
@s05 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_j1f(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store float %0, float* %3, align 4
  %15 = load i32, i32* %13, align 4
  %16 = load float, float* %3, align 4
  %17 = call i32 @GET_FLOAT_WORD(i32 %15, float %16)
  %18 = load i32, i32* %13, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp sge i32 %20, 2139095040
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load float, float* @one, align 4
  %24 = load float, float* %3, align 4
  %25 = fdiv float %23, %24
  store float %25, float* %2, align 4
  br label %159

26:                                               ; preds = %1
  %27 = load float, float* %3, align 4
  %28 = call float @llvm.fabs.f32(float %27)
  store float %28, float* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp sge i32 %29, 1073741824
  br i1 %30, label %31, label %97

31:                                               ; preds = %26
  %32 = load float, float* %12, align 4
  %33 = call i32 @sincosf(float %32, float* %5, float* %6)
  %34 = load float, float* %5, align 4
  %35 = fneg float %34
  %36 = load float, float* %6, align 4
  %37 = fsub float %35, %36
  store float %37, float* %7, align 4
  %38 = load float, float* %5, align 4
  %39 = load float, float* %6, align 4
  %40 = fsub float %38, %39
  store float %40, float* %8, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 2130706432
  br i1 %42, label %43, label %62

43:                                               ; preds = %31
  %44 = load float, float* %12, align 4
  %45 = load float, float* %12, align 4
  %46 = fadd float %44, %45
  %47 = call float @cosf(float %46) #4
  store float %47, float* %4, align 4
  %48 = load float, float* %5, align 4
  %49 = load float, float* %6, align 4
  %50 = fmul float %48, %49
  %51 = load float, float* @zero, align 4
  %52 = fcmp ogt float %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load float, float* %4, align 4
  %55 = load float, float* %7, align 4
  %56 = fdiv float %54, %55
  store float %56, float* %8, align 4
  br label %61

57:                                               ; preds = %43
  %58 = load float, float* %4, align 4
  %59 = load float, float* %8, align 4
  %60 = fdiv float %58, %59
  store float %60, float* %7, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %31
  %63 = load i32, i32* %14, align 4
  %64 = icmp sgt i32 %63, 1476395008
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load float, float* @invsqrtpi, align 4
  %67 = load float, float* %8, align 4
  %68 = fmul float %66, %67
  %69 = load float, float* %12, align 4
  %70 = call float @sqrtf(float %69) #4
  %71 = fdiv float %68, %70
  store float %71, float* %4, align 4
  br label %89

72:                                               ; preds = %62
  %73 = load float, float* %12, align 4
  %74 = call float @ponef(float %73)
  store float %74, float* %10, align 4
  %75 = load float, float* %12, align 4
  %76 = call float @qonef(float %75)
  store float %76, float* %11, align 4
  %77 = load float, float* @invsqrtpi, align 4
  %78 = load float, float* %10, align 4
  %79 = load float, float* %8, align 4
  %80 = fmul float %78, %79
  %81 = load float, float* %11, align 4
  %82 = load float, float* %7, align 4
  %83 = fmul float %81, %82
  %84 = fsub float %80, %83
  %85 = fmul float %77, %84
  %86 = load float, float* %12, align 4
  %87 = call float @sqrtf(float %86) #4
  %88 = fdiv float %85, %87
  store float %88, float* %4, align 4
  br label %89

89:                                               ; preds = %72, %65
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load float, float* %4, align 4
  %94 = fneg float %93
  store float %94, float* %2, align 4
  br label %159

95:                                               ; preds = %89
  %96 = load float, float* %4, align 4
  store float %96, float* %2, align 4
  br label %159

97:                                               ; preds = %26
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 956301312
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load float, float* @huge, align 4
  %102 = load float, float* %3, align 4
  %103 = fadd float %101, %102
  %104 = load float, float* @one, align 4
  %105 = fcmp ogt float %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load float, float* %3, align 4
  %108 = fmul float 5.000000e-01, %107
  store float %108, float* %2, align 4
  br label %159

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %97
  %111 = load float, float* %3, align 4
  %112 = load float, float* %3, align 4
  %113 = fmul float %111, %112
  store float %113, float* %4, align 4
  %114 = load float, float* %4, align 4
  %115 = load float, float* @r00, align 4
  %116 = load float, float* %4, align 4
  %117 = load float, float* @r01, align 4
  %118 = load float, float* %4, align 4
  %119 = load float, float* @r02, align 4
  %120 = load float, float* %4, align 4
  %121 = load float, float* @r03, align 4
  %122 = fmul float %120, %121
  %123 = fadd float %119, %122
  %124 = fmul float %118, %123
  %125 = fadd float %117, %124
  %126 = fmul float %116, %125
  %127 = fadd float %115, %126
  %128 = fmul float %114, %127
  store float %128, float* %9, align 4
  %129 = load float, float* @one, align 4
  %130 = load float, float* %4, align 4
  %131 = load float, float* @s01, align 4
  %132 = load float, float* %4, align 4
  %133 = load float, float* @s02, align 4
  %134 = load float, float* %4, align 4
  %135 = load float, float* @s03, align 4
  %136 = load float, float* %4, align 4
  %137 = load float, float* @s04, align 4
  %138 = load float, float* %4, align 4
  %139 = load float, float* @s05, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %137, %140
  %142 = fmul float %136, %141
  %143 = fadd float %135, %142
  %144 = fmul float %134, %143
  %145 = fadd float %133, %144
  %146 = fmul float %132, %145
  %147 = fadd float %131, %146
  %148 = fmul float %130, %147
  %149 = fadd float %129, %148
  store float %149, float* %5, align 4
  %150 = load float, float* %3, align 4
  %151 = load float, float* %9, align 4
  %152 = fmul float %151, %150
  store float %152, float* %9, align 4
  %153 = load float, float* %3, align 4
  %154 = fmul float %153, 5.000000e-01
  %155 = load float, float* %9, align 4
  %156 = load float, float* %5, align 4
  %157 = fdiv float %155, %156
  %158 = fadd float %154, %157
  store float %158, float* %2, align 4
  br label %159

159:                                              ; preds = %110, %106, %95, %92, %22
  %160 = load float, float* %2, align 4
  ret float %160
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i32 @sincosf(float, float*, float*) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #3

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #3

declare dso_local float @ponef(float) #1

declare dso_local float @qonef(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
