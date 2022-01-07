; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_k_expl.h_k_hexpl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_k_expl.h_k_hexpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (x86_fp80, x86_fp80*, x86_fp80*)* @k_hexpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k_hexpl(x86_fp80 %0, x86_fp80* %1, x86_fp80* %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80*, align 8
  %6 = alloca x86_fp80*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80* %1, x86_fp80** %5, align 8
  store x86_fp80* %2, x86_fp80** %6, align 8
  %9 = load x86_fp80, x86_fp80* %4, align 16
  %10 = load x86_fp80*, x86_fp80** %5, align 8
  %11 = load x86_fp80*, x86_fp80** %6, align 8
  %12 = call i32 @__k_expl(x86_fp80 %9, x86_fp80* %10, x86_fp80* %11, i32* %8)
  %13 = load float, float* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 1
  %16 = shl i32 %15, 23
  %17 = add nsw i32 1065353216, %16
  %18 = call i32 @SET_FLOAT_WORD(float %13, i32 %17)
  %19 = load float, float* %7, align 4
  %20 = fpext float %19 to x86_fp80
  %21 = load x86_fp80*, x86_fp80** %5, align 8
  %22 = load x86_fp80, x86_fp80* %21, align 16
  %23 = fmul x86_fp80 %22, %20
  store x86_fp80 %23, x86_fp80* %21, align 16
  %24 = load float, float* %7, align 4
  %25 = fpext float %24 to x86_fp80
  %26 = load x86_fp80*, x86_fp80** %6, align 8
  %27 = load x86_fp80, x86_fp80* %26, align 16
  %28 = fmul x86_fp80 %27, %25
  store x86_fp80 %28, x86_fp80* %26, align 16
  ret void
}

declare dso_local i32 @__k_expl(x86_fp80, x86_fp80*, x86_fp80*, i32*) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
