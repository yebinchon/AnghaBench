; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sincosf.c_sincosf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_sincosf.c_sincosf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p1pio2 = common dso_local global float 0.000000e+00, align 4
@p2pio2 = common dso_local global float 0.000000e+00, align 4
@p3pio2 = common dso_local global float 0.000000e+00, align 4
@p4pio2 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sincosf(float %0, float* %1, float* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %13 = load i32, i32* %11, align 4
  %14 = load float, float* %4, align 4
  %15 = call i32 @GET_FLOAT_WORD(i32 %13, float %14)
  %16 = load i32, i32* %11, align 4
  %17 = and i32 %16, 2147483647
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp sle i32 %18, 1061752794
  br i1 %19, label %20, label %38

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 964689920
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load float, float* %4, align 4
  %25 = fptosi float %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load float, float* %4, align 4
  %29 = load float*, float** %5, align 8
  store float %28, float* %29, align 4
  %30 = load float*, float** %6, align 8
  store float 1.000000e+00, float* %30, align 4
  br label %199

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = load float, float* %4, align 4
  %34 = fpext float %33 to double
  %35 = load float*, float** %5, align 8
  %36 = load float*, float** %6, align 8
  %37 = call i32 @__kernel_sincosdf(double %34, float* %35, float* %36)
  br label %199

38:                                               ; preds = %3
  %39 = load i32, i32* %12, align 4
  %40 = icmp sle i32 %39, 1081824209
  br i1 %40, label %41, label %101

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 %42, 1075235811
  br i1 %43, label %44, label %72

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load float, float* %4, align 4
  %49 = load float, float* @p1pio2, align 4
  %50 = fsub float %48, %49
  %51 = fpext float %50 to double
  %52 = load float*, float** %6, align 8
  %53 = load float*, float** %5, align 8
  %54 = call i32 @__kernel_sincosdf(double %51, float* %52, float* %53)
  %55 = load float*, float** %6, align 8
  %56 = load float, float* %55, align 4
  %57 = fneg float %56
  %58 = load float*, float** %6, align 8
  store float %57, float* %58, align 4
  br label %71

59:                                               ; preds = %44
  %60 = load float, float* %4, align 4
  %61 = load float, float* @p1pio2, align 4
  %62 = fadd float %60, %61
  %63 = fpext float %62 to double
  %64 = load float*, float** %6, align 8
  %65 = load float*, float** %5, align 8
  %66 = call i32 @__kernel_sincosdf(double %63, float* %64, float* %65)
  %67 = load float*, float** %5, align 8
  %68 = load float, float* %67, align 4
  %69 = fneg float %68
  %70 = load float*, float** %5, align 8
  store float %69, float* %70, align 4
  br label %71

71:                                               ; preds = %59, %47
  br label %100

72:                                               ; preds = %41
  %73 = load i32, i32* %11, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load float, float* %4, align 4
  %77 = load float, float* @p2pio2, align 4
  %78 = fsub float %76, %77
  %79 = fpext float %78 to double
  %80 = load float*, float** %5, align 8
  %81 = load float*, float** %6, align 8
  %82 = call i32 @__kernel_sincosdf(double %79, float* %80, float* %81)
  br label %91

83:                                               ; preds = %72
  %84 = load float, float* %4, align 4
  %85 = load float, float* @p2pio2, align 4
  %86 = fadd float %84, %85
  %87 = fpext float %86 to double
  %88 = load float*, float** %5, align 8
  %89 = load float*, float** %6, align 8
  %90 = call i32 @__kernel_sincosdf(double %87, float* %88, float* %89)
  br label %91

91:                                               ; preds = %83, %75
  %92 = load float*, float** %5, align 8
  %93 = load float, float* %92, align 4
  %94 = fneg float %93
  %95 = load float*, float** %5, align 8
  store float %94, float* %95, align 4
  %96 = load float*, float** %6, align 8
  %97 = load float, float* %96, align 4
  %98 = fneg float %97
  %99 = load float*, float** %6, align 8
  store float %98, float* %99, align 4
  br label %100

100:                                              ; preds = %91, %71
  br label %199

101:                                              ; preds = %38
  %102 = load i32, i32* %12, align 4
  %103 = icmp sle i32 %102, 1088565717
  br i1 %103, label %104, label %156

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = icmp sle i32 %105, 1085271519
  br i1 %106, label %107, label %135

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load float, float* %4, align 4
  %112 = load float, float* @p3pio2, align 4
  %113 = fsub float %111, %112
  %114 = fpext float %113 to double
  %115 = load float*, float** %6, align 8
  %116 = load float*, float** %5, align 8
  %117 = call i32 @__kernel_sincosdf(double %114, float* %115, float* %116)
  %118 = load float*, float** %5, align 8
  %119 = load float, float* %118, align 4
  %120 = fneg float %119
  %121 = load float*, float** %5, align 8
  store float %120, float* %121, align 4
  br label %134

122:                                              ; preds = %107
  %123 = load float, float* %4, align 4
  %124 = load float, float* @p3pio2, align 4
  %125 = fadd float %123, %124
  %126 = fpext float %125 to double
  %127 = load float*, float** %6, align 8
  %128 = load float*, float** %5, align 8
  %129 = call i32 @__kernel_sincosdf(double %126, float* %127, float* %128)
  %130 = load float*, float** %6, align 8
  %131 = load float, float* %130, align 4
  %132 = fneg float %131
  %133 = load float*, float** %6, align 8
  store float %132, float* %133, align 4
  br label %134

134:                                              ; preds = %122, %110
  br label %155

135:                                              ; preds = %104
  %136 = load i32, i32* %11, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load float, float* %4, align 4
  %140 = load float, float* @p4pio2, align 4
  %141 = fsub float %139, %140
  %142 = fpext float %141 to double
  %143 = load float*, float** %5, align 8
  %144 = load float*, float** %6, align 8
  %145 = call i32 @__kernel_sincosdf(double %142, float* %143, float* %144)
  br label %154

146:                                              ; preds = %135
  %147 = load float, float* %4, align 4
  %148 = load float, float* @p4pio2, align 4
  %149 = fadd float %147, %148
  %150 = fpext float %149 to double
  %151 = load float*, float** %5, align 8
  %152 = load float*, float** %6, align 8
  %153 = call i32 @__kernel_sincosdf(double %150, float* %151, float* %152)
  br label %154

154:                                              ; preds = %146, %138
  br label %155

155:                                              ; preds = %154, %134
  br label %199

156:                                              ; preds = %101
  %157 = load i32, i32* %12, align 4
  %158 = icmp sge i32 %157, 2139095040
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load float, float* %4, align 4
  %161 = load float, float* %4, align 4
  %162 = fsub float %160, %161
  %163 = load float*, float** %5, align 8
  store float %162, float* %163, align 4
  %164 = load float, float* %4, align 4
  %165 = load float, float* %4, align 4
  %166 = fsub float %164, %165
  %167 = load float*, float** %6, align 8
  store float %166, float* %167, align 4
  br label %199

168:                                              ; preds = %156
  %169 = load float, float* %4, align 4
  %170 = call i32 @__ieee754_rem_pio2f(float %169, double* %9)
  store i32 %170, i32* %10, align 4
  %171 = load double, double* %9, align 8
  %172 = call i32 @__kernel_sincosdf(double %171, float* %8, float* %7)
  %173 = load i32, i32* %10, align 4
  %174 = and i32 %173, 3
  switch i32 %174, label %193 [
    i32 0, label %175
    i32 1, label %180
    i32 2, label %186
  ]

175:                                              ; preds = %168
  %176 = load float, float* %8, align 4
  %177 = load float*, float** %5, align 8
  store float %176, float* %177, align 4
  %178 = load float, float* %7, align 4
  %179 = load float*, float** %6, align 8
  store float %178, float* %179, align 4
  br label %199

180:                                              ; preds = %168
  %181 = load float, float* %7, align 4
  %182 = load float*, float** %5, align 8
  store float %181, float* %182, align 4
  %183 = load float, float* %8, align 4
  %184 = fneg float %183
  %185 = load float*, float** %6, align 8
  store float %184, float* %185, align 4
  br label %199

186:                                              ; preds = %168
  %187 = load float, float* %8, align 4
  %188 = fneg float %187
  %189 = load float*, float** %5, align 8
  store float %188, float* %189, align 4
  %190 = load float, float* %7, align 4
  %191 = fneg float %190
  %192 = load float*, float** %6, align 8
  store float %191, float* %192, align 4
  br label %199

193:                                              ; preds = %168
  %194 = load float, float* %7, align 4
  %195 = fneg float %194
  %196 = load float*, float** %5, align 8
  store float %195, float* %196, align 4
  %197 = load float, float* %8, align 4
  %198 = load float*, float** %6, align 8
  store float %197, float* %198, align 4
  br label %199

199:                                              ; preds = %27, %32, %100, %155, %159, %193, %186, %180, %175
  ret void
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @__kernel_sincosdf(double, float*, float*) #1

declare dso_local i32 @__ieee754_rem_pio2f(float, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
