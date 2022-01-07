; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_target_bus_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_target_bus_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64 }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_SHIFT = common dso_local global i32 0, align 4
@PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_target_bus_get(%struct.al_pcie_port* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.al_pcie_regs*, align 8
  %8 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %10 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.al_pcie_regs*
  store %struct.al_pcie_regs* %12, %struct.al_pcie_regs** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @al_assert(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @al_assert(i32* %15)
  %17 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  %18 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @al_reg_read32(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_MASK, align 4
  %25 = load i32, i32* @PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_SHIFT, align 4
  %26 = call i32 @AL_REG_FIELD_GET(i32 %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_MASK, align 4
  %30 = load i32, i32* @PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_SHIFT, align 4
  %31 = call i32 @AL_REG_FIELD_GET(i32 %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @al_assert(i32*) #1

declare dso_local i32 @al_reg_read32(i32) #1

declare dso_local i32 @AL_REG_FIELD_GET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
