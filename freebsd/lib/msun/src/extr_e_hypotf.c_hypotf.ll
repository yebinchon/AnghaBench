; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_hypotf.c_hypotf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_hypotf.c_hypotf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_hypotf(float %0, float %1) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %17 = load i32, i32* %15, align 4
  %18 = load float, float* %4, align 4
  %19 = call i32 @GET_FLOAT_WORD(i32 %17, float %18)
  %20 = load i32, i32* %15, align 4
  %21 = and i32 %20, 2147483647
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load float, float* %5, align 4
  %24 = call i32 @GET_FLOAT_WORD(i32 %22, float %23)
  %25 = load i32, i32* %16, align 4
  %26 = and i32 %25, 2147483647
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load float, float* %5, align 4
  store float %31, float* %6, align 4
  %32 = load float, float* %4, align 4
  store float %32, float* %7, align 4
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %16, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load float, float* %4, align 4
  store float %37, float* %6, align 4
  %38 = load float, float* %5, align 4
  store float %38, float* %7, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load float, float* %6, align 4
  %41 = call float @llvm.fabs.f32(float %40)
  store float %41, float* %6, align 4
  %42 = load float, float* %7, align 4
  %43 = call float @llvm.fabs.f32(float %42)
  store float %43, float* %7, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp sgt i32 %46, 251658240
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load float, float* %6, align 4
  %50 = load float, float* %7, align 4
  %51 = fadd float %49, %50
  store float %51, float* %3, align 4
  br label %208

52:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sgt i32 %53, 1484783616
  br i1 %54, label %55, label %92

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = icmp sge i32 %56, 2139095040
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load float, float* %4, align 4
  %60 = fpext float %59 to x86_fp80
  %61 = fadd x86_fp80 %60, 0xK00000000000000000000
  %62 = fptrunc x86_fp80 %61 to float
  %63 = call float @fabsl(float %62)
  %64 = load float, float* %5, align 4
  %65 = fadd float %64, 0.000000e+00
  %66 = call float @llvm.fabs.f32(float %65)
  %67 = fsub float %63, %66
  store float %67, float* %12, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 2139095040
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load float, float* %6, align 4
  store float %71, float* %12, align 4
  br label %72

72:                                               ; preds = %70, %58
  %73 = load i32, i32* %16, align 4
  %74 = icmp eq i32 %73, 2139095040
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load float, float* %7, align 4
  store float %76, float* %12, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load float, float* %12, align 4
  store float %78, float* %3, align 4
  br label %208

79:                                               ; preds = %55
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 %80, 570425344
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = sub nsw i32 %82, 570425344
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 68
  store i32 %85, i32* %14, align 4
  %86 = load float, float* %6, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @SET_FLOAT_WORD(float %86, i32 %87)
  %89 = load float, float* %7, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @SET_FLOAT_WORD(float %89, i32 %90)
  br label %92

92:                                               ; preds = %79, %52
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 645922816
  br i1 %94, label %95, label %128

95:                                               ; preds = %92
  %96 = load i32, i32* %16, align 4
  %97 = icmp sle i32 %96, 8388607
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load float, float* %6, align 4
  store float %102, float* %3, align 4
  br label %208

103:                                              ; preds = %98
  %104 = load float, float* %8, align 4
  %105 = call i32 @SET_FLOAT_WORD(float %104, i32 2122317824)
  %106 = load float, float* %8, align 4
  %107 = load float, float* %7, align 4
  %108 = fmul float %107, %106
  store float %108, float* %7, align 4
  %109 = load float, float* %8, align 4
  %110 = load float, float* %6, align 4
  %111 = fmul float %110, %109
  store float %111, float* %6, align 4
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 %112, 126
  store i32 %113, i32* %14, align 4
  br label %127

114:                                              ; preds = %95
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 570425344
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 570425344
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %119, 68
  store i32 %120, i32* %14, align 4
  %121 = load float, float* %6, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @SET_FLOAT_WORD(float %121, i32 %122)
  %124 = load float, float* %7, align 4
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @SET_FLOAT_WORD(float %124, i32 %125)
  br label %127

