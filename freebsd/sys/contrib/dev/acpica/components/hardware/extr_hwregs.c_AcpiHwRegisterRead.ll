; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwregs.c_AcpiHwRegisterRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwregs.c_AcpiHwRegisterRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@HwRegisterRead = common dso_local global i32 0, align 4
@AcpiGbl_XPm1aStatus = common dso_local global i32 0, align 4
@AcpiGbl_XPm1bStatus = common dso_local global i32 0, align 4
@AcpiGbl_XPm1aEnable = common dso_local global i32 0, align 4
@AcpiGbl_XPm1bEnable = common dso_local global i32 0, align 4
@AcpiGbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_PM1_CONTROL_WRITEONLY_BITS = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown Register ID: 0x%X\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiHwRegisterRead(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @HwRegisterRead, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %43 [
    i32 131, label %12
    i32 132, label %14
    i32 133, label %16
    i32 130, label %22
    i32 129, label %31
    i32 128, label %40
  ]

12:                                               ; preds = %2
  %13 = call i32 @AcpiHwReadMultiple(i32* %6, i32* @AcpiGbl_XPm1aStatus, i32* @AcpiGbl_XPm1bStatus)
  store i32 %13, i32* %8, align 4
  br label %48

14:                                               ; preds = %2
  %15 = call i32 @AcpiHwReadMultiple(i32* %6, i32* @AcpiGbl_XPm1aEnable, i32* @AcpiGbl_XPm1bEnable)
  store i32 %15, i32* %8, align 4
  br label %48

16:                                               ; preds = %2
  %17 = call i32 @AcpiHwReadMultiple(i32* %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 3))
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @ACPI_PM1_CONTROL_WRITEONLY_BITS, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %48

22:                                               ; preds = %2
  %23 = call i32 @AcpiHwRead(i64* %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 2))
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @ACPI_SUCCESS(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %48

31:                                               ; preds = %2
  %32 = call i32 @AcpiHwRead(i64* %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 1))
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ACPI_SUCCESS(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %31
  br label %48

40:                                               ; preds = %2
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %42 = call i32 @AcpiHwReadPort(i32 %41, i32* %6, i32 8)
  store i32 %42, i32* %8, align 4
  br label %48

43:                                               ; preds = %2
  %44 = load i32, i32* @AE_INFO, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ACPI_ERROR(i32 %45)
  %47 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %40, %39, %30, %16, %14, %12
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @ACPI_SUCCESS(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiHwReadMultiple(i32*, i32*, i32*) #1

declare dso_local i32 @AcpiHwRead(i64*, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiHwReadPort(i32, i32*, i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
