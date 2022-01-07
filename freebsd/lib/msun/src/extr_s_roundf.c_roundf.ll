; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_roundf.c_roundf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_roundf.c_roundf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local float @roundf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store float %0, float* %3, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load float, float* %3, align 4
  %8 = call i32 @GET_FLOAT_WORD(i32 %6, float %7)
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 2147483647
  %11 = icmp eq i32 %10, 2139095040
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load float, float* %3, align 4
  %14 = load float, float* %3, align 4
  %15 = fadd float %13, %14
  store float %15, float* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, -2147483648
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load float, float* %3, align 4
  %22 = call float @llvm.floor.f32(float %21)
  store float %22, float* %4, align 4
  %23 = load float, float* %4, align 4
  %24 = load float, float* %3, align 4
  %25 = fsub float %23, %24
  %26 = fcmp ole float %25, -5.000000e-01
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load float, float* %4, align 4
  %29 = fadd float %28, 1.000000e+00
  store float %29, float* %4, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load float, float* %4, align 4
  store float %31, float* %2, align 4
  br label %46

32:                                               ; preds = %16
  %33 = load float, float* %3, align 4
  %34 = fneg float %33
  %35 = call float @llvm.floor.f32(float %34)
  store float %35, float* %4, align 4
  %36 = load float, float* %4, align 4
  %37 = load float, float* %3, align 4
  %38 = fadd float %36, %37
  %39 = fcmp ole float %38, -5.000000e-01
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load float, float* %4, align 4
  %42 = fadd float %41, 1.000000e+00
  store float %42, float* %4, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load float, float* %4, align 4
  %45 = fneg float %44
  store float %45, float* %2, align 4
  br label %46

46:                                               ; preds = %43, %30, %12
  %47 = load float, float* %2, align 4
  ret float %47
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #2

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
