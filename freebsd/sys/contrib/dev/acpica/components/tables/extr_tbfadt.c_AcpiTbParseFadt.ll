; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbfadt.c_AcpiTbParseFadt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbfadt.c_AcpiTbParseFadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@AcpiGbl_RootTableList = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AcpiGbl_FadtIndex = common dso_local global i64 0, align 8
@AcpiGbl_FADT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_DsdtIndex = common dso_local global i32 0, align 4
@AcpiGbl_ReducedHardware = common dso_local global i32 0, align 4
@AcpiGbl_FacsIndex = common dso_local global i32 0, align 4
@AcpiGbl_XFacsIndex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiTbParseFadt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @AcpiGbl_RootTableList, i32 0, i32 0), align 8
  %6 = load i64, i64* @AcpiGbl_FadtIndex, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i64 %6
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @AcpiTbGetTable(%struct.TYPE_6__* %8, i32** %2)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %55

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %1, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @AcpiTbVerifyChecksum(i32* %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @AcpiTbCreateLocalFadt(i32* %21, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i32 @AcpiTbPutTable(%struct.TYPE_6__* %24)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_FADT, i32 0, i32 2), align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @AcpiTbInstallStandardTable(i32 %27, i32 %28, i32 %29, i32 %30, i32* @AcpiGbl_DsdtIndex)
  %32 = load i32, i32* @AcpiGbl_ReducedHardware, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %14
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_FADT, i32 0, i32 1), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_FADT, i32 0, i32 1), align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @AcpiTbInstallStandardTable(i32 %39, i32 %40, i32 %41, i32 %42, i32* @AcpiGbl_FacsIndex)
  br label %44

44:                                               ; preds = %37, %34
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_FADT, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @AcpiGbl_FADT, i32 0, i32 0), align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @ACPI_TABLE_ORIGIN_INTERNAL_PHYSICAL, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @AcpiTbInstallStandardTable(i32 %49, i32 %50, i32 %51, i32 %52, i32* @AcpiGbl_XFacsIndex)
  br label %54

54:                                               ; preds = %47, %44
  br label %55

55:                                               ; preds = %13, %54, %14
  ret void
}

declare dso_local i32 @AcpiTbGetTable(%struct.TYPE_6__*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiTbVerifyChecksum(i32*, i32) #1

declare dso_local i32 @AcpiTbCreateLocalFadt(i32*, i32) #1

declare dso_local i32 @AcpiTbPutTable(%struct.TYPE_6__*) #1

declare dso_local i32 @AcpiTbInstallStandardTable(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
