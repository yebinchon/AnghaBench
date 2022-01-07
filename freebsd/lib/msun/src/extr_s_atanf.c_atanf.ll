; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_atanf.c_atanf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_atanf.c_atanf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atanhi = common dso_local global float* null, align 8
@atanlo = common dso_local global float* null, align 8
@huge = common dso_local global float 0.000000e+00, align 4
@one = common dso_local global float 0.000000e+00, align 4
@aT = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @atanf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float %0, float* %3, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load float, float* %3, align 4
  %13 = call i32 @GET_FLOAT_WORD(i32 %11, float %12)
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, 2147483647
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 1283457024
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 2139095040
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load float, float* %3, align 4
  %23 = load float, float* %3, align 4
  %24 = fadd float %22, %23
  store float %24, float* %2, align 4
  br label %176

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load float*, float** @atanhi, align 8
  %30 = getelementptr inbounds float, float* %29, i64 3
  %31 = load float, float* %30, align 4
  %32 = load float*, float** @atanlo, align 8
  %33 = getelementptr inbounds float, float* %32, i64 3
  %34 = load volatile float, float* %33, align 4
  %35 = fadd float %31, %34
  store float %35, float* %2, align 4
  br label %176

36:                                               ; preds = %25
  %37 = load float*, float** @atanhi, align 8
  %38 = getelementptr inbounds float, float* %37, i64 3
  %39 = load float, float* %38, align 4
  %40 = fneg float %39
  %41 = load float*, float** @atanlo, align 8
  %42 = getelementptr inbounds float, float* %41, i64 3
  %43 = load volatile float, float* %42, align 4
  %44 = fsub float %40, %43
  store float %44, float* %2, align 4
  br label %176

45:                                               ; preds = %1
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 1054867456
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 964689920
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load float, float* @huge, align 4
  %53 = load float, float* %3, align 4
  %54 = fadd float %52, %53
  %55 = load float, float* @one, align 4
  %56 = fcmp ogt float %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load float, float* %3, align 4
  store float %58, float* %2, align 4
  br label %176

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %48
  store i32 -1, i32* %10, align 4
  br label %102

61:                                               ; preds = %45
  %62 = load float, float* %3, align 4
  %63 = call float @llvm.fabs.f32(float %62)
  store float %63, float* %3, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 1066926080
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 1060110336
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  %70 = load float, float* %3, align 4
  %71 = fmul float 2.000000e+00, %70
  %72 = load float, float* @one, align 4
  %73 = fsub float %71, %72
  %74 = load float, float* %3, align 4
  %75 = fadd float 2.000000e+00, %74
  %76 = fdiv float %73, %75
  store float %76, float* %3, align 4
  br label %85

77:                                               ; preds = %66
  store i32 1, i32* %10, align 4
  %78 = load float, float* %3, align 4
  %79 = load float, float* @one, align 4
  %80 = fsub float %78, %79
  %81 = load float, float* %3, align 4
  %82 = load float, float* @one, align 4
  %83 = fadd float %81, %82
  %84 = fdiv float %80, %83
  store float %84, float* %3, align 4
  br label %85

85:                                               ; preds = %77, %69
  br label %101

86:                                               ; preds = %61
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 1075576832
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  store i32 2, i32* %10, align 4
  %90 = load float, float* %3, align 4
  %91 = fsub float %90, 1.500000e+00
  %92 = load float, float* @one, align 4
  %93 = load float, float* %3, align 4
  %94 = fmul float 1.500000e+00, %93
  %95 = fadd float %92, %94
  %96 = fdiv float %91, %95
  store float %96, float* %3, align 4
  br label %100

97:                                               ; preds = %86
  store i32 3, i32* %10, align 4
  %98 = load float, float* %3, align 4
  %99 = fdiv float -1.000000e+00, %98
  store float %99, float* %3, align 4
  br label %100

100:                                              ; preds = %97, %89
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %60
  %103 = load float, float* %3, align 4
  %104 = load float, float* %3, align 4
  %105 = fmul float %103, %104
  store float %105, float* %7, align 4
  %106 = load float, float* %7, align 4
  %107 = load float, float* %7, align 4
  %108 = fmul float %106, %107
  store float %108, float* %4, align 4
  %109 = load float, float* %7, align 4
  %110 = load float*, float** @aT, align 8
  %111 = getelementptr inbounds float, float* %110, i64 0
  %112 = load float, float* %111, align 4
  %113 = load float, float* %4, align 4
  %114 = load float*, float** @aT, align 8
  %115 = getelementptr inbounds float, float* %114, i64 2
  %116 = load float, float* %115, align 4
  %117 = load float, float* %4, align 4
  %118 = load float*, float** @aT, align 8
  %119 = getelementptr inbounds float, float* %118, i64 4
  %120 = load float, float* %119, align 4
  %121 = fmul float %117, %120
  %122 = fadd float %116, %121
  %123 = fmul float %113, %122
  %124 = fadd float %112, %123
  %125 = fmul float %109, %124
  store float %125, float* %5, align 4
  %126 = load float, float* %4, align 4
  %127 = load float*, float** @aT, align 8
  %128 = getelementptr inbounds float, float* %127, i64 1
  %129 = load float, float* %128, align 4
  %130 = load float, float* %4, align 4
  %131 = load float*, float** @aT, align 8
  %132 = getelementptr inbounds float, float* %131, i64 3
  %133 = load float, float* %132, align 4
  %134 = fmul float %130, %133
  %135 = fadd float %129, %134
  %136 = fmul float %126, %135
  store float %136, float* %6, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %102
  %140 = load float, float* %3, align 4
  %141 = load float, float* %3, align 4
  %142 = load float, float* %5, align 4
  %143 = load float, float* %6, align 4
  %144 = fadd float %142, %143
  %145 = fmul float %141, %144
  %146 = fsub float %140, %145
  store float %146, float* %2, align 4
  br label %176

147:                                              ; preds = %102
  %148 = load float*, float** @atanhi, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load float, float* %151, align 4
  %153 = load float, float* %3, align 4
  %154 = load float, float* %5, align 4
  %155 = load float, float* %6, align 4
  %156 = fadd float %154, %155
  %157 = fmul float %153, %156
  %158 = load float*, float** @atanlo, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  %162 = load float, float* %161, align 4
  %163 = fsub float %157, %162
  %164 = load float, float* %3, align 4
  %165 = fsub float %163, %164
  %166 = fsub float %152, %165
  store float %166, float* %7, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %147
  %170 = load float, float* %7, align 4
  %171 = fneg float %170
  br label %174

172:                                              ; preds = %147
  %173 = load float, float* %7, align 4
  br label %174

174:                                              ; preds = %172, %169
  %175 = phi float [ %171, %169 ], [ %173, %172 ]
  store float %175, float* %2, align 4
  br label %176

176:                                              ; preds = %174, %139, %57, %36, %28, %21
  %177 = load float, float* %2, align 4
  ret float %177
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
