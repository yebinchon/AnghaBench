; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_dock_softc = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@ACPI_DOCK_STATUS_UNKNOWN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_BDN\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"_STA: %04x, _BDN: %04x, _UID: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_dock_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_dock_get_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_dock_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.acpi_dock_softc* @device_get_softc(i32 %5)
  store %struct.acpi_dock_softc* %6, %struct.acpi_dock_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @acpi_get_handle(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %10, i32 0, i32 2
  %12 = call i32 @acpi_GetInteger(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11)
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i8*, i8** @ACPI_DOCK_STATUS_UNKNOWN, align 8
  %17 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %21, i32 0, i32 1
  %23 = call i32 @acpi_GetInteger(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %22)
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8*, i8** @ACPI_DOCK_STATUS_UNKNOWN, align 8
  %28 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %19
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %32, i32 0, i32 0
  %34 = call i32 @acpi_GetInteger(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %33)
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8*, i8** @ACPI_DOCK_STATUS_UNKNOWN, align 8
  %39 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @acpi_device_get_parent_softc(i32 %43)
  %45 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @ACPI_VPRINT(i32 %42, i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %47, i8* %50, i8* %53)
  ret void
}

declare dso_local %struct.acpi_dock_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i8**) #1

declare dso_local i32 @ACPI_VPRINT(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @acpi_device_get_parent_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
