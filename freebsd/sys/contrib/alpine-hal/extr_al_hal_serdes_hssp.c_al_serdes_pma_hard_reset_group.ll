; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_pma_hard_reset_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_pma_hard_reset_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@AL_SRDS_REG_PAGE_4_COMMON = common dso_local global i32 0, align 4
@AL_SRDS_REG_TYPE_PMA = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_VAL_REGS = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_ASSERT = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_DEASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*, i64)* @al_serdes_pma_hard_reset_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_pma_hard_reset_group(%struct.al_serdes_grp_obj* %0, i64 %1) #0 {
  %3 = alloca %struct.al_serdes_grp_obj*, align 8
  %4 = alloca i64, align 8
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %9 = call i32 @al_serdes_group_rx_rate_change_sw_flow_dis(%struct.al_serdes_grp_obj* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %12 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %13 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %14 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_REG_NUM, align 4
  %15 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_MASK, align 4
  %16 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_VAL_REGS, align 4
  %17 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %19 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %20 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %21 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_REG_NUM, align 4
  %22 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_MASK, align 4
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_ASSERT, align 4
  br label %29

27:                                               ; preds = %10
  %28 = load i32, i32* @SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_DEASSERT, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %36 = call i32 @al_serdes_group_rx_rate_change_sw_flow_en_cond(%struct.al_serdes_grp_obj* %35)
  br label %37

37:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @al_serdes_group_rx_rate_change_sw_flow_dis(%struct.al_serdes_grp_obj*) #1

declare dso_local i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @al_serdes_group_rx_rate_change_sw_flow_en_cond(%struct.al_serdes_grp_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
