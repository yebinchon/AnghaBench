; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_msix_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_msix_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_pf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.al_pcie_regs* }
%struct.al_pcie_regs = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.al_pcie_msix_params = type { i32, i32, i32, i32, i32 }

@AL_TRUE = common dso_local global i32 0, align 4
@AL_PCI_MSIX_MSGCTRL_TBL_SIZE = common dso_local global i32 0, align 4
@AL_PCI_MSIX_MSGCTRL_TBL_SIZE_SHIFT = common dso_local global i32 0, align 4
@AL_PCI_MSIX_TABLE = common dso_local global i32 0, align 4
@AL_PCI_MSIX_TABLE_OFFSET = common dso_local global i32 0, align 4
@AL_PCI_MSIX_TABLE_BAR = common dso_local global i32 0, align 4
@AL_PCI_MSIX_PBA = common dso_local global i32 0, align 4
@AL_PCI_MSIX_PBA_OFFSET = common dso_local global i32 0, align 4
@AL_PCI_MSIX_PBA_BAR = common dso_local global i32 0, align 4
@AL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_msix_config(%struct.al_pcie_pf* %0, %struct.al_pcie_msix_params* %1) #0 {
  %3 = alloca %struct.al_pcie_pf*, align 8
  %4 = alloca %struct.al_pcie_msix_params*, align 8
  %5 = alloca %struct.al_pcie_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.al_pcie_pf* %0, %struct.al_pcie_pf** %3, align 8
  store %struct.al_pcie_msix_params* %1, %struct.al_pcie_msix_params** %4, align 8
  %8 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %3, align 8
  %9 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %11, align 8
  store %struct.al_pcie_regs* %12, %struct.al_pcie_regs** %5, align 8
  %13 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %3, align 8
  %14 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %3, align 8
  %17 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* @AL_TRUE, align 4
  %20 = call i32 @al_pcie_port_wr_to_ro_set(%struct.TYPE_4__* %18, i32 %19)
  %21 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %22 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @al_reg_read32(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @AL_PCI_MSIX_MSGCTRL_TBL_SIZE, align 4
  %31 = load i32, i32* @AL_PCI_MSIX_MSGCTRL_TBL_SIZE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.al_pcie_msix_params*, %struct.al_pcie_msix_params** %4, align 8
  %37 = getelementptr inbounds %struct.al_pcie_msix_params, %struct.al_pcie_msix_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @AL_PCI_MSIX_MSGCTRL_TBL_SIZE, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @AL_PCI_MSIX_MSGCTRL_TBL_SIZE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %47 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @al_reg_write32(i64 %53, i32 %54)
  %56 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %57 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @AL_PCI_MSIX_TABLE, align 4
  %65 = ashr i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = load %struct.al_pcie_msix_params*, %struct.al_pcie_msix_params** %4, align 8
  %69 = getelementptr inbounds %struct.al_pcie_msix_params, %struct.al_pcie_msix_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AL_PCI_MSIX_TABLE_OFFSET, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.al_pcie_msix_params*, %struct.al_pcie_msix_params** %4, align 8
  %74 = getelementptr inbounds %struct.al_pcie_msix_params, %struct.al_pcie_msix_params* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AL_PCI_MSIX_TABLE_BAR, align 4
  %77 = and i32 %75, %76
  %78 = or i32 %72, %77
  %79 = call i32 @al_reg_write32(i64 %67, i32 %78)
  %80 = load %struct.al_pcie_regs*, %struct.al_pcie_regs** %5, align 8
  %81 = getelementptr inbounds %struct.al_pcie_regs, %struct.al_pcie_regs* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @AL_PCI_MSIX_PBA, align 4
  %89 = ashr i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = load %struct.al_pcie_msix_params*, %struct.al_pcie_msix_params** %4, align 8
  %93 = getelementptr inbounds %struct.al_pcie_msix_params, %struct.al_pcie_msix_params* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AL_PCI_MSIX_PBA_OFFSET, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.al_pcie_msix_params*, %struct.al_pcie_msix_params** %4, align 8
  %98 = getelementptr inbounds %struct.al_pcie_msix_params, %struct.al_pcie_msix_params* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AL_PCI_MSIX_PBA_BAR, align 4
  %101 = and i32 %99, %100
  %102 = or i32 %96, %101
  %103 = call i32 @al_reg_write32(i64 %91, i32 %102)
  %104 = load %struct.al_pcie_pf*, %struct.al_pcie_pf** %3, align 8
  %105 = getelementptr inbounds %struct.al_pcie_pf, %struct.al_pcie_pf* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* @AL_FALSE, align 4
  %108 = call i32 @al_pcie_port_wr_to_ro_set(%struct.TYPE_4__* %106, i32 %107)
  ret i32 0
}

declare dso_local i32 @al_pcie_port_wr_to_ro_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @al_reg_read32(i64) #1

declare dso_local i32 @al_reg_write32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
