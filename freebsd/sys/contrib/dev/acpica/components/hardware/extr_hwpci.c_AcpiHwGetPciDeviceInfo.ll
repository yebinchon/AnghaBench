; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwpci.c_AcpiHwGetPciDeviceInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwpci.c_AcpiHwGetPciDeviceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@METHOD_NAME__ADR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PCI_CFG_HEADER_TYPE_REG = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_MASK = common dso_local global i64 0, align 8
@PCI_TYPE_BRIDGE = common dso_local global i64 0, align 8
@PCI_TYPE_CARDBUS_BRIDGE = common dso_local global i64 0, align 8
@PCI_CFG_PRIMARY_BUS_NUMBER_REG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PCI_CFG_SECONDARY_BUS_NUMBER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8**, i64*)* @AcpiHwGetPciDeviceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiHwGetPciDeviceInfo(%struct.TYPE_4__* %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @AcpiGetType(i32 %14, i64* %11)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %108

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @AE_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %108

27:                                               ; preds = %21
  %28 = load i32, i32* @METHOD_NAME__ADR, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @AcpiUtEvaluateNumericObject(i32 %28, i32 %29, i64* %12)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @AE_OK, align 4
  store i32 %35, i32* %5, align 4
  br label %108

36:                                               ; preds = %27
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @ACPI_LODWORD(i64 %37)
  %39 = call i32 @ACPI_HIWORD(i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @ACPI_LODWORD(i64 %42)
  %44 = call i32 @ACPI_LOWORD(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %36
  %56 = load i64, i64* @FALSE, align 8
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = load i32, i32* @PCI_CFG_HEADER_TYPE_REG, align 4
  %60 = call i32 @AcpiOsReadPciConfiguration(%struct.TYPE_4__* %58, i32 %59, i64* %13, i32 8)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @ACPI_FAILURE(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %108

66:                                               ; preds = %55
  %67 = load i64, i64* @PCI_HEADER_TYPE_MASK, align 8
  %68 = load i64, i64* %13, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @PCI_TYPE_BRIDGE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @PCI_TYPE_CARDBUS_BRIDGE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @AE_OK, align 4
  store i32 %78, i32* %5, align 4
  br label %108

79:                                               ; preds = %73, %66
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = load i32, i32* @PCI_CFG_PRIMARY_BUS_NUMBER_REG, align 4
  %82 = call i32 @AcpiOsReadPciConfiguration(%struct.TYPE_4__* %80, i32 %81, i64* %13, i32 8)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @ACPI_FAILURE(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %5, align 4
  br label %108

88:                                               ; preds = %79
  %89 = load i64, i64* @TRUE, align 8
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* %13, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = load i32, i32* @PCI_CFG_SECONDARY_BUS_NUMBER_REG, align 4
  %97 = call i32 @AcpiOsReadPciConfiguration(%struct.TYPE_4__* %95, i32 %96, i64* %13, i32 8)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @ACPI_FAILURE(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %108

103:                                              ; preds = %88
  %104 = load i64, i64* %13, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8**, i8*** %8, align 8
  store i8* %105, i8** %106, align 8
  %107 = load i32, i32* @AE_OK, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %103, %101, %86, %77, %64, %34, %25, %19
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @AcpiGetType(i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiUtEvaluateNumericObject(i32, i32, i64*) #1

declare dso_local i32 @ACPI_HIWORD(i32) #1

declare dso_local i32 @ACPI_LODWORD(i64) #1

declare dso_local i32 @ACPI_LOWORD(i32) #1

declare dso_local i32 @AcpiOsReadPciConfiguration(%struct.TYPE_4__*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
