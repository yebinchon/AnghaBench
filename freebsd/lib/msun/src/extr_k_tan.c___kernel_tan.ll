; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_tan.c___kernel_tan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_tan.c___kernel_tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pio4 = common dso_local global double 0.000000e+00, align 8
@pio4lo = common dso_local global double 0.000000e+00, align 8
@T = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__kernel_tan(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load double, double* %5, align 8
  %19 = call i32 @GET_HIGH_WORD(i32 %17, double %18)
  %20 = load i32, i32* %14, align 4
  %21 = and i32 %20, 2147483647
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp sge i32 %22, 1072010280
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load double, double* %5, align 8
  %29 = fneg double %28
  store double %29, double* %5, align 8
  %30 = load double, double* %6, align 8
  %31 = fneg double %30
  store double %31, double* %6, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load double, double* @pio4, align 8
  %34 = load double, double* %5, align 8
  %35 = fsub double %33, %34
  store double %35, double* %8, align 8
  %36 = load double, double* @pio4lo, align 8
  %37 = load double, double* %6, align 8
  %38 = fsub double %36, %37
  store double %38, double* %11, align 8
  %39 = load double, double* %8, align 8
  %40 = load double, double* %11, align 8
  %41 = fadd double %39, %40
  store double %41, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  br label %42

42:                                               ; preds = %32, %3
  %43 = load double, double* %5, align 8
  %44 = load double, double* %5, align 8
  %45 = fmul double %43, %44
  store double %45, double* %8, align 8
  %46 = load double, double* %8, align 8
  %47 = load double, double* %8, align 8
  %48 = fmul double %46, %47
  store double %48, double* %11, align 8
  %49 = load double*, double** @T, align 8
  %50 = getelementptr inbounds double, double* %49, i64 1
  %51 = load double, double* %50, align 8
  %52 = load double, double* %11, align 8
  %53 = load double*, double** @T, align 8
  %54 = getelementptr inbounds double, double* %53, i64 3
  %55 = load double, double* %54, align 8
  %56 = load double, double* %11, align 8
  %57 = load double*, double** @T, align 8
  %58 = getelementptr inbounds double, double* %57, i64 5
  %59 = load double, double* %58, align 8
  %60 = load double, double* %11, align 8
  %61 = load double*, double** @T, align 8
  %62 = getelementptr inbounds double, double* %61, i64 7
  %63 = load double, double* %62, align 8
  %64 = load double, double* %11, align 8
  %65 = load double*, double** @T, align 8
  %66 = getelementptr inbounds double, double* %65, i64 9
  %67 = load double, double* %66, align 8
  %68 = load double, double* %11, align 8
  %69 = load double*, double** @T, align 8
  %70 = getelementptr inbounds double, double* %69, i64 11
  %71 = load double, double* %70, align 8
  %72 = fmul double %68, %71
  %73 = fadd double %67, %72
  %74 = fmul double %64, %73
  %75 = fadd double %63, %74
  %76 = fmul double %60, %75
  %77 = fadd double %59, %76
  %78 = fmul double %56, %77
  %79 = fadd double %55, %78
  %80 = fmul double %52, %79
  %81 = fadd double %51, %80
  store double %81, double* %9, align 8
  %82 = load double, double* %8, align 8
  %83 = load double*, double** @T, align 8
  %84 = getelementptr inbounds double, double* %83, i64 2
  %85 = load double, double* %84, align 8
  %86 = load double, double* %11, align 8
  %87 = load double*, double** @T, align 8
  %88 = getelementptr inbounds double, double* %87, i64 4
  %89 = load double, double* %88, align 8
  %90 = load double, double* %11, align 8
  %91 = load double*, double** @T, align 8
  %92 = getelementptr inbounds double, double* %91, i64 6
  %93 = load double, double* %92, align 8
  %94 = load double, double* %11, align 8
  %95 = load double*, double** @T, align 8
  %96 = getelementptr inbounds double, double* %95, i64 8
  %97 = load double, double* %96, align 8
  %98 = load double, double* %11, align 8
  %99 = load double*, double** @T, align 8
  %100 = getelementptr inbounds double, double* %99, i64 10
  %101 = load double, double* %100, align 8
  %102 = load double, double* %11, align 8
  %103 = load double*, double** @T, align 8
  %104 = getelementptr inbounds double, double* %103, i64 12
  %105 = load double, double* %104, align 8
  %106 = fmul double %102, %105
  %107 = fadd double %101, %106
  %108 = fmul double %98, %107
  %109 = fadd double %97, %108
  %110 = fmul double %94, %109
  %111 = fadd double %93, %110
  %112 = fmul double %90, %111
  %113 = fadd double %89, %112
  %114 = fmul double %86, %113
  %115 = fadd double %85, %114
  %116 = fmul double %82, %115
  store double %116, double* %10, align 8
  %117 = load double, double* %8, align 8
  %118 = load double, double* %5, align 8
  %119 = fmul double %117, %118
  store double %119, double* %12, align 8
  %120 = load double, double* %6, align 8
  %121 = load double, double* %8, align 8
  %122 = load double, double* %12, align 8
  %123 = load double, double* %9, align 8
  %124 = load double, double* %10, align 8
  %125 = fadd double %123, %124
  %126 = fmul double %122, %125
  %127 = load double, double* %6, align 8
  %128 = fadd double %126, %127
  %129 = fmul double %121, %128
  %130 = fadd double %120, %129
  store double %130, double* %9, align 8
  %131 = load double*, double** @T, align 8
  %132 = getelementptr inbounds double, double* %131, i64 0
  %133 = load double, double* %132, align 8
  %134 = load double, double* %12, align 8
  %135 = fmul double %133, %134
  %136 = load double, double* %9, align 8
  %137 = fadd double %136, %135
  store double %137, double* %9, align 8
  %138 = load double, double* %5, align 8
  %139 = load double, double* %9, align 8
  %140 = fadd double %138, %139
  store double %140, double* %11, align 8
  %141 = load i32, i32* %13, align 4
  %142 = icmp sge i32 %141, 1072010280
  br i1 %142, label %143, label %166

143:                                              ; preds = %42
  %144 = load i32, i32* %7, align 4
  %145 = sitofp i32 %144 to double
  store double %145, double* %10, align 8
  %146 = load i32, i32* %14, align 4
  %147 = ashr i32 %146, 30
  %148 = and i32 %147, 2
  %149 = sub nsw i32 1, %148
  %150 = sitofp i32 %149 to double
  %151 = load double, double* %10, align 8
  %152 = load double, double* %5, align 8
  %153 = load double, double* %11, align 8
  %154 = load double, double* %11, align 8
  %155 = fmul double %153, %154
  %156 = load double, double* %11, align 8
  %157 = load double, double* %10, align 8
  %158 = fadd double %156, %157
  %159 = fdiv double %155, %158
  %160 = load double, double* %9, align 8
  %161 = fsub double %159, %160
  %162 = fsub double %152, %161
  %163 = fmul double 2.000000e+00, %162
  %164 = fsub double %151, %163
  %165 = fmul double %150, %164
  store double %165, double* %4, align 8
  br label %197

166:                                              ; preds = %42
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load double, double* %11, align 8
  store double %170, double* %4, align 8
  br label %197

171:                                              ; preds = %166
  %172 = load double, double* %11, align 8
  store double %172, double* %8, align 8
  %173 = load double, double* %8, align 8
  %174 = call i32 @SET_LOW_WORD(double %173, i32 0)
  %175 = load double, double* %9, align 8
  %176 = load double, double* %8, align 8
  %177 = load double, double* %5, align 8
  %178 = fsub double %176, %177
  %179 = fsub double %175, %178
  store double %179, double* %10, align 8
  %180 = load double, double* %11, align 8
  %181 = fdiv double -1.000000e+00, %180
  store double %181, double* %15, align 8
  store double %181, double* %16, align 8
  %182 = load double, double* %16, align 8
  %183 = call i32 @SET_LOW_WORD(double %182, i32 0)
  %184 = load double, double* %16, align 8
  %185 = load double, double* %8, align 8
  %186 = fmul double %184, %185
  %187 = fadd double 1.000000e+00, %186
  store double %187, double* %12, align 8
  %188 = load double, double* %16, align 8
  %189 = load double, double* %15, align 8
  %190 = load double, double* %12, align 8
  %191 = load double, double* %16, align 8
  %192 = load double, double* %10, align 8
  %193 = fmul double %191, %192
  %194 = fadd double %190, %193
  %195 = fmul double %189, %194
  %196 = fadd double %188, %195
  store double %196, double* %4, align 8
  br label %197

197:                                              ; preds = %171, %169, %143
  %198 = load double, double* %4, align 8
  ret double %198
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
