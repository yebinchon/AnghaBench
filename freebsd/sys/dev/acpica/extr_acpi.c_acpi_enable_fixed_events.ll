; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_enable_fixed_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_enable_fixed_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_softc = type { i32 }

@acpi_enable_fixed_events.first_time = internal global i32 1, align 4
@AcpiGbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_FADT_POWER_BUTTON = common dso_local global i32 0, align 4
@ACPI_EVENT_POWER_BUTTON = common dso_local global i32 0, align 4
@acpi_event_power_button_sleep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Power Button (fixed)\0A\00", align 1
@ACPI_FADT_SLEEP_BUTTON = common dso_local global i32 0, align 4
@ACPI_EVENT_SLEEP_BUTTON = common dso_local global i32 0, align 4
@acpi_event_sleep_button_sleep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Sleep Button (fixed)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_softc*)* @acpi_enable_fixed_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_enable_fixed_events(%struct.acpi_softc* %0) #0 {
  %2 = alloca %struct.acpi_softc*, align 8
  store %struct.acpi_softc* %0, %struct.acpi_softc** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %4 = load i32, i32* @ACPI_FADT_POWER_BUTTON, align 4
  %5 = and i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* @ACPI_EVENT_POWER_BUTTON, align 4
  %9 = call i32 @AcpiClearEvent(i32 %8)
  %10 = load i32, i32* @ACPI_EVENT_POWER_BUTTON, align 4
  %11 = load i32, i32* @acpi_event_power_button_sleep, align 4
  %12 = load %struct.acpi_softc*, %struct.acpi_softc** %2, align 8
  %13 = call i32 @AcpiInstallFixedEventHandler(i32 %10, i32 %11, %struct.acpi_softc* %12)
  %14 = load i32, i32* @acpi_enable_fixed_events.first_time, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load %struct.acpi_softc*, %struct.acpi_softc** %2, align 8
  %18 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %7
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %24 = load i32, i32* @ACPI_FADT_SLEEP_BUTTON, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i32, i32* @ACPI_EVENT_SLEEP_BUTTON, align 4
  %29 = call i32 @AcpiClearEvent(i32 %28)
  %30 = load i32, i32* @ACPI_EVENT_SLEEP_BUTTON, align 4
  %31 = load i32, i32* @acpi_event_sleep_button_sleep, align 4
  %32 = load %struct.acpi_softc*, %struct.acpi_softc** %2, align 8
  %33 = call i32 @AcpiInstallFixedEventHandler(i32 %30, i32 %31, %struct.acpi_softc* %32)
  %34 = load i32, i32* @acpi_enable_fixed_events.first_time, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.acpi_softc*, %struct.acpi_softc** %2, align 8
  %38 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %36, %27
  br label %42

42:                                               ; preds = %41, %22
  store i32 0, i32* @acpi_enable_fixed_events.first_time, align 4
  ret void
}

declare dso_local i32 @AcpiClearEvent(i32) #1

declare dso_local i32 @AcpiInstallFixedEventHandler(i32, i32, %struct.acpi_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
