; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_memory_shutdown_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_memory_shutdown_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64, i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AL_PCIE_REV_ID_3 = common dso_local global i64 0, align 8
@PCIE_REV3_AXI_MISC_PCIE_GLOBAL_CONF_MEM_SHUTDOWN = common dso_local global i32 0, align 4
@PCIE_REV1_2_AXI_MISC_PCIE_GLOBAL_CONF_MEM_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"PCIe %d: not enabled, cannot shutdown memory\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_port_memory_shutdown_set(%struct.al_pcie_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.al_pcie_regs*, align 8
  %7 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %9 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %8, i32 0, i32 2
  %10 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  store %struct.al_pcie_regs* %10, %struct.al_pcie_regs** %6, align 8
  %11 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %12 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PCIE_REV3_AXI_MISC_PCIE_GLOBAL_CONF_MEM_SHUTDOWN, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @PCIE_REV1_2_AXI_MISC_PCIE_GLOBAL_CONF_MEM_SHUTDOWN, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  %22 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %23 = call i32 @al_pcie_port_is_enabled(%struct.al_pcie_port* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %27 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @al_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %20
  %33 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %34 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @AL_TRUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = call i32 @al_reg_write32_masked(i32 %37, i32 %38, i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %25
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @al_pcie_port_is_enabled(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
