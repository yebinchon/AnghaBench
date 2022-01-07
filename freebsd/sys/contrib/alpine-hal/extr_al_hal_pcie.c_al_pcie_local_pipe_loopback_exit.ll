; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_local_pipe_loopback_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_local_pipe_loopback_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"PCIe %d: Exit LOCAL PIPE Loopback mode\00", align 1
@PCIE_PORT_PIPE_LOOPBACK_CTRL_PIPE_LB_EN_SHIFT = common dso_local global i32 0, align 4
@PCIE_PORT_LINK_CTRL_LB_EN_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_local_pipe_loopback_exit(%struct.al_pcie_port* %0) #0 {
  %2 = alloca %struct.al_pcie_port*, align 8
  %3 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %2, align 8
  %4 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %5 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %4, i32 0, i32 1
  %6 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  store %struct.al_pcie_regs* %6, %struct.al_pcie_regs** %3, align 8
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @al_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %3, align 8
  %12 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* @PCIE_PORT_PIPE_LOOPBACK_CTRL_PIPE_LB_EN_SHIFT, align 4
  %16 = shl i32 1, %15
  %17 = call i32 @al_reg_write32_masked(i32* %14, i32 %16, i32 0)
  %18 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %3, align 8
  %19 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @PCIE_PORT_LINK_CTRL_LB_EN_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = call i32 @al_reg_write32_masked(i32* %21, i32 %23, i32 0)
  ret i32 0
}

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
