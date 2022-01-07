; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_relaxed_pcie_ordering_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_relaxed_pcie_ordering_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.al_pcie_relaxed_ordering_params = type { i64, i64 }

@AL_PCIE_OPERATING_MODE_RC = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i64 0, align 8
@AL_TRUE = common dso_local global i64 0, align 8
@PCIE_AXI_POS_ORDER_BYPASS_CMPL_AFTER_WR_FIX = common dso_local global i32 0, align 4
@PCIE_AXI_POS_ORDER_EP_CMPL_AFTER_WR_DIS = common dso_local global i32 0, align 4
@PCIE_AXI_POS_ORDER_EP_CMPL_AFTER_WR_SUPPORT_INTERLV_DIS = common dso_local global i32 0, align 4
@PCIE_AXI_POS_ORDER_SEGMENT_BUFFER_DONT_WAIT_FOR_P_WRITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_pcie_port*, %struct.al_pcie_relaxed_ordering_params*)* @al_pcie_port_relaxed_pcie_ordering_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_pcie_port_relaxed_pcie_ordering_config(%struct.al_pcie_port* %0, %struct.al_pcie_relaxed_ordering_params* %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca %struct.al_pcie_relaxed_ordering_params*, align 8
  %5 = alloca %struct.al_pcie_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store %struct.al_pcie_relaxed_ordering_params* %1, %struct.al_pcie_relaxed_ordering_params** %4, align 8
  %9 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %10 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %9, i32 0, i32 0
  %11 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %10, align 8
  store %struct.al_pcie_regs* %11, %struct.al_pcie_regs** %5, align 8
  %12 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %13 = call i32 @al_pcie_operating_mode_get(%struct.al_pcie_port* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @AL_PCIE_OPERATING_MODE_RC, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @AL_FALSE, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @AL_TRUE, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @AL_PCIE_OPERATING_MODE_RC, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @AL_TRUE, align 8
  br label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @AL_FALSE, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %8, align 8
  %32 = load %struct.al_pcie_relaxed_ordering_params*, %struct.al_pcie_relaxed_ordering_params** %4, align 8
  %33 = icmp ne %struct.al_pcie_relaxed_ordering_params* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.al_pcie_relaxed_ordering_params*, %struct.al_pcie_relaxed_ordering_params** %4, align 8
  %36 = getelementptr inbounds %struct.al_pcie_relaxed_ordering_params, %struct.al_pcie_relaxed_ordering_params* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.al_pcie_relaxed_ordering_params*, %struct.al_pcie_relaxed_ordering_params** %4, align 8
  %39 = getelementptr inbounds %struct.al_pcie_relaxed_ordering_params, %struct.al_pcie_relaxed_ordering_params* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %34, %30
  %42 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %43 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PCIE_AXI_POS_ORDER_BYPASS_CMPL_AFTER_WR_FIX, align 4
  %48 = load i32, i32* @PCIE_AXI_POS_ORDER_EP_CMPL_AFTER_WR_DIS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PCIE_AXI_POS_ORDER_EP_CMPL_AFTER_WR_SUPPORT_INTERLV_DIS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PCIE_AXI_POS_ORDER_SEGMENT_BUFFER_DONT_WAIT_FOR_P_WRITES, align 4
  %53 = or i32 %51, %52
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load i32, i32* @PCIE_AXI_POS_ORDER_BYPASS_CMPL_AFTER_WR_FIX, align 4
  %58 = load i32, i32* @PCIE_AXI_POS_ORDER_SEGMENT_BUFFER_DONT_WAIT_FOR_P_WRITES, align 4
  %59 = or i32 %57, %58
  br label %61

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 0, %60 ]
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @PCIE_AXI_POS_ORDER_EP_CMPL_AFTER_WR_DIS, align 4
  %67 = load i32, i32* @PCIE_AXI_POS_ORDER_EP_CMPL_AFTER_WR_SUPPORT_INTERLV_DIS, align 4
  %68 = or i32 %66, %67
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %68, %65 ], [ 0, %69 ]
  %72 = or i32 %62, %71
  %73 = call i32 @al_reg_write32_masked(i32 %46, i32 %53, i32 %72)
  ret void
}

declare dso_local i32 @al_pcie_operating_mode_get(%struct.al_pcie_port*) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
