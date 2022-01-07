; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_dock_softc = type { i64 }

@dock = common dso_local global i32 0, align 4
@ACPI_DOCK_STATUS_UNDOCKED = common dso_local global i64 0, align 8
@ACPI_DOCK_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@ACPI_DOCK_LOCK = common dso_local global i32 0, align 4
@ACPI_DOCK_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"_DCK failed\0A\00", align 1
@cold = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Dock\00", align 1
@ACPI_DOCK_STATUS_DOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_dock_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_dock_insert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_dock_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @dock, align 4
  %6 = call i32 @ACPI_SERIAL_ASSERT(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.acpi_dock_softc* @device_get_softc(i32 %7)
  store %struct.acpi_dock_softc* %8, %struct.acpi_dock_softc** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @acpi_get_handle(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACPI_DOCK_STATUS_UNDOCKED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACPI_DOCK_STATUS_UNKNOWN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @ACPI_DOCK_LOCK, align 4
  %25 = call i32 @acpi_dock_execute_lck(i32 %23, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @ACPI_DOCK_CONNECT, align 4
  %28 = call i64 @acpi_dock_execute_dck(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %45

33:                                               ; preds = %22
  %34 = load i32, i32* @cold, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @acpi_dock_insert_children(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 1)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i64, i64* @ACPI_DOCK_STATUS_DOCKED, align 8
  %43 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %30, %41, %16
  ret void
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local %struct.acpi_dock_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @acpi_dock_execute_lck(i32, i32) #1

declare dso_local i64 @acpi_dock_execute_dck(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @acpi_dock_insert_children(i32) #1

declare dso_local i32 @acpi_UserNotify(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
