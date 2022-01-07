; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_ram_parity_int_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_ram_parity_int_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AL_TRUE = common dso_local global i64 0, align 8
@PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_pcie_port*, i64)* @al_pcie_port_ram_parity_int_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_pcie_port_ram_parity_int_config(%struct.al_pcie_port* %0, i64 %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.al_pcie_regs*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %7 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %6, i32 0, i32 0
  %8 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %7, align 8
  store %struct.al_pcie_regs* %8, %struct.al_pcie_regs** %5, align 8
  %9 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %10 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @AL_TRUE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 -1, i32 0
  %19 = call i32 @al_reg_write32(i32* %13, i32 %18)
  %20 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %21 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* @PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @AL_TRUE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = call i32 @al_reg_write32_masked(i32* %24, i32 %25, i32 %33)
  ret void
}

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
