; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbinstal.c_AcpiTbInstallStandardTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/tables/extr_tbinstal.c_AcpiTbInstallStandardTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@AE_OK = common dso_local global i64 0, align 8
@TbInstallStandardTable = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not acquire table length at %8.8X%8.8X\00", align 1
@AcpiGbl_DisableSsdtTableInstall = common dso_local global i64 0, align 8
@ACPI_SIG_SSDT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Ignoring installation of %4.4s at %8.8X%8.8X\00", align 1
@ACPI_MTX_TABLES = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8
@ACPI_TABLE_EVENT_INSTALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiTbInstallStandardTable(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i64, i64* @AE_OK, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i32, i32* @TbInstallStandardTable, align 4
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @AcpiTbAcquireTempTable(%struct.TYPE_8__* %14, i32 %18, i32 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = call i64 @ACPI_FAILURE(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ACPI_FORMAT_UINT64(i32 %26)
  %28 = call i32 @ACPI_ERROR(i32 %27)
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @return_ACPI_STATUS(i64 %29)
  br label %31

31:                                               ; preds = %24, %5
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @AcpiGbl_DisableSsdtTableInstall, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %39 = load i32, i32* @ACPI_SIG_SSDT, align 4
  %40 = call i64 @ACPI_COMPARE_NAMESEG(%struct.TYPE_9__* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ACPI_FORMAT_UINT64(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @ACPI_INFO(i8* %49)
  br label %86

51:                                               ; preds = %37, %34, %31
  %52 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %53 = call i32 @AcpiUtAcquireMutex(i32 %52)
  %54 = call i64 @AcpiTbVerifyTempTable(%struct.TYPE_8__* %14, i32* null, i32* %12)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i64 @ACPI_FAILURE(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = call i32 @AcpiTbUninstallTable(%struct.TYPE_8__* %14)
  %64 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %65 = call i32 @AcpiUtReleaseMutex(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i64, i64* @AE_OK, align 8
  %69 = call i32 @return_ACPI_STATUS(i64 %68)
  br label %70

70:                                               ; preds = %62, %58
  br label %83

71:                                               ; preds = %51
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @AcpiTbInstallTableWithOverride(%struct.TYPE_8__* %14, i32 %72, i32* %73)
  %75 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %76 = call i32 @AcpiUtReleaseMutex(i32 %75)
  %77 = load i32, i32* @ACPI_TABLE_EVENT_INSTALL, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @AcpiTbNotifyTable(i32 %77, i32 %79)
  %81 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %82 = call i32 @AcpiUtAcquireMutex(i32 %81)
  br label %83

83:                                               ; preds = %71, %70
  %84 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %85 = call i32 @AcpiUtReleaseMutex(i32 %84)
  br label %86

86:                                               ; preds = %83, %42
  %87 = call i32 @AcpiTbReleaseTempTable(%struct.TYPE_8__* %14)
  %88 = load i64, i64* %13, align 8
  %89 = call i32 @return_ACPI_STATUS(i64 %88)
  %90 = load i64, i64* %6, align 8
  ret i64 %90
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @AcpiTbAcquireTempTable(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @ACPI_COMPARE_NAMESEG(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ACPI_INFO(i8*) #1

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

declare dso_local i64 @AcpiTbVerifyTempTable(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @AcpiTbUninstallTable(%struct.TYPE_8__*) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

declare dso_local i32 @AcpiTbInstallTableWithOverride(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @AcpiTbNotifyTable(i32, i32) #1

declare dso_local i32 @AcpiTbReleaseTempTable(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
