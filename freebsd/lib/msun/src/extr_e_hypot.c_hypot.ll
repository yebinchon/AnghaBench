; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_hypot.c_hypot.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_hypot.c_hypot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_hypot(double %0, double %1) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %20 = load i32, i32* %15, align 4
  %21 = load double, double* %4, align 8
  %22 = call i32 @GET_HIGH_WORD(i32 %20, double %21)
  %23 = load i32, i32* %15, align 4
  %24 = and i32 %23, 2147483647
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load double, double* %5, align 8
  %27 = call i32 @GET_HIGH_WORD(i32 %25, double %26)
  %28 = load i32, i32* %16, align 4
  %29 = and i32 %28, 2147483647
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load double, double* %5, align 8
  store double %34, double* %6, align 8
  %35 = load double, double* %4, align 8
  store double %35, double* %7, align 8
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %16, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load double, double* %4, align 8
  store double %40, double* %6, align 8
  %41 = load double, double* %5, align 8
  store double %41, double* %7, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load double, double* %6, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  store double %44, double* %6, align 8
  %45 = load double, double* %7, align 8
  %46 = call double @llvm.fabs.f64(double %45)
  store double %46, double* %7, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp sgt i32 %49, 62914560
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load double, double* %6, align 8
  %53 = load double, double* %7, align 8
  %54 = fadd double %52, %53
  store double %54, double* %3, align 8
  br label %229

55:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp sgt i32 %56, 1596981248
  br i1 %57, label %58, label %107

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = icmp sge i32 %59, 2146435072
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load double, double* %4, align 8
  %63 = fpext double %62 to x86_fp80
  %64 = fadd x86_fp80 %63, 0xK00000000000000000000
  %65 = fptrunc x86_fp80 %64 to double
  %66 = call double @fabsl(double %65)
  %67 = load double, double* %5, align 8
  %68 = fadd double %67, 0.000000e+00
  %69 = call double @llvm.fabs.f64(double %68)
  %70 = fsub double %66, %69
  store double %70, double* %12, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load double, double* %6, align 8
  %73 = call i32 @GET_LOW_WORD(i32 %71, double %72)
  %74 = load i32, i32* %15, align 4
  %75 = and i32 %74, 1048575
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = load double, double* %6, align 8
  store double %80, double* %12, align 8
  br label %81

81:                                               ; preds = %79, %61
  %82 = load i32, i32* %17, align 4
  %83 = load double, double* %7, align 8
  %84 = call i32 @GET_LOW_WORD(i32 %82, double %83)
  %85 = load i32, i32* %16, align 4
  %86 = xor i32 %85, 2146435072
  %87 = load i32, i32* %17, align 4
  %88 = or i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load double, double* %7, align 8
  store double %91, double* %12, align 8
  br label %92

92:                                               ; preds = %90, %81
  %93 = load double, double* %12, align 8
  store double %93, double* %3, align 8
  br label %229

94:                                               ; preds = %58
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, 629145600
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = sub nsw i32 %97, 629145600
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 600
  store i32 %100, i32* %14, align 4
  %101 = load double, double* %6, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @SET_HIGH_WORD(double %101, i32 %102)
  %104 = load double, double* %7, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @SET_HIGH_WORD(double %104, i32 %105)
  br label %107

107:                                              ; preds = %94, %55
  %108 = load i32, i32* %16, align 4
  %109 = icmp slt i32 %108, 548405248
  br i1 %109, label %110, label %148

110:                                              ; preds = %107
  %111 = load i32, i32* %16, align 4
  %112 = icmp sle i32 %111, 1048575
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i32, i32* %18, align 4
  %115 = load double, double* %7, align 8
  %116 = call i32 @GET_LOW_WORD(i32 %114, double %115)
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %18, align 4
  %119 = or i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load double, double* %6, align 8
  store double %122, double* %3, align 8
  br label %229

123:                                              ; preds = %113
  store double 0.000000e+00, double* %8, align 8
  %124 = load double, double* %8, align 8
  %125 = call i32 @SET_HIGH_WORD(double %124, i32 2144337920)
  %126 = load double, double* %8, align 8
  %127 = load double, double* %7, align 8
  %128 = fmul double %127, %126
  store double %128, double* %7, align 8
  %129 = load double, double* %8, align 8
  %130 = load double, double* %6, align 8
  %131 = fmul double %130, %129
  store double %131, double* %6, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 %132, 1022
  store i32 %133, i32* %14, align 4
  br label %147

