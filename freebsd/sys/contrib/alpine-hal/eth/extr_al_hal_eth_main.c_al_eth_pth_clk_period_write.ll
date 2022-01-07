; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_pth_clk_period_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_pth_clk_period_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EC_PTH_CLOCK_PERIOD_LSB_VAL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_pth_clk_period_write(%struct.al_hal_eth_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @AL_BIT_MASK(i32 18)
  %8 = and i32 %6, %7
  %9 = load i32, i32* @EC_PTH_CLOCK_PERIOD_LSB_VAL_SHIFT, align 4
  %10 = shl i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @al_reg_write32(i32* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @al_reg_write32(i32* %24, i32 %25)
  ret i32 0
}

declare dso_local i32 @AL_BIT_MASK(i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