127:                                              ; preds = %114, %103
  br label %128

128:                                              ; preds = %127, %92
  %129 = load float, float* %6, align 4
  %130 = load float, float* %7, align 4
  %131 = fsub float %129, %130
  store float %131, float* %12, align 4
  %132 = load float, float* %12, align 4
  %133 = load float, float* %7, align 4
  %134 = fcmp ogt float %132, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %128
  %136 = load float, float* %8, align 4
  %137 = load i32, i32* %15, align 4
  %138 = and i32 %137, -4096
  %139 = call i32 @SET_FLOAT_WORD(float %136, i32 %138)
  %140 = load float, float* %6, align 4
  %141 = load float, float* %8, align 4
  %142 = fsub float %140, %141
  store float %142, float* %9, align 4
  %143 = load float, float* %8, align 4
  %144 = load float, float* %8, align 4
  %145 = fmul float %143, %144
  %146 = load float, float* %7, align 4
  %147 = load float, float* %7, align 4
  %148 = fneg float %147
  %149 = fmul float %146, %148
  %150 = load float, float* %9, align 4
  %151 = load float, float* %6, align 4
  %152 = load float, float* %8, align 4
  %153 = fadd float %151, %152
  %154 = fmul float %150, %153
  %155 = fsub float %149, %154
  %156 = fsub float %145, %155
  %157 = call float @__ieee754_sqrtf(float %156)
  store float %157, float* %12, align 4
  br label %194

158:                                              ; preds = %128
  %159 = load float, float* %6, align 4
  %160 = load float, float* %6, align 4
  %161 = fadd float %159, %160
  store float %161, float* %6, align 4
  %162 = load float, float* %10, align 4
  %163 = load i32, i32* %16, align 4
  %164 = and i32 %163, -4096
  %165 = call i32 @SET_FLOAT_WORD(float %162, i32 %164)
  %166 = load float, float* %7, align 4
  %167 = load float, float* %10, align 4
  %168 = fsub float %166, %167
  store float %168, float* %11, align 4
  %169 = load float, float* %8, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 8388608
  %172 = and i32 %171, -4096
  %173 = call i32 @SET_FLOAT_WORD(float %169, i32 %172)
  %174 = load float, float* %6, align 4
  %175 = load float, float* %8, align 4
  %176 = fsub float %174, %175
  store float %176, float* %9, align 4
  %177 = load float, float* %8, align 4
  %178 = load float, float* %10, align 4
  %179 = fmul float %177, %178
  %180 = load float, float* %12, align 4
  %181 = load float, float* %12, align 4
  %182 = fneg float %181
  %183 = fmul float %180, %182
  %184 = load float, float* %8, align 4
  %185 = load float, float* %11, align 4
  %186 = fmul float %184, %185
  %187 = load float, float* %9, align 4
  %188 = load float, float* %7, align 4
  %189 = fmul float %187, %188
  %190 = fadd float %186, %189
  %191 = fsub float %183, %190
  %192 = fsub float %179, %191
  %193 = call float @__ieee754_sqrtf(float %192)
  store float %193, float* %12, align 4
  br label %194

194:                                              ; preds = %158, %135
  %195 = load i32, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %194
  %198 = load float, float* %8, align 4
  %199 = load i32, i32* %14, align 4
  %200 = shl i32 %199, 23
  %201 = add nsw i32 1065353216, %200
  %202 = call i32 @SET_FLOAT_WORD(float %198, i32 %201)
  %203 = load float, float* %8, align 4
  %204 = load float, float* %12, align 4
  %205 = fmul float %203, %204
  store float %205, float* %3, align 4
  br label %208

206:                                              ; preds = %194
  %207 = load float, float* %12, align 4
  store float %207, float* %3, align 4
  br label %208

208:                                              ; preds = %206, %197, %101, %77, %48
  %209 = load float, float* %3, align 4
  ret float %209
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @fabsl(float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

declare dso_local float @__ieee754_sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
