; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_erff.c_erfcf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_erff.c_erfcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@pp0 = common dso_local global float 0.000000e+00, align 4
@pp1 = common dso_local global float 0.000000e+00, align 4
@pp2 = common dso_local global float 0.000000e+00, align 4
@qq1 = common dso_local global float 0.000000e+00, align 4
@qq2 = common dso_local global float 0.000000e+00, align 4
@qq3 = common dso_local global float 0.000000e+00, align 4
@half = common dso_local global float 0.000000e+00, align 4
@pa0 = common dso_local global float 0.000000e+00, align 4
@pa1 = common dso_local global float 0.000000e+00, align 4
@pa2 = common dso_local global float 0.000000e+00, align 4
@pa3 = common dso_local global float 0.000000e+00, align 4
@qa1 = common dso_local global float 0.000000e+00, align 4
@qa2 = common dso_local global float 0.000000e+00, align 4
@qa3 = common dso_local global float 0.000000e+00, align 4
@erx = common dso_local global float 0.000000e+00, align 4
@ra0 = common dso_local global float 0.000000e+00, align 4
@ra1 = common dso_local global float 0.000000e+00, align 4
@ra2 = common dso_local global float 0.000000e+00, align 4
@ra3 = common dso_local global float 0.000000e+00, align 4
@sa1 = common dso_local global float 0.000000e+00, align 4
@sa2 = common dso_local global float 0.000000e+00, align 4
@sa3 = common dso_local global float 0.000000e+00, align 4
@two = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4
@rb0 = common dso_local global float 0.000000e+00, align 4
@rb1 = common dso_local global float 0.000000e+00, align 4
@rb2 = common dso_local global float 0.000000e+00, align 4
@sb1 = common dso_local global float 0.000000e+00, align 4
@sb2 = common dso_local global float 0.000000e+00, align 4
@sb3 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @erfcf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float %0, float* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load float, float* %3, align 4
  %16 = call i32 @GET_FLOAT_WORD(i32 %14, float %15)
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 2139095040
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 31
  %24 = shl i32 %23, 1
  %25 = sitofp i32 %24 to float
  %26 = load float, float* @one, align 4
  %27 = load float, float* %3, align 4
  %28 = fdiv float %26, %27
  %29 = fadd float %25, %28
  store float %29, float* %2, align 4
  br label %265

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 1062731776
  br i1 %32, label %33, label %91

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 864026624
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load float, float* @one, align 4
  %38 = load float, float* %3, align 4
  %39 = fsub float %37, %38
  store float %39, float* %2, align 4
  br label %265

40:                                               ; preds = %33
  %41 = load float, float* %3, align 4
  %42 = load float, float* %3, align 4
  %43 = fmul float %41, %42
  store float %43, float* %12, align 4
  %44 = load float, float* @pp0, align 4
  %45 = load float, float* %12, align 4
  %46 = load float, float* @pp1, align 4
  %47 = load float, float* %12, align 4
  %48 = load float, float* @pp2, align 4
  %49 = fmul float %47, %48
  %50 = fadd float %46, %49
  %51 = fmul float %45, %50
  %52 = fadd float %44, %51
  store float %52, float* %13, align 4
  %53 = load float, float* @one, align 4
  %54 = load float, float* %12, align 4
  %55 = load float, float* @qq1, align 4
  %56 = load float, float* %12, align 4
  %57 = load float, float* @qq2, align 4
  %58 = load float, float* %12, align 4
  %59 = load float, float* @qq3, align 4
  %60 = fmul float %58, %59
  %61 = fadd float %57, %60
  %62 = fmul float %56, %61
  %63 = fadd float %55, %62
  %64 = fmul float %54, %63
  %65 = fadd float %53, %64
  store float %65, float* %10, align 4
  %66 = load float, float* %13, align 4
  %67 = load float, float* %10, align 4
  %68 = fdiv float %66, %67
  store float %68, float* %11, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 1048576000
  br i1 %70, label %71, label %79

71:                                               ; preds = %40
  %72 = load float, float* @one, align 4
  %73 = load float, float* %3, align 4
  %74 = load float, float* %3, align 4
  %75 = load float, float* %11, align 4
  %76 = fmul float %74, %75
  %77 = fadd float %73, %76
  %78 = fsub float %72, %77
  store float %78, float* %2, align 4
  br label %265

