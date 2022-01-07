; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_pma_hard_reset_lane.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_pma_hard_reset_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@AL_SRDS_REG_TYPE_PMA = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_VAL_REGS = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_VAL_ASSERT = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_VAL_DEASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*, i32, i64)* @al_serdes_pma_hard_reset_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_pma_hard_reset_lane(%struct.al_serdes_grp_obj* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.al_serdes_grp_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @_al_serdes_lane_rx_rate_change_sw_flow_dis(%struct.al_serdes_grp_obj* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %17 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_REG_NUM, align 4
  %18 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_MASK, align 4
  %19 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_VAL_REGS, align 4
  %20 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %24 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_REG_NUM, align 4
  %25 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_MASK, align 4
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_VAL_ASSERT, align 4
  br label %32

30:                                               ; preds = %13
  %31 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_VAL_DEASSERT, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @_al_serdes_lane_rx_rate_change_sw_flow_en_cond(%struct.al_serdes_grp_obj* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @_al_serdes_lane_rx_rate_change_sw_flow_dis(%struct.al_serdes_grp_obj*, i32) #1

declare dso_local i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_al_serdes_lane_rx_rate_change_sw_flow_en_cond(%struct.al_serdes_grp_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
