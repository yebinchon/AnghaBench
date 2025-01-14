; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_hw_cfgwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_hw_cfgwrite.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_pcib_softc*, i32, i32, i32, i32, i32, i32)* @mv_pcib_hw_cfgwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_pcib_hw_cfgwrite(%struct.mv_pcib_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mv_pcib_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mv_pcib_softc* %0, %struct.mv_pcib_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %19 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MV_TYPE_PCI, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @PCIE_REG_CFG_ADDR, align 4
  br label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @PCI_REG_CFG_ADDR, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %16, align 4
  %29 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %30 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MV_TYPE_PCI, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @PCIE_REG_CFG_DATA, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @PCI_REG_CFG_DATA, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* @PCI_CFG_ENA, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @PCI_CFG_BUS(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @PCI_CFG_DEV(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @PCI_CFG_FUN(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @PCI_CFG_PCIE_REG(i32 %50)
  %52 = or i32 %49, %51
  store i32 %52, i32* %15, align 4
  %53 = call i32 @mtx_lock_spin(i32* @pcicfg_mtx)
  %54 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %55 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %58 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @bus_space_write_4(i32 %56, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %14, align 4
  switch i32 %63, label %102 [
    i32 1, label %64
    i32 2, label %77
    i32 4, label %91
  ]

64:                                               ; preds = %38
  %65 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %66 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %69 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 3
  %74 = add nsw i32 %71, %73
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @bus_space_write_1(i32 %67, i32 %70, i32 %74, i32 %75)
  br label %102

77:                                               ; preds = %38
  %78 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %79 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %82 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, 2
  %87 = add nsw i32 %84, %86
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @htole16(i32 %88)
  %90 = call i32 @bus_space_write_2(i32 %80, i32 %83, i32 %87, i32 %89)
  br label %102

91:                                               ; preds = %38
  %92 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %93 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %8, align 8
  %96 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @htole32(i32 %99)
  %101 = call i32 @bus_space_write_4(i32 %94, i32 %97, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %38, %91, %77, %64
  %103 = call i32 @mtx_unlock_spin(i32* @pcicfg_mtx)
  ret void
}

declare dso_local i32 @PCI_CFG_BUS(i32) #1

declare dso_local i32 @PCI_CFG_DEV(i32) #1

declare dso_local i32 @PCI_CFG_FUN(i32) #1

declare dso_local i32 @PCI_CFG_PCIE_REG(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_write_2(i32, i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
