; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_device_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_device_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_dock_softc = type { i64 }

@dock = common dso_local global i32 0, align 4
@ACPI_DOCK_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_dock_device_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_dock_device_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_dock_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @dock, align 4
  %5 = call i32 @ACPI_SERIAL_ASSERT(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.acpi_dock_softc* @device_get_softc(i32 %6)
  store %struct.acpi_dock_softc* %7, %struct.acpi_dock_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @acpi_dock_get_info(i32 %8)
  %10 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ACPI_DOCK_STATUS_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @ACPI_DEVICE_PRESENT(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @acpi_dock_insert(i32 %22)
  br label %33

24:                                               ; preds = %15
  %25 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @acpi_dock_removal(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %21
  ret void
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local %struct.acpi_dock_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_dock_get_info(i32) #1

declare dso_local i64 @ACPI_DEVICE_PRESENT(i64) #1

declare dso_local i32 @acpi_dock_insert(i32) #1

declare dso_local i32 @acpi_dock_removal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