79:                                               ; preds = %40
  %80 = load float, float* %3, align 4
  %81 = load float, float* %11, align 4
  %82 = fmul float %80, %81
  store float %82, float* %13, align 4
  %83 = load float, float* %3, align 4
  %84 = load float, float* @half, align 4
  %85 = fsub float %83, %84
  %86 = load float, float* %13, align 4
  %87 = fadd float %86, %85
  store float %87, float* %13, align 4
  %88 = load float, float* @half, align 4
  %89 = load float, float* %13, align 4
  %90 = fsub float %88, %89
  store float %90, float* %2, align 4
  br label %265

91:                                               ; preds = %30
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 1067450368
  br i1 %93, label %94, label %145

94:                                               ; preds = %91
  %95 = load float, float* %3, align 4
  %96 = call float @llvm.fabs.f32(float %95)
  %97 = load float, float* @one, align 4
  %98 = fsub float %96, %97
  store float %98, float* %10, align 4
  %99 = load float, float* @pa0, align 4
  %100 = load float, float* %10, align 4
  %101 = load float, float* @pa1, align 4
  %102 = load float, float* %10, align 4
  %103 = load float, float* @pa2, align 4
  %104 = load float, float* %10, align 4
  %105 = load float, float* @pa3, align 4
  %106 = fmul float %104, %105
  %107 = fadd float %103, %106
  %108 = fmul float %102, %107
  %109 = fadd float %101, %108
  %110 = fmul float %100, %109
  %111 = fadd float %99, %110
  store float %111, float* %8, align 4
  %112 = load float, float* @one, align 4
  %113 = load float, float* %10, align 4
  %114 = load float, float* @qa1, align 4
  %115 = load float, float* %10, align 4
  %116 = load float, float* @qa2, align 4
  %117 = load float, float* %10, align 4
  %118 = load float, float* @qa3, align 4
  %119 = fmul float %117, %118
  %120 = fadd float %116, %119
  %121 = fmul float %115, %120
  %122 = fadd float %114, %121
  %123 = fmul float %113, %122
  %124 = fadd float %112, %123
  store float %124, float* %9, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %94
  %128 = load float, float* @one, align 4
  %129 = load float, float* @erx, align 4
  %130 = fsub float %128, %129
  store float %130, float* %12, align 4
  %131 = load float, float* %12, align 4
  %132 = load float, float* %8, align 4
  %133 = load float, float* %9, align 4
  %134 = fdiv float %132, %133
  %135 = fsub float %131, %134
  store float %135, float* %2, align 4
  br label %265

136:                                              ; preds = %94
  %137 = load float, float* @erx, align 4
  %138 = load float, float* %8, align 4
  %139 = load float, float* %9, align 4
  %140 = fdiv float %138, %139
  %141 = fadd float %137, %140
  store float %141, float* %12, align 4
  %142 = load float, float* @one, align 4
  %143 = load float, float* %12, align 4
  %144 = fadd float %142, %143
  store float %144, float* %2, align 4
  br label %265

145:                                              ; preds = %91
  %146 = load i32, i32* %5, align 4
  %147 = icmp slt i32 %146, 1093664768
  br i1 %147, label %148, label %254

148:                                              ; preds = %145
  %149 = load float, float* %3, align 4
  %150 = call float @llvm.fabs.f32(float %149)
  store float %150, float* %3, align 4
  %151 = load float, float* @one, align 4
  %152 = load float, float* %3, align 4
  %153 = load float, float* %3, align 4
  %154 = fmul float %152, %153
  %155 = fdiv float %151, %154
  store float %155, float* %10, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp slt i32 %156, 1077336972
  br i1 %157, label %158, label %185

