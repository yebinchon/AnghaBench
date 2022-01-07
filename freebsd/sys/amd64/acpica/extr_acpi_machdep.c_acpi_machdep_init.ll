; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/acpica/extr_acpi_machdep.c_acpi_machdep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/acpica/extr_acpi_machdep.c_acpi_machdep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_softc = type { i32, i32 }

@intr_model = common dso_local global i64 0, align 8
@ACPI_INTR_PIC = common dso_local global i64 0, align 8
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reset_video\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@acpi_reset_video = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Call the VESA reset BIOS vector on the resume path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_machdep_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.acpi_softc* @device_get_softc(i32 %4)
  store %struct.acpi_softc* %5, %struct.acpi_softc** %3, align 8
  %6 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %7 = call i32 @acpi_apm_init(%struct.acpi_softc* %6)
  %8 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %9 = call i32 @acpi_install_wakeup_handler(%struct.acpi_softc* %8)
  %10 = load i64, i64* @intr_model, align 8
  %11 = load i64, i64* @ACPI_INTR_PIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* @intr_model, align 8
  %15 = call i32 @acpi_SetIntrModel(i64 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %17, i32 0, i32 1
  %19 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SYSCTL_CHILDREN(i32 %21)
  %23 = load i32, i32* @OID_AUTO, align 4
  %24 = load i32, i32* @CTLFLAG_RW, align 4
  %25 = call i32 @SYSCTL_ADD_INT(i32* %18, i32 %22, i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24, i32* @acpi_reset_video, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.acpi_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_apm_init(%struct.acpi_softc*) #1

declare dso_local i32 @acpi_install_wakeup_handler(%struct.acpi_softc*) #1

declare dso_local i32 @acpi_SetIntrModel(i64) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
