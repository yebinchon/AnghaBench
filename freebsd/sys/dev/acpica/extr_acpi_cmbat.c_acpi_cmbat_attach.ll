; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cmbat_softc = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"registering battery failed\0A\00", align 1
@ACPI_ALL_NOTIFY = common dso_local global i32 0, align 4
@acpi_cmbat_notify_handler = common dso_local global i32 0, align 4
@OSL_NOTIFY_HANDLER = common dso_local global i32 0, align 4
@acpi_cmbat_init_battery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_cmbat_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cmbat_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_cmbat_softc*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.acpi_cmbat_softc* @device_get_softc(i32 %7)
  store %struct.acpi_cmbat_softc* %8, %struct.acpi_cmbat_softc** %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @acpi_get_handle(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %6, align 8
  %15 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %14, i32 0, i32 0
  %16 = call i32 @timespecclear(i32* %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @acpi_battery_register(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ACPI_ALL_NOTIFY, align 4
  %28 = load i32, i32* @acpi_cmbat_notify_handler, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @AcpiInstallNotifyHandler(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @OSL_NOTIFY_HANDLER, align 4
  %32 = load i32, i32* @acpi_cmbat_init_battery, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @AcpiOsExecute(i32 %31, i32 %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.acpi_cmbat_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @timespecclear(i32*) #1

declare dso_local i32 @acpi_battery_register(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AcpiInstallNotifyHandler(i32, i32, i32, i32) #1

declare dso_local i32 @AcpiOsExecute(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
