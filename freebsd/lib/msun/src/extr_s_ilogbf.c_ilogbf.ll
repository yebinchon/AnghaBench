; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_ilogbf.c_ilogbf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_ilogbf.c_ilogbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FP_ILOGB0 = common dso_local global i32 0, align 4
@FP_ILOGBNAN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilogbf(float %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store float %0, float* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load float, float* %3, align 4
  %8 = call i32 @GET_FLOAT_WORD(i32 %6, float %7)
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 2147483647
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 8388608
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @FP_ILOGB0, align 4
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %13
  store i32 -126, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 8
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %27, %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %21

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %47

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 2139095040
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 23
  %39 = sub nsw i32 %38, 127
  store i32 %39, i32* %2, align 4
  br label %47

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp sgt i32 %41, 2139095040
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @FP_ILOGBNAN, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @INT_MAX, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %43, %36, %31, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
