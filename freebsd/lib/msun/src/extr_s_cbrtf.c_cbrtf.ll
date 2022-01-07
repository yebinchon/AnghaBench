; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cbrtf.c_cbrtf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cbrtf.c_cbrtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B2 = common dso_local global i32 0, align 4
@B1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local float @cbrtf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float %0, float* %3, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load float, float* %3, align 4
  %12 = call i32 @GET_FLOAT_WORD(i32 %10, float %11)
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, -2147483648
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = xor i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 2139095040
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load float, float* %3, align 4
  %22 = load float, float* %3, align 4
  %23 = fadd float %21, %22
  store float %23, float* %2, align 4
  br label %106

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 8388608
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load float, float* %3, align 4
  store float %31, float* %2, align 4
  br label %106

32:                                               ; preds = %27
  %33 = load float, float* %6, align 4
  %34 = call i32 @SET_FLOAT_WORD(float %33, i32 1266679808)
  %35 = load float, float* %3, align 4
  %36 = load float, float* %6, align 4
  %37 = fmul float %36, %35
  store float %37, float* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load float, float* %6, align 4
  %40 = call i32 @GET_FLOAT_WORD(i32 %38, float %39)
  %41 = load float, float* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 2147483647
  %45 = sdiv i32 %44, 3
  %46 = load i32, i32* @B2, align 4
  %47 = add nsw i32 %45, %46
  %48 = or i32 %42, %47
  %49 = call i32 @SET_FLOAT_WORD(float %41, i32 %48)
  br label %59

50:                                               ; preds = %24
  %51 = load float, float* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sdiv i32 %53, 3
  %55 = load i32, i32* @B1, align 4
  %56 = add nsw i32 %54, %55
  %57 = or i32 %52, %56
  %58 = call i32 @SET_FLOAT_WORD(float %51, i32 %57)
  br label %59

59:                                               ; preds = %50, %32
  %60 = load float, float* %6, align 4
  %61 = fpext float %60 to double
  store double %61, double* %5, align 8
  %62 = load double, double* %5, align 8
  %63 = load double, double* %5, align 8
  %64 = fmul double %62, %63
  %65 = load double, double* %5, align 8
  %66 = fmul double %64, %65
  store double %66, double* %4, align 8
  %67 = load double, double* %5, align 8
  %68 = load float, float* %3, align 4
  %69 = fpext float %68 to double
  %70 = load float, float* %3, align 4
  %71 = fpext float %70 to double
  %72 = fadd double %69, %71
  %73 = load double, double* %4, align 8
  %74 = fadd double %72, %73
  %75 = fmul double %67, %74
  %76 = load float, float* %3, align 4
  %77 = fpext float %76 to double
  %78 = load double, double* %4, align 8
  %79 = fadd double %77, %78
  %80 = load double, double* %4, align 8
  %81 = fadd double %79, %80
  %82 = fdiv double %75, %81
  store double %82, double* %5, align 8
  %83 = load double, double* %5, align 8
  %84 = load double, double* %5, align 8
  %85 = fmul double %83, %84
  %86 = load double, double* %5, align 8
  %87 = fmul double %85, %86
  store double %87, double* %4, align 8
  %88 = load double, double* %5, align 8
  %89 = load float, float* %3, align 4
  %90 = fpext float %89 to double
  %91 = load float, float* %3, align 4
  %92 = fpext float %91 to double
  %93 = fadd double %90, %92
  %94 = load double, double* %4, align 8
  %95 = fadd double %93, %94
  %96 = fmul double %88, %95
  %97 = load float, float* %3, align 4
  %98 = fpext float %97 to double
  %99 = load double, double* %4, align 8
  %100 = fadd double %98, %99
  %101 = load double, double* %4, align 8
  %102 = fadd double %100, %101
  %103 = fdiv double %96, %102
  store double %103, double* %5, align 8
  %104 = load double, double* %5, align 8
  %105 = fptrunc double %104 to float
  store float %105, float* %2, align 4
  br label %106

106:                                              ; preds = %59, %30, %20
  %107 = load float, float* %2, align 4
  ret float %107
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
