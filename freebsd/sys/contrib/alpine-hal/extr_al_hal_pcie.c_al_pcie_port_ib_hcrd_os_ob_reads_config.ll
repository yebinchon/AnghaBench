; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_ib_hcrd_os_ob_reads_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_ib_hcrd_os_ob_reads_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64, %struct.TYPE_8__, i32, %struct.al_pcie_regs* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.al_pcie_regs = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.al_pcie_ib_hcrd_os_ob_reads_config = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"PCIe %d: already enabled, cannot configure IB credits and OB OS reads\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_PCIE_REV_ID_3 = common dso_local global i64 0, align 8
@AL_PCIE_REV3_IB_HCRD_SUM = common dso_local global i32 0, align 4
@PCIE_AXI_REV3_INIT_FC_CFG_NOF_P_HDR_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_REV3_INIT_FC_CFG_NOF_NP_HDR_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_REV3_INIT_FC_CFG_NOF_CPL_HDR_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_REV3_INIT_FC_CFG_NOF_P_HDR_SHIFT = common dso_local global i32 0, align 4
@PCIE_AXI_REV3_INIT_FC_CFG_NOF_NP_HDR_SHIFT = common dso_local global i32 0, align 4
@PCIE_AXI_REV3_INIT_FC_CFG_NOF_CPL_HDR_SHIFT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_IB_HCRD_SUM = common dso_local global i32 0, align 4
@PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_P_HDR_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_NP_HDR_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_CPL_HDR_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_P_HDR_SHIFT = common dso_local global i32 0, align 4
@PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_NP_HDR_SHIFT = common dso_local global i32 0, align 4
@PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_CPL_HDR_SHIFT = common dso_local global i32 0, align 4
@PCIE_AXI_CORE_SETUP_NOF_READS_ONSLAVE_INTRF_PCIE_CORE_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_CORE_SETUP_NOF_READS_ONSLAVE_INTRF_PCIE_CORE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_port_ib_hcrd_os_ob_reads_config(%struct.al_pcie_port* %0, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca %struct.al_pcie_ib_hcrd_os_ob_reads_config*, align 8
  %6 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store %struct.al_pcie_ib_hcrd_os_ob_reads_config* %1, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 3
  %9 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  store %struct.al_pcie_regs* %9, %struct.al_pcie_regs** %6, align 8
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %11 = call i64 @al_pcie_port_is_enabled(%struct.al_pcie_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %15 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @al_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %157

20:                                               ; preds = %2
  %21 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %22 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @al_assert(i32 %25)
  %27 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %28 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @al_assert(i32 %31)
  %33 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %34 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @al_assert(i32 %37)
  %39 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %40 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %20
  %45 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %46 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %49 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %53 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* @AL_PCIE_REV3_IB_HCRD_SUM, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @al_assert(i32 %58)
  %60 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %61 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PCIE_AXI_REV3_INIT_FC_CFG_NOF_P_HDR_MASK, align 4
  %66 = load i32, i32* @PCIE_AXI_REV3_INIT_FC_CFG_NOF_NP_HDR_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @PCIE_AXI_REV3_INIT_FC_CFG_NOF_CPL_HDR_MASK, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %71 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PCIE_AXI_REV3_INIT_FC_CFG_NOF_P_HDR_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %76 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PCIE_AXI_REV3_INIT_FC_CFG_NOF_NP_HDR_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %74, %79
  %81 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %82 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PCIE_AXI_REV3_INIT_FC_CFG_NOF_CPL_HDR_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %80, %85
  %87 = call i32 @al_reg_write32_masked(i32 %64, i32 %69, i32 %86)
  br label %132

88:                                               ; preds = %20
  %89 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %90 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %93 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %97 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = load i32, i32* @AL_PCIE_REV_1_2_IB_HCRD_SUM, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @al_assert(i32 %102)
  %104 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %105 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_P_HDR_MASK, align 4
  %110 = load i32, i32* @PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_NP_HDR_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_CPL_HDR_MASK, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %115 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_P_HDR_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %120 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_NP_HDR_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %118, %123
  %125 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %126 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_CPL_HDR_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = or i32 %124, %129
  %131 = call i32 @al_reg_write32_masked(i32 %108, i32 %113, i32 %130)
  br label %132

132:                                              ; preds = %88, %44
  %133 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %134 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @PCIE_AXI_CORE_SETUP_NOF_READS_ONSLAVE_INTRF_PCIE_CORE_MASK, align 4
  %139 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %140 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PCIE_AXI_CORE_SETUP_NOF_READS_ONSLAVE_INTRF_PCIE_CORE_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = call i32 @al_reg_write32_masked(i32 %137, i32 %138, i32 %143)
  %145 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %146 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %149 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.al_pcie_ib_hcrd_os_ob_reads_config*, %struct.al_pcie_ib_hcrd_os_ob_reads_config** %5, align 8
  %152 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %155 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %132, %13
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @al_pcie_port_is_enabled(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
