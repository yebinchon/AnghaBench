; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_log.c_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_log.c_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two54 = common dso_local global double 0.000000e+00, align 8
@vzero = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@ln2_hi = common dso_local global double 0.000000e+00, align 8
@ln2_lo = common dso_local global double 0.000000e+00, align 8
@Lg2 = common dso_local global double 0.000000e+00, align 8
@Lg4 = common dso_local global double 0.000000e+00, align 8
@Lg6 = common dso_local global double 0.000000e+00, align 8
@Lg1 = common dso_local global double 0.000000e+00, align 8
@Lg3 = common dso_local global double 0.000000e+00, align 8
@Lg5 = common dso_local global double 0.000000e+00, align 8
@Lg7 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_log(double %0) #0 {
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
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store double %0, double* %3, align 8
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %17, align 4
  %20 = load double, double* %3, align 8
  %21 = call i32 @EXTRACT_WORDS(i32 %18, i32 %19, double %20)
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 1048576
  br i1 %23, label %24, label %53

24:                                               ; preds = %1
  %25 = load i32, i32* %14, align 4
  %26 = and i32 %25, 2147483647
  %27 = load i32, i32* %17, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load double, double* @two54, align 8
  %32 = fneg double %31
  %33 = load double, double* @vzero, align 8
  %34 = fdiv double %32, %33
  store double %34, double* %2, align 8
  br label %247

35:                                               ; preds = %24
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load double, double* %3, align 8
  %40 = load double, double* %3, align 8
  %41 = fsub double %39, %40
  %42 = load double, double* @zero, align 8
  %43 = fdiv double %41, %42
  store double %43, double* %2, align 8
  br label %247

44:                                               ; preds = %35
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, 54
  store i32 %46, i32* %13, align 4
  %47 = load double, double* @two54, align 8
  %48 = load double, double* %3, align 8
  %49 = fmul double %48, %47
  store double %49, double* %3, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load double, double* %3, align 8
  %52 = call i32 @GET_HIGH_WORD(i32 %50, double %51)
  br label %53

53:                                               ; preds = %44, %1
  %54 = load i32, i32* %14, align 4
  %55 = icmp sge i32 %54, 2146435072
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load double, double* %3, align 8
  %58 = load double, double* %3, align 8
  %59 = fadd double %57, %58
  store double %59, double* %2, align 8
  br label %247

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, 20
  %63 = sub nsw i32 %62, 1023
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 1048575
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 614244
  %70 = and i32 %69, 1048576
  store i32 %70, i32* %15, align 4
  %71 = load double, double* %3, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = xor i32 %73, 1072693248
  %75 = or i32 %72, %74
  %76 = call i32 @SET_HIGH_WORD(double %71, i32 %75)
  %77 = load i32, i32* %15, align 4
  %78 = ashr i32 %77, 20
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load double, double* %3, align 8
  %82 = fsub double %81, 1.000000e+00
  store double %82, double* %5, align 8
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 2, %83
  %85 = and i32 1048575, %84
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %134

87:                                               ; preds = %60
  %88 = load double, double* %5, align 8
  %89 = load double, double* @zero, align 8
  %90 = fcmp oeq double %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load double, double* @zero, align 8
  store double %95, double* %2, align 8
  br label %247

96:                                               ; preds = %91
  %97 = load i32, i32* %13, align 4
  %98 = sitofp i32 %97 to double
  store double %98, double* %12, align 8
  %99 = load double, double* %12, align 8
  %100 = load double, double* @ln2_hi, align 8
  %101 = fmul double %99, %100
  %102 = load double, double* %12, align 8
  %103 = load double, double* @ln2_lo, align 8
  %104 = fmul double %102, %103
  %105 = fadd double %101, %104
  store double %105, double* %2, align 8
  br label %247

106:                                              ; preds = %87
  %107 = load double, double* %5, align 8
  %108 = load double, double* %5, align 8
  %109 = fmul double %107, %108
  %110 = load double, double* %5, align 8
  %111 = fmul double 0x3FD5555555555555, %110
  %112 = fsub double 5.000000e-01, %111
  %113 = fmul double %109, %112
  store double %113, double* %8, align 8
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  %117 = load double, double* %5, align 8
  %118 = load double, double* %8, align 8
  %119 = fsub double %117, %118
  store double %119, double* %2, align 8
  br label %247

120:                                              ; preds = %106
  %121 = load i32, i32* %13, align 4
  %122 = sitofp i32 %121 to double
  store double %122, double* %12, align 8
  %123 = load double, double* %12, align 8
  %124 = load double, double* @ln2_hi, align 8
  %125 = fmul double %123, %124
  %126 = load double, double* %8, align 8
  %127 = load double, double* %12, align 8
  %128 = load double, double* @ln2_lo, align 8
  %129 = fmul double %127, %128
  %130 = fsub double %126, %129
  %131 = load double, double* %5, align 8
  %132 = fsub double %130, %131
  %133 = fsub double %125, %132
  store double %133, double* %2, align 8
  br label %247

