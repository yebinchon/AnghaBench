; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_msix_masked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_msix_masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_pf = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AL_PCI_MSIX_MSGCTRL_MASK = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_msix_masked(%struct.al_pcie_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_pcie_pf*, align 8
  %4 = alloca %struct.al_pcie_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.al_pcie_pf* %0, %struct.al_pcie_pf** %3, align 8
  %6 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %3, align 8
  %7 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %9, align 8
  store %struct.al_pcie_regs* %10, %struct.al_pcie_regs** %4, align 8
  %11 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %4, align 8
  %12 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %3, align 8
  %15 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @al_reg_read32(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AL_PCI_MSIX_MSGCTRL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @AL_TRUE, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @AL_FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @al_reg_read32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
