; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_acad.c_acpi_acad_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_acad.c_acpi_acad_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_acad_softc = type { i32 }
%struct.acpi_softc = type { i32, i32 }

@ACPIIO_ACAD_GET_STATUS = common dso_local global i32 0, align 4
@acpi_acad_ioctl = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"acline\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@acpi_acad_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACPI_ALL_NOTIFY = common dso_local global i32 0, align 4
@acpi_acad_notify_handler = common dso_local global i32 0, align 4
@OSL_NOTIFY_HANDLER = common dso_local global i32 0, align 4
@acpi_acad_init_acline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_acad_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_acad_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_acad_softc*, align 8
  %5 = alloca %struct.acpi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.acpi_acad_softc* @device_get_softc(i32 %8)
  store %struct.acpi_acad_softc* %9, %struct.acpi_acad_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @acpi_get_handle(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @ACPIIO_ACAD_GET_STATUS, align 4
  %13 = load i32, i32* @acpi_acad_ioctl, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @acpi_register_ioctl(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @device_get_unit(i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.acpi_softc* @acpi_device_get_parent_softc(i32 %25)
  store %struct.acpi_softc* %26, %struct.acpi_softc** %5, align 8
  %27 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %27, i32 0, i32 1
  %29 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SYSCTL_CHILDREN(i32 %31)
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLTYPE_INT, align 4
  %35 = load i32, i32* @CTLFLAG_RD, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.acpi_acad_softc*, %struct.acpi_acad_softc** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_acad_softc, %struct.acpi_acad_softc* %37, i32 0, i32 0
  %39 = load i32, i32* @acpi_acad_sysctl, align 4
  %40 = call i32 @SYSCTL_ADD_PROC(i32* %28, i32 %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %36, i32* %38, i32 0, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %24, %20
  %42 = load %struct.acpi_acad_softc*, %struct.acpi_acad_softc** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_acad_softc, %struct.acpi_acad_softc* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ACPI_ALL_NOTIFY, align 4
  %46 = load i32, i32* @acpi_acad_notify_handler, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @AcpiInstallNotifyHandler(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @OSL_NOTIFY_HANDLER, align 4
  %50 = load i32, i32* @acpi_acad_init_acline, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @AcpiOsExecute(i32 %49, i32 %50, i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %41, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.acpi_acad_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @acpi_register_ioctl(i32, i32, i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local %struct.acpi_softc* @acpi_device_get_parent_softc(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @AcpiInstallNotifyHandler(i32, i32, i32, i32) #1

declare dso_local i32 @AcpiOsExecute(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
