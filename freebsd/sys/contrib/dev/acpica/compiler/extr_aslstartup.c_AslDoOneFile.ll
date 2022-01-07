; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslDoOneFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslDoOneFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@AslGbl_DirectoryPath = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_6__* null, align 8
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@ASL_FILE_STDERR = common dso_local global i32 0, align 4
@AslGbl_FileType = common dso_local global i32 0, align 4
@AslGbl_UseDefaultAmlFilename = common dso_local global i64 0, align 8
@AslGbl_OutputFilenamePrefix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Open AML output file\00", align 1
@AslGbl_Signature = common dso_local global i32* null, align 8
@AslGbl_CurrentLineNumber = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AslGbl_DoCompile = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_DisasmFlag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown file type %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AslDoOneFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 (...) @AslInitializeGlobals()
  %8 = call i32 (...) @PrInitializeGlobals()
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @FlSplitInputPathname(i8* %9, i32* @AslGbl_DirectoryPath, i32* null)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %169

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @FlInitOneFile(i8* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @AE_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %169

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add nsw i64 %26, 1
  %28 = call i32 @UtLocalCacheCalloc(i64 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AslGbl_Files, align 8
  %30 = load i64, i64* @ASL_FILE_INPUT, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AslGbl_Files, align 8
  %34 = load i64, i64* @ASL_FILE_INPUT, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcpy(i32 %37, i8* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AslGbl_Files, align 8
  %41 = load i64, i64* @ASL_FILE_INPUT, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @UtConvertBackslashes(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AslGbl_Files, align 8
  %47 = load i64, i64* @ASL_FILE_INPUT, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @FlOpenInputFile(i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %24
  %56 = load i32, i32* @ASL_FILE_STDERR, align 4
  %57 = call i32 @AePrintErrorLog(i32 %56)
  %58 = load i32, i32* @AE_ERROR, align 4
  store i32 %58, i32* %2, align 4
  br label %169

59:                                               ; preds = %24
  %60 = call %struct.TYPE_5__* (...) @FlGetCurrentFileNode()
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %6, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @AE_ERROR, align 4
  store i32 %64, i32* %2, align 4
  br label %169

65:                                               ; preds = %59
  %66 = load i64, i64* @ASL_FILE_INPUT, align 8
  %67 = call i32 @FlGetFileSize(i64 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AslGbl_Files, align 8
  %71 = load i64, i64* @ASL_FILE_INPUT, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = call i32 @AslDetectSourceFileType(%struct.TYPE_6__* %72)
  store i32 %73, i32* @AslGbl_FileType, align 4
  %74 = load i32, i32* @AslGbl_FileType, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @AslGbl_FileType, align 4
  %78 = icmp eq i32 %77, 129
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* @AE_ERROR, align 4
  store i32 %80, i32* %2, align 4
  br label %169

81:                                               ; preds = %65
  %82 = load i64, i64* @AslGbl_UseDefaultAmlFilename, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AslGbl_Files, align 8
  %86 = load i64, i64* @ASL_FILE_INPUT, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* @AslGbl_OutputFilenamePrefix, align 4
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* @AslGbl_FileType, align 4
  %92 = icmp eq i32 %91, 131
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = call i32 @UtBeginEvent(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @AslGbl_OutputFilenamePrefix, align 4
  %96 = call i32 @FlOpenAmlOutputFile(i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @UtEndEvent(i32 %97)
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @ACPI_FAILURE(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load i32, i32* @ASL_FILE_STDERR, align 4
  %104 = call i32 @AePrintErrorLog(i32 %103)
  %105 = load i32, i32* @AE_ERROR, align 4
  store i32 %105, i32* %2, align 4
  br label %169

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32, i32* @AslGbl_OutputFilenamePrefix, align 4
  %109 = call i32 @FlOpenMiscOutputFiles(i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @ACPI_FAILURE(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @ASL_FILE_STDERR, align 4
  %115 = call i32 @AePrintErrorLog(i32 %114)
  %116 = load i32, i32* @AE_ERROR, align 4
  store i32 %116, i32* %2, align 4
  br label %169

117:                                              ; preds = %107
  %118 = load i32, i32* @AslGbl_FileType, align 4
  switch i32 %118, label %165 [
    i32 130, label %119
    i32 131, label %141
    i32 128, label %154
    i32 129, label %161
  ]

119:                                              ; preds = %117
  %120 = call i32 (...) @DtDoCompile()
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i64 @ACPI_FAILURE(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %169

126:                                              ; preds = %119
  %127 = load i32*, i32** @AslGbl_Signature, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32* null, i32** @AslGbl_Signature, align 8
  br label %130

130:                                              ; preds = %129, %126
  %131 = call i32 (...) @AslCheckForErrorExit()
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i64 @ACPI_FAILURE(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %169

137:                                              ; preds = %130
  %138 = call i32 (...) @AeClearErrorLog()
  %139 = call i32 (...) @PrTerminatePreprocessor()
  %140 = load i32, i32* %4, align 4
  store i32 %140, i32* %2, align 4
  br label %169

141:                                              ; preds = %117
  %142 = call i32 (...) @CmDoCompile()
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i64 @ACPI_FAILURE(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = call i32 (...) @PrTerminatePreprocessor()
  %148 = load i32, i32* %4, align 4
  store i32 %148, i32* %2, align 4
  br label %169

149:                                              ; preds = %141
  %150 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @AE_OK, align 4
  store i32 %153, i32* %2, align 4
  br label %169

154:                                              ; preds = %117
  %155 = load i64, i64* @ASL_FILE_INPUT, align 8
  %156 = call i32 @FlCloseFile(i64 %155)
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* @AslGbl_DoCompile, align 4
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* @AcpiGbl_DisasmFlag, align 4
  %159 = call i32 (...) @AslDoDisassembly()
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %169

161:                                              ; preds = %117
  %162 = load i32, i32* @ASL_FILE_STDERR, align 4
  %163 = call i32 @AePrintErrorLog(i32 %162)
  %164 = load i32, i32* @AE_ERROR, align 4
  store i32 %164, i32* %2, align 4
  br label %169

165:                                              ; preds = %117
  %166 = load i32, i32* @AslGbl_FileType, align 4
  %167 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @AE_ERROR, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %165, %161, %154, %149, %146, %137, %135, %124, %113, %102, %79, %63, %55, %22, %14
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @AslInitializeGlobals(...) #1

declare dso_local i32 @PrInitializeGlobals(...) #1

declare dso_local i32 @FlSplitInputPathname(i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @FlInitOneFile(i8*) #1

declare dso_local i32 @UtLocalCacheCalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @UtConvertBackslashes(i32) #1

declare dso_local i32 @FlOpenInputFile(i32) #1

declare dso_local i32 @AePrintErrorLog(i32) #1

declare dso_local %struct.TYPE_5__* @FlGetCurrentFileNode(...) #1

declare dso_local i32 @FlGetFileSize(i64) #1

declare dso_local i32 @AslDetectSourceFileType(%struct.TYPE_6__*) #1

declare dso_local i32 @UtBeginEvent(i8*) #1

declare dso_local i32 @FlOpenAmlOutputFile(i32) #1

declare dso_local i32 @UtEndEvent(i32) #1

declare dso_local i32 @FlOpenMiscOutputFiles(i32) #1

declare dso_local i32 @DtDoCompile(...) #1

declare dso_local i32 @AslCheckForErrorExit(...) #1

declare dso_local i32 @AeClearErrorLog(...) #1

declare dso_local i32 @PrTerminatePreprocessor(...) #1

declare dso_local i32 @CmDoCompile(...) #1

declare dso_local i32 @FlCloseFile(i64) #1

declare dso_local i32 @AslDoDisassembly(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
