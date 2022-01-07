; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_panasonic.c_acpi_panasonic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_panasonic.c_acpi_panasonic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.acpi_panasonic_softc = type { i32, i32, i32, i32, i32 }
%struct.acpi_softc = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"panasonic\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sysctl_table = common dso_local global %struct.TYPE_2__* null, align 8
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_ANYBODY = common dso_local global i32 0, align 4
@acpi_panasonic_sysctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_panasonic_notify = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"couldn't install notify handler - %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@power_profile_change = common dso_local global i32 0, align 4
@acpi_panasonic_power_profile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_panasonic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_panasonic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_panasonic_softc*, align 8
  %5 = alloca %struct.acpi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.acpi_panasonic_softc* @device_get_softc(i32 %8)
  store %struct.acpi_panasonic_softc* %9, %struct.acpi_panasonic_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @acpi_get_handle(i32 %13)
  %15 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.acpi_softc* @acpi_device_get_parent_softc(i32 %17)
  store %struct.acpi_softc* %18, %struct.acpi_softc** %5, align 8
  %19 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %19, i32 0, i32 2
  %21 = call i32 @sysctl_ctx_init(i32* %20)
  %22 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %22, i32 0, i32 2
  %24 = load %struct.acpi_softc*, %struct.acpi_softc** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SYSCTL_CHILDREN(i32 %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = call i32 @SYSCTL_ADD_NODE(i32* %23, i32 %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %64, %1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysctl_table, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %42, i32 0, i32 2
  %44 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SYSCTL_CHILDREN(i32 %46)
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sysctl_table, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @CTLTYPE_INT, align 4
  %56 = load i32, i32* @CTLFLAG_RW, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @acpi_panasonic_sysctl, align 4
  %63 = call i32 @SYSCTL_ADD_PROC(i32* %43, i32 %47, i32 %48, i32* %54, i32 %59, %struct.acpi_panasonic_softc* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %41
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %33

67:                                               ; preds = %33
  %68 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %69 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %72 = load i32, i32* @acpi_panasonic_notify, align 4
  %73 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %74 = call i32 @AcpiInstallNotifyHandler(i32 %70, i32 %71, i32 %72, %struct.acpi_panasonic_softc* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @ACPI_FAILURE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %67
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @AcpiFormatException(i32 %80)
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %84 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %83, i32 0, i32 2
  %85 = call i32 @sysctl_ctx_free(i32* %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %96

87:                                               ; preds = %67
  %88 = load i32, i32* @power_profile_change, align 4
  %89 = load i32, i32* @acpi_panasonic_power_profile, align 4
  %90 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %91 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @EVENTHANDLER_REGISTER(i32 %88, i32 %89, i32 %92, i32 0)
  %94 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %4, align 8
  %95 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %87, %78
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.acpi_panasonic_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local %struct.acpi_softc* @acpi_device_get_parent_softc(i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32 @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i32*, i32, %struct.acpi_panasonic_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @AcpiInstallNotifyHandler(i32, i32, i32, %struct.acpi_panasonic_softc*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
