; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder.c_literal_matched.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder.c_literal_matched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @literal_matched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @literal_matched(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 256, i32* %9, align 4
  %13 = call i32 @UINT32_C(i32 1)
  %14 = shl i32 %13, 8
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %47, %4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 7
  %31 = and i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @rc_bit(i32* %32, i32* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = xor i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %17
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @UINT32_C(i32 1)
  %50 = shl i32 %49, 16
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %17, label %52

52:                                               ; preds = %47
  ret void
}

declare dso_local i32 @UINT32_C(i32) #1

declare dso_local i32 @rc_bit(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
