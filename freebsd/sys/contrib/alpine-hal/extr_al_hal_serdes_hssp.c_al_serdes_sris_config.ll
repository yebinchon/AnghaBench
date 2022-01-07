; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_sris_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_sris_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }
%struct.al_serdes_sris_params = type { i32, i32, i32, i32, i32, i32, i32 }

@AL_SRDS_REG_PAGE_4_COMMON = common dso_local global i32 0, align 4
@AL_SRDS_REG_TYPE_PMA = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PPMDRIFTCOUNT1_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PPMDRIFTCOUNT2_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PPMDRIFTMAX1_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PPMDRIFTMAX2_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_SYNTHPPMDRIFTMAX1_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_SYNTHPPMDRIFTMAX2_REG_NUM = common dso_local global i32 0, align 4
@AL_SRDS_REG_TYPE_PCS = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_FULL_D2R1_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_FULL_D2R1_REG_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_FULL_D2R1_REG_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_FULL_PCIE_G3_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_FULL_PCIE_G3_REG_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_FULL_PCIE_G3_REG_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_D2R1_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_D2R1_REG_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_D2R1_REG_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_PCIE_G3_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_PCIE_G3_REG_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_PCIE_G3_REG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*, i8*)* @al_serdes_sris_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_sris_config(%struct.al_serdes_grp_obj* %0, i8* %1) #0 {
  %3 = alloca %struct.al_serdes_grp_obj*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.al_serdes_sris_params*, align 8
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.al_serdes_sris_params*
  store %struct.al_serdes_sris_params* %7, %struct.al_serdes_sris_params** %5, align 8
  %8 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %9 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %10 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %11 = load i32, i32* @SERDES_IREG_FLD_PPMDRIFTCOUNT1_REG_NUM, align 4
  %12 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %13 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AL_FIELD_MASK(i32 7, i32 0)
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 0
  %18 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %8, i32 %9, i32 %10, i32 %11, i32 %17)
  %19 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %20 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %21 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %22 = load i32, i32* @SERDES_IREG_FLD_PPMDRIFTCOUNT2_REG_NUM, align 4
  %23 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %24 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AL_FIELD_MASK(i32 15, i32 8)
  %27 = and i32 %25, %26
  %28 = ashr i32 %27, 8
  %29 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %19, i32 %20, i32 %21, i32 %22, i32 %28)
  %30 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %31 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %32 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %33 = load i32, i32* @SERDES_IREG_FLD_PPMDRIFTMAX1_REG_NUM, align 4
  %34 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %35 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AL_FIELD_MASK(i32 7, i32 0)
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 0
  %40 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %30, i32 %31, i32 %32, i32 %33, i32 %39)
  %41 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %42 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %43 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %44 = load i32, i32* @SERDES_IREG_FLD_PPMDRIFTMAX2_REG_NUM, align 4
  %45 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %46 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @AL_FIELD_MASK(i32 15, i32 8)
  %49 = and i32 %47, %48
  %50 = ashr i32 %49, 8
  %51 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %41, i32 %42, i32 %43, i32 %44, i32 %50)
  %52 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %53 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %54 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %55 = load i32, i32* @SERDES_IREG_FLD_SYNTHPPMDRIFTMAX1_REG_NUM, align 4
  %56 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %57 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @AL_FIELD_MASK(i32 7, i32 0)
  %60 = and i32 %58, %59
  %61 = ashr i32 %60, 0
  %62 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %52, i32 %53, i32 %54, i32 %55, i32 %61)
  %63 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %64 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %65 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %66 = load i32, i32* @SERDES_IREG_FLD_SYNTHPPMDRIFTMAX2_REG_NUM, align 4
  %67 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %68 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @AL_FIELD_MASK(i32 15, i32 8)
  %71 = and i32 %69, %70
  %72 = ashr i32 %71, 8
  %73 = call i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj* %63, i32 %64, i32 %65, i32 %66, i32 %72)
  %74 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %75 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %76 = load i32, i32* @AL_SRDS_REG_TYPE_PCS, align 4
  %77 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_FULL_D2R1_REG_NUM, align 4
  %78 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_FULL_D2R1_REG_MASK, align 4
  %79 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %80 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_FULL_D2R1_REG_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %83)
  %85 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %86 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %87 = load i32, i32* @AL_SRDS_REG_TYPE_PCS, align 4
  %88 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_FULL_PCIE_G3_REG_NUM, align 4
  %89 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_FULL_PCIE_G3_REG_MASK, align 4
  %90 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %91 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_FULL_PCIE_G3_REG_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %94)
  %96 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %97 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %98 = load i32, i32* @AL_SRDS_REG_TYPE_PCS, align 4
  %99 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_D2R1_REG_NUM, align 4
  %100 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_D2R1_REG_MASK, align 4
  %101 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %102 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_D2R1_REG_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %105)
  %107 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %3, align 8
  %108 = load i32, i32* @AL_SRDS_REG_PAGE_4_COMMON, align 4
  %109 = load i32, i32* @AL_SRDS_REG_TYPE_PCS, align 4
  %110 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_PCIE_G3_REG_NUM, align 4
  %111 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_PCIE_G3_REG_MASK, align 4
  %112 = load %struct.al_serdes_sris_params*, %struct.al_serdes_sris_params** %5, align 8
  %113 = getelementptr inbounds %struct.al_serdes_sris_params, %struct.al_serdes_sris_params* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SERDES_IREG_FLD_PCS_EBUF_RD_THRESHOLD_PCIE_G3_REG_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %116)
  ret void
}

declare dso_local i32 @al_serdes_reg_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32) #1

declare dso_local i32 @AL_FIELD_MASK(i32, i32) #1

declare dso_local i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
