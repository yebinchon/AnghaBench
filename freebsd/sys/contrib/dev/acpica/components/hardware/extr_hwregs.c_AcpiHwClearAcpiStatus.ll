; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwregs.c_AcpiHwClearAcpiStatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwregs.c_AcpiHwClearAcpiStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@HwClearAcpiStatus = common dso_local global i32 0, align 4
@ACPI_DB_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"About to write %04X to %8.8X%8.8X\0A\00", align 1
@ACPI_BITMASK_ALL_FIXED_STATUS = common dso_local global i32 0, align 4
@AcpiGbl_XPm1aStatus = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AcpiGbl_HardwareLock = common dso_local global i32 0, align 4
@ACPI_REGISTER_PM1_STATUS = common dso_local global i32 0, align 4
@AcpiHwClearGpeBlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiHwClearAcpiStatus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @HwClearAcpiStatus, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load i32, i32* @ACPI_DB_IO, align 4
  %7 = load i32, i32* @ACPI_BITMASK_ALL_FIXED_STATUS, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_XPm1aStatus, i32 0, i32 0), align 4
  %9 = call i32 @ACPI_FORMAT_UINT64(i32 %8)
  %10 = call i32 @ACPI_DEBUG_PRINT(i32 %9)
  %11 = load i32, i32* @AcpiGbl_HardwareLock, align 4
  %12 = call i32 @AcpiOsAcquireLock(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @ACPI_REGISTER_PM1_STATUS, align 4
  %14 = load i32, i32* @ACPI_BITMASK_ALL_FIXED_STATUS, align 4
  %15 = call i32 @AcpiHwRegisterWrite(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @AcpiGbl_HardwareLock, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @AcpiOsReleaseLock(i32 %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %26

23:                                               ; preds = %0
  %24 = load i32, i32* @AcpiHwClearGpeBlock, align 4
  %25 = call i32 @AcpiEvWalkGpeList(i32 %24, i32* null)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @AcpiOsAcquireLock(i32) #1

declare dso_local i32 @AcpiHwRegisterWrite(i32, i32) #1

declare dso_local i32 @AcpiOsReleaseLock(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiEvWalkGpeList(i32, i32*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