134:                                              ; preds = %60
  %135 = load double, double* %5, align 8
  %136 = load double, double* %5, align 8
  %137 = fadd double 2.000000e+00, %136
  %138 = fdiv double %135, %137
  store double %138, double* %6, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sitofp i32 %139 to double
  store double %140, double* %12, align 8
  %141 = load double, double* %6, align 8
  %142 = load double, double* %6, align 8
  %143 = fmul double %141, %142
  store double %143, double* %7, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %144, 398458
  store i32 %145, i32* %15, align 4
  %146 = load double, double* %7, align 8
  %147 = load double, double* %7, align 8
  %148 = fmul double %146, %147
  store double %148, double* %9, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sub nsw i32 440401, %149
  store i32 %150, i32* %16, align 4
  %151 = load double, double* %9, align 8
  %152 = load double, double* @Lg2, align 8
  %153 = load double, double* %9, align 8
  %154 = load double, double* @Lg4, align 8
  %155 = load double, double* %9, align 8
  %156 = load double, double* @Lg6, align 8
  %157 = fmul double %155, %156
  %158 = fadd double %154, %157
  %159 = fmul double %153, %158
  %160 = fadd double %152, %159
  %161 = fmul double %151, %160
  store double %161, double* %10, align 8
  %162 = load double, double* %7, align 8
  %163 = load double, double* @Lg1, align 8
  %164 = load double, double* %9, align 8
  %165 = load double, double* @Lg3, align 8
  %166 = load double, double* %9, align 8
  %167 = load double, double* @Lg5, align 8
  %168 = load double, double* %9, align 8
  %169 = load double, double* @Lg7, align 8
  %170 = fmul double %168, %169
  %171 = fadd double %167, %170
  %172 = fmul double %166, %171
  %173 = fadd double %165, %172
  %174 = fmul double %164, %173
  %175 = fadd double %163, %174
  %176 = fmul double %162, %175
  store double %176, double* %11, align 8
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %15, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %15, align 4
  %180 = load double, double* %11, align 8
  %181 = load double, double* %10, align 8
  %182 = fadd double %180, %181
  store double %182, double* %8, align 8
  %183 = load i32, i32* %15, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %220

185:                                              ; preds = %134
  %186 = load double, double* %5, align 8
  %187 = fmul double 5.000000e-01, %186
  %188 = load double, double* %5, align 8
  %189 = fmul double %187, %188
  store double %189, double* %4, align 8
  %190 = load i32, i32* %13, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %185
  %193 = load double, double* %5, align 8
  %194 = load double, double* %4, align 8
  %195 = load double, double* %6, align 8
  %196 = load double, double* %4, align 8
  %197 = load double, double* %8, align 8
  %198 = fadd double %196, %197
  %199 = fmul double %195, %198
  %200 = fsub double %194, %199
  %201 = fsub double %193, %200
  store double %201, double* %2, align 8
  br label %247

202:                                              ; preds = %185
  %203 = load double, double* %12, align 8
  %204 = load double, double* @ln2_hi, align 8
  %205 = fmul double %203, %204
  %206 = load double, double* %4, align 8
  %207 = load double, double* %6, align 8
  %208 = load double, double* %4, align 8
  %209 = load double, double* %8, align 8
  %210 = fadd double %208, %209
  %211 = fmul double %207, %210
  %212 = load double, double* %12, align 8
  %213 = load double, double* @ln2_lo, align 8
  %214 = fmul double %212, %213
  %215 = fadd double %211, %214
  %216 = fsub double %206, %215
  %217 = load double, double* %5, align 8
  %218 = fsub double %216, %217
  %219 = fsub double %205, %218
  store double %219, double* %2, align 8
  br label %247

220:                                              ; preds = %134
  %221 = load i32, i32* %13, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %220
  %224 = load double, double* %5, align 8
  %225 = load double, double* %6, align 8
  %226 = load double, double* %5, align 8
  %227 = load double, double* %8, align 8
  %228 = fsub double %226, %227
  %229 = fmul double %225, %228
  %230 = fsub double %224, %229
  store double %230, double* %2, align 8
  br label %247

231:                                              ; preds = %220
  %232 = load double, double* %12, align 8
  %233 = load double, double* @ln2_hi, align 8
  %234 = fmul double %232, %233
  %235 = load double, double* %6, align 8
  %236 = load double, double* %5, align 8
  %237 = load double, double* %8, align 8
  %238 = fsub double %236, %237
  %239 = fmul double %235, %238
  %240 = load double, double* %12, align 8
  %241 = load double, double* @ln2_lo, align 8
  %242 = fmul double %240, %241
  %243 = fsub double %239, %242
  %244 = load double, double* %5, align 8
  %245 = fsub double %243, %244
  %246 = fsub double %234, %245
  store double %246, double* %2, align 8
  br label %247

247:                                              ; preds = %231, %223, %202, %192, %120, %116, %96, %94, %56, %38, %30
  %248 = load double, double* %2, align 8
  ret double %248
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
