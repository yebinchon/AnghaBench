; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_sleep_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_sleep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_softc = type { i64 }

@AcpiGbl_SystemAwakeAndRunning = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@acpi = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_softc*)* @acpi_sleep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_sleep_disable(%struct.acpi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_softc* %0, %struct.acpi_softc** %3, align 8
  %5 = load i32, i32* @AcpiGbl_SystemAwakeAndRunning, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @AE_ERROR, align 4
  store i32 %8, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @acpi, align 4
  %11 = call i32 @ACPI_LOCK(i32 %10)
  %12 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @AE_ERROR, align 4
  br label %20

18:                                               ; preds = %9
  %19 = load i32, i32* @AE_OK, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %4, align 4
  %22 = load i64, i64* @TRUE, align 8
  %23 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @acpi, align 4
  %26 = call i32 @ACPI_UNLOCK(i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ACPI_LOCK(i32) #1

declare dso_local i32 @ACPI_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
