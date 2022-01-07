; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_wdt_enable_armada_38x_xp_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_wdt_enable_armada_38x_xp_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BRIDGE_IRQ_CAUSE = common dso_local global i32 0, align 4
@IRQ_TIMER_WD_CLR = common dso_local global i32 0, align 4
@WD_RSTOUTn_MASK = common dso_local global i32 0, align 4
@WD_GLOBAL_MASK = common dso_local global i32 0, align 4
@WD_CPU0_MASK = common dso_local global i32 0, align 4
@RSTOUTn_MASK_ARMV7 = common dso_local global i32 0, align 4
@RSTOUTn_MASK_WD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mv_wdt_enable_armada_38x_xp_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_wdt_enable_armada_38x_xp_helper() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @BRIDGE_IRQ_CAUSE, align 4
  %4 = call i32 @read_cpu_ctrl(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @IRQ_TIMER_WD_CLR, align 4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @BRIDGE_IRQ_CAUSE, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @write_cpu_ctrl(i32 %8, i32 %9)
  %11 = load i32, i32* @WD_RSTOUTn_MASK, align 4
  %12 = call i32 @read_cpu_mp_clocks(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @WD_GLOBAL_MASK, align 4
  %14 = load i32, i32* @WD_CPU0_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @WD_RSTOUTn_MASK, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @write_cpu_mp_clocks(i32 %18, i32 %19)
  %21 = load i32, i32* @RSTOUTn_MASK_ARMV7, align 4
  %22 = call i32 @read_cpu_misc(i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @RSTOUTn_MASK_WD, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %1, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @RSTOUTn_MASK_ARMV7, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @write_cpu_misc(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @read_cpu_ctrl(i32) #1

declare dso_local i32 @write_cpu_ctrl(i32, i32) #1

declare dso_local i32 @read_cpu_mp_clocks(i32) #1

declare dso_local i32 @write_cpu_mp_clocks(i32, i32) #1

declare dso_local i32 @read_cpu_misc(i32) #1

declare dso_local i32 @write_cpu_misc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
