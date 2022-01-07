; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/rangecoder/extr_price_tablegen.c_init_price_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/rangecoder/extr_price_tablegen.c_init_price_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RC_MOVE_REDUCING_BITS = common dso_local global i32 0, align 4
@RC_BIT_MODEL_TOTAL = common dso_local global i32 0, align 4
@RC_BIT_PRICE_SHIFT_BITS = common dso_local global i32 0, align 4
@RC_BIT_MODEL_TOTAL_BITS = common dso_local global i32 0, align 4
@rc_prices = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_price_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_price_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @UINT32_C(i32 1)
  %7 = load i32, i32* @RC_MOVE_REDUCING_BITS, align 4
  %8 = shl i32 %6, %7
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %54, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @RC_BIT_MODEL_TOTAL, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i32, i32* @RC_BIT_PRICE_SHIFT_BITS, align 4
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %1, align 4
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %38, %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %32, %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @UINT32_C(i32 1)
  %30 = shl i32 %29, 16
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %27

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load i32, i32* @RC_BIT_MODEL_TOTAL_BITS, align 4
  %43 = load i32, i32* %2, align 4
  %44 = shl i32 %42, %43
  %45 = sub nsw i32 %44, 15
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i32*, i32** @rc_prices, align 8
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @RC_MOVE_REDUCING_BITS, align 4
  %51 = ashr i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = call i32 @UINT32_C(i32 1)
  %56 = load i32, i32* @RC_MOVE_REDUCING_BITS, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %1, align 4
  br label %10

60:                                               ; preds = %10
  ret void
}

declare dso_local i32 @UINT32_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