158:                                              ; preds = %148
  %159 = load float, float* @ra0, align 4
  %160 = load float, float* %10, align 4
  %161 = load float, float* @ra1, align 4
  %162 = load float, float* %10, align 4
  %163 = load float, float* @ra2, align 4
  %164 = load float, float* %10, align 4
  %165 = load float, float* @ra3, align 4
  %166 = fmul float %164, %165
  %167 = fadd float %163, %166
  %168 = fmul float %162, %167
  %169 = fadd float %161, %168
  %170 = fmul float %160, %169
  %171 = fadd float %159, %170
  store float %171, float* %6, align 4
  %172 = load float, float* @one, align 4
  %173 = load float, float* %10, align 4
  %174 = load float, float* @sa1, align 4
  %175 = load float, float* %10, align 4
  %176 = load float, float* @sa2, align 4
  %177 = load float, float* %10, align 4
  %178 = load float, float* @sa3, align 4
  %179 = fmul float %177, %178
  %180 = fadd float %176, %179
  %181 = fmul float %175, %180
  %182 = fadd float %174, %181
  %183 = fmul float %173, %182
  %184 = fadd float %172, %183
  store float %184, float* %7, align 4
  br label %218

185:                                              ; preds = %148
  %186 = load i32, i32* %4, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32, i32* %5, align 4
  %190 = icmp sge i32 %189, 1084227584
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load float, float* @two, align 4
  %193 = load float, float* @tiny, align 4
  %194 = fsub float %192, %193
  store float %194, float* %2, align 4
  br label %265

195:                                              ; preds = %188, %185
  %196 = load float, float* @rb0, align 4
  %197 = load float, float* %10, align 4
  %198 = load float, float* @rb1, align 4
  %199 = load float, float* %10, align 4
  %200 = load float, float* @rb2, align 4
  %201 = fmul float %199, %200
  %202 = fadd float %198, %201
  %203 = fmul float %197, %202
  %204 = fadd float %196, %203
  store float %204, float* %6, align 4
  %205 = load float, float* @one, align 4
  %206 = load float, float* %10, align 4
  %207 = load float, float* @sb1, align 4
  %208 = load float, float* %10, align 4
  %209 = load float, float* @sb2, align 4
  %210 = load float, float* %10, align 4
  %211 = load float, float* @sb3, align 4
  %212 = fmul float %210, %211
  %213 = fadd float %209, %212
  %214 = fmul float %208, %213
  %215 = fadd float %207, %214
  %216 = fmul float %206, %215
  %217 = fadd float %205, %216
  store float %217, float* %7, align 4
  br label %218

218:                                              ; preds = %195, %158
  %219 = load float, float* %12, align 4
  %220 = load i32, i32* %4, align 4
  %221 = and i32 %220, -8192
  %222 = call i32 @SET_FLOAT_WORD(float %219, i32 %221)
  %223 = load float, float* %12, align 4
  %224 = fneg float %223
  %225 = load float, float* %12, align 4
  %226 = fmul float %224, %225
  %227 = fsub float %226, 5.625000e-01
  %228 = call float @expf(float %227) #4
  %229 = load float, float* %12, align 4
  %230 = load float, float* %3, align 4
  %231 = fsub float %229, %230
  %232 = load float, float* %12, align 4
  %233 = load float, float* %3, align 4
  %234 = fadd float %232, %233
  %235 = fmul float %231, %234
  %236 = load float, float* %6, align 4
  %237 = load float, float* %7, align 4
  %238 = fdiv float %236, %237
  %239 = fadd float %235, %238
  %240 = call float @expf(float %239) #4
  %241 = fmul float %228, %240
  store float %241, float* %13, align 4
  %242 = load i32, i32* %4, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %218
  %245 = load float, float* %13, align 4
  %246 = load float, float* %3, align 4
  %247 = fdiv float %245, %246
  store float %247, float* %2, align 4
  br label %265

248:                                              ; preds = %218
  %249 = load float, float* @two, align 4
  %250 = load float, float* %13, align 4
  %251 = load float, float* %3, align 4
  %252 = fdiv float %250, %251
  %253 = fsub float %249, %252
  store float %253, float* %2, align 4
  br label %265

254:                                              ; preds = %145
  %255 = load i32, i32* %4, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load float, float* @tiny, align 4
  %259 = load float, float* @tiny, align 4
  %260 = fmul float %258, %259
  store float %260, float* %2, align 4
  br label %265

261:                                              ; preds = %254
  %262 = load float, float* @two, align 4
  %263 = load float, float* @tiny, align 4
  %264 = fsub float %262, %263
  store float %264, float* %2, align 4
  br label %265

265:                                              ; preds = %261, %257, %248, %244, %191, %136, %127, %79, %71, %36, %21
  %266 = load float, float* %2, align 4
  ret float %266
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
