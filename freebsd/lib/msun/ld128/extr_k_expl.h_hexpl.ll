; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_k_expl.h_hexpl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_k_expl.h_hexpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80)* @hexpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @hexpl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %2, align 16
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %5, align 16
  %7 = load x86_fp80, x86_fp80* %2, align 16
  %8 = call i32 @__k_expl(x86_fp80 %7, x86_fp80* %3, x86_fp80* %4, i32* %6)
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = load i64, i64* @BIAS, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = sub nsw i64 %13, 2
  %15 = call i32 @SET_LDBL_EXPSIGN(x86_fp80 %9, i64 %14)
  %16 = load x86_fp80, x86_fp80* %4, align 16
  %17 = load x86_fp80, x86_fp80* %3, align 16
  %18 = fadd x86_fp80 %16, %17
  %19 = fmul x86_fp80 %18, 0xK40008000000000000000
  %20 = load x86_fp80, x86_fp80* %5, align 16
  %21 = fmul x86_fp80 %19, %20
  ret x86_fp80 %21
}

declare dso_local i32 @__k_expl(x86_fp80, x86_fp80*, x86_fp80*, i32*) #1

declare dso_local i32 @SET_LDBL_EXPSIGN(x86_fp80, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
