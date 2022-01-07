; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_erff.c_erff.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_erff.c_erff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@efx8 = common dso_local global float 0.000000e+00, align 4
@efx = common dso_local global float 0.000000e+00, align 4
@pp0 = common dso_local global float 0.000000e+00, align 4
@pp1 = common dso_local global float 0.000000e+00, align 4
@pp2 = common dso_local global float 0.000000e+00, align 4
@qq1 = common dso_local global float 0.000000e+00, align 4
@qq2 = common dso_local global float 0.000000e+00, align 4
@qq3 = common dso_local global float 0.000000e+00, align 4
@pa0 = common dso_local global float 0.000000e+00, align 4
@pa1 = common dso_local global float 0.000000e+00, align 4
@pa2 = common dso_local global float 0.000000e+00, align 4
@pa3 = common dso_local global float 0.000000e+00, align 4
@qa1 = common dso_local global float 0.000000e+00, align 4
@qa2 = common dso_local global float 0.000000e+00, align 4
@qa3 = common dso_local global float 0.000000e+00, align 4
@erx = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4
@ra0 = common dso_local global float 0.000000e+00, align 4
@ra1 = common dso_local global float 0.000000e+00, align 4
@ra2 = common dso_local global float 0.000000e+00, align 4
@ra3 = common dso_local global float 0.000000e+00, align 4
@sa1 = common dso_local global float 0.000000e+00, align 4
@sa2 = common dso_local global float 0.000000e+00, align 4
@sa3 = common dso_local global float 0.000000e+00, align 4
@rb0 = common dso_local global float 0.000000e+00, align 4
@rb1 = common dso_local global float 0.000000e+00, align 4
@rb2 = common dso_local global float 0.000000e+00, align 4
@sb1 = common dso_local global float 0.000000e+00, align 4
@sb2 = common dso_local global float 0.000000e+00, align 4
@sb3 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @erff(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float %0, float* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load float, float* %3, align 4
  %17 = call i32 @GET_FLOAT_WORD(i32 %15, float %16)
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 2139095040
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 31
  %25 = shl i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 1, %26
  %28 = sitofp i32 %27 to float
  %29 = load float, float* @one, align 4
  %30 = load float, float* %3, align 4
  %31 = fdiv float %29, %30
  %32 = fadd float %28, %31
  store float %32, float* %2, align 4
  br label %251

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 1062731776
  br i1 %35, label %36, label %90

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 947912704
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 67108864
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load float, float* %3, align 4
  %44 = fmul float 8.000000e+00, %43
  %45 = load float, float* @efx8, align 4
  %46 = load float, float* %3, align 4
  %47 = fmul float %45, %46
  %48 = fadd float %44, %47
  %49 = fdiv float %48, 8.000000e+00
  store float %49, float* %2, align 4
  br label %251

50:                                               ; preds = %39
  %51 = load float, float* %3, align 4
  %52 = load float, float* @efx, align 4
  %53 = load float, float* %3, align 4
  %54 = fmul float %52, %53
  %55 = fadd float %51, %54
  store float %55, float* %2, align 4
  br label %251

56:                                               ; preds = %36
  %57 = load float, float* %3, align 4
  %58 = load float, float* %3, align 4
  %59 = fmul float %57, %58
  store float %59, float* %13, align 4
  %60 = load float, float* @pp0, align 4
  %61 = load float, float* %13, align 4
  %62 = load float, float* @pp1, align 4
  %63 = load float, float* %13, align 4
  %64 = load float, float* @pp2, align 4
  %65 = fmul float %63, %64
  %66 = fadd float %62, %65
  %67 = fmul float %61, %66
  %68 = fadd float %60, %67
  store float %68, float* %14, align 4
  %69 = load float, float* @one, align 4
  %70 = load float, float* %13, align 4
  %71 = load float, float* @qq1, align 4
  %72 = load float, float* %13, align 4
  %73 = load float, float* @qq2, align 4
  %74 = load float, float* %13, align 4
  %75 = load float, float* @qq3, align 4
  %76 = fmul float %74, %75
  %77 = fadd float %73, %76
  %78 = fmul float %72, %77
  %79 = fadd float %71, %78
  %80 = fmul float %70, %79
  %81 = fadd float %69, %80
  store float %81, float* %11, align 4
  %82 = load float, float* %14, align 4
  %83 = load float, float* %11, align 4
  %84 = fdiv float %82, %83
  store float %84, float* %12, align 4
  %85 = load float, float* %3, align 4
  %86 = load float, float* %3, align 4
  %87 = load float, float* %12, align 4
  %88 = fmul float %86, %87
  %89 = fadd float %85, %88
  store float %89, float* %2, align 4
  br label %251

90:                                               ; preds = %33
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 1067450368
  br i1 %92, label %93, label %139

93:                                               ; preds = %90
  %94 = load float, float* %3, align 4
  %95 = call float @llvm.fabs.f32(float %94)
  %96 = load float, float* @one, align 4
  %97 = fsub float %95, %96
  store float %97, float* %11, align 4
  %98 = load float, float* @pa0, align 4
  %99 = load float, float* %11, align 4
  %100 = load float, float* @pa1, align 4
  %101 = load float, float* %11, align 4
  %102 = load float, float* @pa2, align 4
  %103 = load float, float* %11, align 4
  %104 = load float, float* @pa3, align 4
  %105 = fmul float %103, %104
  %106 = fadd float %102, %105
  %107 = fmul float %101, %106
  %108 = fadd float %100, %107
  %109 = fmul float %99, %108
  %110 = fadd float %98, %109
  store float %110, float* %9, align 4
  %111 = load float, float* @one, align 4
  %112 = load float, float* %11, align 4
  %113 = load float, float* @qa1, align 4
  %114 = load float, float* %11, align 4
  %115 = load float, float* @qa2, align 4
  %116 = load float, float* %11, align 4
  %117 = load float, float* @qa3, align 4
  %118 = fmul float %116, %117
  %119 = fadd float %115, %118
  %120 = fmul float %114, %119
  %121 = fadd float %113, %120
  %122 = fmul float %112, %121
  %123 = fadd float %111, %122
  store float %123, float* %10, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %93
  %127 = load float, float* @erx, align 4
  %128 = load float, float* %9, align 4
  %129 = load float, float* %10, align 4
  %130 = fdiv float %128, %129
  %131 = fadd float %127, %130
  store float %131, float* %2, align 4
  br label %251

132:                                              ; preds = %93
  %133 = load float, float* @erx, align 4
  %134 = fneg float %133
  %135 = load float, float* %9, align 4
  %136 = load float, float* %10, align 4
  %137 = fdiv float %135, %136
  %138 = fsub float %134, %137
  store float %138, float* %2, align 4
  br label %251

139:                                              ; preds = %90
  %140 = load i32, i32* %5, align 4
  %141 = icmp sge i32 %140, 1082130432
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i32, i32* %4, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load float, float* @one, align 4
  %147 = load float, float* @tiny, align 4
  %148 = fsub float %146, %147
  store float %148, float* %2, align 4
  br label %251

149:                                              ; preds = %142
  %150 = load float, float* @tiny, align 4
  %151 = load float, float* @one, align 4
  %152 = fsub float %150, %151
  store float %152, float* %2, align 4
  br label %251

153:                                              ; preds = %139
  %154 = load float, float* %3, align 4
  %155 = call float @llvm.fabs.f32(float %154)
  store float %155, float* %3, align 4
  %156 = load float, float* @one, align 4
  %157 = load float, float* %3, align 4
  %158 = load float, float* %3, align 4
  %159 = fmul float %157, %158
  %160 = fdiv float %156, %159
  store float %160, float* %11, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp slt i32 %161, 1077336972
  br i1 %162, label %163, label %190

163:                                              ; preds = %153
  %164 = load float, float* @ra0, align 4
  %165 = load float, float* %11, align 4
  %166 = load float, float* @ra1, align 4
  %167 = load float, float* %11, align 4
  %168 = load float, float* @ra2, align 4
  %169 = load float, float* %11, align 4
  %170 = load float, float* @ra3, align 4
  %171 = fmul float %169, %170
  %172 = fadd float %168, %171
  %173 = fmul float %167, %172
  %174 = fadd float %166, %173
  %175 = fmul float %165, %174
  %176 = fadd float %164, %175
  store float %176, float* %7, align 4
  %177 = load float, float* @one, align 4
  %178 = load float, float* %11, align 4
  %179 = load float, float* @sa1, align 4
  %180 = load float, float* %11, align 4
  %181 = load float, float* @sa2, align 4
  %182 = load float, float* %11, align 4
  %183 = load float, float* @sa3, align 4
  %184 = fmul float %182, %183
  %185 = fadd float %181, %184
  %186 = fmul float %180, %185
  %187 = fadd float %179, %186
  %188 = fmul float %178, %187
  %189 = fadd float %177, %188
  store float %189, float* %8, align 4
  br label %213

190:                                              ; preds = %153
  %191 = load float, float* @rb0, align 4
  %192 = load float, float* %11, align 4
  %193 = load float, float* @rb1, align 4
  %194 = load float, float* %11, align 4
  %195 = load float, float* @rb2, align 4
  %196 = fmul float %194, %195
  %197 = fadd float %193, %196
  %198 = fmul float %192, %197
  %199 = fadd float %191, %198
  store float %199, float* %7, align 4
  %200 = load float, float* @one, align 4
  %201 = load float, float* %11, align 4
  %202 = load float, float* @sb1, align 4
  %203 = load float, float* %11, align 4
  %204 = load float, float* @sb2, align 4
  %205 = load float, float* %11, align 4
  %206 = load float, float* @sb3, align 4
  %207 = fmul float %205, %206
  %208 = fadd float %204, %207
  %209 = fmul float %203, %208
  %210 = fadd float %202, %209
  %211 = fmul float %201, %210
  %212 = fadd float %200, %211
  store float %212, float* %8, align 4
  br label %213

213:                                              ; preds = %190, %163
  %214 = load float, float* %13, align 4
  %215 = load i32, i32* %4, align 4
  %216 = and i32 %215, -8192
  %217 = call i32 @SET_FLOAT_WORD(float %214, i32 %216)
  %218 = load float, float* %13, align 4
  %219 = fneg float %218
  %220 = load float, float* %13, align 4
  %221 = fmul float %219, %220
  %222 = fsub float %221, 5.625000e-01
  %223 = call float @expf(float %222) #4
  %224 = load float, float* %13, align 4
  %225 = load float, float* %3, align 4
  %226 = fsub float %224, %225
  %227 = load float, float* %13, align 4
  %228 = load float, float* %3, align 4
  %229 = fadd float %227, %228
  %230 = fmul float %226, %229
  %231 = load float, float* %7, align 4
  %232 = load float, float* %8, align 4
  %233 = fdiv float %231, %232
  %234 = fadd float %230, %233
  %235 = call float @expf(float %234) #4
  %236 = fmul float %223, %235
  store float %236, float* %14, align 4
  %237 = load i32, i32* %4, align 4
  %238 = icmp sge i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %213
  %240 = load float, float* @one, align 4
  %241 = load float, float* %14, align 4
  %242 = load float, float* %3, align 4
  %243 = fdiv float %241, %242
  %244 = fsub float %240, %243
  store float %244, float* %2, align 4
  br label %251

245:                                              ; preds = %213
  %246 = load float, float* %14, align 4
  %247 = load float, float* %3, align 4
  %248 = fdiv float %246, %247
  %249 = load float, float* @one, align 4
  %250 = fsub float %248, %249
  store float %250, float* %2, align 4
  br label %251

251:                                              ; preds = %245, %239, %149, %145, %132, %126, %56, %50, %42, %22
  %252 = load float, float* %2, align 4
  ret float %252
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

; Function Attrs: nounwind
declare dso_local float @expf(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
