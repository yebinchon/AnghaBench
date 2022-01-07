; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, i64 }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"PCIe %d: trying to stop a non-started link\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"PCIe_%d: stop port link.\0A\00", align 1
@PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_link_stop(%struct.al_pcie_port* %0) #0 {
  %2 = alloca %struct.al_pcie_port*, align 8
  %3 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %2, align 8
  %4 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %5 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.al_pcie_regs*
  store %struct.al_pcie_regs* %7, %struct.al_pcie_regs** %3, align 8
  %8 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %9 = call i32 @al_pcie_is_link_started(%struct.al_pcie_port* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %13 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @al_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %18 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @al_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %3, align 8
  %22 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK, align 4
  %27 = load i32, i32* @PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = call i32 @al_reg_write32_masked(i32 %25, i32 %26, i32 %28)
  ret i32 0
}

declare dso_local i32 @al_pcie_is_link_started(%struct.al_pcie_port*) #1

declare dso_local i32 @al_warn(i8*, i32) #1

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
