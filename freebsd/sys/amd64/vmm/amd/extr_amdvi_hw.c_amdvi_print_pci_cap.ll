; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_print_pci_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_print_pci_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Not a IOMMU capability 0x%x@0x%x\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"PCI cap 0x%x@0x%x feature:%b\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\10\01IOTLB\02HT\03NPCache\04EFR\05CapExt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdvi_print_pci_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdvi_print_pci_cap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdvi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.amdvi_softc* @device_get_softc(i32 %6)
  store %struct.amdvi_softc* %7, %struct.amdvi_softc** %3, align 8
  %8 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @amdvi_pci_read(%struct.amdvi_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 7
  %17 = icmp eq i32 %16, 3
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i32 %18, i8* %22)
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 24
  %26 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %29 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32, i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.amdvi_softc* @device_get_softc(i32) #1

declare dso_local i32 @amdvi_pci_read(%struct.amdvi_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
