; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_battery.c_acpi_battery_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_battery.c_acpi_battery_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.acpi_softc = type { i32 }

@battery = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@ACPIIO_BATT_GET_UNITS = common dso_local global i32 0, align 4
@acpi_battery_ioctl = common dso_local global i32 0, align 4
@ACPIIO_BATT_GET_BATTINFO = common dso_local global i32 0, align 4
@ACPIIO_BATT_GET_BIF = common dso_local global i32 0, align 4
@ACPIIO_BATT_GET_BST = common dso_local global i32 0, align 4
@acpi_battery_sysctl_ctx = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"battery status and info\00", align 1
@acpi_battery_sysctl_tree = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"life\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@acpi_battery_battinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@acpi_battery_sysctl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"percent capacity remaining\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"remaining time in minutes\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"present rate in mW\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"current status flags\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@acpi_battery_units_sysctl = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"number of batteries\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"info_expire\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@acpi_battery_info_expire = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [40 x i8] c"time in seconds until info is refreshed\00", align 1
@TRUE = common dso_local global i32 0, align 4
@acpi_batteries_initted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acpi_battery_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_init() #0 {
  %1 = alloca %struct.acpi_softc*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @battery, align 4
  %5 = call i32 @ACPI_SERIAL_ASSERT(i32 %4)
  %6 = load i32, i32* @ENXIO, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = call i32* @devclass_get_device(i32 %7, i32 0)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %97

12:                                               ; preds = %0
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.acpi_softc* @device_get_softc(i32* %13)
  store %struct.acpi_softc* %14, %struct.acpi_softc** %1, align 8
  %15 = load i32, i32* @ACPIIO_BATT_GET_UNITS, align 4
  %16 = load i32, i32* @acpi_battery_ioctl, align 4
  %17 = call i32 @acpi_register_ioctl(i32 %15, i32 %16, i32* null)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %97

21:                                               ; preds = %12
  %22 = load i32, i32* @ACPIIO_BATT_GET_BATTINFO, align 4
  %23 = load i32, i32* @acpi_battery_ioctl, align 4
  %24 = call i32 @acpi_register_ioctl(i32 %22, i32 %23, i32* null)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %97

28:                                               ; preds = %21
  %29 = load i32, i32* @ACPIIO_BATT_GET_BIF, align 4
  %30 = load i32, i32* @acpi_battery_ioctl, align 4
  %31 = call i32 @acpi_register_ioctl(i32 %29, i32 %30, i32* null)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %97

35:                                               ; preds = %28
  %36 = load i32, i32* @ACPIIO_BATT_GET_BST, align 4
  %37 = load i32, i32* @acpi_battery_ioctl, align 4
  %38 = call i32 @acpi_register_ioctl(i32 %36, i32 %37, i32* null)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %97

42:                                               ; preds = %35
  %43 = call i32 @sysctl_ctx_init(i32* @acpi_battery_sysctl_ctx)
  %44 = load %struct.acpi_softc*, %struct.acpi_softc** %1, align 8
  %45 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SYSCTL_CHILDREN(i32 %46)
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RD, align 4
  %50 = call i32 @SYSCTL_ADD_NODE(i32* @acpi_battery_sysctl_ctx, i32 %47, i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* @acpi_battery_sysctl_tree, align 4
  %51 = load i32, i32* @acpi_battery_sysctl_tree, align 4
  %52 = call i32 @SYSCTL_CHILDREN(i32 %51)
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLTYPE_INT, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @acpi_battery_sysctl, align 4
  %58 = call i32 @SYSCTL_ADD_PROC(i32* @acpi_battery_sysctl_ctx, i32 %52, i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_battery_battinfo, i32 0, i32 3), i32 0, i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @acpi_battery_sysctl_tree, align 4
  %60 = call i32 @SYSCTL_CHILDREN(i32 %59)
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = load i32, i32* @CTLTYPE_INT, align 4
  %63 = load i32, i32* @CTLFLAG_RD, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @acpi_battery_sysctl, align 4
  %66 = call i32 @SYSCTL_ADD_PROC(i32* @acpi_battery_sysctl_ctx, i32 %60, i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_battery_battinfo, i32 0, i32 2), i32 0, i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i32, i32* @acpi_battery_sysctl_tree, align 4
  %68 = call i32 @SYSCTL_CHILDREN(i32 %67)
  %69 = load i32, i32* @OID_AUTO, align 4
  %70 = load i32, i32* @CTLTYPE_INT, align 4
  %71 = load i32, i32* @CTLFLAG_RD, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @acpi_battery_sysctl, align 4
  %74 = call i32 @SYSCTL_ADD_PROC(i32* @acpi_battery_sysctl_ctx, i32 %68, i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_battery_battinfo, i32 0, i32 1), i32 0, i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i32, i32* @acpi_battery_sysctl_tree, align 4
  %76 = call i32 @SYSCTL_CHILDREN(i32 %75)
  %77 = load i32, i32* @OID_AUTO, align 4
  %78 = load i32, i32* @CTLTYPE_INT, align 4
  %79 = load i32, i32* @CTLFLAG_RD, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @acpi_battery_sysctl, align 4
  %82 = call i32 @SYSCTL_ADD_PROC(i32* @acpi_battery_sysctl_ctx, i32 %76, i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %80, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_battery_battinfo, i32 0, i32 0), i32 0, i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %83 = load i32, i32* @acpi_battery_sysctl_tree, align 4
  %84 = call i32 @SYSCTL_CHILDREN(i32 %83)
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLTYPE_INT, align 4
  %87 = load i32, i32* @CTLFLAG_RD, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @acpi_battery_units_sysctl, align 4
  %90 = call i32 @SYSCTL_ADD_PROC(i32* @acpi_battery_sysctl_ctx, i32 %84, i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %88, i32* null, i32 0, i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %91 = load i32, i32* @acpi_battery_sysctl_tree, align 4
  %92 = call i32 @SYSCTL_CHILDREN(i32 %91)
  %93 = load i32, i32* @OID_AUTO, align 4
  %94 = load i32, i32* @CTLFLAG_RW, align 4
  %95 = call i32 @SYSCTL_ADD_INT(i32* @acpi_battery_sysctl_ctx, i32 %92, i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %94, i32* @acpi_battery_info_expire, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* @acpi_batteries_initted, align 4
  br label %97

97:                                               ; preds = %42, %41, %34, %27, %20, %11
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load i32, i32* @ACPIIO_BATT_GET_UNITS, align 4
  %102 = load i32, i32* @acpi_battery_ioctl, align 4
  %103 = call i32 @acpi_deregister_ioctl(i32 %101, i32 %102)
  %104 = load i32, i32* @ACPIIO_BATT_GET_BATTINFO, align 4
  %105 = load i32, i32* @acpi_battery_ioctl, align 4
  %106 = call i32 @acpi_deregister_ioctl(i32 %104, i32 %105)
  %107 = load i32, i32* @ACPIIO_BATT_GET_BIF, align 4
  %108 = load i32, i32* @acpi_battery_ioctl, align 4
  %109 = call i32 @acpi_deregister_ioctl(i32 %107, i32 %108)
  %110 = load i32, i32* @ACPIIO_BATT_GET_BST, align 4
  %111 = load i32, i32* @acpi_battery_ioctl, align 4
  %112 = call i32 @acpi_deregister_ioctl(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %100, %97
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local %struct.acpi_softc* @device_get_softc(i32*) #1

declare dso_local i32 @acpi_register_ioctl(i32, i32, i32*) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32 @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @acpi_deregister_ioctl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
