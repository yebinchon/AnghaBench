; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/softfloat/bits64/extr_softfloat-macros_estimateDiv128To64.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/softfloat/bits64/extr_softfloat-macros_estimateDiv128To64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @estimateDiv128To64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimateDiv128To64(i32 %0, i32 %1, i32 %2) #0 {
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
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @LIT64(i32 -1)
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 32
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @LIT64(i32 0)
  br label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sdiv i32 %30, %31
  %33 = shl i32 %32, 32
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @mul64To128(i32 %36, i32 %37, i32* %12, i32* %13)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @sub128(i32 %39, i32 %40, i32 %41, i32 %42, i32* %10, i32* %11)
  br label %44

44:                                               ; preds = %48, %34
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = call i32 @LIT64(i32 0)
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @add128(i32 %54, i32 %55, i32 %56, i32 %57, i32* %10, i32* %11)
  br label %44

59:                                               ; preds = %44
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, 32
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 32
  %64 = or i32 %61, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 32
  %67 = load i32, i32* %10, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %74

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sdiv i32 %71, %72
  br label %74

74:                                               ; preds = %70, %69
  %75 = phi i32 [ -1, %69 ], [ %73, %70 ]
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @mul64To128(i32, i32, i32*, i32*) #1

declare dso_local i32 @sub128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @add128(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
