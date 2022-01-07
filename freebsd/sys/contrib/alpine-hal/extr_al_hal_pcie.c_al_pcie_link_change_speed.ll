; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_change_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_link_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"PCIe %d: link not started, cannot change speed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PCIe %d: changing speed to %d\0A\00", align 1
@PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_link_change_speed(%struct.al_pcie_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 1
  %9 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  store %struct.al_pcie_regs* %9, %struct.al_pcie_regs** %6, align 8
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %11 = call i32 @al_pcie_is_link_started(%struct.al_pcie_port* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %15 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @al_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %22 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @al_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @al_pcie_port_link_speed_ctrl_set(%struct.al_pcie_port* %26, i32 %27)
  %29 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %30 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE, align 4
  %34 = load i32, i32* @PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE, align 4
  %35 = call i32 @al_reg_write32_masked(i32* %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %20, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @al_pcie_is_link_started(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_dbg(i8*, i32, i32) #1

declare dso_local i32 @al_pcie_port_link_speed_ctrl_set(%struct.al_pcie_port*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
