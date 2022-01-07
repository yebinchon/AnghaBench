; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_floorf.c_floorf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_floorf.c_floorf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local float @floorf(float %0) #0 {
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
  br i1 %15, label %16, label %65

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load float, float* @huge, align 4
  %21 = load float, float* %3, align 4
  %22 = fadd float %20, %21
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 2147483647
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1082130432, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %28
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34, %19
  br label %64

36:                                               ; preds = %16
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 8388607, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load float, float* %3, align 4
  store float %44, float* %2, align 4
  br label %79

45:                                               ; preds = %36
  %46 = load float, float* @huge, align 4
  %47 = load float, float* %3, align 4
  %48 = fadd float %46, %47
  %49 = fcmp ogt float %48, 0.000000e+00
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 8388608, %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %6, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %45
  br label %64

64:                                               ; preds = %63, %35
  br label %74

65:                                               ; preds = %1
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load float, float* %3, align 4
  %70 = load float, float* %3, align 4
  %71 = fadd float %69, %70
  store float %71, float* %2, align 4
  br label %79

72:                                               ; preds = %65
  %73 = load float, float* %3, align 4
  store float %73, float* %2, align 4
  br label %79

74:                                               ; preds = %64
  %75 = load float, float* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @SET_FLOAT_WORD(float %75, i32 %76)
  %78 = load float, float* %3, align 4
  store float %78, float* %2, align 4
  br label %79

79:                                               ; preds = %74, %72, %68, %43
  %80 = load float, float* %2, align 4
  ret float %80
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
