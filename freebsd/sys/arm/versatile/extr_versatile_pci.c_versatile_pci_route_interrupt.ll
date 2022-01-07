; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_pci.c_versatile_pci_route_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_pci.c_versatile_pci_route_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.versatile_pci_softc = type { i32 }
%struct.ofw_pci_register = type { i32 }

@OFW_PCI_PHYS_HI_BUSSHIFT = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_DEVICESHIFT = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_FUNCTIONSHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not route pin %d for device %d.%d\0A\00", align 1
@PCI_INVALID_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @versatile_pci_route_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_pci_route_interrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.versatile_pci_softc*, align 8
  %9 = alloca %struct.ofw_pci_register, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.versatile_pci_softc* @device_get_softc(i32 %14)
  store %struct.versatile_pci_softc* %15, %struct.versatile_pci_softc** %8, align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %10, align 4
  %17 = call i32 @bzero(%struct.ofw_pci_register* %9, i32 4)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pci_get_bus(i32 %18)
  %20 = load i32, i32* @OFW_PCI_PHYS_HI_BUSSHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pci_get_slot(i32 %22)
  %24 = load i32, i32* @OFW_PCI_PHYS_HI_DEVICESHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %21, %25
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pci_get_function(i32 %27)
  %29 = load i32, i32* @OFW_PCI_PHYS_HI_FUNCTIONSHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %26, %30
  %32 = getelementptr inbounds %struct.ofw_pci_register, %struct.ofw_pci_register* %9, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ofw_bus_get_node(i32 %33)
  %35 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %8, align 8
  %36 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %38 = call i32 @ofw_bus_lookup_imap(i32 %34, i32* %36, %struct.ofw_pci_register* %9, i32 4, i32* %10, i32 4, i32* %37, i32 16, i32* %12)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %46 = call i32 @ofw_bus_map_intr(i32 %42, i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %57

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @pci_get_slot(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @pci_get_function(i32 %53)
  %55 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i32 %54)
  %56 = load i32, i32* @PCI_INVALID_IRQ, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %48, %41
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.versatile_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ofw_pci_register*, i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @ofw_bus_lookup_imap(i32, i32*, %struct.ofw_pci_register*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ofw_bus_map_intr(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
