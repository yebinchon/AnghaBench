; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_dock.c_acpi_dock_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_dock_softc = type { i32, i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ACPI_DOCK_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_INI\00", align 1
@dock = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_sta\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Dock _STA\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_bdn\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Dock _BDN\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_uid\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Dock _UID\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@acpi_dock_status_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Dock/Undock operation\00", align 1
@ACPI_ALL_NOTIFY = common dso_local global i32 0, align 4
@acpi_dock_notify_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_dock_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_dock_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_dock_softc*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.acpi_dock_softc* @device_get_softc(i32 %6)
  store %struct.acpi_dock_softc* %7, %struct.acpi_dock_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32* @acpi_get_handle(i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %11 = icmp eq %struct.acpi_dock_softc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %92

17:                                               ; preds = %12
  %18 = load i32, i32* @ACPI_DOCK_STATUS_UNKNOWN, align 4
  %19 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @AcpiEvaluateObject(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  %23 = load i32, i32* @dock, align 4
  %24 = call i32 @ACPI_SERIAL_BEGIN(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @acpi_dock_device_check(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_sysctl_ctx(i32 %27)
  %29 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_sysctl_tree(i32 %31)
  %33 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SYSCTL_CHILDREN(i32 %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %44, i32 0, i32 4
  %46 = call i32 @SYSCTL_ADD_INT(i32 %37, i32 %41, i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32* %45, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SYSCTL_CHILDREN(i32 %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %57 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %56, i32 0, i32 3
  %58 = call i32 @SYSCTL_ADD_INT(i32 %49, i32 %53, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32* %57, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %63 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SYSCTL_CHILDREN(i32 %64)
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLFLAG_RD, align 4
  %68 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %69 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %68, i32 0, i32 2
  %70 = call i32 @SYSCTL_ADD_INT(i32 %61, i32 %65, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32* %69, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %72 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.acpi_dock_softc*, %struct.acpi_dock_softc** %4, align 8
  %75 = getelementptr inbounds %struct.acpi_dock_softc, %struct.acpi_dock_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SYSCTL_CHILDREN(i32 %76)
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLTYPE_INT, align 4
  %80 = load i32, i32* @CTLFLAG_RW, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @acpi_dock_status_sysctl, align 4
  %84 = call i32 @SYSCTL_ADD_PROC(i32 %73, i32 %77, i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %81, i32 %82, i32 0, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i32, i32* @dock, align 4
  %86 = call i32 @ACPI_SERIAL_END(i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @ACPI_ALL_NOTIFY, align 4
  %89 = load i32, i32* @acpi_dock_notify_handler, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @AcpiInstallNotifyHandler(i32* %87, i32 %88, i32 %89, i32 %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %17, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.acpi_dock_softc* @device_get_softc(i32) #1

declare dso_local i32* @acpi_get_handle(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32 @acpi_dock_device_check(i32) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

declare dso_local i32 @AcpiInstallNotifyHandler(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
