; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_pmu.c_rk30_pmu_gpio_pud.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_pmu.c_rk30_pmu_gpio_pud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMU_GPIO0A_PULL = common dso_local global i32 0, align 4
@rk30_pmu_sc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk30_pmu_gpio_pud(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PMU_GPIO0A_PULL, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sdiv i32 %7, 8
  %9 = mul nsw i32 %8, 4
  %10 = add nsw i32 %6, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = srem i32 %11, 8
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @rk30_pmu_sc, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 16, %16
  %18 = shl i32 3, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = call i32 @pmu_write_4(i32 %14, i32 %15, i32 %22)
  ret void
}

declare dso_local i32 @pmu_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
