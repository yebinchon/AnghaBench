; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_wdog.c_rk30_wd_watchdog_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_wdog.c_rk30_wd_watchdog_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@RK30_WDT_BASE = common dso_local global i32 0, align 4
@RK30_WDT_PSIZE = common dso_local global i32 0, align 4
@WDOG_TORR = common dso_local global i32 0, align 4
@WDOG_CTRL = common dso_local global i32 0, align 4
@WDOG_CTRL_EN = common dso_local global i32 0, align 4
@WDOG_CTRL_RSP_MODE = common dso_local global i32 0, align 4
@WDOG_CTRL_RST_PULSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk30_wd_watchdog_reset() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @fdtbus_bs_tag, align 4
  %3 = load i32, i32* @RK30_WDT_BASE, align 4
  %4 = load i32, i32* @RK30_WDT_PSIZE, align 4
  %5 = call i32 @bus_space_map(i32 %2, i32 %3, i32 %4, i32 0, i32* %1)
  %6 = load i32, i32* @fdtbus_bs_tag, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @WDOG_TORR, align 4
  %9 = call i32 @bus_space_write_4(i32 %6, i32 %7, i32 %8, i32 0)
  %10 = load i32, i32* @fdtbus_bs_tag, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @WDOG_CTRL, align 4
  %13 = load i32, i32* @WDOG_CTRL_EN, align 4
  %14 = load i32, i32* @WDOG_CTRL_RSP_MODE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WDOG_CTRL_RST_PULSE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @bus_space_write_4(i32 %10, i32 %11, i32 %12, i32 %17)
  br label %19

19:                                               ; preds = %0, %19
  br label %19
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
