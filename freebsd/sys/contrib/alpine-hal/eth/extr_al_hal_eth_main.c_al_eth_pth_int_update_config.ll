; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_pth_int_update_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_main.c_al_eth_pth_int_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.al_eth_pth_int_update_params = type { i64, i64, i32 }

@AL_FALSE = common dso_local global i64 0, align 8
@EC_PTH_INT_UPDATE_CTRL_INT_TRIG_EN = common dso_local global i32 0, align 4
@EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_MASK = common dso_local global i32 0, align 4
@EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_SHIFT = common dso_local global i32 0, align 4
@AL_ETH_PTH_INT_TRIG_REG_WRITE = common dso_local global i64 0, align 8
@EC_PTH_INT_UPDATE_CTRL_UPDATE_TRIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_pth_int_update_config(%struct.al_hal_eth_adapter* %0, %struct.al_eth_pth_int_update_params* %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca %struct.al_eth_pth_int_update_params*, align 8
  %5 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store %struct.al_eth_pth_int_update_params* %1, %struct.al_eth_pth_int_update_params** %4, align 8
  %6 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @al_reg_read32(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.al_eth_pth_int_update_params*, %struct.al_eth_pth_int_update_params** %4, align 8
  %13 = getelementptr inbounds %struct.al_eth_pth_int_update_params, %struct.al_eth_pth_int_update_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AL_FALSE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @EC_PTH_INT_UPDATE_CTRL_INT_TRIG_EN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load i32, i32* @EC_PTH_INT_UPDATE_CTRL_INT_TRIG_EN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_MASK, align 4
  %28 = load i32, i32* @EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_SHIFT, align 4
  %29 = load %struct.al_eth_pth_int_update_params*, %struct.al_eth_pth_int_update_params** %4, align 8
  %30 = getelementptr inbounds %struct.al_eth_pth_int_update_params, %struct.al_eth_pth_int_update_params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @AL_REG_FIELD_SET(i32 %26, i32 %27, i32 %28, i32 %31)
  %33 = load %struct.al_eth_pth_int_update_params*, %struct.al_eth_pth_int_update_params** %4, align 8
  %34 = getelementptr inbounds %struct.al_eth_pth_int_update_params, %struct.al_eth_pth_int_update_params* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AL_ETH_PTH_INT_TRIG_REG_WRITE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load i32, i32* @EC_PTH_INT_UPDATE_CTRL_UPDATE_TRIG, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %47

42:                                               ; preds = %22
  %43 = load i32, i32* @EC_PTH_INT_UPDATE_CTRL_UPDATE_TRIG, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @al_reg_write32(i32* %53, i32 %54)
  ret i32 0
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @AL_REG_FIELD_SET(i32, i32, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
