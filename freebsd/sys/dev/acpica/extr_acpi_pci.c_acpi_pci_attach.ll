; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci.c_acpi_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci.c_acpi_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_SYSTEM_NOTIFY = common dso_local global i32 0, align 4
@acpi_pci_bus_notify_handler = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@acpi_pci_install_device_notify_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_attach(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @acpi_get_handle(i32 %12)
  %14 = load i32, i32* @ACPI_SYSTEM_NOTIFY, align 4
  %15 = load i32, i32* @acpi_pci_bus_notify_handler, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @AcpiInstallNotifyHandler(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @acpi_get_handle(i32 %19)
  %21 = load i32, i32* @acpi_pci_install_device_notify_handler, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @AcpiWalkNamespace(i32 %18, i32 %20, i32 1, i32 %21, i32* null, i32 %22, i32* null)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @pci_attach(i32) #1

declare dso_local i32 @AcpiInstallNotifyHandler(i32, i32, i32, i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @AcpiWalkNamespace(i32, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
