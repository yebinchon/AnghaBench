; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdAmlDisassemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_adisasm.c_AdAmlDisassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }

@ACPI_GET_ALL_TABLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not get ACPI tables from %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not get ACPI tables, %s\0A\00", align 1
@AcpiGbl_DmOpt_Disasm = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not get DSDT, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0ADisassembly of DSDT\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dsdt\00", align 1
@FILE_SUFFIX_DISASSEMBLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not generate output filename\0A\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Could not open output file %s\0A\00", align 1
@AcpiGbl_ForceAmlDisassembly = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@AcpiGbl_ParseOpRoot = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdAmlDisassemble(i64 %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @ACPI_GET_ALL_TABLES, align 4
  %20 = call i32 @AcGetAllTablesFromFile(i8* %18, i32 %19, %struct.TYPE_9__** %14)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @AcpiFormatException(i32 %26)
  %28 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %147

30:                                               ; preds = %17
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @AdDoExternalFileList(i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %147

38:                                               ; preds = %30
  br label %71

39:                                               ; preds = %4
  %40 = call i32 (...) @AdGetLocalTables()
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @AcpiFormatException(i32 %45)
  %47 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %147

49:                                               ; preds = %39
  %50 = load i32, i32* @AcpiGbl_DmOpt_Disasm, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @AE_OK, align 4
  store i32 %53, i32* %5, align 4
  br label %147

54:                                               ; preds = %49
  %55 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %56 = call i32 @AcpiGetTable(i32 %55, i32 0, %struct.TYPE_8__** %13)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @ACPI_FAILURE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @AcpiFormatException(i32 %61)
  %63 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %147

65:                                               ; preds = %54
  %66 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @AdGenerateFilename(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %65, %38
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* @FILE_SUFFIX_DISASSEMBLY, align 4
  %77 = call i8* @FlGenerateFilename(i8* %75, i32 %76)
  store i8* %77, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @AE_ERROR, align 4
  store i32 %83, i32* %10, align 4
  br label %120

84:                                               ; preds = %74
  %85 = load i8*, i8** %11, align 8
  %86 = call i32* @fopen(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %86, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* @AE_ERROR, align 4
  store i32 %93, i32* %10, align 4
  br label %120

94:                                               ; preds = %84
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @AcpiOsRedirectOutput(i32* %95)
  br label %97

97:                                               ; preds = %94, %71
  %98 = load i8*, i8** %11, align 8
  %99 = load i8**, i8*** %9, align 8
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %115, %97
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %102 = icmp ne %struct.TYPE_9__* %101, null
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @AdDisassembleOneTable(i32 %106, i32* %107, i8* %108, i8* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i64 @ACPI_FAILURE(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %119

115:                                              ; preds = %103
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %14, align 8
  br label %100

119:                                              ; preds = %114, %100
  br label %120

120:                                              ; preds = %119, %89, %80
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %122 = icmp ne %struct.TYPE_8__* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* @AcpiGbl_ForceAmlDisassembly, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %123
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = call i32 @AcpiUtIsAmlTable(%struct.TYPE_8__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %132 = call i32 @ACPI_FREE(%struct.TYPE_8__* %131)
  br label %133

133:                                              ; preds = %130, %126, %123, %120
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %135 = call i32 @AcDeleteTableList(%struct.TYPE_9__* %134)
  %136 = load i32*, i32** %12, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @fclose(i32* %139)
  %141 = load i32*, i32** @stdout, align 8
  %142 = call i32 @AcpiOsRedirectOutput(i32* %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32*, i32** @AcpiGbl_ParseOpRoot, align 8
  %145 = call i32 @AcpiPsDeleteParseTree(i32* %144)
  store i32* null, i32** @AcpiGbl_ParseOpRoot, align 8
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %60, %52, %44, %36, %24
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @AcGetAllTablesFromFile(i8*, i32, %struct.TYPE_9__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AdDoExternalFileList(i8*) #1

declare dso_local i32 @AdGetLocalTables(...) #1

declare dso_local i32 @AcpiGetTable(i32, i32, %struct.TYPE_8__**) #1

declare dso_local i8* @AdGenerateFilename(i8*, i32) #1

declare dso_local i8* @FlGenerateFilename(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @AcpiOsRedirectOutput(i32*) #1

declare dso_local i32 @AdDisassembleOneTable(i32, i32*, i8*, i8*) #1

declare dso_local i32 @AcpiUtIsAmlTable(%struct.TYPE_8__*) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_8__*) #1

declare dso_local i32 @AcDeleteTableList(%struct.TYPE_9__*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @AcpiPsDeleteParseTree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
