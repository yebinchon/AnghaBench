; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_pci_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_pci_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdvi_softc*, i32)* @amdvi_pci_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdvi_pci_read(%struct.amdvi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.amdvi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %6 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @PCI_RID2BUS(i32 %7)
  %9 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @PCI_RID2SLOT(i32 %11)
  %13 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PCI_RID2FUNC(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pci_cfgregread(i32 %8, i32 %12, i32 %16, i32 %17, i32 4)
  ret i32 %18
}

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCI_RID2BUS(i32) #1

declare dso_local i32 @PCI_RID2SLOT(i32) #1

declare dso_local i32 @PCI_RID2FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
