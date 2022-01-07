; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_atan.c_atan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_atan.c_atan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atanhi = common dso_local global double* null, align 8
@atanlo = common dso_local global double* null, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@aT = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @atan(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store double %0, double* %3, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load double, double* %3, align 8
  %14 = call i32 @GET_HIGH_WORD(i32 %12, double %13)
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 2147483647
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 1141899264
  br i1 %18, label %19, label %55

19:                                               ; preds = %1
  %20 = load i64, i64* %11, align 8
  %21 = load double, double* %3, align 8
  %22 = call i32 @GET_LOW_WORD(i64 %20, double %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 2146435072
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 2146435072
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %19
  %32 = load double, double* %3, align 8
  %33 = load double, double* %3, align 8
  %34 = fadd double %32, %33
  store double %34, double* %2, align 8
  br label %222

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load double*, double** @atanhi, align 8
  %40 = getelementptr inbounds double, double* %39, i64 3
  %41 = load double, double* %40, align 8
  %42 = load double*, double** @atanlo, align 8
  %43 = getelementptr inbounds double, double* %42, i64 3
  %44 = load volatile double, double* %43, align 8
  %45 = fadd double %41, %44
  store double %45, double* %2, align 8
  br label %222

46:                                               ; preds = %35
  %47 = load double*, double** @atanhi, align 8
  %48 = getelementptr inbounds double, double* %47, i64 3
  %49 = load double, double* %48, align 8
  %50 = fneg double %49
  %51 = load double*, double** @atanlo, align 8
  %52 = getelementptr inbounds double, double* %51, i64 3
  %53 = load volatile double, double* %52, align 8
  %54 = fsub double %50, %53
  store double %54, double* %2, align 8
  br label %222

55:                                               ; preds = %1
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 1071382528
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 1044381696
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load double, double* @huge, align 8
  %63 = load double, double* %3, align 8
  %64 = fadd double %62, %63
  %65 = load double, double* @one, align 8
  %66 = fcmp ogt double %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load double, double* %3, align 8
  store double %68, double* %2, align 8
  br label %222

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %58
  store i32 -1, i32* %10, align 4
  br label %112

71:                                               ; preds = %55
  %72 = load double, double* %3, align 8
  %73 = call double @llvm.fabs.f64(double %72)
  store double %73, double* %3, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 1072889856
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 1072037888
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  %80 = load double, double* %3, align 8
  %81 = fmul double 2.000000e+00, %80
  %82 = load double, double* @one, align 8
  %83 = fsub double %81, %82
  %84 = load double, double* %3, align 8
  %85 = fadd double 2.000000e+00, %84
  %86 = fdiv double %83, %85
  store double %86, double* %3, align 8
  br label %95

87:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  %88 = load double, double* %3, align 8
  %89 = load double, double* @one, align 8
  %90 = fsub double %88, %89
  %91 = load double, double* %3, align 8
  %92 = load double, double* @one, align 8
  %93 = fadd double %91, %92
  %94 = fdiv double %90, %93
  store double %94, double* %3, align 8
  br label %95

95:                                               ; preds = %87, %79
  br label %111

96:                                               ; preds = %71
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 1073971200
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  store i32 2, i32* %10, align 4
  %100 = load double, double* %3, align 8
  %101 = fsub double %100, 1.500000e+00
  %102 = load double, double* @one, align 8
  %103 = load double, double* %3, align 8
  %104 = fmul double 1.500000e+00, %103
  %105 = fadd double %102, %104
  %106 = fdiv double %101, %105
  store double %106, double* %3, align 8
  br label %110

107:                                              ; preds = %96
  store i32 3, i32* %10, align 4
  %108 = load double, double* %3, align 8
  %109 = fdiv double -1.000000e+00, %108
  store double %109, double* %3, align 8
  br label %110

110:                                              ; preds = %107, %99
  br label %111

111:                                              ; preds = %110, %95
  br label %112

112:                                              ; preds = %111, %70
  %113 = load double, double* %3, align 8
  %114 = load double, double* %3, align 8
  %115 = fmul double %113, %114
  store double %115, double* %7, align 8
  %116 = load double, double* %7, align 8
  %117 = load double, double* %7, align 8
  %118 = fmul double %116, %117
  store double %118, double* %4, align 8
  %119 = load double, double* %7, align 8
  %120 = load double*, double** @aT, align 8
  %121 = getelementptr inbounds double, double* %120, i64 0
  %122 = load double, double* %121, align 8
  %123 = load double, double* %4, align 8
  %124 = load double*, double** @aT, align 8
  %125 = getelementptr inbounds double, double* %124, i64 2
  %126 = load double, double* %125, align 8
  %127 = load double, double* %4, align 8
  %128 = load double*, double** @aT, align 8
  %129 = getelementptr inbounds double, double* %128, i64 4
  %130 = load double, double* %129, align 8
  %131 = load double, double* %4, align 8
  %132 = load double*, double** @aT, align 8
  %133 = getelementptr inbounds double, double* %132, i64 6
  %134 = load double, double* %133, align 8
  %135 = load double, double* %4, align 8
  %136 = load double*, double** @aT, align 8
  %137 = getelementptr inbounds double, double* %136, i64 8
  %138 = load double, double* %137, align 8
  %139 = load double, double* %4, align 8
  %140 = load double*, double** @aT, align 8
  %141 = getelementptr inbounds double, double* %140, i64 10
  %142 = load double, double* %141, align 8
  %143 = fmul double %139, %142
  %144 = fadd double %138, %143
  %145 = fmul double %135, %144
  %146 = fadd double %134, %145
  %147 = fmul double %131, %146
  %148 = fadd double %130, %147
  %149 = fmul double %127, %148
  %150 = fadd double %126, %149
  %151 = fmul double %123, %150
  %152 = fadd double %122, %151
  %153 = fmul double %119, %152
  store double %153, double* %5, align 8
  %154 = load double, double* %4, align 8
  %155 = load double*, double** @aT, align 8
  %156 = getelementptr inbounds double, double* %155, i64 1
  %157 = load double, double* %156, align 8
  %158 = load double, double* %4, align 8
  %159 = load double*, double** @aT, align 8
  %160 = getelementptr inbounds double, double* %159, i64 3
  %161 = load double, double* %160, align 8
  %162 = load double, double* %4, align 8
  %163 = load double*, double** @aT, align 8
  %164 = getelementptr inbounds double, double* %163, i64 5
  %165 = load double, double* %164, align 8
  %166 = load double, double* %4, align 8
  %167 = load double*, double** @aT, align 8
  %168 = getelementptr inbounds double, double* %167, i64 7
  %169 = load double, double* %168, align 8
  %170 = load double, double* %4, align 8
  %171 = load double*, double** @aT, align 8
  %172 = getelementptr inbounds double, double* %171, i64 9
  %173 = load double, double* %172, align 8
  %174 = fmul double %170, %173
  %175 = fadd double %169, %174
  %176 = fmul double %166, %175
  %177 = fadd double %165, %176
  %178 = fmul double %162, %177
  %179 = fadd double %161, %178
  %180 = fmul double %158, %179
  %181 = fadd double %157, %180
  %182 = fmul double %154, %181
  store double %182, double* %6, align 8
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %112
  %186 = load double, double* %3, align 8
  %187 = load double, double* %3, align 8
  %188 = load double, double* %5, align 8
  %189 = load double, double* %6, align 8
  %190 = fadd double %188, %189
  %191 = fmul double %187, %190
  %192 = fsub double %186, %191
  store double %192, double* %2, align 8
  br label %222

193:                                              ; preds = %112
  %194 = load double*, double** @atanhi, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %194, i64 %196
  %198 = load double, double* %197, align 8
  %199 = load double, double* %3, align 8
  %200 = load double, double* %5, align 8
  %201 = load double, double* %6, align 8
  %202 = fadd double %200, %201
  %203 = fmul double %199, %202
  %204 = load double*, double** @atanlo, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %204, i64 %206
  %208 = load double, double* %207, align 8
  %209 = fsub double %203, %208
  %210 = load double, double* %3, align 8
  %211 = fsub double %209, %210
  %212 = fsub double %198, %211
  store double %212, double* %7, align 8
  %213 = load i32, i32* %9, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %193
  %216 = load double, double* %7, align 8
  %217 = fneg double %216
  br label %220

218:                                              ; preds = %193
  %219 = load double, double* %7, align 8
  br label %220

220:                                              ; preds = %218, %215
  %221 = phi double [ %217, %215 ], [ %219, %218 ]
  store double %221, double* %2, align 8
  br label %222

222:                                              ; preds = %220, %185, %67, %46, %38, %31
  %223 = load double, double* %2, align 8
  ret double %223
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @GET_LOW_WORD(i64, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