134:                                              ; preds = %110
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 629145600
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 629145600
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %139, 600
  store i32 %140, i32* %14, align 4
  %141 = load double, double* %6, align 8
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @SET_HIGH_WORD(double %141, i32 %142)
  %144 = load double, double* %7, align 8
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @SET_HIGH_WORD(double %144, i32 %145)
  br label %147

147:                                              ; preds = %134, %123
  br label %148

148:                                              ; preds = %147, %107
  %149 = load double, double* %6, align 8
  %150 = load double, double* %7, align 8
  %151 = fsub double %149, %150
  store double %151, double* %12, align 8
  %152 = load double, double* %12, align 8
  %153 = load double, double* %7, align 8
  %154 = fcmp ogt double %152, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %148
  store double 0.000000e+00, double* %8, align 8
  %156 = load double, double* %8, align 8
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @SET_HIGH_WORD(double %156, i32 %157)
  %159 = load double, double* %6, align 8
  %160 = load double, double* %8, align 8
  %161 = fsub double %159, %160
  store double %161, double* %9, align 8
  %162 = load double, double* %8, align 8
  %163 = load double, double* %8, align 8
  %164 = fmul double %162, %163
  %165 = load double, double* %7, align 8
  %166 = load double, double* %7, align 8
  %167 = fneg double %166
  %168 = fmul double %165, %167
  %169 = load double, double* %9, align 8
  %170 = load double, double* %6, align 8
  %171 = load double, double* %8, align 8
  %172 = fadd double %170, %171
  %173 = fmul double %169, %172
  %174 = fsub double %168, %173
  %175 = fsub double %164, %174
  %176 = call double @sqrt(double %175) #4
  store double %176, double* %12, align 8
  br label %211

177:                                              ; preds = %148
  %178 = load double, double* %6, align 8
  %179 = load double, double* %6, align 8
  %180 = fadd double %178, %179
  store double %180, double* %6, align 8
  store double 0.000000e+00, double* %10, align 8
  %181 = load double, double* %10, align 8
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @SET_HIGH_WORD(double %181, i32 %182)
  %184 = load double, double* %7, align 8
  %185 = load double, double* %10, align 8
  %186 = fsub double %184, %185
  store double %186, double* %11, align 8
  store double 0.000000e+00, double* %8, align 8
  %187 = load double, double* %8, align 8
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1048576
  %190 = call i32 @SET_HIGH_WORD(double %187, i32 %189)
  %191 = load double, double* %6, align 8
  %192 = load double, double* %8, align 8
  %193 = fsub double %191, %192
  store double %193, double* %9, align 8
  %194 = load double, double* %8, align 8
  %195 = load double, double* %10, align 8
  %196 = fmul double %194, %195
  %197 = load double, double* %12, align 8
  %198 = load double, double* %12, align 8
  %199 = fneg double %198
  %200 = fmul double %197, %199
  %201 = load double, double* %8, align 8
  %202 = load double, double* %11, align 8
  %203 = fmul double %201, %202
  %204 = load double, double* %9, align 8
  %205 = load double, double* %7, align 8
  %206 = fmul double %204, %205
  %207 = fadd double %203, %206
  %208 = fsub double %200, %207
  %209 = fsub double %196, %208
  %210 = call double @sqrt(double %209) #4
  store double %210, double* %12, align 8
  br label %211

211:                                              ; preds = %177, %155
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %211
  store double 1.000000e+00, double* %8, align 8
  %215 = load i32, i32* %19, align 4
  %216 = load double, double* %8, align 8
  %217 = call i32 @GET_HIGH_WORD(i32 %215, double %216)
  %218 = load double, double* %8, align 8
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %14, align 4
  %221 = shl i32 %220, 20
  %222 = add nsw i32 %219, %221
  %223 = call i32 @SET_HIGH_WORD(double %218, i32 %222)
  %224 = load double, double* %8, align 8
  %225 = load double, double* %12, align 8
  %226 = fmul double %224, %225
  store double %226, double* %3, align 8
  br label %229

227:                                              ; preds = %211
  %228 = load double, double* %12, align 8
  store double %228, double* %3, align 8
  br label %229

229:                                              ; preds = %227, %214, %121, %92, %51
  %230 = load double, double* %3, align 8
  ret double %230
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local double @fabsl(double) #1

declare dso_local i32 @GET_LOW_WORD(i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
