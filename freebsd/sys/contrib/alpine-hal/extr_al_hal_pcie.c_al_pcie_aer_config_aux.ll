; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_aer_config_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_aer_config_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.al_pcie_core_aer_regs* }
%struct.al_pcie_core_aer_regs = type { i32, i32, i32, i32, i32 }
%struct.al_pcie_aer_params = type { i32, i32, i32, i64, i64 }

@PCIE_AER_CAP_ID_MASK = common dso_local global i32 0, align 4
@PCIE_AER_CAP_ID_SHIFT = common dso_local global i32 0, align 4
@PCIE_AER_CAP_ID_VAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCIE_AER_CAP_VER_MASK = common dso_local global i32 0, align 4
@PCIE_AER_CAP_VER_SHIFT = common dso_local global i32 0, align 4
@PCIE_AER_CAP_VER_VAL = common dso_local global i32 0, align 4
@PCIE_AER_CTRL_STAT_ECRC_GEN_EN = common dso_local global i32 0, align 4
@PCIE_AER_CTRL_STAT_ECRC_CHK_EN = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@PCIE_PORT_DEV_CTRL_STATUS_CORR_ERR_REPORT_EN = common dso_local global i32 0, align 4
@PCIE_PORT_DEV_CTRL_STATUS_NON_FTL_ERR_REPORT_EN = common dso_local global i32 0, align 4
@PCIE_PORT_DEV_CTRL_STATUS_FTL_ERR_REPORT_EN = common dso_local global i32 0, align 4
@PCIE_PORT_DEV_CTRL_STATUS_UNSUP_REQ_REPORT_EN = common dso_local global i32 0, align 4
@AL_PCIE_AER_UNCORR_UNSUPRT_REQ_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_pcie_port*, i32, %struct.al_pcie_aer_params*)* @al_pcie_aer_config_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_pcie_aer_config_aux(%struct.al_pcie_port* %0, i32 %1, %struct.al_pcie_aer_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_pcie_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.al_pcie_aer_params*, align 8
  %8 = alloca %struct.al_pcie_regs*, align 8
  %9 = alloca %struct.al_pcie_core_aer_regs*, align 8
  %10 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.al_pcie_aer_params* %2, %struct.al_pcie_aer_params** %7, align 8
  %11 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %12 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %11, i32 0, i32 0
  %13 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %12, align 8
  store %struct.al_pcie_regs* %13, %struct.al_pcie_regs** %8, align 8
  %14 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  %15 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %20, align 8
  store %struct.al_pcie_core_aer_regs* %21, %struct.al_pcie_core_aer_regs** %9, align 8
  %22 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %9, align 8
  %23 = getelementptr inbounds %struct.al_pcie_core_aer_regs, %struct.al_pcie_core_aer_regs* %22, i32 0, i32 4
  %24 = call i32 @al_reg_read32(i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @PCIE_AER_CAP_ID_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PCIE_AER_CAP_ID_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* @PCIE_AER_CAP_ID_VAL, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %173

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PCIE_AER_CAP_VER_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @PCIE_AER_CAP_VER_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32, i32* @PCIE_AER_CAP_VER_VAL, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %173

46:                                               ; preds = %35
  %47 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %9, align 8
  %48 = getelementptr inbounds %struct.al_pcie_core_aer_regs, %struct.al_pcie_core_aer_regs* %47, i32 0, i32 3
  %49 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %50 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %51, -1
  %53 = call i32 @al_reg_write32(i32* %48, i32 %52)
  %54 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %9, align 8
  %55 = getelementptr inbounds %struct.al_pcie_core_aer_regs, %struct.al_pcie_core_aer_regs* %54, i32 0, i32 2
  %56 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %57 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %61 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = xor i32 %62, -1
  %64 = or i32 %59, %63
  %65 = call i32 @al_reg_write32(i32* %55, i32 %64)
  %66 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %9, align 8
  %67 = getelementptr inbounds %struct.al_pcie_core_aer_regs, %struct.al_pcie_core_aer_regs* %66, i32 0, i32 1
  %68 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %69 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @al_reg_write32(i32* %67, i32 %70)
  %72 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %9, align 8
  %73 = getelementptr inbounds %struct.al_pcie_core_aer_regs, %struct.al_pcie_core_aer_regs* %72, i32 0, i32 0
  %74 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %75 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %46
  %79 = load i32, i32* @PCIE_AER_CTRL_STAT_ECRC_GEN_EN, align 4
  br label %81

80:                                               ; preds = %46
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %84 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @PCIE_AER_CTRL_STAT_ECRC_CHK_EN, align 4
  br label %90

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = or i32 %82, %91
  %93 = call i32 @al_reg_write32(i32* %73, i32 %92)
  %94 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %95 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AL_TRUE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.al_pcie_port*, %struct.al_pcie_port** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @al_pcie_ecrc_gen_ob_atu_enable(%struct.al_pcie_port* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %90
  %104 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  %105 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_CORR_ERR_REPORT_EN, align 4
  %113 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_NON_FTL_ERR_REPORT_EN, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_FTL_ERR_REPORT_EN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_UNSUP_REQ_REPORT_EN, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %120 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %103
  %124 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_CORR_ERR_REPORT_EN, align 4
  br label %126

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %129 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_NON_FTL_ERR_REPORT_EN, align 4
  br label %135

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  %137 = or i32 %127, %136
  %138 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %139 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_FTL_ERR_REPORT_EN, align 4
  br label %145

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = or i32 %137, %146
  %148 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %149 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @AL_PCIE_AER_UNCORR_UNSUPRT_REQ_ERR, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_UNSUP_REQ_REPORT_EN, align 4
  br label %157

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ]
  %159 = or i32 %147, %158
  %160 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %7, align 8
  %161 = getelementptr inbounds %struct.al_pcie_aer_params, %struct.al_pcie_aer_params* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @AL_PCIE_AER_UNCORR_UNSUPRT_REQ_ERR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_UNSUP_REQ_REPORT_EN, align 4
  br label %169

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i32 [ %167, %166 ], [ 0, %168 ]
  %171 = or i32 %159, %170
  %172 = call i32 @al_reg_write32_masked(i32 %111, i32 %118, i32 %171)
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %169, %43, %32
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_pcie_ecrc_gen_ob_atu_enable(%struct.al_pcie_port*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
