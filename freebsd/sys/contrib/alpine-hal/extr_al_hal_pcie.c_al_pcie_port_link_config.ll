; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_link_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, i32, %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.al_pcie_link_params = type { i32, i32 }

@AL_PCIE_MPS_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_MPS_128 = common dso_local global i32 0, align 4
@AL_PCIE_MPS_256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"PCIe %d: unsupported Max Payload Size (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCIE_PORT_DEV_CTRL_STATUS_MPS_MASK = common dso_local global i32 0, align 4
@PCIE_PORT_DEV_CTRL_STATUS_MPS_SHIFT = common dso_local global i32 0, align 4
@PCIE_PORT_GEN2_CTRL_NUM_OF_LANES_MASK = common dso_local global i32 0, align 4
@PCIE_PORT_GEN2_CTRL_NUM_OF_LANES_SHIFT = common dso_local global i32 0, align 4
@PCIE_PORT_LINK_CTRL_LINK_CAPABLE_MASK = common dso_local global i32 0, align 4
@PCIE_PORT_LINK_CTRL_LINK_CAPABLE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_pcie_port*, %struct.al_pcie_link_params*)* @al_pcie_port_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_pcie_port_link_config(%struct.al_pcie_port* %0, %struct.al_pcie_link_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_pcie_port*, align 8
  %5 = alloca %struct.al_pcie_link_params*, align 8
  %6 = alloca %struct.al_pcie_regs*, align 8
  %7 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %4, align 8
  store %struct.al_pcie_link_params* %1, %struct.al_pcie_link_params** %5, align 8
  %8 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %9 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %8, i32 0, i32 2
  %10 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  store %struct.al_pcie_regs* %10, %struct.al_pcie_regs** %6, align 8
  %11 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %12 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.al_pcie_link_params*, %struct.al_pcie_link_params** %5, align 8
  %15 = getelementptr inbounds %struct.al_pcie_link_params, %struct.al_pcie_link_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AL_PCIE_MPS_DEFAULT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load %struct.al_pcie_link_params*, %struct.al_pcie_link_params** %5, align 8
  %21 = getelementptr inbounds %struct.al_pcie_link_params, %struct.al_pcie_link_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AL_PCIE_MPS_128, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.al_pcie_link_params*, %struct.al_pcie_link_params** %5, align 8
  %27 = getelementptr inbounds %struct.al_pcie_link_params, %struct.al_pcie_link_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AL_PCIE_MPS_256, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %33 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.al_pcie_link_params*, %struct.al_pcie_link_params** %5, align 8
  %36 = getelementptr inbounds %struct.al_pcie_link_params, %struct.al_pcie_link_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @al_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %88

41:                                               ; preds = %25, %19, %2
  %42 = load %struct.al_pcie_port*, %struct.al_pcie_port** %4, align 8
  %43 = load %struct.al_pcie_link_params*, %struct.al_pcie_link_params** %5, align 8
  %44 = getelementptr inbounds %struct.al_pcie_link_params, %struct.al_pcie_link_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @al_pcie_port_link_speed_ctrl_set(%struct.al_pcie_port* %42, i32 %45)
  %47 = load %struct.al_pcie_link_params*, %struct.al_pcie_link_params** %5, align 8
  %48 = getelementptr inbounds %struct.al_pcie_link_params, %struct.al_pcie_link_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AL_PCIE_MPS_DEFAULT, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %41
  %53 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %54 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_MPS_MASK, align 4
  %60 = load %struct.al_pcie_link_params*, %struct.al_pcie_link_params** %5, align 8
  %61 = getelementptr inbounds %struct.al_pcie_link_params, %struct.al_pcie_link_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PCIE_PORT_DEV_CTRL_STATUS_MPS_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = call i32 @al_reg_write32_masked(i32* %58, i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %52, %41
  %67 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %68 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* @PCIE_PORT_GEN2_CTRL_NUM_OF_LANES_MASK, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PCIE_PORT_GEN2_CTRL_NUM_OF_LANES_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = call i32 @al_reg_write32_masked(i32* %70, i32 %71, i32 %74)
  %76 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %6, align 8
  %77 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* @PCIE_PORT_LINK_CTRL_LINK_CAPABLE_MASK, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 1
  %84 = add nsw i32 %81, %83
  %85 = load i32, i32* @PCIE_PORT_LINK_CTRL_LINK_CAPABLE_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = call i32 @al_reg_write32_masked(i32* %79, i32 %80, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %66, %31
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @al_err(i8*, i32, i32) #1

declare dso_local i32 @al_pcie_port_link_speed_ctrl_set(%struct.al_pcie_port*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
