; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_truncf.c_truncf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_truncf.c_truncf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local float @truncf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store float %0, float* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load float, float* %3, align 4
  %9 = call i32 @GET_FLOAT_WORD(i32 %7, float %8)
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 23
  %12 = and i32 %11, 255
  %13 = sub nsw i32 %12, 127
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 23
  br i1 %15, label %16, label %49

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load float, float* @huge, align 4
  %21 = load float, float* %3, align 4
  %22 = fadd float %20, %21
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, -2147483648
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %19
  br label %48

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 8388607, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load float, float* %3, align 4
  store float %36, float* %2, align 4
  br label %63

37:                                               ; preds = %28
  %38 = load float, float* @huge, align 4
  %39 = load float, float* %3, align 4
  %40 = fadd float %38, %39
  %41 = fcmp ogt float %40, 0.000000e+00
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %27
  br label %58

49:                                               ; preds = %1
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load float, float* %3, align 4
  %54 = load float, float* %3, align 4
  %55 = fadd float %53, %54
  store float %55, float* %2, align 4
  br label %63

56:                                               ; preds = %49
  %57 = load float, float* %3, align 4
  store float %57, float* %2, align 4
  br label %63

58:                                               ; preds = %48
  %59 = load float, float* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @SET_FLOAT_WORD(float %59, i32 %60)
  %62 = load float, float* %3, align 4
  store float %62, float* %2, align 4
  br label %63

63:                                               ; preds = %58, %56, %52, %35
  %64 = load float, float* %2, align 4
  ret float %64
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
