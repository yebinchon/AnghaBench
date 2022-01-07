; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_rx_advanced_params_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_hssp.c_al_serdes_rx_advanced_params_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }
%struct.al_serdes_adv_rx_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AL_SRDS_REG_TYPE_PMA = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_RX_DRV_OVERRIDE_EN_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_FLD_RX_DRV_OVERRIDE_EN = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_1_DCGAIN_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_1_DCGAIN_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_1_DFEPSTAP3DB_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_1_DFEPSTAP3DB_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_1_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_2_DFEPSTAPGAIN_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_2_DFEPSTAPGAIN_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_2_DFETAP1GAIN_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_2_DFETAP1GAIN_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_2_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_3_DFETAP2GAIN_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_3_DFETAP2GAIN_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_3_DFETAP3GAIN_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_3_DFETAP3GAIN_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_3_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_4_DFETAP4GAIN_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_4_DFETAP4GAIN_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_4_LOFREQAGCGAIN_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_4_LOFREQAGCGAIN_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_4_REG_NUM = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_5_PRECAL_CODE_SEL_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_5_PRECAL_CODE_SEL_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_5_HIFREQAGCCAP_MASK = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_5_HIFREQAGCCAP_SHIFT = common dso_local global i32 0, align 4
@SERDES_IREG_RX_CALEQ_5_REG_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_serdes_grp_obj*, i32, i8*)* @al_serdes_rx_advanced_params_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_serdes_rx_advanced_params_set(%struct.al_serdes_grp_obj* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.al_serdes_grp_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.al_serdes_adv_rx_params*, align 8
  %8 = alloca i64, align 8
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.al_serdes_adv_rx_params*
  store %struct.al_serdes_adv_rx_params* %10, %struct.al_serdes_adv_rx_params** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %12 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %19 = load i32, i32* @SERDES_IREG_FLD_RX_DRV_OVERRIDE_EN_REG_NUM, align 4
  %20 = load i32, i32* @SERDES_IREG_FLD_RX_DRV_OVERRIDE_EN, align 4
  %21 = load i32, i32* @SERDES_IREG_FLD_RX_DRV_OVERRIDE_EN, align 4
  %22 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  br label %130

23:                                               ; preds = %3
  %24 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %27 = load i32, i32* @SERDES_IREG_FLD_RX_DRV_OVERRIDE_EN_REG_NUM, align 4
  %28 = load i32, i32* @SERDES_IREG_FLD_RX_DRV_OVERRIDE_EN, align 4
  %29 = call i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 0)
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* @SERDES_IREG_RX_CALEQ_1_DCGAIN_MASK, align 4
  %32 = load i32, i32* @SERDES_IREG_RX_CALEQ_1_DCGAIN_SHIFT, align 4
  %33 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %34 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @AL_REG_FIELD_SET(i64 %30, i32 %31, i32 %32, i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @SERDES_IREG_RX_CALEQ_1_DFEPSTAP3DB_MASK, align 4
  %39 = load i32, i32* @SERDES_IREG_RX_CALEQ_1_DFEPSTAP3DB_SHIFT, align 4
  %40 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %41 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @AL_REG_FIELD_SET(i64 %37, i32 %38, i32 %39, i32 %42)
  %44 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %47 = load i32, i32* @SERDES_IREG_RX_CALEQ_1_REG_NUM, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @al_serdes_grp_reg_write(%struct.al_serdes_grp_obj* %44, i32 %45, i32 %46, i32 %47, i64 %48)
  store i64 0, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @SERDES_IREG_RX_CALEQ_2_DFEPSTAPGAIN_MASK, align 4
  %52 = load i32, i32* @SERDES_IREG_RX_CALEQ_2_DFEPSTAPGAIN_SHIFT, align 4
  %53 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %54 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @AL_REG_FIELD_SET(i64 %50, i32 %51, i32 %52, i32 %55)
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @SERDES_IREG_RX_CALEQ_2_DFETAP1GAIN_MASK, align 4
  %59 = load i32, i32* @SERDES_IREG_RX_CALEQ_2_DFETAP1GAIN_SHIFT, align 4
  %60 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %61 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @AL_REG_FIELD_SET(i64 %57, i32 %58, i32 %59, i32 %62)
  %64 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %67 = load i32, i32* @SERDES_IREG_RX_CALEQ_2_REG_NUM, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @al_serdes_grp_reg_write(%struct.al_serdes_grp_obj* %64, i32 %65, i32 %66, i32 %67, i64 %68)
  store i64 0, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @SERDES_IREG_RX_CALEQ_3_DFETAP2GAIN_MASK, align 4
  %72 = load i32, i32* @SERDES_IREG_RX_CALEQ_3_DFETAP2GAIN_SHIFT, align 4
  %73 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %74 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @AL_REG_FIELD_SET(i64 %70, i32 %71, i32 %72, i32 %75)
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* @SERDES_IREG_RX_CALEQ_3_DFETAP3GAIN_MASK, align 4
  %79 = load i32, i32* @SERDES_IREG_RX_CALEQ_3_DFETAP3GAIN_SHIFT, align 4
  %80 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %81 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @AL_REG_FIELD_SET(i64 %77, i32 %78, i32 %79, i32 %82)
  %84 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %87 = load i32, i32* @SERDES_IREG_RX_CALEQ_3_REG_NUM, align 4
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @al_serdes_grp_reg_write(%struct.al_serdes_grp_obj* %84, i32 %85, i32 %86, i32 %87, i64 %88)
  store i64 0, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* @SERDES_IREG_RX_CALEQ_4_DFETAP4GAIN_MASK, align 4
  %92 = load i32, i32* @SERDES_IREG_RX_CALEQ_4_DFETAP4GAIN_SHIFT, align 4
  %93 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %94 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @AL_REG_FIELD_SET(i64 %90, i32 %91, i32 %92, i32 %95)
  %97 = load i64, i64* %8, align 8
  %98 = load i32, i32* @SERDES_IREG_RX_CALEQ_4_LOFREQAGCGAIN_MASK, align 4
  %99 = load i32, i32* @SERDES_IREG_RX_CALEQ_4_LOFREQAGCGAIN_SHIFT, align 4
  %100 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %101 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @AL_REG_FIELD_SET(i64 %97, i32 %98, i32 %99, i32 %102)
  %104 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %107 = load i32, i32* @SERDES_IREG_RX_CALEQ_4_REG_NUM, align 4
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @al_serdes_grp_reg_write(%struct.al_serdes_grp_obj* %104, i32 %105, i32 %106, i32 %107, i64 %108)
  store i64 0, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i32, i32* @SERDES_IREG_RX_CALEQ_5_PRECAL_CODE_SEL_MASK, align 4
  %112 = load i32, i32* @SERDES_IREG_RX_CALEQ_5_PRECAL_CODE_SEL_SHIFT, align 4
  %113 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %114 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @AL_REG_FIELD_SET(i64 %110, i32 %111, i32 %112, i32 %115)
  %117 = load i64, i64* %8, align 8
  %118 = load i32, i32* @SERDES_IREG_RX_CALEQ_5_HIFREQAGCCAP_MASK, align 4
  %119 = load i32, i32* @SERDES_IREG_RX_CALEQ_5_HIFREQAGCCAP_SHIFT, align 4
  %120 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %7, align 8
  %121 = getelementptr inbounds %struct.al_serdes_adv_rx_params, %struct.al_serdes_adv_rx_params* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @AL_REG_FIELD_SET(i64 %117, i32 %118, i32 %119, i32 %122)
  %124 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @AL_SRDS_REG_TYPE_PMA, align 4
  %127 = load i32, i32* @SERDES_IREG_RX_CALEQ_5_REG_NUM, align 4
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @al_serdes_grp_reg_write(%struct.al_serdes_grp_obj* %124, i32 %125, i32 %126, i32 %127, i64 %128)
  br label %130

130:                                              ; preds = %23, %15
  ret void
}

declare dso_local i32 @al_serdes_grp_reg_masked_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AL_REG_FIELD_SET(i64, i32, i32, i32) #1

declare dso_local i32 @al_serdes_grp_reg_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
