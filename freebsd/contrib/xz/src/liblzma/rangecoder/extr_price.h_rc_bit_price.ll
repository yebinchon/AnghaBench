; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/rangecoder/extr_price.h_rc_bit_price.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/rangecoder/extr_price.h_rc_bit_price.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lzma_rc_prices = common dso_local global i32* null, align 8
@RC_BIT_MODEL_TOTAL = common dso_local global i32 0, align 4
@RC_MOVE_REDUCING_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rc_bit_price to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_bit_price(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @lzma_rc_prices, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @UINT32_C(i32 0)
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %7, %8
  %10 = load i32, i32* @RC_BIT_MODEL_TOTAL, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  %13 = xor i32 %6, %12
  %14 = load i32, i32* @RC_MOVE_REDUCING_BITS, align 4
  %15 = ashr i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %5, i64 %16
  %18 = load i32, i32* %17, align 4
  ret i32 %18
}

declare dso_local i32 @UINT32_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
