; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityPrintNumberHex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityPrintNumberHex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnityPrintNumberHex(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %7 = load i8, i8* %4, align 1
  store i8 %7, i8* %6, align 1
  %8 = call i32 @UNITY_OUTPUT_CHAR(i8 signext 48)
  %9 = call i32 @UNITY_OUTPUT_CHAR(i8 signext 120)
  br label %10

10:                                               ; preds = %39, %2
  %11 = load i8, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load i8, i8* %3, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* %6, align 1
  %18 = add i8 %17, -1
  store i8 %18, i8* %6, align 1
  %19 = sext i8 %18 to i32
  %20 = shl i32 %19, 2
  %21 = ashr i32 %16, %20
  %22 = and i32 %21, 15
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %5, align 1
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp sle i32 %25, 9
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i8, i8* %5, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 48, %29
  %31 = trunc i32 %30 to i8
  %32 = call i32 @UNITY_OUTPUT_CHAR(i8 signext %31)
  br label %39

33:                                               ; preds = %14
  %34 = load i8, i8* %5, align 1
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 55, %35
  %37 = trunc i32 %36 to i8
  %38 = call i32 @UNITY_OUTPUT_CHAR(i8 signext %37)
  br label %39

39:                                               ; preds = %33, %27
  br label %10

40:                                               ; preds = %10
  ret void
}

declare dso_local i32 @UNITY_OUTPUT_CHAR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
