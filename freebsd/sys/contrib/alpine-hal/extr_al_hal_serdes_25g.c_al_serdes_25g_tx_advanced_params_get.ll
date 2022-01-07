; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_25g.c_al_serdes_25g_tx_advanced_params_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_25g.c_al_serdes_25g_tx_advanced_params_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }
%struct.al_serdes_adv_tx_params = type { i32, i32, i32 }

@SERDES_25G_LANE_DRV_TXEQ_CTRL3_ADDR = common dso_local global i32 0, align 4
@SERDES_25G_LANE_DRV_TXEQ_CTRL3_TXEQ_CM1_MASK = common dso_local global i32 0, align 4
@SERDES_25G_LANE_DRV_TXEQ_CTRL3_TXEQ_CM1_SHIFT = common dso_local global i32 0, align 4
@SERDES_25G_LANE_DRV_TXEQ_CTRL1_ADDR = common dso_local global i32 0, align 4
@SERDES_25G_LANE_DRV_TXEQ_CTRL1_TXEQ_C1_MASK = common dso_local global i32 0, align 4
@SERDES_25G_LANE_DRV_TXEQ_CTRL1_TXEQ_C1_SHIFT = common dso_local global i32 0, align 4
@SERDES_25G_LANE_DRV_TXEQ_CTRL5_ADDR = common dso_local global i32 0, align 4
@SERDES_25G_LANE_DRV_TXEQ_CTRL5_DRV_SWING_MASK = common dso_local global i32 0, align 4
@SERDES_25G_LANE_DRV_TXEQ_CTRL5_DRV_SWING_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*, i32, i8*)* @al_serdes_25g_tx_advanced_params_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_25g_tx_advanced_params_get(%struct.al_serdes_grp_obj* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.al_serdes_grp_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.al_serdes_adv_tx_params*, align 8
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.al_serdes_adv_tx_params*
  store %struct.al_serdes_adv_tx_params* %9, %struct.al_serdes_adv_tx_params** %7, align 8
  %10 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL3_ADDR, align 4
  %13 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL3_TXEQ_CM1_MASK, align 4
  %14 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL3_TXEQ_CM1_SHIFT, align 4
  %15 = load %struct.al_serdes_adv_tx_params*, %struct.al_serdes_adv_tx_params** %7, align 8
  %16 = getelementptr inbounds %struct.al_serdes_adv_tx_params, %struct.al_serdes_adv_tx_params* %15, i32 0, i32 2
  %17 = call i32 @al_serdes_25g_reg_masked_read(%struct.al_serdes_grp_obj* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32* %16)
  %18 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL1_ADDR, align 4
  %21 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL1_TXEQ_C1_MASK, align 4
  %22 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL1_TXEQ_C1_SHIFT, align 4
  %23 = load %struct.al_serdes_adv_tx_params*, %struct.al_serdes_adv_tx_params** %7, align 8
  %24 = getelementptr inbounds %struct.al_serdes_adv_tx_params, %struct.al_serdes_adv_tx_params* %23, i32 0, i32 1
  %25 = call i32 @al_serdes_25g_reg_masked_read(%struct.al_serdes_grp_obj* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32* %24)
  %26 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL5_ADDR, align 4
  %29 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL5_DRV_SWING_MASK, align 4
  %30 = load i32, i32* @SERDES_25G_LANE_DRV_TXEQ_CTRL5_DRV_SWING_SHIFT, align 4
  %31 = load %struct.al_serdes_adv_tx_params*, %struct.al_serdes_adv_tx_params** %7, align 8
  %32 = getelementptr inbounds %struct.al_serdes_adv_tx_params, %struct.al_serdes_adv_tx_params* %31, i32 0, i32 0
  %33 = call i32 @al_serdes_25g_reg_masked_read(%struct.al_serdes_grp_obj* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32* %32)
  ret void
}

declare dso_local i32 @al_serdes_25g_reg_masked_read(%struct.al_serdes_grp_obj*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
