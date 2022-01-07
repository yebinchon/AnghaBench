; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_s_logl.c_log10l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_s_logl.c_log10l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ld = type { float, float, i32 }

@invln10_hi = common dso_local global float 0.000000e+00, align 4
@invln10_lo = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @log10l(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %struct.ld, align 4
  %5 = alloca x86_fp80, align 16
  %6 = alloca float, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %7 = call i32 (...) @ENTERI()
  %8 = call i32 @DOPRINT_START(x86_fp80* %3)
  %9 = load x86_fp80, x86_fp80* %3, align 16
  %10 = call i32 @k_logl(x86_fp80 %9, %struct.ld* %4)
  %11 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = call i32 @RETURNPI(float %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 1
  %22 = load float, float* %21, align 4
  %23 = call i32 @_2sumF(float %20, float %22)
  %24 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 0
  %25 = load float, float* %24, align 4
  store float %25, float* %6, align 4
  %26 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = getelementptr inbounds %struct.ld, %struct.ld* %4, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = load float, float* %6, align 4
  %31 = fsub float %29, %30
  %32 = fadd float %27, %31
  %33 = fpext float %32 to x86_fp80
  store x86_fp80 %33, x86_fp80* %5, align 16
  %34 = load float, float* @invln10_hi, align 4
  %35 = load float, float* %6, align 4
  %36 = fmul float %34, %35
  %37 = load float, float* @invln10_lo, align 4
  %38 = load float, float* @invln10_hi, align 4
  %39 = fadd float %37, %38
  %40 = fpext float %39 to x86_fp80
  %41 = load x86_fp80, x86_fp80* %5, align 16
  %42 = fmul x86_fp80 %40, %41
  %43 = load float, float* @invln10_lo, align 4
  %44 = load float, float* %6, align 4
  %45 = fmul float %43, %44
  %46 = fpext float %45 to x86_fp80
  %47 = fadd x86_fp80 %42, %46
  %48 = fptrunc x86_fp80 %47 to float
  %49 = call i32 @RETURN2PI(float %36, float %48)
  %50 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %50
}

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @DOPRINT_START(x86_fp80*) #1

declare dso_local i32 @k_logl(x86_fp80, %struct.ld*) #1

declare dso_local i32 @RETURNPI(float) #1

declare dso_local i32 @_2sumF(float, float) #1

declare dso_local i32 @RETURN2PI(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
