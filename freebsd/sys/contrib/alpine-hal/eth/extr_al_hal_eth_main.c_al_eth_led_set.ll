; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_led_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ETH_MAC_GEN_LED_CFG_SEL_DEFAULT_REG = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_SEL_LINK_ACTIVITY = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_SEL_MASK = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_SEL_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_BLINK_TIMER_MASK = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_BLINK_TIMER_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_BLINK_TIMER_VAL = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_ACT_TIMER_MASK = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_ACT_TIMER_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_GEN_LED_CFG_ACT_TIMER_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_led_set(%struct.al_hal_eth_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @ETH_MAC_GEN_LED_CFG_SEL_DEFAULT_REG, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ETH_MAC_GEN_LED_CFG_SEL_LINK_ACTIVITY, align 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ETH_MAC_GEN_LED_CFG_SEL_MASK, align 4
  %15 = load i32, i32* @ETH_MAC_GEN_LED_CFG_SEL_SHIFT, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @AL_REG_FIELD_SET(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ETH_MAC_GEN_LED_CFG_BLINK_TIMER_MASK, align 4
  %20 = load i32, i32* @ETH_MAC_GEN_LED_CFG_BLINK_TIMER_SHIFT, align 4
  %21 = load i32, i32* @ETH_MAC_GEN_LED_CFG_BLINK_TIMER_VAL, align 4
  %22 = call i32 @AL_REG_FIELD_SET(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ETH_MAC_GEN_LED_CFG_ACT_TIMER_MASK, align 4
  %25 = load i32, i32* @ETH_MAC_GEN_LED_CFG_ACT_TIMER_SHIFT, align 4
  %26 = load i32, i32* @ETH_MAC_GEN_LED_CFG_ACT_TIMER_VAL, align 4
  %27 = call i32 @AL_REG_FIELD_SET(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @al_reg_write32(i32* %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
