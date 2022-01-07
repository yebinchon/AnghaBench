; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atan2f.c_atan2f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atan2f.c_atan2f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4
@pi_o_2 = common dso_local global float 0.000000e+00, align 4
@pi_o_4 = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@pi_lo = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_atan2f(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load float, float* %5, align 4
  %15 = call i32 @GET_FLOAT_WORD(i32 %13, float %14)
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 2147483647
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load float, float* %4, align 4
  %20 = call i32 @GET_FLOAT_WORD(i32 %18, float %19)
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 2147483647
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 2139095040
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 2139095040
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %2
  %29 = load float, float* %5, align 4
  %30 = load float, float* %4, align 4
  %31 = call float @nan_mix(float %29, float %30)
  store float %31, float* %3, align 4
  br label %189

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 1065353216
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load float, float* %4, align 4
  %37 = call float @atanf(float %36) #4
  store float %37, float* %3, align 4
  br label %189

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 31
  %41 = and i32 %40, 1
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 30
  %44 = and i32 %43, 2
  %45 = or i32 %41, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %61 [
    i32 0, label %50
    i32 1, label %50
    i32 2, label %52
    i32 3, label %56
  ]

50:                                               ; preds = %48, %48
  %51 = load float, float* %4, align 4
  store float %51, float* %3, align 4
  br label %189

52:                                               ; preds = %48
  %53 = load float, float* @pi, align 4
  %54 = load float, float* @tiny, align 4
  %55 = fadd float %53, %54
  store float %55, float* %3, align 4
  br label %189

56:                                               ; preds = %48
  %57 = load float, float* @pi, align 4
  %58 = fneg float %57
  %59 = load float, float* @tiny, align 4
  %60 = fsub float %58, %59
  store float %60, float* %3, align 4
  br label %189

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load float, float* @pi_o_2, align 4
  %70 = fneg float %69
  %71 = load float, float* @tiny, align 4
  %72 = fsub float %70, %71
  br label %77

73:                                               ; preds = %65
  %74 = load float, float* @pi_o_2, align 4
  %75 = load float, float* @tiny, align 4
  %76 = fadd float %74, %75
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi float [ %72, %68 ], [ %76, %73 ]
  store float %78, float* %3, align 4
  br label %189

79:                                               ; preds = %62
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 2139095040
  br i1 %81, label %82, label %125

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 2139095040
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  switch i32 %86, label %106 [
    i32 0, label %87
    i32 1, label %91
    i32 2, label %96
    i32 3, label %101
  ]

87:                                               ; preds = %85
  %88 = load float, float* @pi_o_4, align 4
  %89 = load float, float* @tiny, align 4
  %90 = fadd float %88, %89
  store float %90, float* %3, align 4
  br label %189

91:                                               ; preds = %85
  %92 = load float, float* @pi_o_4, align 4
  %93 = fneg float %92
  %94 = load float, float* @tiny, align 4
  %95 = fsub float %93, %94
  store float %95, float* %3, align 4
  br label %189

96:                                               ; preds = %85
  %97 = load float, float* @pi_o_4, align 4
  %98 = fmul float 3.000000e+00, %97
  %99 = load float, float* @tiny, align 4
  %100 = fadd float %98, %99
  store float %100, float* %3, align 4
  br label %189

101:                                              ; preds = %85
  %102 = load float, float* @pi_o_4, align 4
  %103 = fmul float -3.000000e+00, %102
  %104 = load float, float* @tiny, align 4
  %105 = fsub float %103, %104
  store float %105, float* %3, align 4
  br label %189

106:                                              ; preds = %85
  br label %124

107:                                              ; preds = %82
  %108 = load i32, i32* %8, align 4
  switch i32 %108, label %123 [
    i32 0, label %109
    i32 1, label %111
    i32 2, label %114
    i32 3, label %118
  ]

109:                                              ; preds = %107
  %110 = load float, float* @zero, align 4
  store float %110, float* %3, align 4
  br label %189

111:                                              ; preds = %107
  %112 = load float, float* @zero, align 4
  %113 = fneg float %112
  store float %113, float* %3, align 4
  br label %189

114:                                              ; preds = %107
  %115 = load float, float* @pi, align 4
  %116 = load float, float* @tiny, align 4
  %117 = fadd float %115, %116
  store float %117, float* %3, align 4
  br label %189

118:                                              ; preds = %107
  %119 = load float, float* @pi, align 4
  %120 = fneg float %119
  %121 = load float, float* @tiny, align 4
  %122 = fsub float %120, %121
  store float %122, float* %3, align 4
  br label %189

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %106
  br label %125

125:                                              ; preds = %124, %79
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 2139095040
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load float, float* @pi_o_2, align 4
  %133 = fneg float %132
  %134 = load float, float* @tiny, align 4
  %135 = fsub float %133, %134
  br label %140

136:                                              ; preds = %128
  %137 = load float, float* @pi_o_2, align 4
  %138 = load float, float* @tiny, align 4
  %139 = fadd float %137, %138
  br label %140

140:                                              ; preds = %136, %131
  %141 = phi float [ %135, %131 ], [ %139, %136 ]
  store float %141, float* %3, align 4
  br label %189

142:                                              ; preds = %125
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %143, %144
  %146 = ashr i32 %145, 23
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp sgt i32 %147, 26
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load float, float* @pi_o_2, align 4
  %151 = load float, float* @pi_lo, align 4
  %152 = fmul float 5.000000e-01, %151
  %153 = fadd float %150, %152
  store float %153, float* %6, align 4
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %170

156:                                              ; preds = %142
  %157 = load i32, i32* %7, align 4
  %158 = icmp slt i32 %157, -26
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store float 0.000000e+00, float* %6, align 4
  br label %169

163:                                              ; preds = %159, %156
  %164 = load float, float* %4, align 4
  %165 = load float, float* %5, align 4
  %166 = fdiv float %164, %165
  %167 = call float @llvm.fabs.f32(float %166)
  %168 = call float @atanf(float %167) #4
  store float %168, float* %6, align 4
  br label %169

169:                                              ; preds = %163, %162
  br label %170

170:                                              ; preds = %169, %149
  %171 = load i32, i32* %8, align 4
  switch i32 %171, label %183 [
    i32 0, label %172
    i32 1, label %174
    i32 2, label %177
  ]

172:                                              ; preds = %170
  %173 = load float, float* %6, align 4
  store float %173, float* %3, align 4
  br label %189

174:                                              ; preds = %170
  %175 = load float, float* %6, align 4
  %176 = fneg float %175
  store float %176, float* %3, align 4
  br label %189

177:                                              ; preds = %170
  %178 = load float, float* @pi, align 4
  %179 = load float, float* %6, align 4
  %180 = load float, float* @pi_lo, align 4
  %181 = fsub float %179, %180
  %182 = fsub float %178, %181
  store float %182, float* %3, align 4
  br label %189

183:                                              ; preds = %170
  %184 = load float, float* %6, align 4
  %185 = load float, float* @pi_lo, align 4
  %186 = fsub float %184, %185
  %187 = load float, float* @pi, align 4
  %188 = fsub float %186, %187
  store float %188, float* %3, align 4
  br label %189

189:                                              ; preds = %183, %177, %174, %172, %140, %118, %114, %111, %109, %101, %96, %91, %87, %77, %56, %52, %50, %35, %28
  %190 = load float, float* %3, align 4
  ret float %190
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local float @nan_mix(float, float) #1

; Function Attrs: nounwind
declare dso_local float @atanf(float) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
