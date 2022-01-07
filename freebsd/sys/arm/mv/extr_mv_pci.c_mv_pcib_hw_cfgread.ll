; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_hw_cfgread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_hw_cfgread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i64, i32, i32 }

@MV_TYPE_PCI = common dso_local global i64 0, align 8
@PCIE_REG_CFG_ADDR = common dso_local global i32 0, align 4
@PCI_REG_CFG_ADDR = common dso_local global i32 0, align 4
@PCIE_REG_CFG_DATA = common dso_local global i32 0, align 4
@PCI_REG_CFG_DATA = common dso_local global i32 0, align 4
@PCI_CFG_ENA = common dso_local global i32 0, align 4
@pcicfg_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_pcib_softc*, i32, i32, i32, i32, i32)* @mv_pcib_hw_cfgread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_hw_cfgread(%struct.mv_pcib_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mv_pcib_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mv_pcib_softc* %0, %struct.mv_pcib_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %18 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MV_TYPE_PCI, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @PCIE_REG_CFG_ADDR, align 4
  br label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @PCI_REG_CFG_ADDR, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %15, align 4
  %28 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %29 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MV_TYPE_PCI, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @PCIE_REG_CFG_DATA, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @PCI_REG_CFG_DATA, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @PCI_CFG_ENA, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @PCI_CFG_BUS(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @PCI_CFG_DEV(i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @PCI_CFG_FUN(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @PCI_CFG_PCIE_REG(i32 %49)
  %51 = or i32 %48, %50
  store i32 %51, i32* %13, align 4
  %52 = call i32 @mtx_lock_spin(i32* @pcicfg_mtx)
  %53 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %54 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %57 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @bus_space_write_4(i32 %55, i32 %58, i32 %59, i32 %60)
  store i32 -1, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  switch i32 %62, label %98 [
    i32 1, label %63
    i32 2, label %75
    i32 4, label %88
  ]

63:                                               ; preds = %37
  %64 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %65 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %68 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 3
  %73 = add nsw i32 %70, %72
  %74 = call i32 @bus_space_read_1(i32 %66, i32 %69, i32 %73)
  store i32 %74, i32* %14, align 4
  br label %98

75:                                               ; preds = %37
  %76 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %77 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %80 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 2
  %85 = add nsw i32 %82, %84
  %86 = call i32 @bus_space_read_2(i32 %78, i32 %81, i32 %85)
  %87 = call i32 @le16toh(i32 %86)
  store i32 %87, i32* %14, align 4
  br label %98

88:                                               ; preds = %37
  %89 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %90 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %93 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @bus_space_read_4(i32 %91, i32 %94, i32 %95)
  %97 = call i32 @le32toh(i32 %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %37, %88, %75, %63
  %99 = call i32 @mtx_unlock_spin(i32* @pcicfg_mtx)
  %100 = load i32, i32* %14, align 4
  ret i32 %100
}

declare dso_local i32 @PCI_CFG_BUS(i32) #1

declare dso_local i32 @PCI_CFG_DEV(i32) #1

declare dso_local i32 @PCI_CFG_FUN(i32) #1

declare dso_local i32 @PCI_CFG_PCIE_REG(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
