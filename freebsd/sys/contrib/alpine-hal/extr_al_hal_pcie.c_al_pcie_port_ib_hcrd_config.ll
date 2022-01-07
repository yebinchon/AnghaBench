; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_ib_hcrd_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_ib_hcrd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { %struct.TYPE_4__, %struct.al_pcie_regs* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.al_pcie_regs = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@RADM_PQ_HCRD_VC0_MASK = common dso_local global i32 0, align 4
@RADM_PQ_HCRD_VC0_SHIFT = common dso_local global i32 0, align 4
@RADM_NPQ_HCRD_VC0_MASK = common dso_local global i32 0, align 4
@RADM_NPQ_HCRD_VC0_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_pcie_port*)* @al_pcie_port_ib_hcrd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_pcie_port_ib_hcrd_config(%struct.al_pcie_port* %0) #0 {
  %2 = alloca %struct.al_pcie_port*, align 8
  %3 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %2, align 8
  %4 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %5 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %4, i32 0, i32 1
  %6 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  store %struct.al_pcie_regs* %6, %struct.al_pcie_regs** %3, align 8
  %7 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %3, align 8
  %8 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* @RADM_PQ_HCRD_VC0_MASK, align 4
  %12 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %13 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* @RADM_PQ_HCRD_VC0_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @al_reg_write32_masked(i32* %10, i32 %11, i32 %18)
  %20 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %3, align 8
  %21 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* @RADM_NPQ_HCRD_VC0_MASK, align 4
  %25 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %26 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @RADM_NPQ_HCRD_VC0_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @al_reg_write32_masked(i32* %23, i32 %24, i32 %31)
  ret void
}

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
