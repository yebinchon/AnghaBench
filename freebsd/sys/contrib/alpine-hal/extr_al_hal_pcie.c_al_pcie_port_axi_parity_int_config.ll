; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_axi_parity_int_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_axi_parity_int_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@AL_PCIE_REV_ID_3 = common dso_local global i64 0, align 8
@PCIE_AXI_PARITY_EN_AXI_U4_RAM2P = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_CALC_EN_MSTR = common dso_local global i32 0, align 4
@PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_ERR_EN_RD = common dso_local global i32 0, align 4
@PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_CALC_EN_SLV = common dso_local global i32 0, align 4
@PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_ERR_EN_WR = common dso_local global i32 0, align 4
@PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_CALC_EN_MSTR = common dso_local global i32 0, align 4
@PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_ERR_EN_RD = common dso_local global i32 0, align 4
@PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_CALC_EN_SLV = common dso_local global i32 0, align 4
@PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_ERR_EN_WR = common dso_local global i32 0, align 4
@PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_DATA_PATH_RD = common dso_local global i32 0, align 4
@PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_ADDR_RD = common dso_local global i32 0, align 4
@PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_ADDR_WR = common dso_local global i32 0, align 4
@PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_DATA_WR = common dso_local global i32 0, align 4
@PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERROR_AXI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_pcie_port*, i64)* @al_pcie_port_axi_parity_int_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_pcie_port_axi_parity_int_config(%struct.al_pcie_port* %0, i64 %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.al_pcie_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 1
  %9 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  store %struct.al_pcie_regs* %9, %struct.al_pcie_regs** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %11 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @PCIE_AXI_PARITY_EN_AXI_U4_RAM2P, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %22 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @AL_TRUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  br label %32

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = call i32 @al_reg_write32(i32 %25, i32 %33)
  %35 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %36 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %32
  %41 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %42 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_CALC_EN_MSTR, align 4
  %47 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_ERR_EN_RD, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_CALC_EN_SLV, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_ERR_EN_WR, align 4
  %52 = or i32 %50, %51
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @AL_TRUE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %40
  %57 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_CALC_EN_MSTR, align 4
  %58 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_ERR_EN_RD, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_CALC_EN_SLV, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_ERR_EN_WR, align 4
  %63 = or i32 %61, %62
  br label %66

64:                                               ; preds = %40
  %65 = load i32, i32* @PCIE_REV3_AXI_CTRL_GLOBAL_PARITY_CALC_EN_SLV, align 4
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi i32 [ %63, %56 ], [ %65, %64 ]
  %68 = call i32 @al_reg_write32_masked(i32* %45, i32 %52, i32 %67)
  br label %98

69:                                               ; preds = %32
  %70 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %71 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_CALC_EN_MSTR, align 4
  %76 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_ERR_EN_RD, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_CALC_EN_SLV, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_ERR_EN_WR, align 4
  %81 = or i32 %79, %80
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @AL_TRUE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %69
  %86 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_CALC_EN_MSTR, align 4
  %87 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_ERR_EN_RD, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_CALC_EN_SLV, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_ERR_EN_WR, align 4
  %92 = or i32 %90, %91
  br label %95

93:                                               ; preds = %69
  %94 = load i32, i32* @PCIE_REV1_2_AXI_CTRL_GLOBAL_PARITY_CALC_EN_SLV, align 4
  br label %95

95:                                               ; preds = %93, %85
  %96 = phi i32 [ %92, %85 ], [ %94, %93 ]
  %97 = call i32 @al_reg_write32_masked(i32* %74, i32 %81, i32 %96)
  br label %98

98:                                               ; preds = %95, %66
  %99 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %100 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_DATA_PATH_RD, align 4
  %105 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_ADDR_RD, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_ADDR_WR, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_DATA_WR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERROR_AXI, align 4
  %112 = or i32 %110, %111
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* @AL_TRUE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %98
  %117 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_DATA_PATH_RD, align 4
  %118 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_ADDR_RD, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_ADDR_WR, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERR_OUT_DATA_WR, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @PCIE_AXI_INT_GRP_A_CAUSE_PARITY_ERROR_AXI, align 4
  %125 = or i32 %123, %124
  br label %127

126:                                              ; preds = %98
  br label %127

127:                                              ; preds = %126, %116
  %128 = phi i32 [ %125, %116 ], [ 0, %126 ]
  %129 = call i32 @al_reg_write32_masked(i32* %103, i32 %112, i32 %128)
  ret void
}

declare dso_local i32 @al_reg_write32(i32, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
