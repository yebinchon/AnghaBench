; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmCleanupAndExit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmCleanupAndExit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@AslGbl_FilesList = common dso_local global %struct.TYPE_7__* null, align 8
@ASL_FILE_STDERR = common dso_local global i32 0, align 4
@AslGbl_DebugFlag = common dso_local global i64 0, align 8
@ASL_FILE_STDOUT = common dso_local global i32 0, align 4
@AslGbl_CompileTimesFlag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"\0AMiscellaneous compile statistics\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%11u : %s\0A\00", align 1
@AslGbl_TotalParseNodes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Parse nodes\00", align 1
@AslGbl_NsLookupCount = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Namespace searches\00", align 1
@AslGbl_TotalNamedObjects = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Named objects\00", align 1
@AslGbl_TotalMethods = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Control methods\00", align 1
@AslGbl_TotalAllocations = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Memory Allocations\00", align 1
@AslGbl_TotalAllocated = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Total allocated memory\00", align 1
@AslGbl_TotalFolds = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Constant subtrees folded\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"\0A\0AMiscellaneous compile statistics\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%32s : %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Total Namespace searches\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%32s : %u usec\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Time per search\00", align 1
@AslGbl_Events = common dso_local global %struct.TYPE_9__* null, align 8
@AslGbl_NamespaceEvent = common dso_local global i64 0, align 8
@AslGbl_ExceptionCount = common dso_local global i32* null, align 8
@ASL_ERROR = common dso_local global i64 0, align 8
@ASL_MAX_ERROR_COUNT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"\0AMaximum error count (%d) exceeded\0A\00", align 1
@AslGbl_ParserErrorDetected = common dso_local global i64 0, align 8
@AslGbl_PreprocessOnly = common dso_local global i64 0, align 8
@AslGbl_IgnoreErrors = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_8__* null, align 8
@ASL_FILE_AML_OUTPUT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@AslGbl_DoAslConversion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CmCleanupAndExit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* %2, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AslGbl_FilesList, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %3, align 8
  %6 = call i32 (...) @AslCheckForErrorExit()
  %7 = load i32, i32* @ASL_FILE_STDERR, align 4
  %8 = call i32 @AePrintErrorLog(i32 %7)
  %9 = load i64, i64* @AslGbl_DebugFlag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @ASL_FILE_STDOUT, align 4
  %13 = call i32 @AePrintErrorLog(i32 %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i32 (...) @CmDumpAllEvents()
  %16 = load i64, i64* @AslGbl_CompileTimesFlag, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @AslGbl_TotalParseNodes, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @AslGbl_NsLookupCount, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* @AslGbl_TotalNamedObjects, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i32, i32* @AslGbl_TotalMethods, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @AslGbl_TotalAllocations, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i32, i32* @AslGbl_TotalAllocated, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i32, i32* @AslGbl_TotalFolds, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %35

35:                                               ; preds = %18, %14
  %36 = load i32, i32* @AslGbl_NsLookupCount, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %40 = call i32 (i32, i8*, ...) @DbgPrint(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %41 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %42 = load i32, i32* @AslGbl_NsLookupCount, align 4
  %43 = call i32 (i32, i8*, ...) @DbgPrint(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AslGbl_Events, align 8
  %46 = load i64, i64* @AslGbl_NamespaceEvent, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AslGbl_Events, align 8
  %51 = load i64, i64* @AslGbl_NamespaceEvent, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %49, %54
  %56 = trunc i64 %55 to i32
  %57 = sdiv i32 %56, 10
  %58 = load i32, i32* @AslGbl_NsLookupCount, align 4
  %59 = sdiv i32 %57, %58
  %60 = call i32 (i32, i8*, ...) @DbgPrint(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %38, %35
  %62 = load i32*, i32** @AslGbl_ExceptionCount, align 8
  %63 = load i64, i64* @ASL_ERROR, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ASL_MAX_ERROR_COUNT, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ASL_MAX_ERROR_COUNT, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i32, i32* @ASL_FILE_STDOUT, align 4
  %73 = call i32 @UtDisplaySummary(i32 %72)
  %74 = load i64, i64* @AslGbl_ParserErrorDetected, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* @AslGbl_PreprocessOnly, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %76
  %80 = load i32*, i32** @AslGbl_ExceptionCount, align 8
  %81 = load i64, i64* @ASL_ERROR, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i32, i32* @AslGbl_IgnoreErrors, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AslGbl_Files, align 8
  %90 = load i64, i64* @ASL_FILE_AML_OUTPUT, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88, %76, %71
  %96 = load i32, i32* @TRUE, align 4
  store i32 %96, i32* %2, align 4
  store i32 -1, i32* %1, align 4
  br label %97

97:                                               ; preds = %95, %88, %85, %79
  br label %98

98:                                               ; preds = %130, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = load i32, i32* %1, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32, i32* @AslGbl_IgnoreErrors, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 -1, i32* %1, align 4
  br label %113

113:                                              ; preds = %112, %107, %104, %101
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i64, i64* @ASL_FILE_INPUT, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @FlSwitchFileSet(i32 %120)
  switch i32 %121, label %129 [
    i32 128, label %122
    i32 129, label %122
    i32 130, label %128
  ]

122:                                              ; preds = %113, %113
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @CmFinishFiles(i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %3, align 8
  br label %130

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %113, %128
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %130

130:                                              ; preds = %129, %122
  br label %98

131:                                              ; preds = %98
  %132 = load i32, i32* @AslGbl_DoAslConversion, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = call i32 (...) @UtDeleteLocalCaches()
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i32, i32* %1, align 4
  ret i32 %137
}

declare dso_local i32 @AslCheckForErrorExit(...) #1

declare dso_local i32 @AePrintErrorLog(i32) #1

declare dso_local i32 @CmDumpAllEvents(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @DbgPrint(i32, i8*, ...) #1

declare dso_local i32 @UtDisplaySummary(i32) #1

declare dso_local i32 @FlSwitchFileSet(i32) #1

declare dso_local i32 @CmFinishFiles(i32) #1

declare dso_local i32 @UtDeleteLocalCaches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
