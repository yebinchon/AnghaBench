; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_wdog.c_bcmwd_watchdog_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_wdog.c_bcmwd_watchdog_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcmwd_lsc = common dso_local global i32* null, align 8
@BCM2835_WDOG_REG = common dso_local global i32 0, align 4
@BCM2835_PASSWORD = common dso_local global i32 0, align 4
@BCM2835_PASSWORD_SHIFT = common dso_local global i32 0, align 4
@BCM2835_RSTC_REG = common dso_local global i32 0, align 4
@BCM2835_RSTC_WRCFG_CLR = common dso_local global i32 0, align 4
@BCM2835_RSTC_WRCFG_FULL_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcmwd_watchdog_reset() #0 {
  %1 = load i32*, i32** @bcmwd_lsc, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %26

4:                                                ; preds = %0
  %5 = load i32*, i32** @bcmwd_lsc, align 8
  %6 = load i32, i32* @BCM2835_WDOG_REG, align 4
  %7 = load i32, i32* @BCM2835_PASSWORD, align 4
  %8 = load i32, i32* @BCM2835_PASSWORD_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = or i32 %9, 10
  %11 = call i32 @WRITE(i32* %5, i32 %6, i32 %10)
  %12 = load i32*, i32** @bcmwd_lsc, align 8
  %13 = load i32, i32* @BCM2835_RSTC_REG, align 4
  %14 = load i32*, i32** @bcmwd_lsc, align 8
  %15 = load i32, i32* @BCM2835_RSTC_REG, align 4
  %16 = call i32 @READ(i32* %14, i32 %15)
  %17 = load i32, i32* @BCM2835_RSTC_WRCFG_CLR, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @BCM2835_PASSWORD, align 4
  %20 = load i32, i32* @BCM2835_PASSWORD_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* @BCM2835_RSTC_WRCFG_FULL_RESET, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @WRITE(i32* %12, i32 %13, i32 %24)
  br label %26

26:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @WRITE(i32*, i32, i32) #1

declare dso_local i32 @READ(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
