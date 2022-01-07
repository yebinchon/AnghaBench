; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_removal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_dock_softc = type { i64, i64 }

@dock = common dso_local global i32 0, align 4
@ACPI_DOCK_STATUS_DOCKED = common dso_local global i64 0, align 8
@ACPI_DOCK_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@ACPI_DOCK_ISOLATE = common dso_local global i32 0, align 4
@ACPI_DOCK_UNLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"_EJ0 failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Dock\00", align 1
@ACPI_DOCK_STATUS_UNDOCKED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"mechanical failure (%#x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_dock_removal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_dock_removal(i32 %0) #0 {
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
  %14 = load i64, i64* @ACPI_DOCK_STATUS_DOCKED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACPI_DOCK_STATUS_UNKNOWN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @acpi_dock_eject_children(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @ACPI_DOCK_ISOLATE, align 4
  %27 = call i64 @acpi_dock_execute_dck(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %59

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @ACPI_DOCK_UNLOCK, align 4
  %33 = call i32 @acpi_dock_execute_lck(i32 %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @acpi_dock_execute_ejx(i32 %34, i32 1, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %59

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 0)
  %43 = load i64, i64* @ACPI_DOCK_STATUS_UNDOCKED, align 8
  %44 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %16
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @acpi_dock_get_info(i32 %47)
  %49 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* %2, align 4
  %55 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %29, %37, %53, %46
  ret void
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local %struct.acpi_dock_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @acpi_dock_eject_children(i32) #1

declare dso_local i64 @acpi_dock_execute_dck(i32, i32) #1

declare dso_local i32 @acpi_dock_execute_lck(i32, i32) #1

declare dso_local i64 @acpi_dock_execute_ejx(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @acpi_UserNotify(i8*, i32, i32) #1

declare dso_local i32 @acpi_dock_get_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
