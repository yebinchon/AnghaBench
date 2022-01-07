; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, i64, %struct.TYPE_5__, %struct.al_pcie_regs*, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.al_pcie_regs = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.al_pbs_regs = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@AL_PCIE_REV_ID_1 = common dso_local global i64 0, align 8
@AL_PCIE_REV_ID_2 = common dso_local global i64 0, align 8
@PCIE_AXI_CORE_SETUP_ATS_CAP_DIS = common dso_local global i32 0, align 4
@PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_port_enable(%struct.al_pcie_port* %0) #0 {
  %2 = alloca %struct.al_pcie_port*, align 8
  %3 = alloca %struct.al_pbs_regs*, align 8
  %4 = alloca %struct.al_pcie_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %2, align 8
  %6 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %7 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.al_pbs_regs*
  store %struct.al_pbs_regs* %9, %struct.al_pbs_regs** %3, align 8
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %11 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %10, i32 0, i32 3
  %12 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %11, align 8
  store %struct.al_pcie_regs* %12, %struct.al_pcie_regs** %4, align 8
  %13 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %14 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %17 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %23 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %1
  %28 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %29 = call i32 @al_pcie_ib_hcrd_os_ob_reads_config_default(%struct.al_pcie_port* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %32 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AL_PCIE_REV_ID_1, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %38 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AL_PCIE_REV_ID_2, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36, %30
  %43 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %4, align 8
  %44 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @PCIE_AXI_CORE_SETUP_ATS_CAP_DIS, align 4
  %49 = load i32, i32* @PCIE_AXI_CORE_SETUP_ATS_CAP_DIS, align 4
  %50 = call i32 @al_reg_write32_masked(i32* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  %52 = load %struct.al_pbs_regs*, %struct.al_pbs_regs** %3, align 8
  %53 = getelementptr inbounds %struct.al_pbs_regs, %struct.al_pbs_regs* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT, align 4
  %57 = add i32 %55, %56
  %58 = shl i32 1, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT, align 4
  %61 = add i32 %59, %60
  %62 = shl i32 1, %61
  %63 = call i32 @al_reg_write32_masked(i32* %54, i32 %58, i32 %62)
  ret i32 0
}

declare dso_local i32 @al_pcie_ib_hcrd_os_ob_reads_config_default(%struct.al_pcie_port*) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
