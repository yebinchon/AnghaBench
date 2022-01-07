; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_logbf.c_logbf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_logbf.c_logbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two25 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @logbf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store float %0, float* %3, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = call i32 @GET_FLOAT_WORD(i32 %5, float %6)
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 2147483647
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load float, float* %3, align 4
  %14 = call float @llvm.fabs.f32(float %13)
  %15 = fdiv float -1.000000e+00, %14
  store float %15, float* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 2139095040
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load float, float* %3, align 4
  %21 = load float, float* %3, align 4
  %22 = fmul float %20, %21
  store float %22, float* %2, align 4
  br label %45

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 8388608
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load float, float* @two25, align 4
  %28 = load float, float* %3, align 4
  %29 = fmul float %28, %27
  store float %29, float* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load float, float* %3, align 4
  %32 = call i32 @GET_FLOAT_WORD(i32 %30, float %31)
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 2147483647
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 23
  %37 = sub nsw i32 %36, 127
  %38 = sub nsw i32 %37, 25
  %39 = sitofp i32 %38 to float
  store float %39, float* %2, align 4
  br label %45

40:                                               ; preds = %23
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 23
  %43 = sub nsw i32 %42, 127
  %44 = sitofp i32 %43 to float
  store float %44, float* %2, align 4
  br label %45

45:                                               ; preds = %40, %26, %19, %12
  %46 = load float, float* %2, align 4
  ret float %46
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
