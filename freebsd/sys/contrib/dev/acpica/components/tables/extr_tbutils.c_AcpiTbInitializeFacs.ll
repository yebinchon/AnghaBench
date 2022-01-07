; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbutils.c_AcpiTbInitializeFacs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbutils.c_AcpiTbInitializeFacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@AcpiGbl_ReducedHardware = common dso_local global i64 0, align 8
@AcpiGbl_FACS = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@AcpiGbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AcpiGbl_Use32BitFacsAddresses = common dso_local global i32 0, align 4
@AcpiGbl_XFacsIndex = common dso_local global i32 0, align 4
@ACPI_TABLE_HEADER = common dso_local global i32 0, align 4
@AcpiGbl_FacsIndex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiTbInitializeFacs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @AcpiGbl_ReducedHardware, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  store i32* null, i32** @AcpiGbl_FACS, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %1, align 4
  br label %35

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 1), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @AcpiGbl_Use32BitFacsAddresses, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @AcpiGbl_XFacsIndex, align 4
  %18 = load i32, i32* @ACPI_TABLE_HEADER, align 4
  %19 = call i32 @ACPI_CAST_INDIRECT_PTR(i32 %18, i32** %2)
  %20 = call i32 @AcpiGetTableByIndex(i32 %17, i32 %19)
  %21 = load i32*, i32** %2, align 8
  store i32* %21, i32** @AcpiGbl_FACS, align 8
  br label %32

22:                                               ; preds = %13, %7
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 0), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @AcpiGbl_FacsIndex, align 4
  %27 = load i32, i32* @ACPI_TABLE_HEADER, align 4
  %28 = call i32 @ACPI_CAST_INDIRECT_PTR(i32 %27, i32** %2)
  %29 = call i32 @AcpiGetTableByIndex(i32 %26, i32 %28)
  %30 = load i32*, i32** %2, align 8
  store i32* %30, i32** @AcpiGbl_FACS, align 8
  br label %31

31:                                               ; preds = %25, %22
  br label %32

32:                                               ; preds = %31, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @AE_OK, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %5
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @AcpiGetTableByIndex(i32, i32) #1

declare dso_local i32 @ACPI_CAST_INDIRECT_PTR(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
