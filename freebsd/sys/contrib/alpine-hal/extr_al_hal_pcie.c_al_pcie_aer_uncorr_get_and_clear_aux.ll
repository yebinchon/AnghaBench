; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_aer_uncorr_get_and_clear_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_aer_uncorr_get_and_clear_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.al_pcie_core_aer_regs* }
%struct.al_pcie_core_aer_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_pcie_port*, i32)* @al_pcie_aer_uncorr_get_and_clear_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_pcie_aer_uncorr_get_and_clear_aux(%struct.al_pcie_port* %0, i32 %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.al_pcie_regs*, align 8
  %6 = alloca %struct.al_pcie_core_aer_regs*, align 8
  %7 = alloca i32, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %9 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %8, i32 0, i32 0
  %10 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  store %struct.al_pcie_regs* %10, %struct.al_pcie_regs** %5, align 8
  %11 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %12 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %17, align 8
  store %struct.al_pcie_core_aer_regs* %18, %struct.al_pcie_core_aer_regs** %6, align 8
  %19 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %6, align 8
  %20 = getelementptr inbounds %struct.al_pcie_core_aer_regs, %struct.al_pcie_core_aer_regs* %19, i32 0, i32 0
  %21 = call i32 @al_reg_read32(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.al_pcie_core_aer_regs*, %struct.al_pcie_core_aer_regs** %6, align 8
  %23 = getelementptr inbounds %struct.al_pcie_core_aer_regs, %struct.al_pcie_core_aer_regs* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @al_reg_write32(i32* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
