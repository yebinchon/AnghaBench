; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_is_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, i64 }
%struct.al_pbs_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_MASK = common dso_local global i32 0, align 4
@PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_port_is_enabled(%struct.al_pcie_port* %0) #0 {
  %2 = alloca %struct.al_pcie_port*, align 8
  %3 = alloca %struct.al_pbs_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %2, align 8
  %6 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %7 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.al_pbs_regs*
  store %struct.al_pbs_regs* %9, %struct.al_pbs_regs** %3, align 8
  %10 = load %struct.al_pbs_regs*, %struct.al_pbs_regs** %3, align 8
  %11 = getelementptr inbounds %struct.al_pbs_regs, %struct.al_pbs_regs* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @al_reg_read32(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_MASK, align 4
  %16 = load i32, i32* @PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT, align 4
  %17 = call i32 @AL_REG_FIELD_GET(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %20 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @AL_BIT(i32 %21)
  %23 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %24 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @AL_REG_FIELD_GET(i32 %18, i32 %22, i32 %25)
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @AL_REG_FIELD_GET(i32, i32, i32) #1

declare dso_local i32 @AL_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
