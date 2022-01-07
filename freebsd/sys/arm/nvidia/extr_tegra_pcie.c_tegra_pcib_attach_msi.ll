; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_attach_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_attach_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@AFI_MSI_REGS = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tegra_pcib_msi_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot setup MSI interrupt handler\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WARNING: unable to attach PIC\0A\00", align 1
@AFI_INTR_MASK = common dso_local global i32 0, align 4
@AFI_INTR_MASK_MSI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_pcib_attach_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_attach_msi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcib_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.tegra_pcib_softc* @device_get_softc(i32 %7)
  store %struct.tegra_pcib_softc* %8, %struct.tegra_pcib_softc** %3, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %14 = call i32 @kmem_alloc_contig(i32 %9, i32 %10, i32 0, i32 %11, i32 %12, i32 0, i32 %13)
  %15 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %18 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vtophys(i32 %20)
  %22 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vtophys(i32 %24)
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = call i32 @tegra_pcib_set_bar(%struct.tegra_pcib_softc* %17, i32 9, i32 %21, i32 %25, i32 %26, i32 0)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %41, %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @AFI_MSI_REGS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @AFI_MSI_EN_VEC(i32 %34)
  %36 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %33, i32 %35, i32 0)
  %37 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @AFI_MSI_VEC(i32 %38)
  %40 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %37, i32 %39, i32 -1)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @INTR_TYPE_BIO, align 4
  %50 = load i32, i32* @INTR_MPSAFE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @tegra_pcib_msi_intr, align 4
  %53 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %54 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %54, i32 0, i32 0
  %56 = call i32 @bus_setup_intr(i32 %45, i32 %48, i32 %51, i32 %52, i32* null, %struct.tegra_pcib_softc* %53, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %44
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %6, align 4
  br label %83

63:                                               ; preds = %44
  %64 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %65 = call i64 @tegra_pcib_msi_attach(%struct.tegra_pcib_softc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %71 = call i32 @tegra_pcib_msi_detach(%struct.tegra_pcib_softc* %70)
  br label %83

72:                                               ; preds = %63
  %73 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %74 = load i32, i32* @AFI_INTR_MASK, align 4
  %75 = call i32 @AFI_RD4(%struct.tegra_pcib_softc* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @AFI_INTR_MASK_MSI_MASK, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %80 = load i32, i32* @AFI_INTR_MASK, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %72, %67, %59
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.tegra_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @kmem_alloc_contig(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tegra_pcib_set_bar(%struct.tegra_pcib_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @AFI_WR4(%struct.tegra_pcib_softc*, i32, i32) #1

declare dso_local i32 @AFI_MSI_EN_VEC(i32) #1

declare dso_local i32 @AFI_MSI_VEC(i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.tegra_pcib_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @tegra_pcib_msi_attach(%struct.tegra_pcib_softc*) #1

declare dso_local i32 @tegra_pcib_msi_detach(%struct.tegra_pcib_softc*) #1

declare dso_local i32 @AFI_RD4(%struct.tegra_pcib_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
