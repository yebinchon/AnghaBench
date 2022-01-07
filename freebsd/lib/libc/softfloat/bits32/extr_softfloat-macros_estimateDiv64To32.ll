; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/softfloat/bits32/extr_softfloat-macros_estimateDiv64To32.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/softfloat/bits32/extr_softfloat-macros_estimateDiv64To32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @estimateDiv64To32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimateDiv64To32(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 16
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sdiv i32 %28, %29
  %31 = shl i32 %30, 16
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i32 [ -65536, %26 ], [ %31, %27 ]
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @mul32To64(i32 %34, i32 %35, i32* %12, i32* %13)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @sub64(i32 %37, i32 %38, i32 %39, i32 %40, i32* %10, i32* %11)
  br label %42

42:                                               ; preds = %46, %32
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = sub nsw i32 %47, 65536
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 16
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @add64(i32 %51, i32 %52, i32 %53, i32 %54, i32* %10, i32* %11)
  br label %42

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %11, align 4
  %60 = ashr i32 %59, 16
  %61 = or i32 %58, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 16
  %64 = load i32, i32* %10, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %71

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sdiv i32 %68, %69
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi i32 [ 65535, %66 ], [ %70, %67 ]
  %73 = load i32, i32* %14, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %18
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @mul32To64(i32, i32, i32*, i32*) #1

declare dso_local i32 @sub64(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @add64(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
