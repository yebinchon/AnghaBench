; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_app_req_retry_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_app_req_retry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AL_PCIE_REV_ID_3 = common dso_local global i64 0, align 8
@PCIE_W_REV3_GLOBAL_CTRL_PM_CONTROL_APP_REQ_RETRY_EN = common dso_local global i32 0, align 4
@PCIE_W_REV1_2_GLOBAL_CTRL_PM_CONTROL_APP_REQ_RETRY_EN = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_pcie_app_req_retry_set(%struct.al_pcie_port* %0, i64 %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.al_pcie_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 1
  %9 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  store %struct.al_pcie_regs* %9, %struct.al_pcie_regs** %5, align 8
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %11 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @PCIE_W_REV3_GLOBAL_CTRL_PM_CONTROL_APP_REQ_RETRY_EN, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @PCIE_W_REV1_2_GLOBAL_CTRL_PM_CONTROL_APP_REQ_RETRY_EN, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %6, align 4
  %21 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %22 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @AL_TRUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  br label %33

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = call i32 @al_reg_write32_masked(i32 %25, i32 %26, i32 %34)
  ret void
}

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
