; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_lane_pcie_rate_override_is_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_lane_pcie_rate_override_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@AL_SRDS_REG_TYPE_PCS = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_serdes_grp_obj*, i32)* @al_serdes_lane_pcie_rate_override_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_serdes_lane_pcie_rate_override_is_enabled(%struct.al_serdes_grp_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.al_serdes_grp_obj*, align 8
  %4 = alloca i32, align 4
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AL_SRDS_REG_TYPE_PCS, align 4
  %8 = load i32, i32* @SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA_REG_NUM, align 4
  %9 = call i32 @al_serdes_grp_reg_read(%struct.al_serdes_grp_obj* %5, i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @AL_TRUE, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @AL_FALSE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

declare dso_local i32 @al_serdes_grp_reg_read(%struct.al_serdes_grp_obj*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
