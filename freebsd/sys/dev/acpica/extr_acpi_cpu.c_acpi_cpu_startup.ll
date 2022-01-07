; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpu_softc = type { i32, i64, i32 }

@acpi_cpu_devclass = common dso_local global i32 0, align 4
@cpu_devices = common dso_local global i32* null, align 8
@cpu_ndevices = common dso_local global i32 0, align 4
@cpu_cx_generic = common dso_local global i64 0, align 8
@cpu_quirks = common dso_local global i32 0, align 4
@CPU_QUIRK_NO_C3 = common dso_local global i32 0, align 4
@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_cpu_notify = common dso_local global i32 0, align 4
@cpu_sysctl_ctx = common dso_local global i32 0, align 4
@cpu_sysctl_tree = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cx_lowest\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@acpi_cpu_global_cx_lowest_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Global lowest Cx sleep state to use\00", align 1
@cpu_cx_lowest_lim = common dso_local global i64 0, align 8
@acpi_cpu_idle = common dso_local global i32 0, align 4
@cpu_idle_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_cpu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cpu_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_cpu_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @acpi_cpu_devclass, align 4
  %6 = call i32 @devclass_get_devices(i32 %5, i32** @cpu_devices, i32* @cpu_ndevices)
  %7 = call i32 (...) @acpi_cpu_quirks()
  %8 = load i64, i64* @cpu_cx_generic, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @cpu_ndevices, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32*, i32** @cpu_devices, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.acpi_cpu_softc* @device_get_softc(i32 %20)
  store %struct.acpi_cpu_softc* %21, %struct.acpi_cpu_softc** %3, align 8
  %22 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %23 = call i32 @acpi_cpu_generic_cx_probe(%struct.acpi_cpu_softc* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %11
  br label %67

28:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @cpu_ndevices, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i32*, i32** @cpu_devices, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.acpi_cpu_softc* @device_get_softc(i32 %38)
  store %struct.acpi_cpu_softc* %39, %struct.acpi_cpu_softc** %3, align 8
  %40 = load i32, i32* @cpu_quirks, align 4
  %41 = load i32, i32* @CPU_QUIRK_NO_C3, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %33
  %45 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @min(i32 %47, i64 %51)
  %53 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %44, %33
  %56 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %57 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %60 = load i32, i32* @acpi_cpu_notify, align 4
  %61 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %62 = call i32 @AcpiInstallNotifyHandler(i32 %58, i32 %59, i32 %60, %struct.acpi_cpu_softc* %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %29

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %66, %27
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %81, %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @cpu_ndevices, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32*, i32** @cpu_devices, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.acpi_cpu_softc* @device_get_softc(i32 %77)
  store %struct.acpi_cpu_softc* %78, %struct.acpi_cpu_softc** %3, align 8
  %79 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %80 = call i32 @acpi_cpu_startup_cx(%struct.acpi_cpu_softc* %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %68

84:                                               ; preds = %68
  %85 = load i32, i32* @cpu_sysctl_tree, align 4
  %86 = call i32 @SYSCTL_CHILDREN(i32 %85)
  %87 = load i32, i32* @OID_AUTO, align 4
  %88 = load i32, i32* @CTLTYPE_STRING, align 4
  %89 = load i32, i32* @CTLFLAG_RW, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @acpi_cpu_global_cx_lowest_sysctl, align 4
  %92 = call i32 @SYSCTL_ADD_PROC(i32* @cpu_sysctl_ctx, i32 %86, i32 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %90, i32* null, i32 0, i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* @cpu_cx_lowest_lim, align 8
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %106, %84
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @cpu_ndevices, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load i32*, i32** @cpu_devices, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.acpi_cpu_softc* @device_get_softc(i32 %102)
  store %struct.acpi_cpu_softc* %103, %struct.acpi_cpu_softc** %3, align 8
  %104 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %3, align 8
  %105 = call i32 @enable_idle(%struct.acpi_cpu_softc* %104)
  br label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %93

109:                                              ; preds = %93
  %110 = load i32, i32* @acpi_cpu_idle, align 4
  store i32 %110, i32* @cpu_idle_hook, align 4
  ret void
}

declare dso_local i32 @devclass_get_devices(i32, i32**, i32*) #1

declare dso_local i32 @acpi_cpu_quirks(...) #1

declare dso_local %struct.acpi_cpu_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_cpu_generic_cx_probe(%struct.acpi_cpu_softc*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @AcpiInstallNotifyHandler(i32, i32, i32, %struct.acpi_cpu_softc*) #1

declare dso_local i32 @acpi_cpu_startup_cx(%struct.acpi_cpu_softc*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @enable_idle(%struct.acpi_cpu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
