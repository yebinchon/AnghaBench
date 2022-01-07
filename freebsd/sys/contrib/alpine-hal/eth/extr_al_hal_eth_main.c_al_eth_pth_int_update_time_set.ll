; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_pth_int_update_time_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_pth_int_update_time_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.al_eth_pth_time = type { i32, i32 }

@EC_PTH_INT_UPDATE_SUBSECONDS_LSB_VAL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_pth_int_update_time_set(%struct.al_hal_eth_adapter* %0, %struct.al_eth_pth_time* %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca %struct.al_eth_pth_time*, align 8
  %5 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store %struct.al_eth_pth_time* %1, %struct.al_eth_pth_time** %4, align 8
  %6 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load %struct.al_eth_pth_time*, %struct.al_eth_pth_time** %4, align 8
  %12 = getelementptr inbounds %struct.al_eth_pth_time, %struct.al_eth_pth_time* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @al_reg_write32(i32* %10, i32 %13)
  %15 = load %struct.al_eth_pth_time*, %struct.al_eth_pth_time** %4, align 8
  %16 = getelementptr inbounds %struct.al_eth_pth_time, %struct.al_eth_pth_time* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @AL_BIT_MASK(i32 18)
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EC_PTH_INT_UPDATE_SUBSECONDS_LSB_VAL_SHIFT, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @al_reg_write32(i32* %27, i32 %28)
  %30 = load %struct.al_eth_pth_time*, %struct.al_eth_pth_time** %4, align 8
  %31 = getelementptr inbounds %struct.al_eth_pth_time, %struct.al_eth_pth_time* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 18
  store i32 %33, i32* %5, align 4
  %34 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @al_reg_write32(i32* %38, i32 %39)
  ret i32 0
}

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @AL_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
