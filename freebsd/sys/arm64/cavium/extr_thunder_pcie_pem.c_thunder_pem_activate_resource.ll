; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.thunder_pem_softc = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@memmap_bus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @thunder_pem_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_pem_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.thunder_pem_softc*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %17 = load %struct.resource*, %struct.resource** %11, align 8
  %18 = call i32 @rman_activate_resource(%struct.resource* %17)
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %62

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.thunder_pem_softc* @device_get_softc(i32 %23)
  store %struct.thunder_pem_softc* %24, %struct.thunder_pem_softc** %16, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SYS_RES_MEMORY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SYS_RES_IOPORT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28, %22
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = call i64 @rman_get_start(%struct.resource* %33)
  store i64 %34, i64* %13, align 8
  %35 = load %struct.resource*, %struct.resource** %11, align 8
  %36 = call i64 @rman_get_size(%struct.resource* %35)
  store i64 %36, i64* %14, align 8
  %37 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %16, align 8
  %38 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %13, align 8
  %41 = call i64 @range_addr_pci_to_phys(i32 %39, i64 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @bus_space_map(i32* @memmap_bus, i64 %42, i64 %43, i32 0, i64* %15)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load %struct.resource*, %struct.resource** %11, align 8
  %49 = call i32 @rman_deactivate_resource(%struct.resource* %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %62

51:                                               ; preds = %32
  %52 = load %struct.resource*, %struct.resource** %11, align 8
  %53 = call i32 @rman_set_bustag(%struct.resource* %52, i32* @memmap_bus)
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  %55 = load i64, i64* %15, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @rman_set_virtual(%struct.resource* %54, i8* %56)
  %58 = load %struct.resource*, %struct.resource** %11, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @rman_set_bushandle(%struct.resource* %58, i64 %59)
  br label %61

61:                                               ; preds = %51, %28
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %47, %20
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local %struct.thunder_pem_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i64 @range_addr_pci_to_phys(i32, i64) #1

declare dso_local i32 @bus_space_map(i32*, i64, i64, i32, i64*) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i8*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
