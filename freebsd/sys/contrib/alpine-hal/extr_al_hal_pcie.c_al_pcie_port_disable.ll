; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, i64 }
%struct.al_pbs_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"PCIe %d: trying to disable a non-enabled port\0A\00", align 1
@PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_pcie_port_disable(%struct.al_pcie_port* %0) #0 {
  %2 = alloca %struct.al_pcie_port*, align 8
  %3 = alloca %struct.al_pbs_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %2, align 8
  %5 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %6 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.al_pbs_regs*
  store %struct.al_pbs_regs* %8, %struct.al_pbs_regs** %3, align 8
  %9 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %10 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %13 = call i32 @al_pcie_port_is_enabled(%struct.al_pcie_port* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %17 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @al_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.al_pbs_regs*, %struct.al_pbs_regs** %3, align 8
  %22 = getelementptr inbounds %struct.al_pbs_regs, %struct.al_pbs_regs* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT, align 4
  %26 = add i32 %24, %25
  %27 = shl i32 1, %26
  %28 = call i32 @al_reg_write32_masked(i32* %23, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @al_pcie_port_is_enabled(%struct.al_pcie_port*) #1

declare dso_local i32 @al_warn(i8*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
