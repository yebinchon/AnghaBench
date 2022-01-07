; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/rangecoder/extr_range_encoder.h_rc_bittree_reverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/rangecoder/extr_range_encoder.h_rc_bittree_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i64)* @rc_bittree_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc_bittree_reverse(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 1, i64* %9, align 8
  br label %11

11:                                               ; preds = %26, %4
  %12 = load i64, i64* %8, align 8
  %13 = and i64 %12, 1
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = ashr i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @rc_bit(i32* %16, i32* %19, i64 %20)
  %22 = load i64, i64* %9, align 8
  %23 = shl i64 %22, 1
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %11, label %30

30:                                               ; preds = %26
  ret void
}

declare dso_local i32 @rc_bit(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
