; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_max_lanes_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_max_lanes_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i64, i32, i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"PCIe %d: already enabled, cannot set max lanes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_PCIE_REV_ID_3 = common dso_local global i64 0, align 8
@PCIE_REV3_AXI_MISC_PCIE_GLOBAL_CONF_NOF_ACT_LANES_MASK = common dso_local global i32 0, align 4
@PCIE_REV1_2_AXI_MISC_PCIE_GLOBAL_CONF_NOF_ACT_LANES_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_port_max_lanes_set(%struct.al_pcie_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_pcie_regs*, align 8
  %7 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %9 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %8, i32 0, i32 3
  %10 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  store %struct.al_pcie_regs* %10, %struct.al_pcie_regs** %6, align 8
  %11 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %12 = call i64 @al_pcie_port_is_enabled(%struct.al_pcie_port* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %16 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @al_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @AL_PCIE_PARSE_LANES(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %25 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %30 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AL_PCIE_REV_ID_3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @PCIE_REV3_AXI_MISC_PCIE_GLOBAL_CONF_NOF_ACT_LANES_MASK, align 4
  br label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @PCIE_REV1_2_AXI_MISC_PCIE_GLOBAL_CONF_NOF_ACT_LANES_MASK, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @al_reg_write32_masked(i32 %28, i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %44 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @al_pcie_port_is_enabled(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @AL_PCIE_PARSE_LANES(i32) #1

declare dso_local i32 @al_reg_write32_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
