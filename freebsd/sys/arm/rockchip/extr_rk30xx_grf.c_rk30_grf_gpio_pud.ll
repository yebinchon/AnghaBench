; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_grf.c_rk30_grf_gpio_pud.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_grf.c_rk30_grf_gpio_pud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRF_GPIO0B_PULL = common dso_local global i32 0, align 4
@rk30_grf_sc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk30_grf_gpio_pud(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GRF_GPIO0B_PULL, align 4
  %9 = sub nsw i32 %8, 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 16
  %12 = add nsw i32 %9, %11
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 8
  %15 = mul nsw i32 %14, 4
  %16 = add nsw i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = srem i32 %17, 8
  %19 = sub nsw i32 7, %18
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @rk30_grf_sc, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 16, %23
  %25 = shl i32 3, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  %30 = call i32 @grf_write_4(i32 %21, i32 %22, i32 %29)
  ret void
}

declare dso_local i32 @grf_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
