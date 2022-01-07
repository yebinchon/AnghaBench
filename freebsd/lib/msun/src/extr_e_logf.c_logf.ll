; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_logf.c_logf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_logf.c_logf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two25 = common dso_local global float 0.000000e+00, align 4
@vzero = common dso_local global float 0.000000e+00, align 4
@zero = common dso_local global float 0.000000e+00, align 4
@ln2_hi = common dso_local global float 0.000000e+00, align 4
@ln2_lo = common dso_local global float 0.000000e+00, align 4
@Lg2 = common dso_local global float 0.000000e+00, align 4
@Lg4 = common dso_local global float 0.000000e+00, align 4
@Lg1 = common dso_local global float 0.000000e+00, align 4
@Lg3 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @__ieee754_logf(float %0) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store float %0, float* %3, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load float, float* %3, align 4
  %19 = call i32 @GET_FLOAT_WORD(i32 %17, float %18)
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 8388608
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load i32, i32* %14, align 4
  %24 = and i32 %23, 2147483647
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load float, float* @two25, align 4
  %28 = fneg float %27
  %29 = load float, float* @vzero, align 4
  %30 = fdiv float %28, %29
  store float %30, float* %2, align 4
  br label %231

31:                                               ; preds = %22
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load float, float* %3, align 4
  %36 = load float, float* %3, align 4
  %37 = fsub float %35, %36
  %38 = load float, float* @zero, align 4
  %39 = fdiv float %37, %38
  store float %39, float* %2, align 4
  br label %231

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %41, 25
  store i32 %42, i32* %13, align 4
  %43 = load float, float* @two25, align 4
  %44 = load float, float* %3, align 4
  %45 = fmul float %44, %43
  store float %45, float* %3, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load float, float* %3, align 4
  %48 = call i32 @GET_FLOAT_WORD(i32 %46, float %47)
  br label %49

