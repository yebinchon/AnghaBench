; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_wdt_disable_armada_xp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_wdt_disable_armada_xp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TIMER2_EN = common dso_local global i32 0, align 4
@CPU_TIMER2_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mv_wdt_disable_armada_xp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_wdt_disable_armada_xp() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @mv_get_timer_control()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @CPU_TIMER2_EN, align 4
  %4 = load i32, i32* @CPU_TIMER2_AUTO, align 4
  %5 = or i32 %3, %4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* %1, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @mv_set_timer_control(i32 %9)
  %11 = call i32 (...) @mv_wdt_disable_armada_38x_xp_helper()
  ret void
}

declare dso_local i32 @mv_get_timer_control(...) #1

declare dso_local i32 @mv_set_timer_control(i32) #1

declare dso_local i32 @mv_wdt_disable_armada_38x_xp_helper(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
