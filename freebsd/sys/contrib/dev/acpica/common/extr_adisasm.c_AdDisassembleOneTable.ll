; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdDisassembleOneTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdDisassembleOneTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@AcpiGbl_ForceAmlDisassembly = common dso_local global i32 0, align 4
@ACPI_IS_DATA_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c" * ACPI Data Table [%4.4s]\0A *\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c" * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue\0A */\0A\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Acpi Data Table [%4.4s] decoded\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Formatted output:  %s - %u bytes\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not parse ACPI tables, %s\0A\00", align 1
@AslCompilerdebug = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"/**** Before second load\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"*****/\0A\00", align 1
@AcpiGbl_ParseOpRoot = common dso_local global i32 0, align 4
@AcpiGbl_RootNode = common dso_local global i32 0, align 4
@AcpiGbl_DmOpt_Disasm = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"Disassembly completed\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"ASL Output:    %s - %u bytes\0A\00", align 1
@AslGbl_MapfileFlag = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"%14s %s - %u bytes\0A\00", align 1
@AslGbl_FileDescs = common dso_local global %struct.TYPE_12__* null, align 8
@ASL_FILE_MAP_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_Files = common dso_local global %struct.TYPE_11__* null, align 8
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@AcpiGbl_CaptureComments = common dso_local global i64 0, align 8
@AcpiGbl_TableSig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i8*, i8*)* @AdDisassembleOneTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdDisassembleOneTable(%struct.TYPE_10__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @AcpiGbl_ForceAmlDisassembly, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = call i32 @AcpiUtIsAmlTable(%struct.TYPE_10__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @ACPI_IS_DATA_TABLE, align 4
  %21 = call i32 @AdDisassemblerHeader(i8* %19, i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = call i32 @AcpiDmDumpDataTable(%struct.TYPE_10__* %27)
  %29 = load i32, i32* @stderr, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @CmGetFileSize(i32* %39)
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %18
  %43 = load i32, i32* @AE_OK, align 4
  store i32 %43, i32* %5, align 4
  br label %142

44:                                               ; preds = %14, %4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i32 @AdParseTable(%struct.TYPE_10__* %45, i32* %11, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @AcpiFormatException(i32 %53)
  %55 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %142

57:                                               ; preds = %44
  %58 = load i64, i64* @AslCompilerdebug, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @NsSetupNamespaceListing(i32* %65)
  %67 = call i32 (...) @NsDisplayNamespace()
  %68 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %63, %60, %57
  %70 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %71 = load i32, i32* @AcpiGbl_RootNode, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @AcpiDmFinishNamespaceLoad(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %75 = load i32, i32* @AcpiGbl_RootNode, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @AcpiDmCrossReferenceNamespace(i32 %74, i32 %75, i32 %76)
  %78 = load i64, i64* @AslCompilerdebug, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %82 = call i32 @AcpiDmDumpTree(i32 %81)
  br label %83

83:                                               ; preds = %80, %69
  %84 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %85 = call i32 @AcpiDmFindOrphanMethods(i32 %84)
  %86 = call i64 (...) @AcpiDmGetUnresolvedExternalMethodCount()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @AdReparseOneTable(%struct.TYPE_10__* %89, i32* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @ACPI_FAILURE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %142

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %83
  %100 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %101 = load i32, i32* @AcpiGbl_RootNode, align 4
  %102 = call i32 @AcpiDmConvertParseObjects(i32 %100, i32 %101)
  %103 = load i64, i64* @AcpiGbl_DmOpt_Disasm, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %140

105:                                              ; preds = %99
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = call i32 @AdDisplayTables(i8* %106, %struct.TYPE_10__* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = call i32 @AcpiDmDumpDataTable(%struct.TYPE_10__* %109)
  %111 = load i32, i32* @stderr, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %105
  %116 = load i32, i32* @stderr, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @CmGetFileSize(i32* %118)
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %117, i32 %119)
  br label %121

121:                                              ; preds = %115, %105
  %122 = load i64, i64* @AslGbl_MapfileFlag, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load i32, i32* @stderr, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AslGbl_FileDescs, align 8
  %127 = load i64, i64* @ASL_FILE_MAP_OUTPUT, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_Files, align 8
  %132 = load i64, i64* @ASL_FILE_MAP_OUTPUT, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* @ASL_FILE_MAP_OUTPUT, align 8
  %137 = call i32 @FlGetFileSize(i64 %136)
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %130, i8* %135, i32 %137)
  br label %139

139:                                              ; preds = %124, %121
  br label %140

140:                                              ; preds = %139, %99
  %141 = load i32, i32* @AE_OK, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %96, %52, %42
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @AcpiUtIsAmlTable(%struct.TYPE_10__*) #1

declare dso_local i32 @AdDisassemblerHeader(i8*, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiDmDumpDataTable(%struct.TYPE_10__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @CmGetFileSize(i32*) #1

declare dso_local i32 @AdParseTable(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @NsSetupNamespaceListing(i32*) #1

declare dso_local i32 @NsDisplayNamespace(...) #1

declare dso_local i32 @AcpiDmFinishNamespaceLoad(i32, i32, i32) #1

declare dso_local i32 @AcpiDmCrossReferenceNamespace(i32, i32, i32) #1

declare dso_local i32 @AcpiDmDumpTree(i32) #1

declare dso_local i32 @AcpiDmFindOrphanMethods(i32) #1

declare dso_local i64 @AcpiDmGetUnresolvedExternalMethodCount(...) #1

declare dso_local i32 @AdReparseOneTable(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @AcpiDmConvertParseObjects(i32, i32) #1

declare dso_local i32 @AdDisplayTables(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @FlGetFileSize(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
