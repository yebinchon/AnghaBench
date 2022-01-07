; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atan2.c_atan2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_atan2.c_atan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = common dso_local global double 0.000000e+00, align 8
@tiny = common dso_local global double 0.000000e+00, align 8
@pi_o_2 = common dso_local global double 0.000000e+00, align 8
@pi_o_4 = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@pi_lo = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__ieee754_atan2(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %13, align 4
  %17 = load double, double* %5, align 8
  %18 = call i32 @EXTRACT_WORDS(i32 %15, i32 %16, double %17)
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 2147483647
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load double, double* %4, align 8
  %24 = call i32 @EXTRACT_WORDS(i32 %21, i32 %22, double %23)
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 2147483647
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sub nsw i32 0, %29
  %31 = or i32 %28, %30
  %32 = ashr i32 %31, 31
  %33 = or i32 %27, %32
  %34 = icmp sgt i32 %33, 2146435072
  br i1 %34, label %44, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 0, %38
  %40 = or i32 %37, %39
  %41 = ashr i32 %40, 31
  %42 = or i32 %36, %41
  %43 = icmp sgt i32 %42, 2146435072
  br i1 %43, label %44, label %48

44:                                               ; preds = %35, %2
  %45 = load double, double* %5, align 8
  %46 = load double, double* %4, align 8
  %47 = call double @nan_mix(double %45, double %46)
  store double %47, double* %3, align 8
  br label %212

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 1072693248
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load double, double* %4, align 8
  %56 = call double @atan(double %55) #4
  store double %56, double* %3, align 8
  br label %212

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 31
  %60 = and i32 %59, 1
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 30
  %63 = and i32 %62, 2
  %64 = or i32 %60, %63
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = or i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  switch i32 %70, label %82 [
    i32 0, label %71
    i32 1, label %71
    i32 2, label %73
    i32 3, label %77
  ]

71:                                               ; preds = %69, %69
  %72 = load double, double* %4, align 8
  store double %72, double* %3, align 8
  br label %212

73:                                               ; preds = %69
  %74 = load double, double* @pi, align 8
  %75 = load double, double* @tiny, align 8
  %76 = fadd double %74, %75
  store double %76, double* %3, align 8
  br label %212

77:                                               ; preds = %69
  %78 = load double, double* @pi, align 8
  %79 = fneg double %78
  %80 = load double, double* @tiny, align 8
  %81 = fsub double %79, %80
  store double %81, double* %3, align 8
  br label %212

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %57
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load double, double* @pi_o_2, align 8
  %93 = fneg double %92
  %94 = load double, double* @tiny, align 8
  %95 = fsub double %93, %94
  br label %100

96:                                               ; preds = %88
  %97 = load double, double* @pi_o_2, align 8
  %98 = load double, double* @tiny, align 8
  %99 = fadd double %97, %98
  br label %100

100:                                              ; preds = %96, %91
  %101 = phi double [ %95, %91 ], [ %99, %96 ]
  store double %101, double* %3, align 8
  br label %212

102:                                              ; preds = %83
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 2146435072
  br i1 %104, label %105, label %148

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 2146435072
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  switch i32 %109, label %129 [
    i32 0, label %110
    i32 1, label %114
    i32 2, label %119
    i32 3, label %124
  ]

110:                                              ; preds = %108
  %111 = load double, double* @pi_o_4, align 8
  %112 = load double, double* @tiny, align 8
  %113 = fadd double %111, %112
  store double %113, double* %3, align 8
  br label %212

114:                                              ; preds = %108
  %115 = load double, double* @pi_o_4, align 8
  %116 = fneg double %115
  %117 = load double, double* @tiny, align 8
  %118 = fsub double %116, %117
  store double %118, double* %3, align 8
  br label %212

119:                                              ; preds = %108
  %120 = load double, double* @pi_o_4, align 8
  %121 = fmul double 3.000000e+00, %120
  %122 = load double, double* @tiny, align 8
  %123 = fadd double %121, %122
  store double %123, double* %3, align 8
  br label %212

124:                                              ; preds = %108
  %125 = load double, double* @pi_o_4, align 8
  %126 = fmul double -3.000000e+00, %125
  %127 = load double, double* @tiny, align 8
  %128 = fsub double %126, %127
  store double %128, double* %3, align 8
  br label %212

129:                                              ; preds = %108
  br label %147

130:                                              ; preds = %105
  %131 = load i32, i32* %8, align 4
  switch i32 %131, label %146 [
    i32 0, label %132
    i32 1, label %134
    i32 2, label %137
    i32 3, label %141
  ]

132:                                              ; preds = %130
  %133 = load double, double* @zero, align 8
  store double %133, double* %3, align 8
  br label %212

134:                                              ; preds = %130
  %135 = load double, double* @zero, align 8
  %136 = fneg double %135
  store double %136, double* %3, align 8
  br label %212

137:                                              ; preds = %130
  %138 = load double, double* @pi, align 8
  %139 = load double, double* @tiny, align 8
  %140 = fadd double %138, %139
  store double %140, double* %3, align 8
  br label %212

141:                                              ; preds = %130
  %142 = load double, double* @pi, align 8
  %143 = fneg double %142
  %144 = load double, double* @tiny, align 8
  %145 = fsub double %143, %144
  store double %145, double* %3, align 8
  br label %212

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147, %102
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %149, 2146435072
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load double, double* @pi_o_2, align 8
  %156 = fneg double %155
  %157 = load double, double* @tiny, align 8
  %158 = fsub double %156, %157
  br label %163

159:                                              ; preds = %151
  %160 = load double, double* @pi_o_2, align 8
  %161 = load double, double* @tiny, align 8
  %162 = fadd double %160, %161
  br label %163

163:                                              ; preds = %159, %154
  %164 = phi double [ %158, %154 ], [ %162, %159 ]
  store double %164, double* %3, align 8
  br label %212

165:                                              ; preds = %148
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = sub nsw i32 %166, %167
  %169 = ashr i32 %168, 20
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp sgt i32 %170, 60
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load double, double* @pi_o_2, align 8
  %174 = load double, double* @pi_lo, align 8
  %175 = fmul double 5.000000e-01, %174
  %176 = fadd double %173, %175
  store double %176, double* %6, align 8
  %177 = load i32, i32* %8, align 4
  %178 = and i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %193

179:                                              ; preds = %165
  %180 = load i32, i32* %9, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, -60
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store double 0.000000e+00, double* %6, align 8
  br label %192

186:                                              ; preds = %182, %179
  %187 = load double, double* %4, align 8
  %188 = load double, double* %5, align 8
  %189 = fdiv double %187, %188
  %190 = call double @llvm.fabs.f64(double %189)
  %191 = call double @atan(double %190) #4
  store double %191, double* %6, align 8
  br label %192

192:                                              ; preds = %186, %185
  br label %193

193:                                              ; preds = %192, %172
  %194 = load i32, i32* %8, align 4
  switch i32 %194, label %206 [
    i32 0, label %195
    i32 1, label %197
    i32 2, label %200
  ]

195:                                              ; preds = %193
  %196 = load double, double* %6, align 8
  store double %196, double* %3, align 8
  br label %212

197:                                              ; preds = %193
  %198 = load double, double* %6, align 8
  %199 = fneg double %198
  store double %199, double* %3, align 8
  br label %212

200:                                              ; preds = %193
  %201 = load double, double* @pi, align 8
  %202 = load double, double* %6, align 8
  %203 = load double, double* @pi_lo, align 8
  %204 = fsub double %202, %203
  %205 = fsub double %201, %204
  store double %205, double* %3, align 8
  br label %212

206:                                              ; preds = %193
  %207 = load double, double* %6, align 8
  %208 = load double, double* @pi_lo, align 8
  %209 = fsub double %207, %208
  %210 = load double, double* @pi, align 8
  %211 = fsub double %209, %210
  store double %211, double* %3, align 8
  br label %212

212:                                              ; preds = %206, %200, %197, %195, %163, %141, %137, %134, %132, %124, %119, %114, %110, %100, %77, %73, %71, %54, %44
  %213 = load double, double* %3, align 8
  ret double %213
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local double @nan_mix(double, double) #1

; Function Attrs: nounwind
declare dso_local double @atan(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
