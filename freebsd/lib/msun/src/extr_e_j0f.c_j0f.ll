; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j0f.c_j0f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j0f.c_j0f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@invsqrtpi = common dso_local global float 0.000000e+00, align 4
@huge = common dso_local global float 0.000000e+00, align 4
@R02 = common dso_local global float 0.000000e+00, align 4
@R03 = common dso_local global float 0.000000e+00, align 4
@R04 = common dso_local global float 0.000000e+00, align 4
@R05 = common dso_local global float 0.000000e+00, align 4
@S01 = common dso_local global float 0.000000e+00, align 4
@S02 = common dso_local global float 0.000000e+00, align 4
@S03 = common dso_local global float 0.000000e+00, align 4
@S04 = common dso_local global float 0.000000e+00, align 4
@qrtr = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_j0f(float %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float %0, float* %3, align 4
  %14 = load i32, i32* %12, align 4
  %15 = load float, float* %3, align 4
  %16 = call i32 @GET_FLOAT_WORD(i32 %14, float %15)
  %17 = load i32, i32* %12, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp sge i32 %19, 2139095040
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load float, float* @one, align 4
  %23 = load float, float* %3, align 4
  %24 = load float, float* %3, align 4
  %25 = fmul float %23, %24
  %26 = fdiv float %22, %25
  store float %26, float* %2, align 4
  br label %178

27:                                               ; preds = %1
  %28 = load float, float* %3, align 4
  %29 = call float @llvm.fabs.f32(float %28)
  store float %29, float* %3, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp sge i32 %30, 1073741824
  br i1 %31, label %32, label %92

32:                                               ; preds = %27
  %33 = load float, float* %3, align 4
  %34 = call i32 @sincosf(float %33, float* %5, float* %6)
  %35 = load float, float* %5, align 4
  %36 = load float, float* %6, align 4
  %37 = fsub float %35, %36
  store float %37, float* %7, align 4
  %38 = load float, float* %5, align 4
  %39 = load float, float* %6, align 4
  %40 = fadd float %38, %39
  store float %40, float* %8, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 2130706432
  br i1 %42, label %43, label %63

43:                                               ; preds = %32
  %44 = load float, float* %3, align 4
  %45 = load float, float* %3, align 4
  %46 = fadd float %44, %45
  %47 = call float @cosf(float %46) #4
  %48 = fneg float %47
  store float %48, float* %4, align 4
  %49 = load float, float* %5, align 4
  %50 = load float, float* %6, align 4
  %51 = fmul float %49, %50
  %52 = load float, float* @zero, align 4
  %53 = fcmp olt float %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load float, float* %4, align 4
  %56 = load float, float* %7, align 4
  %57 = fdiv float %55, %56
  store float %57, float* %8, align 4
  br label %62

58:                                               ; preds = %43
  %59 = load float, float* %4, align 4
  %60 = load float, float* %8, align 4
  %61 = fdiv float %59, %60
  store float %61, float* %7, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %32
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %64, 1476395008
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load float, float* @invsqrtpi, align 4
  %68 = load float, float* %8, align 4
  %69 = fmul float %67, %68
  %70 = load float, float* %3, align 4
  %71 = call float @sqrtf(float %70) #4
  %72 = fdiv float %69, %71
  store float %72, float* %4, align 4
  br label %90

73:                                               ; preds = %63
  %74 = load float, float* %3, align 4
  %75 = call float @pzerof(float %74)
  store float %75, float* %10, align 4
  %76 = load float, float* %3, align 4
  %77 = call float @qzerof(float %76)
  store float %77, float* %11, align 4
  %78 = load float, float* @invsqrtpi, align 4
  %79 = load float, float* %10, align 4
  %80 = load float, float* %8, align 4
  %81 = fmul float %79, %80
  %82 = load float, float* %11, align 4
  %83 = load float, float* %7, align 4
  %84 = fmul float %82, %83
  %85 = fsub float %81, %84
  %86 = fmul float %78, %85
  %87 = load float, float* %3, align 4
  %88 = call float @sqrtf(float %87) #4
  %89 = fdiv float %86, %88
  store float %89, float* %4, align 4
  br label %90

90:                                               ; preds = %73, %66
  %91 = load float, float* %4, align 4
  store float %91, float* %2, align 4
  br label %178

92:                                               ; preds = %27
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 989855744
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  %96 = load float, float* @huge, align 4
  %97 = load float, float* %3, align 4
  %98 = fadd float %96, %97
  %99 = load float, float* @one, align 4
  %100 = fcmp ogt float %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 964689920
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load float, float* @one, align 4
  store float %105, float* %2, align 4
  br label %178

106:                                              ; preds = %101
  %107 = load float, float* @one, align 4
  %108 = load float, float* %3, align 4
  %109 = load float, float* %3, align 4
  %110 = fmul float %108, %109
  %111 = fdiv float %110, 4.000000e+00
  %112 = fsub float %107, %111
  store float %112, float* %2, align 4
  br label %178

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %92
  %115 = load float, float* %3, align 4
  %116 = load float, float* %3, align 4
  %117 = fmul float %115, %116
  store float %117, float* %4, align 4
  %118 = load float, float* %4, align 4
  %119 = load float, float* @R02, align 4
  %120 = load float, float* %4, align 4
  %121 = load float, float* @R03, align 4
  %122 = load float, float* %4, align 4
  %123 = load float, float* @R04, align 4
  %124 = load float, float* %4, align 4
  %125 = load float, float* @R05, align 4
  %126 = fmul float %124, %125
  %127 = fadd float %123, %126
  %128 = fmul float %122, %127
  %129 = fadd float %121, %128
  %130 = fmul float %120, %129
  %131 = fadd float %119, %130
  %132 = fmul float %118, %131
  store float %132, float* %9, align 4
  %133 = load float, float* @one, align 4
  %134 = load float, float* %4, align 4
  %135 = load float, float* @S01, align 4
  %136 = load float, float* %4, align 4
  %137 = load float, float* @S02, align 4
  %138 = load float, float* %4, align 4
  %139 = load float, float* @S03, align 4
  %140 = load float, float* %4, align 4
  %141 = load float, float* @S04, align 4
  %142 = fmul float %140, %141
  %143 = fadd float %139, %142
  %144 = fmul float %138, %143
  %145 = fadd float %137, %144
  %146 = fmul float %136, %145
  %147 = fadd float %135, %146
  %148 = fmul float %134, %147
  %149 = fadd float %133, %148
  store float %149, float* %5, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 1065353216
  br i1 %151, label %152, label %162

152:                                              ; preds = %114
  %153 = load float, float* @one, align 4
  %154 = load float, float* %4, align 4
  %155 = load float, float* %9, align 4
  %156 = load float, float* %5, align 4
  %157 = fdiv float %155, %156
  %158 = load float, float* @qrtr, align 4
  %159 = fsub float %157, %158
  %160 = fmul float %154, %159
  %161 = fadd float %153, %160
  store float %161, float* %2, align 4
  br label %178

162:                                              ; preds = %114
  %163 = load float, float* %3, align 4
  %164 = fdiv float %163, 2.000000e+00
  store float %164, float* %10, align 4
  %165 = load float, float* @one, align 4
  %166 = load float, float* %10, align 4
  %167 = fadd float %165, %166
  %168 = load float, float* @one, align 4
  %169 = load float, float* %10, align 4
  %170 = fsub float %168, %169
  %171 = fmul float %167, %170
  %172 = load float, float* %4, align 4
  %173 = load float, float* %9, align 4
  %174 = load float, float* %5, align 4
  %175 = fdiv float %173, %174
  %176 = fmul float %172, %175
  %177 = fadd float %171, %176
  store float %177, float* %2, align 4
  br label %178

178:                                              ; preds = %162, %152, %106, %104, %90, %21
  %179 = load float, float* %2, align 4
  ret float %179
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i32 @sincosf(float, float*, float*) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #3

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #3

declare dso_local float @pzerof(float) #1

declare dso_local float @qzerof(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
