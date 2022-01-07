; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlOpenIncludeFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlOpenIncludeFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_INCLUDE_FILE_OPEN = common dso_local global i32 0, align 4
@AslGbl_CurrentLineNumber = common dso_local global i32 0, align 4
@AslGbl_LogicalLineNumber = common dso_local global i32 0, align 4
@AslGbl_InputByteCount = common dso_local global i32 0, align 4
@AslGbl_CurrentColumn = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_14__* null, align 8
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c" - Null parse node\00", align 1
@ASL_FILE_SOURCE_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AslGbl_CurrentLineOffset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AslGbl_DirectoryPath = common dso_local global i8* null, align 8
@AslGbl_IncludeDirList = common dso_local global %struct.TYPE_12__* null, align 8
@AslGbl_MsgBuffer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FlOpenIncludeFile(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = icmp ne %struct.TYPE_13__* %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ASL_ERROR, align 4
  %9 = load i32, i32* @ASL_MSG_INCLUDE_FILE_OPEN, align 4
  %10 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %11 = load i32, i32* @AslGbl_LogicalLineNumber, align 4
  %12 = load i32, i32* @AslGbl_InputByteCount, align 4
  %13 = load i32, i32* @AslGbl_CurrentColumn, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** @AslGbl_Files, align 8
  %15 = load i64, i64* @ASL_FILE_INPUT, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AslCommonError(i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %118

20:                                               ; preds = %1
  %21 = call i32 (...) @AslResetCurrentLineBuffer()
  %22 = load i32, i32* @ASL_FILE_SOURCE_OUTPUT, align 4
  %23 = call i32 @FlPrintFile(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @AslGbl_CurrentLineOffset, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @AslGbl_CurrentLineOffset, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %55, label %35

35:                                               ; preds = %20
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 92
  br i1 %44, label %55, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %55, label %67

55:                                               ; preds = %45, %35, %20
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32* @FlOpenIncludeWithPrefix(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %56, i8* %61)
  store i32* %62, i32** %3, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %103

66:                                               ; preds = %55
  br label %118

67:                                               ; preds = %45
  %68 = load i8*, i8** @AslGbl_DirectoryPath, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32* @FlOpenIncludeWithPrefix(i8* %68, %struct.TYPE_13__* %69, i8* %74)
  store i32* %75, i32** %3, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %118

79:                                               ; preds = %67
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** @AslGbl_IncludeDirList, align 8
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %4, align 8
  br label %81

81:                                               ; preds = %98, %79
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = icmp ne %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32* @FlOpenIncludeWithPrefix(i8* %87, %struct.TYPE_13__* %88, i8* %93)
  store i32* %94, i32** %3, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %118

98:                                               ; preds = %84
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  store %struct.TYPE_12__* %101, %struct.TYPE_12__** %4, align 8
  br label %81

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102, %65
  %104 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @errno, align 4
  %111 = call i8* @strerror(i32 %110)
  %112 = call i32 @sprintf(i32 %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %109, i8* %111)
  %113 = load i32, i32* @ASL_ERROR, align 4
  %114 = load i32, i32* @ASL_MSG_INCLUDE_FILE_OPEN, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %117 = call i32 @AslError(i32 %113, i32 %114, %struct.TYPE_13__* %115, i32 %116)
  br label %118

118:                                              ; preds = %103, %97, %78, %66, %7
  ret void
}

declare dso_local i32 @AslCommonError(i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @AslResetCurrentLineBuffer(...) #1

declare dso_local i32 @FlPrintFile(i32, i8*) #1

declare dso_local i32* @FlOpenIncludeWithPrefix(i8*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
