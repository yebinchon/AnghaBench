; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_operating_mode_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_operating_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK = common dso_local global i32 0, align 4
@PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT = common dso_local global i32 0, align 4
@AL_PCIE_OPERATING_MODE_EP = common dso_local global i32 0, align 4
@AL_PCIE_OPERATING_MODE_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"PCIe %d: unknown device type (%d) in global conf register.\0A\00", align 1
@AL_PCIE_OPERATING_MODE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_operating_mode_get(%struct.al_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca %struct.al_pcie_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 1
  %9 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %8, align 8
  store %struct.al_pcie_regs* %9, %struct.al_pcie_regs** %4, align 8
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %11 = call i32 @al_assert(%struct.al_pcie_port* %10)
  %12 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %4, align 8
  %13 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @al_reg_read32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK, align 4
  %20 = load i32, i32* @PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT, align 4
  %21 = call i32 @AL_REG_FIELD_GET(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %27 [
    i32 129, label %23
    i32 128, label %25
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @AL_PCIE_OPERATING_MODE_EP, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @AL_PCIE_OPERATING_MODE_RC, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %29 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @al_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @AL_PCIE_OPERATING_MODE_UNKNOWN, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %25, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @al_assert(%struct.al_pcie_port*) #1

declare dso_local i32 @al_reg_read32(i32) #1

declare dso_local i32 @AL_REG_FIELD_GET(i32, i32, i32) #1

declare dso_local i32 @al_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
