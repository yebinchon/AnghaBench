; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_startup_cx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_startup_cx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpu_softc = type { i32, i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cx_supported\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Cx/microsecond values for supported Cx states\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cx_lowest\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@acpi_cpu_cx_lowest_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"lowest Cx sleep state to use\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"cx_usage\00", align 1
@acpi_cpu_usage_sysctl = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"percent usage for each Cx state\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"cx_usage_counters\00", align 1
@acpi_cpu_usage_counters_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Cx sleep state counters\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"cx_method\00", align 1
@acpi_cpu_method_sysctl = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"Cx entrance methods\00", align 1
@cpu_cx_generic = common dso_local global i32 0, align 4
@cpu_cst_cnt = common dso_local global i64 0, align 8
@acpi = common dso_local global i32 0, align 4
@cpu_smi_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_cpu_softc*)* @acpi_cpu_startup_cx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cpu_startup_cx(%struct.acpi_cpu_softc* %0) #0 {
  %2 = alloca %struct.acpi_cpu_softc*, align 8
  store %struct.acpi_cpu_softc* %0, %struct.acpi_cpu_softc** %2, align 8
  %3 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %4 = call i32 @acpi_cpu_cx_list(%struct.acpi_cpu_softc* %3)
  %5 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %5, i32 0, i32 1
  %7 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %8 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @device_get_sysctl_tree(i32 %9)
  %11 = call i32 @SYSCTL_CHILDREN(i32 %10)
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RD, align 4
  %14 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SYSCTL_ADD_STRING(i32* %6, i32 %11, i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %18, i32 0, i32 1
  %20 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_get_sysctl_tree(i32 %22)
  %24 = call i32 @SYSCTL_CHILDREN(i32 %23)
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLTYPE_STRING, align 4
  %27 = load i32, i32* @CTLFLAG_RW, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %30 = bitcast %struct.acpi_cpu_softc* %29 to i8*
  %31 = load i32, i32* @acpi_cpu_cx_lowest_sysctl, align 4
  %32 = call i32 @SYSCTL_ADD_PROC(i32* %19, i32 %24, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* %30, i32 0, i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %34 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %33, i32 0, i32 1
  %35 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %36 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_get_sysctl_tree(i32 %37)
  %39 = call i32 @SYSCTL_CHILDREN(i32 %38)
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLTYPE_STRING, align 4
  %42 = load i32, i32* @CTLFLAG_RD, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %45 = bitcast %struct.acpi_cpu_softc* %44 to i8*
  %46 = load i32, i32* @acpi_cpu_usage_sysctl, align 4
  %47 = call i32 @SYSCTL_ADD_PROC(i32* %34, i32 %39, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %43, i8* %45, i32 0, i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %48 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %49 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %48, i32 0, i32 1
  %50 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %51 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_get_sysctl_tree(i32 %52)
  %54 = call i32 @SYSCTL_CHILDREN(i32 %53)
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLTYPE_STRING, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %60 = bitcast %struct.acpi_cpu_softc* %59 to i8*
  %61 = load i32, i32* @acpi_cpu_usage_counters_sysctl, align 4
  %62 = call i32 @SYSCTL_ADD_PROC(i32* %49, i32 %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %58, i8* %60, i32 0, i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %63 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %64 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %63, i32 0, i32 1
  %65 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %66 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_get_sysctl_tree(i32 %67)
  %69 = call i32 @SYSCTL_CHILDREN(i32 %68)
  %70 = load i32, i32* @OID_AUTO, align 4
  %71 = load i32, i32* @CTLTYPE_STRING, align 4
  %72 = load i32, i32* @CTLFLAG_RD, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %75 = bitcast %struct.acpi_cpu_softc* %74 to i8*
  %76 = load i32, i32* @acpi_cpu_method_sysctl, align 4
  %77 = call i32 @SYSCTL_ADD_PROC(i32* %64, i32 %69, i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %73, i8* %75, i32 0, i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %78 = load i32, i32* @cpu_cx_generic, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %1
  %81 = load i64, i64* @cpu_cst_cnt, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32, i32* @acpi, align 4
  %85 = call i32 @ACPI_LOCK(i32 %84)
  %86 = load i32, i32* @cpu_smi_cmd, align 4
  %87 = load i64, i64* @cpu_cst_cnt, align 8
  %88 = call i32 @AcpiOsWritePort(i32 %86, i64 %87, i32 8)
  %89 = load i32, i32* @acpi, align 4
  %90 = call i32 @ACPI_UNLOCK(i32 %89)
  br label %91

91:                                               ; preds = %83, %80, %1
  ret void
}

declare dso_local i32 @acpi_cpu_cx_list(%struct.acpi_cpu_softc*) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @ACPI_LOCK(i32) #1

declare dso_local i32 @AcpiOsWritePort(i32, i64, i32) #1

declare dso_local i32 @ACPI_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
