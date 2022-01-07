; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_pem_softc = type { i32, i64, i32 }

@PCI_BUSMAX = common dso_local global i64 0, align 8
@PCI_SLOTMAX = common dso_local global i64 0, align 8
@PCI_FUNCMAX = common dso_local global i64 0, align 8
@PCIE_REGMAX = common dso_local global i64 0, align 8
@PEM_BUS_SHIFT = common dso_local global i64 0, align 8
@PEM_SLOT_SHIFT = common dso_local global i64 0, align 8
@PEM_FUNC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i32, i32)* @thunder_pem_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunder_pem_write_config(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.thunder_pem_softc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @PCI_BUSMAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %7
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @PCI_SLOTMAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @PCI_FUNCMAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @PCIE_REGMAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26, %22, %7
  br label %94

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.thunder_pem_softc* @device_get_softc(i32 %36)
  store %struct.thunder_pem_softc* %37, %struct.thunder_pem_softc** %16, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @PEM_BUS_SHIFT, align 8
  %40 = shl i64 %38, %39
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @PEM_SLOT_SHIFT, align 8
  %43 = shl i64 %41, %42
  %44 = or i64 %40, %43
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @PEM_FUNC_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = or i64 %44, %47
  store i64 %48, i64* %15, align 8
  %49 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %16, align 8
  %50 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %17, align 4
  %52 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %16, align 8
  %53 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %18, align 4
  %55 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %16, align 8
  %56 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %16, align 8
  %59 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %15, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @PCIE_REGMAX, align 8
  %64 = call i32 @bus_space_map(i32 %57, i64 %62, i64 %63, i32 0, i32* %18)
  %65 = load i32, i32* %14, align 4
  switch i32 %65, label %86 [
    i32 1, label %66
    i32 2, label %72
    i32 4, label %79
  ]

66:                                               ; preds = %35
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @bus_space_write_1(i32 %67, i32 %68, i64 %69, i32 %70)
  br label %87

72:                                               ; preds = %35
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @htole16(i32 %76)
  %78 = call i32 @bus_space_write_2(i32 %73, i32 %74, i64 %75, i32 %77)
  br label %87

79:                                               ; preds = %35
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @htole32(i32 %83)
  %85 = call i32 @bus_space_write_4(i32 %80, i32 %81, i64 %82, i32 %84)
  br label %87

86:                                               ; preds = %35
  br label %87

87:                                               ; preds = %86, %79, %72, %66
  %88 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %16, align 8
  %89 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %18, align 4
  %92 = load i64, i64* @PCIE_REGMAX, align 8
  %93 = call i32 @bus_space_unmap(i32 %90, i32 %91, i64 %92)
  br label %94

94:                                               ; preds = %87, %34
  ret void
}

declare dso_local %struct.thunder_pem_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_space_map(i32, i64, i64, i32, i32*) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i64, i32) #1

declare dso_local i32 @bus_space_write_2(i32, i32, i64, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i64, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
