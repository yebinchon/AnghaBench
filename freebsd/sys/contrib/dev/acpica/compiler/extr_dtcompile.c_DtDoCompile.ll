; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtcompile.c_DtDoCompile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtcompile.c_DtDoCompile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@AslGbl_PreprocessFlag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Preprocess input file\00", align 1
@AslGbl_PreprocessOnly = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AslGbl_DtLexBisonPrototype = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Parse data table in prototype mode\00", align 1
@AslGbl_Files = common dso_local global %struct.TYPE_5__* null, align 8
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@AslGbl_FieldList = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Scan and parse input file\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_SYNTAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Input file does not appear to be an ASL or data table source file\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Compile parse tree\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Summary for %s could not be generated\00", align 1
@AslGbl_CurrentLineNumber = common dso_local global i32 0, align 4
@AslGbl_InputByteCount = common dso_local global i32 0, align 4
@ASL_PARSE_OUTPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Line count: %u input file size: %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Could not compile input file\00", align 1
@ASL_FILE_AML_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_OutputFilenamePrefix = common dso_local global i32 0, align 4
@AslGbl_RootTable = common dso_local global i32 0, align 4
@AslGbl_InputFieldCount = common dso_local global i32 0, align 4
@AslGbl_TableLength = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtDoCompile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = call i32 (...) @DtInitialize()
  %7 = load i64, i64* @AslGbl_PreprocessFlag, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @PrDoPreprocess()
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @UtEndEvent(i32 %12)
  %14 = load i64, i64* @AslGbl_PreprocessOnly, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %1, align 4
  br label %128

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i64, i64* @AslGbl_DtLexBisonPrototype, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AslGbl_Files, align 8
  %25 = load i64, i64* @ASL_FILE_INPUT, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DtCompilerInitLexer(i32 %28)
  %30 = call i32 (...) @DtCompilerParserparse()
  %31 = load i32*, i32** @AslGbl_FieldList, align 8
  store i32* %31, i32** %4, align 8
  %32 = call i32 (...) @DtCompilerTerminateLexer()
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @UtEndEvent(i32 %33)
  br label %45

35:                                               ; preds = %19
  %36 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %3, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AslGbl_Files, align 8
  %38 = load i64, i64* @ASL_FILE_INPUT, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @DtScanFile(i32 %41)
  store i32* %42, i32** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @UtEndEvent(i32 %43)
  br label %45

45:                                               ; preds = %35, %22
  %46 = load i32*, i32** %4, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @ASL_ERROR, align 4
  %50 = load i32, i32* @ASL_MSG_SYNTAX, align 4
  %51 = call i32 @DtError(i32 %49, i32 %50, i32* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @AE_ERROR, align 4
  store i32 %52, i32* %1, align 4
  br label %128

53:                                               ; preds = %45
  %54 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %54, i32* %3, align 4
  %55 = call i32 @DtCompileDataTable(i32** %4)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @UtEndEvent(i32 %56)
  %58 = call %struct.TYPE_4__* (...) @FlGetCurrentFileNode()
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %5, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @stderr, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AslGbl_Files, align 8
  %64 = load i64, i64* @ASL_FILE_INPUT, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  br label %84

69:                                               ; preds = %53
  %70 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @AslGbl_InputByteCount, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @DbgPrint(i32 %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %69, %61
  %85 = load i32, i32* %2, align 4
  %86 = call i64 @ACPI_FAILURE(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @TRUE, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* @ASL_ERROR, align 4
  %97 = load i32, i32* @ASL_MSG_SYNTAX, align 4
  %98 = call i32 @DtError(i32 %96, i32 %97, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i32, i32* %2, align 4
  store i32 %99, i32* %1, align 4
  br label %128

100:                                              ; preds = %84
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AslGbl_Files, align 8
  %102 = load i64, i64* @ASL_FILE_AML_OUTPUT, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i8* null, i8** %104, align 8
  %105 = load i32, i32* @AslGbl_OutputFilenamePrefix, align 4
  %106 = call i32 @FlOpenAmlOutputFile(i32 %105)
  store i32 %106, i32* %2, align 4
  %107 = load i32, i32* %2, align 4
  %108 = call i64 @ACPI_FAILURE(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %2, align 4
  store i32 %111, i32* %1, align 4
  br label %128

112:                                              ; preds = %100
  %113 = load i32, i32* @AslGbl_RootTable, align 4
  %114 = call i32 @DtOutputBinary(i32 %113)
  %115 = call i32 (...) @HxDoHexOutput()
  %116 = call i32 (...) @DtWriteTableToListing()
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = icmp ne %struct.TYPE_4__* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32, i32* @AslGbl_InputFieldCount, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @AslGbl_TableLength, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %112
  %127 = load i32, i32* %2, align 4
  store i32 %127, i32* %1, align 4
  br label %128

128:                                              ; preds = %126, %110, %95, %48, %16
  %129 = load i32, i32* %1, align 4
  ret i32 %129
}

declare dso_local i32 @DtInitialize(...) #1

declare dso_local i32 @UtBeginEvent(i8*) #1

declare dso_local i32 @PrDoPreprocess(...) #1

declare dso_local i32 @UtEndEvent(i32) #1

declare dso_local i32 @DtCompilerInitLexer(i32) #1

declare dso_local i32 @DtCompilerParserparse(...) #1

declare dso_local i32 @DtCompilerTerminateLexer(...) #1

declare dso_local i32* @DtScanFile(i32) #1

declare dso_local i32 @DtError(i32, i32, i32*, i8*) #1

declare dso_local i32 @DtCompileDataTable(i32**) #1

declare dso_local %struct.TYPE_4__* @FlGetCurrentFileNode(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @DbgPrint(i32, i8*, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @FlOpenAmlOutputFile(i32) #1

declare dso_local i32 @DtOutputBinary(i32) #1

declare dso_local i32 @HxDoHexOutput(...) #1

declare dso_local i32 @DtWriteTableToListing(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
