; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acosf.c_acosf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acosf.c_acosf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = common dso_local global float 0.000000e+00, align 4
@pio2_lo = common dso_local global float 0.000000e+00, align 4
@pio2_hi = common dso_local global float 0.000000e+00, align 4
@pS0 = common dso_local global float 0.000000e+00, align 4
@pS1 = common dso_local global float 0.000000e+00, align 4
@pS2 = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4
@qS1 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_acosf(float %0) #0 {
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
  %14 = alloca i32, align 4
  store float %0, float* %3, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load float, float* %3, align 4
  %17 = call i32 @GET_FLOAT_WORD(i32 %15, float %16)
  %18 = load i32, i32* %12, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp sge i32 %20, 1065353216
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 1065353216
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store float 0.000000e+00, float* %2, align 4
  br label %176

29:                                               ; preds = %25
  %30 = load float, float* @pi, align 4
  %31 = load float, float* @pio2_lo, align 4
  %32 = fmul float 2.000000e+00, %31
  %33 = fadd float %30, %32
  store float %33, float* %2, align 4
  br label %176

34:                                               ; preds = %22
  %35 = load float, float* %3, align 4
  %36 = load float, float* %3, align 4
  %37 = fsub float %35, %36
  %38 = load float, float* %3, align 4
  %39 = load float, float* %3, align 4
  %40 = fsub float %38, %39
  %41 = fdiv float %37, %40
  store float %41, float* %2, align 4
  br label %176

42:                                               ; preds = %1
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 1056964608
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  %47 = icmp sle i32 %46, 847249408
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load float, float* @pio2_hi, align 4
  %50 = load float, float* @pio2_lo, align 4
  %51 = fadd float %49, %50
  store float %51, float* %2, align 4
  br label %176

52:                                               ; preds = %45
  %53 = load float, float* %3, align 4
  %54 = load float, float* %3, align 4
  %55 = fmul float %53, %54
  store float %55, float* %4, align 4
  %56 = load float, float* %4, align 4
  %57 = load float, float* @pS0, align 4
  %58 = load float, float* %4, align 4
  %59 = load float, float* @pS1, align 4
  %60 = load float, float* %4, align 4
  %61 = load float, float* @pS2, align 4
  %62 = fmul float %60, %61
  %63 = fadd float %59, %62
  %64 = fmul float %58, %63
  %65 = fadd float %57, %64
  %66 = fmul float %56, %65
  store float %66, float* %5, align 4
  %67 = load float, float* @one, align 4
  %68 = load float, float* %4, align 4
  %69 = load float, float* @qS1, align 4
  %70 = fmul float %68, %69
  %71 = fadd float %67, %70
  store float %71, float* %6, align 4
  %72 = load float, float* %5, align 4
  %73 = load float, float* %6, align 4
  %74 = fdiv float %72, %73
  store float %74, float* %7, align 4
  %75 = load float, float* @pio2_hi, align 4
  %76 = load float, float* %3, align 4
  %77 = load float, float* @pio2_lo, align 4
  %78 = load float, float* %3, align 4
  %79 = load float, float* %7, align 4
  %80 = fmul float %78, %79
  %81 = fsub float %77, %80
  %82 = fsub float %76, %81
  %83 = fsub float %75, %82
  store float %83, float* %2, align 4
  br label %176

