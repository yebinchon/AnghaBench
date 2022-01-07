; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acos.c_acos.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_acos.c_acos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = common dso_local global double 0.000000e+00, align 8
@pio2_lo = common dso_local global double 0.000000e+00, align 8
@pio2_hi = common dso_local global double 0.000000e+00, align 8
@pS0 = common dso_local global double 0.000000e+00, align 8
@pS1 = common dso_local global double 0.000000e+00, align 8
@pS2 = common dso_local global double 0.000000e+00, align 8
@pS3 = common dso_local global double 0.000000e+00, align 8
@pS4 = common dso_local global double 0.000000e+00, align 8
@pS5 = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@qS1 = common dso_local global double 0.000000e+00, align 8
@qS2 = common dso_local global double 0.000000e+00, align 8
@qS3 = common dso_local global double 0.000000e+00, align 8
@qS4 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_acos(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %3, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load double, double* %3, align 8
  %17 = call i32 @GET_HIGH_WORD(i32 %15, double %16)
  %18 = load i32, i32* %12, align 4
  %19 = and i32 %18, 2147483647
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp sge i32 %20, 1072693248
  br i1 %21, label %22, label %48

22:                                               ; preds = %1
  %23 = load i32, i32* %14, align 4
  %24 = load double, double* %3, align 8
  %25 = call i32 @GET_LOW_WORD(i32 %23, double %24)
  %26 = load i32, i32* %13, align 4
  %27 = sub nsw i32 %26, 1072693248
  %28 = load i32, i32* %14, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load i32, i32* %12, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store double 0.000000e+00, double* %2, align 8
  br label %249

35:                                               ; preds = %31
  %36 = load double, double* @pi, align 8
  %37 = load double, double* @pio2_lo, align 8
  %38 = fmul double 2.000000e+00, %37
  %39 = fadd double %36, %38
  store double %39, double* %2, align 8
  br label %249

40:                                               ; preds = %22
  %41 = load double, double* %3, align 8
  %42 = load double, double* %3, align 8
  %43 = fsub double %41, %42
  %44 = load double, double* %3, align 8
  %45 = load double, double* %3, align 8
  %46 = fsub double %44, %45
  %47 = fdiv double %43, %46
  store double %47, double* %2, align 8
  br label %249

48:                                               ; preds = %1
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 1071644672
  br i1 %50, label %51, label %114

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp sle i32 %52, 1012924416
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load double, double* @pio2_hi, align 8
  %56 = load double, double* @pio2_lo, align 8
  %57 = fadd double %55, %56
  store double %57, double* %2, align 8
  br label %249

58:                                               ; preds = %51
  %59 = load double, double* %3, align 8
  %60 = load double, double* %3, align 8
  %61 = fmul double %59, %60
  store double %61, double* %4, align 8
  %62 = load double, double* %4, align 8
  %63 = load double, double* @pS0, align 8
  %64 = load double, double* %4, align 8
  %65 = load double, double* @pS1, align 8
  %66 = load double, double* %4, align 8
  %67 = load double, double* @pS2, align 8
  %68 = load double, double* %4, align 8
  %69 = load double, double* @pS3, align 8
  %70 = load double, double* %4, align 8
  %71 = load double, double* @pS4, align 8
  %72 = load double, double* %4, align 8
  %73 = load double, double* @pS5, align 8
  %74 = fmul double %72, %73
  %75 = fadd double %71, %74
  %76 = fmul double %70, %75
  %77 = fadd double %69, %76
  %78 = fmul double %68, %77
  %79 = fadd double %67, %78
  %80 = fmul double %66, %79
  %81 = fadd double %65, %80
  %82 = fmul double %64, %81
  %83 = fadd double %63, %82
  %84 = fmul double %62, %83
  store double %84, double* %5, align 8
  %85 = load double, double* @one, align 8
  %86 = load double, double* %4, align 8
  %87 = load double, double* @qS1, align 8
  %88 = load double, double* %4, align 8
  %89 = load double, double* @qS2, align 8
  %90 = load double, double* %4, align 8
  %91 = load double, double* @qS3, align 8
  %92 = load double, double* %4, align 8
  %93 = load double, double* @qS4, align 8
  %94 = fmul double %92, %93
  %95 = fadd double %91, %94
  %96 = fmul double %90, %95
  %97 = fadd double %89, %96
  %98 = fmul double %88, %97
  %99 = fadd double %87, %98
  %100 = fmul double %86, %99
  %101 = fadd double %85, %100
  store double %101, double* %6, align 8
  %102 = load double, double* %5, align 8
  %103 = load double, double* %6, align 8
  %104 = fdiv double %102, %103
  store double %104, double* %7, align 8
  %105 = load double, double* @pio2_hi, align 8
  %106 = load double, double* %3, align 8
  %107 = load double, double* @pio2_lo, align 8
  %108 = load double, double* %3, align 8
  %109 = load double, double* %7, align 8
  %110 = fmul double %108, %109
  %111 = fsub double %107, %110
  %112 = fsub double %106, %111
  %113 = fsub double %105, %112
  store double %113, double* %2, align 8
  br label %249

114:                                              ; preds = %48
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %178

117:                                              ; preds = %114
  %118 = load double, double* @one, align 8
  %119 = load double, double* %3, align 8
  %120 = fadd double %118, %119
  %121 = fmul double %120, 5.000000e-01
  store double %121, double* %4, align 8
  %122 = load double, double* %4, align 8
  %123 = load double, double* @pS0, align 8
  %124 = load double, double* %4, align 8
  %125 = load double, double* @pS1, align 8
  %126 = load double, double* %4, align 8
  %127 = load double, double* @pS2, align 8
  %128 = load double, double* %4, align 8
  %129 = load double, double* @pS3, align 8
  %130 = load double, double* %4, align 8
  %131 = load double, double* @pS4, align 8
  %132 = load double, double* %4, align 8
  %133 = load double, double* @pS5, align 8
  %134 = fmul double %132, %133
  %135 = fadd double %131, %134
  %136 = fmul double %130, %135
  %137 = fadd double %129, %136
  %138 = fmul double %128, %137
  %139 = fadd double %127, %138
  %140 = fmul double %126, %139
  %141 = fadd double %125, %140
  %142 = fmul double %124, %141
  %143 = fadd double %123, %142
  %144 = fmul double %122, %143
  store double %144, double* %5, align 8
  %145 = load double, double* @one, align 8
  %146 = load double, double* %4, align 8
  %147 = load double, double* @qS1, align 8
  %148 = load double, double* %4, align 8
  %149 = load double, double* @qS2, align 8
  %150 = load double, double* %4, align 8
  %151 = load double, double* @qS3, align 8
  %152 = load double, double* %4, align 8
  %153 = load double, double* @qS4, align 8
  %154 = fmul double %152, %153
  %155 = fadd double %151, %154
  %156 = fmul double %150, %155
  %157 = fadd double %149, %156
  %158 = fmul double %148, %157
  %159 = fadd double %147, %158
  %160 = fmul double %146, %159
  %161 = fadd double %145, %160
  store double %161, double* %6, align 8
  %162 = load double, double* %4, align 8
  %163 = call double @sqrt(double %162) #3
  store double %163, double* %9, align 8
  %164 = load double, double* %5, align 8
  %165 = load double, double* %6, align 8
  %166 = fdiv double %164, %165
  store double %166, double* %7, align 8
  %167 = load double, double* %7, align 8
  %168 = load double, double* %9, align 8
  %169 = fmul double %167, %168
  %170 = load double, double* @pio2_lo, align 8
  %171 = fsub double %169, %170
  store double %171, double* %8, align 8
  %172 = load double, double* @pi, align 8
  %173 = load double, double* %9, align 8
  %174 = load double, double* %8, align 8
  %175 = fadd double %173, %174
  %176 = fmul double 2.000000e+00, %175
  %177 = fsub double %172, %176
  store double %177, double* %2, align 8
  br label %249

178:                                              ; preds = %114
  %179 = load double, double* @one, align 8
  %180 = load double, double* %3, align 8
  %181 = fsub double %179, %180
  %182 = fmul double %181, 5.000000e-01
  store double %182, double* %4, align 8
  %183 = load double, double* %4, align 8
  %184 = call double @sqrt(double %183) #3
  store double %184, double* %9, align 8
  %185 = load double, double* %9, align 8
  store double %185, double* %11, align 8
  %186 = load double, double* %11, align 8
  %187 = call i32 @SET_LOW_WORD(double %186, i32 0)
  %188 = load double, double* %4, align 8
  %189 = load double, double* %11, align 8
  %190 = load double, double* %11, align 8
  %191 = fmul double %189, %190
  %192 = fsub double %188, %191
  %193 = load double, double* %9, align 8
  %194 = load double, double* %11, align 8
  %195 = fadd double %193, %194
  %196 = fdiv double %192, %195
  store double %196, double* %10, align 8
  %197 = load double, double* %4, align 8
  %198 = load double, double* @pS0, align 8
  %199 = load double, double* %4, align 8
  %200 = load double, double* @pS1, align 8
  %201 = load double, double* %4, align 8
  %202 = load double, double* @pS2, align 8
  %203 = load double, double* %4, align 8
  %204 = load double, double* @pS3, align 8
  %205 = load double, double* %4, align 8
  %206 = load double, double* @pS4, align 8
  %207 = load double, double* %4, align 8
  %208 = load double, double* @pS5, align 8
  %209 = fmul double %207, %208
  %210 = fadd double %206, %209
  %211 = fmul double %205, %210
  %212 = fadd double %204, %211
  %213 = fmul double %203, %212
  %214 = fadd double %202, %213
  %215 = fmul double %201, %214
  %216 = fadd double %200, %215
  %217 = fmul double %199, %216
  %218 = fadd double %198, %217
  %219 = fmul double %197, %218
  store double %219, double* %5, align 8
  %220 = load double, double* @one, align 8
  %221 = load double, double* %4, align 8
  %222 = load double, double* @qS1, align 8
  %223 = load double, double* %4, align 8
  %224 = load double, double* @qS2, align 8
  %225 = load double, double* %4, align 8
  %226 = load double, double* @qS3, align 8
  %227 = load double, double* %4, align 8
  %228 = load double, double* @qS4, align 8
  %229 = fmul double %227, %228
  %230 = fadd double %226, %229
  %231 = fmul double %225, %230
  %232 = fadd double %224, %231
  %233 = fmul double %223, %232
  %234 = fadd double %222, %233
  %235 = fmul double %221, %234
  %236 = fadd double %220, %235
  store double %236, double* %6, align 8
  %237 = load double, double* %5, align 8
  %238 = load double, double* %6, align 8
  %239 = fdiv double %237, %238
  store double %239, double* %7, align 8
  %240 = load double, double* %7, align 8
  %241 = load double, double* %9, align 8
  %242 = fmul double %240, %241
  %243 = load double, double* %10, align 8
  %244 = fadd double %242, %243
  store double %244, double* %8, align 8
  %245 = load double, double* %11, align 8
  %246 = load double, double* %8, align 8
  %247 = fadd double %245, %246
  %248 = fmul double 2.000000e+00, %247
  store double %248, double* %2, align 8
  br label %249

249:                                              ; preds = %178, %117, %58, %54, %40, %35, %34
  %250 = load double, double* %2, align 8
  ret double %250
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @GET_LOW_WORD(i32, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