49:                                               ; preds = %40, %1
  %50 = load i32, i32* %14, align 4
  %51 = icmp sge i32 %50, 2139095040
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load float, float* %3, align 4
  %54 = load float, float* %3, align 4
  %55 = fadd float %53, %54
  store float %55, float* %2, align 4
  br label %231

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  %58 = ashr i32 %57, 23
  %59 = sub nsw i32 %58, 127
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = and i32 %62, 8388607
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 4913952
  %66 = and i32 %65, 8388608
  store i32 %66, i32* %15, align 4
  %67 = load float, float* %3, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = xor i32 %69, 1065353216
  %71 = or i32 %68, %70
  %72 = call i32 @SET_FLOAT_WORD(float %67, i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = ashr i32 %73, 23
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %13, align 4
  %77 = load float, float* %3, align 4
  %78 = fsub float %77, 1.000000e+00
  store float %78, float* %5, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 32768, %79
  %81 = and i32 8388607, %80
  %82 = icmp slt i32 %81, 49152
  br i1 %82, label %83, label %130

83:                                               ; preds = %56
  %84 = load float, float* %5, align 4
  %85 = load float, float* @zero, align 4
  %86 = fcmp oeq float %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load float, float* @zero, align 4
  store float %91, float* %2, align 4
  br label %231

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = sitofp i32 %93 to float
  store float %94, float* %12, align 4
  %95 = load float, float* %12, align 4
  %96 = load float, float* @ln2_hi, align 4
  %97 = fmul float %95, %96
  %98 = load float, float* %12, align 4
  %99 = load float, float* @ln2_lo, align 4
  %100 = fmul float %98, %99
  %101 = fadd float %97, %100
  store float %101, float* %2, align 4
  br label %231

102:                                              ; preds = %83
  %103 = load float, float* %5, align 4
  %104 = load float, float* %5, align 4
  %105 = fmul float %103, %104
  %106 = load float, float* %5, align 4
  %107 = fmul float 0x3FD5555560000000, %106
  %108 = fsub float 5.000000e-01, %107
  %109 = fmul float %105, %108
  store float %109, float* %8, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load float, float* %5, align 4
  %114 = load float, float* %8, align 4
  %115 = fsub float %113, %114
  store float %115, float* %2, align 4
  br label %231

116:                                              ; preds = %102
  %117 = load i32, i32* %13, align 4
  %118 = sitofp i32 %117 to float
  store float %118, float* %12, align 4
  %119 = load float, float* %12, align 4
  %120 = load float, float* @ln2_hi, align 4
  %121 = fmul float %119, %120
  %122 = load float, float* %8, align 4
  %123 = load float, float* %12, align 4
  %124 = load float, float* @ln2_lo, align 4
  %125 = fmul float %123, %124
  %126 = fsub float %122, %125
  %127 = load float, float* %5, align 4
  %128 = fsub float %126, %127
  %129 = fsub float %121, %128
  store float %129, float* %2, align 4
  br label %231

130:                                              ; preds = %56
  %131 = load float, float* %5, align 4
  %132 = load float, float* %5, align 4
  %133 = fadd float 2.000000e+00, %132
  %134 = fdiv float %131, %133
  store float %134, float* %6, align 4
  %135 = load i32, i32* %13, align 4
  %136 = sitofp i32 %135 to float
  store float %136, float* %12, align 4
  %137 = load float, float* %6, align 4
  %138 = load float, float* %6, align 4
  %139 = fmul float %137, %138
  store float %139, float* %7, align 4
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 %140, 3187664
  store i32 %141, i32* %15, align 4
  %142 = load float, float* %7, align 4
  %143 = load float, float* %7, align 4
  %144 = fmul float %142, %143
  store float %144, float* %9, align 4
  %145 = load i32, i32* %14, align 4
  %146 = sub nsw i32 3523208, %145
  store i32 %146, i32* %16, align 4
  %147 = load float, float* %9, align 4
  %148 = load float, float* @Lg2, align 4
  %149 = load float, float* %9, align 4
  %150 = load float, float* @Lg4, align 4
  %151 = fmul float %149, %150
  %152 = fadd float %148, %151
  %153 = fmul float %147, %152
  store float %153, float* %10, align 4
  %154 = load float, float* %7, align 4
  %155 = load float, float* @Lg1, align 4
  %156 = load float, float* %9, align 4
  %157 = load float, float* @Lg3, align 4
  %158 = fmul float %156, %157
  %159 = fadd float %155, %158
  %160 = fmul float %154, %159
  store float %160, float* %11, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %15, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %15, align 4
  %164 = load float, float* %11, align 4
  %165 = load float, float* %10, align 4
  %166 = fadd float %164, %165
  store float %166, float* %8, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %204

169:                                              ; preds = %130
  %170 = load float, float* %5, align 4
  %171 = fmul float 5.000000e-01, %170
  %172 = load float, float* %5, align 4
  %173 = fmul float %171, %172
  store float %173, float* %4, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %169
  %177 = load float, float* %5, align 4
  %178 = load float, float* %4, align 4
  %179 = load float, float* %6, align 4
  %180 = load float, float* %4, align 4
  %181 = load float, float* %8, align 4
  %182 = fadd float %180, %181
  %183 = fmul float %179, %182
  %184 = fsub float %178, %183
  %185 = fsub float %177, %184
  store float %185, float* %2, align 4
  br label %231

186:                                              ; preds = %169
  %187 = load float, float* %12, align 4
  %188 = load float, float* @ln2_hi, align 4
  %189 = fmul float %187, %188
  %190 = load float, float* %4, align 4
  %191 = load float, float* %6, align 4
  %192 = load float, float* %4, align 4
  %193 = load float, float* %8, align 4
  %194 = fadd float %192, %193
  %195 = fmul float %191, %194
  %196 = load float, float* %12, align 4
  %197 = load float, float* @ln2_lo, align 4
  %198 = fmul float %196, %197
  %199 = fadd float %195, %198
  %200 = fsub float %190, %199
  %201 = load float, float* %5, align 4
  %202 = fsub float %200, %201
  %203 = fsub float %189, %202
  store float %203, float* %2, align 4
  br label %231

204:                                              ; preds = %130
  %205 = load i32, i32* %13, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load float, float* %5, align 4
  %209 = load float, float* %6, align 4
  %210 = load float, float* %5, align 4
  %211 = load float, float* %8, align 4
  %212 = fsub float %210, %211
  %213 = fmul float %209, %212
  %214 = fsub float %208, %213
  store float %214, float* %2, align 4
  br label %231

215:                                              ; preds = %204
  %216 = load float, float* %12, align 4
  %217 = load float, float* @ln2_hi, align 4
  %218 = fmul float %216, %217
  %219 = load float, float* %6, align 4
  %220 = load float, float* %5, align 4
  %221 = load float, float* %8, align 4
  %222 = fsub float %220, %221
  %223 = fmul float %219, %222
  %224 = load float, float* %12, align 4
  %225 = load float, float* @ln2_lo, align 4
  %226 = fmul float %224, %225
  %227 = fsub float %223, %226
  %228 = load float, float* %5, align 4
  %229 = fsub float %227, %228
  %230 = fsub float %218, %229
  store float %230, float* %2, align 4
  br label %231

231:                                              ; preds = %215, %207, %186, %176, %116, %112, %92, %90, %52, %34, %26
  %232 = load float, float* %2, align 4
  ret float %232
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
