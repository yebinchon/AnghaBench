; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_snoop_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_snoop_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"PCIE_%d: snoop mode %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP = common dso_local global i32 0, align 4
@PCIE_AXI_CTRL_MASTER_ARCTL_SNOOP = common dso_local global i32 0, align 4
@PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP = common dso_local global i32 0, align 4
@PCIE_AXI_CTRL_MASTER_AWCTL_SNOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_port_snoop_config(%struct.al_pcie_port* %0, i64 %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %7 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %6, i32 0, i32 1
  %8 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  store %struct.al_pcie_regs* %8, %struct.al_pcie_regs** %5, align 8
  %9 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %10 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @al_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %15)
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %21 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP, align 4
  %26 = load i32, i32* @PCIE_AXI_CTRL_MASTER_ARCTL_SNOOP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP, align 4
  %29 = load i32, i32* @PCIE_AXI_CTRL_MASTER_ARCTL_SNOOP, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @al_reg_write32_masked(i32 %24, i32 %27, i32 %30)
  %32 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %33 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP, align 4
  %38 = load i32, i32* @PCIE_AXI_CTRL_MASTER_AWCTL_SNOOP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP, align 4
  %41 = load i32, i32* @PCIE_AXI_CTRL_MASTER_AWCTL_SNOOP, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @al_reg_write32_masked(i32 %36, i32 %39, i32 %42)
  br label %65

44:                                               ; preds = %2
  %45 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %46 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP, align 4
  %51 = load i32, i32* @PCIE_AXI_CTRL_MASTER_ARCTL_SNOOP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP, align 4
  %54 = call i32 @al_reg_write32_masked(i32 %49, i32 %52, i32 %53)
  %55 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %56 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP, align 4
  %61 = load i32, i32* @PCIE_AXI_CTRL_MASTER_AWCTL_SNOOP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP, align 4
  %64 = call i32 @al_reg_write32_masked(i32 %59, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %44, %19
  ret i32 0
}

declare dso_local i32 @al_dbg(i8*, i32, i8*) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
