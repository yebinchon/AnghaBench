; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_operating_mode_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_operating_mode_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64, i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"PCIe %d: already enabled, cannot set operating mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT = common dso_local global i32 0, align 4
@AL_PCIE_OPERATING_MODE_EP = common dso_local global i32 0, align 4
@PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_EP = common dso_local global i64 0, align 8
@AL_PCIE_OPERATING_MODE_RC = common dso_local global i32 0, align 4
@PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_RC = common dso_local global i64 0, align 8
@AL_PCIE_REV_ID_3 = common dso_local global i64 0, align 8
@PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT0_OVRD_FROM_AXUSER = common dso_local global i32 0, align 4
@PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT0_OVRD_FROM_REG = common dso_local global i32 0, align 4
@PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT0_ADDR_OFFSET_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_CFG_PF_BIT0_OVRD = common dso_local global i32 0, align 4
@PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT1_OVRD_FROM_AXUSER = common dso_local global i32 0, align 4
@PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT1_OVRD_FROM_REG = common dso_local global i32 0, align 4
@PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT1_ADDR_OFFSET_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_CFG_PF_BIT1_OVRD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"PCIe %d: unknown operating mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"PCIe %d: operating mode already set to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"EndPoint\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Root Complex\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PCIe %d: set operating mode to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_port_operating_mode_config(%struct.al_pcie_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_pcie_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %11 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %10, i32 0, i32 2
  %12 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %11, align 8
  store %struct.al_pcie_regs* %12, %struct.al_pcie_regs** %6, align 8
  %13 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %14 = call i64 @al_pcie_port_is_enabled(%struct.al_pcie_port* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %18 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, i32, ...) @al_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %121

23:                                               ; preds = %2
  %24 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %25 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @al_reg_read32(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK, align 4
  %32 = load i32, i32* @PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT, align 4
  %33 = call i64 @AL_REG_FIELD_GET(i64 %30, i32 %31, i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @AL_PCIE_OPERATING_MODE_EP, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i64, i64* @PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_EP, align 8
  store i64 %38, i64* %9, align 8
  br label %85

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @AL_PCIE_OPERATING_MODE_RC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load i64, i64* @PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_RC, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %46 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  %51 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %52 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT0_OVRD_FROM_AXUSER, align 4
  %57 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT0_OVRD_FROM_REG, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT0_ADDR_OFFSET_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_CFG_PF_BIT0_OVRD, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT1_OVRD_FROM_AXUSER, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT1_OVRD_FROM_REG, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT1_ADDR_OFFSET_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_CFG_PF_BIT1_OVRD, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT0_OVRD_FROM_REG, align 4
  %72 = load i32, i32* @PCIE_AXI_AXI_ATTR_OVRD_PF_SEL_PF_BIT1_OVRD_FROM_REG, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @al_reg_write32_masked(i32 %55, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %50, %43
  br label %84

76:                                               ; preds = %39
  %77 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %78 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i8*, i32, ...) @al_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %121

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %37
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %91 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @AL_PCIE_OPERATING_MODE_EP, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %98 = call i32 @al_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %92, i8* %97)
  store i32 0, i32* %3, align 4
  br label %121

99:                                               ; preds = %85
  %100 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %101 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @AL_PCIE_OPERATING_MODE_EP, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %108 = call i32 @al_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %102, i8* %107)
  %109 = load i64, i64* %7, align 8
  %110 = load i32, i32* @PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK, align 4
  %111 = load i32, i32* @PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT, align 4
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @AL_REG_FIELD_SET(i64 %109, i32 %110, i32 %111, i64 %112)
  %114 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %115 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @al_reg_write32(i32 %118, i64 %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %99, %89, %76, %16
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @al_pcie_port_is_enabled(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32, ...) #1

declare dso_local i64 @al_reg_read32(i32) #1

declare dso_local i64 @AL_REG_FIELD_GET(i64, i32, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i8*) #1

declare dso_local i32 @AL_REG_FIELD_SET(i64, i32, i32, i64) #1

declare dso_local i32 @al_reg_write32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
