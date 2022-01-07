; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_ts_val_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_tx_ts_val_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AL_ETH_PTH_TX_SAMPLES_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_tx_ts_val_get(%struct.al_hal_eth_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.al_hal_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @AL_ETH_PTH_TX_SAMPLES_NUM, align 4
  %9 = icmp slt i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @al_assert(i32 %10)
  %12 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @AL_ETH_IS_1G_MAC(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 7
  %20 = zext i1 %19 to i32
  %21 = call i32 @al_assert(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @al_assert(i32 %24)
  br label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @al_reg_read32(i32* %35)
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i64 @AL_ETH_IS_1G_MAC(i32) #1

declare dso_local i32 @al_reg_read32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
