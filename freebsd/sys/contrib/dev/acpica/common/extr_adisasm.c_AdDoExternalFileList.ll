; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdDoExternalFileList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdDoExternalFileList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }

@AE_OK = common dso_local global i64 0, align 8
@AcpiGbl_ExternalFileList = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"External object resolution file %16s\0A\00", align 1
@ACPI_GET_ONLY_AML_TABLES = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not parse external ACPI tables, %s\0A\00", align 1
@AcpiGbl_ParseOpRoot = common dso_local global i32 0, align 4
@AcpiGbl_RootNode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @AdDoExternalFileList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AdDoExternalFileList(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %10 = load i64, i64* @AE_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_ExternalFileList, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  br label %12

12:                                               ; preds = %80, %40, %23, %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %84

15:                                               ; preds = %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strcmp(i8* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %4, align 8
  br label %12

27:                                               ; preds = %15
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @ACPI_GET_ONLY_AML_TABLES, align 4
  %32 = call i64 @AcGetAllTablesFromFile(i8* %30, i32 %31, %struct.TYPE_6__** %6)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @ACPI_FAILURE(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @AE_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %4, align 8
  %44 = load i64, i64* @AE_TYPE, align 8
  store i64 %44, i64* %8, align 8
  br label %12

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = call i32 @AcDeleteTableList(%struct.TYPE_6__* %46)
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %2, align 8
  br label %100

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %70, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i64 @AdParseTable(i32 %56, i32* %9, i32 %57, i32 %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @ACPI_FAILURE(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load i64, i64* %7, align 8
  %65 = call i8* @AcpiFormatException(i64 %64)
  %66 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = call i32 @AcDeleteTableList(%struct.TYPE_6__* %67)
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %2, align 8
  br label %100

70:                                               ; preds = %53
  %71 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %72 = load i32, i32* @AcpiGbl_RootNode, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @AcpiDmFinishNamespaceLoad(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %76 = call i32 @AcpiPsDeleteParseTree(i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %6, align 8
  br label %50

80:                                               ; preds = %50
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %4, align 8
  br label %12

84:                                               ; preds = %12
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = call i32 @AcDeleteTableList(%struct.TYPE_6__* %85)
  %87 = load i64, i64* %8, align 8
  %88 = call i64 @ACPI_FAILURE(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %2, align 8
  br label %100

92:                                               ; preds = %84
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_ExternalFileList, align 8
  %94 = icmp ne %struct.TYPE_7__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 (...) @AcpiDmClearExternalList()
  br label %97

97:                                               ; preds = %95, %92
  %98 = call i32 (...) @AcpiDmGetExternalsFromFile()
  %99 = load i64, i64* @AE_OK, align 8
  store i64 %99, i64* %2, align 8
  br label %100

100:                                              ; preds = %97, %90, %63, %45
  %101 = load i64, i64* %2, align 8
  ret i64 %101
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i8*) #1

declare dso_local i64 @AcGetAllTablesFromFile(i8*, i32, %struct.TYPE_6__**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @AcDeleteTableList(%struct.TYPE_6__*) #1

declare dso_local i64 @AdParseTable(i32, i32*, i32, i32) #1

declare dso_local i8* @AcpiFormatException(i64) #1

declare dso_local i32 @AcpiDmFinishNamespaceLoad(i32, i32, i32) #1

declare dso_local i32 @AcpiPsDeleteParseTree(i32) #1

declare dso_local i32 @AcpiDmClearExternalList(...) #1

declare dso_local i32 @AcpiDmGetExternalsFromFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
