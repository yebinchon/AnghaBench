; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_bist_overrides_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_bist_overrides_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@AL_SRDS_REG_PAGE_4_COMMON = common dso_local global i32 0, align 4
@AL_SRDS_REG_TYPE_PMA = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNPCIEGEN3_LOCWREN_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_CMNPCSBIST_LOCWREN = common dso_local global i32 0, align 4
@AL_SRDS_NUM_LANES = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_LANEPCSPSTATE_LOCWREN_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_LB_LOCWREN = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCSRXBIST_LOCWREN = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCSTXBIST_LOCWREN_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCSTXBIST_LOCWREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*)* @al_serdes_bist_overrides_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_bist_overrides_disable(%struct.al_serdes_grp_obj* %0) #0 {
  %2 = alloca %struct.al_serdes_grp_obj*, align 8
  %3 = alloca i32, align 4
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %2, align 8
  %4 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %2, align 8
  %5 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %6 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %7 = load i32, i32* @SERDES_IREG_FLD_CMNPCIEGEN3_LOCWREN_REG_NUM, align 4
  %8 = load i32, i32* @SERDES_IREG_FLD_CMNPCSBIST_LOCWREN, align 4
  %9 = load i32, i32* @SERDES_IREG_FLD_CMNPCSBIST_LOCWREN, align 4
  %10 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @AL_SRDS_NUM_LANES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %19 = load i32, i32* @SERDES_IREG_FLD_LANEPCSPSTATE_LOCWREN_REG_NUM, align 4
  %20 = load i32, i32* @SERDES_IREG_FLD_LB_LOCWREN, align 4
  %21 = load i32, i32* @SERDES_IREG_FLD_PCSRXBIST_LOCWREN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SERDES_IREG_FLD_LB_LOCWREN, align 4
  %24 = load i32, i32* @SERDES_IREG_FLD_PCSRXBIST_LOCWREN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %16, i32 %17, i32 %18, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %30 = load i32, i32* @SERDES_IREG_FLD_PCSTXBIST_LOCWREN_REG_NUM, align 4
  %31 = load i32, i32* @SERDES_IREG_FLD_PCSTXBIST_LOCWREN, align 4
  %32 = load i32, i32* @SERDES_IREG_FLD_PCSTXBIST_LOCWREN, align 4
  %33 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %11

37:                                               ; preds = %11
  ret void
}

declare dso_local i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