84:                                               ; preds = %42
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %84
  %88 = load float, float* @one, align 4
  %89 = load float, float* %3, align 4
  %90 = fadd float %88, %89
  %91 = fmul float %90, 5.000000e-01
  store float %91, float* %4, align 4
  %92 = load float, float* %4, align 4
  %93 = load float, float* @pS0, align 4
  %94 = load float, float* %4, align 4
  %95 = load float, float* @pS1, align 4
  %96 = load float, float* %4, align 4
  %97 = load float, float* @pS2, align 4
  %98 = fmul float %96, %97
  %99 = fadd float %95, %98
  %100 = fmul float %94, %99
  %101 = fadd float %93, %100
  %102 = fmul float %92, %101
  store float %102, float* %5, align 4
  %103 = load float, float* @one, align 4
  %104 = load float, float* %4, align 4
  %105 = load float, float* @qS1, align 4
  %106 = fmul float %104, %105
  %107 = fadd float %103, %106
  store float %107, float* %6, align 4
  %108 = load float, float* %4, align 4
  %109 = call float @sqrtf(float %108) #3
  store float %109, float* %9, align 4
  %110 = load float, float* %5, align 4
  %111 = load float, float* %6, align 4
  %112 = fdiv float %110, %111
  store float %112, float* %7, align 4
  %113 = load float, float* %7, align 4
  %114 = load float, float* %9, align 4
  %115 = fmul float %113, %114
  %116 = load float, float* @pio2_lo, align 4
  %117 = fsub float %115, %116
  store float %117, float* %8, align 4
  %118 = load float, float* @pi, align 4
  %119 = load float, float* %9, align 4
  %120 = load float, float* %8, align 4
  %121 = fadd float %119, %120
  %122 = fmul float 2.000000e+00, %121
  %123 = fsub float %118, %122
  store float %123, float* %2, align 4
  br label %176

124:                                              ; preds = %84
  %125 = load float, float* @one, align 4
  %126 = load float, float* %3, align 4
  %127 = fsub float %125, %126
  %128 = fmul float %127, 5.000000e-01
  store float %128, float* %4, align 4
  %129 = load float, float* %4, align 4
  %130 = call float @sqrtf(float %129) #3
  store float %130, float* %9, align 4
  %131 = load float, float* %9, align 4
  store float %131, float* %11, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load float, float* %11, align 4
  %134 = call i32 @GET_FLOAT_WORD(i32 %132, float %133)
  %135 = load float, float* %11, align 4
  %136 = load i32, i32* %14, align 4
  %137 = and i32 %136, -4096
  %138 = call i32 @SET_FLOAT_WORD(float %135, i32 %137)
  %139 = load float, float* %4, align 4
  %140 = load float, float* %11, align 4
  %141 = load float, float* %11, align 4
  %142 = fmul float %140, %141
  %143 = fsub float %139, %142
  %144 = load float, float* %9, align 4
  %145 = load float, float* %11, align 4
  %146 = fadd float %144, %145
  %147 = fdiv float %143, %146
  store float %147, float* %10, align 4
  %148 = load float, float* %4, align 4
  %149 = load float, float* @pS0, align 4
  %150 = load float, float* %4, align 4
  %151 = load float, float* @pS1, align 4
  %152 = load float, float* %4, align 4
  %153 = load float, float* @pS2, align 4
  %154 = fmul float %152, %153
  %155 = fadd float %151, %154
  %156 = fmul float %150, %155
  %157 = fadd float %149, %156
  %158 = fmul float %148, %157
  store float %158, float* %5, align 4
  %159 = load float, float* @one, align 4
  %160 = load float, float* %4, align 4
  %161 = load float, float* @qS1, align 4
  %162 = fmul float %160, %161
  %163 = fadd float %159, %162
  store float %163, float* %6, align 4
  %164 = load float, float* %5, align 4
  %165 = load float, float* %6, align 4
  %166 = fdiv float %164, %165
  store float %166, float* %7, align 4
  %167 = load float, float* %7, align 4
  %168 = load float, float* %9, align 4
  %169 = fmul float %167, %168
  %170 = load float, float* %10, align 4
  %171 = fadd float %169, %170
  store float %171, float* %8, align 4
  %172 = load float, float* %11, align 4
  %173 = load float, float* %8, align 4
  %174 = fadd float %172, %173
  %175 = fmul float 2.000000e+00, %174
  store float %175, float* %2, align 4
  br label %176

176:                                              ; preds = %124, %87, %52, %48, %34, %29, %28
  %177 = load float, float* %2, align 4
  ret float %177
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
