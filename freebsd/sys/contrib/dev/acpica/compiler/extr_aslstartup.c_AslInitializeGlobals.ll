; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslInitializeGlobals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslInitializeGlobals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i64 }

@AslGbl_SyntaxError = common dso_local global i64 0, align 8
@AslGbl_CurrentColumn = common dso_local global i64 0, align 8
@AslGbl_CurrentLineNumber = common dso_local global i32 0, align 4
@AslGbl_LogicalLineNumber = common dso_local global i32 0, align 4
@AslGbl_CurrentLineOffset = common dso_local global i64 0, align 8
@AslGbl_InputFieldCount = common dso_local global i64 0, align 8
@AslGbl_InputByteCount = common dso_local global i64 0, align 8
@AslGbl_NsLookupCount = common dso_local global i64 0, align 8
@AslGbl_CurrentLineBuffer = common dso_local global i32 0, align 4
@AslGbl_LineBufPtr = common dso_local global i32 0, align 4
@AslGbl_ErrorLog = common dso_local global i32* null, align 8
@AslGbl_NextError = common dso_local global i32* null, align 8
@AslGbl_Signature = common dso_local global i32* null, align 8
@AslGbl_FileType = common dso_local global i64 0, align 8
@AslGbl_TotalExecutableOpcodes = common dso_local global i64 0, align 8
@AslGbl_TotalNamedObjects = common dso_local global i64 0, align 8
@AslGbl_TotalKeywords = common dso_local global i64 0, align 8
@AslGbl_TotalParseNodes = common dso_local global i64 0, align 8
@AslGbl_TotalMethods = common dso_local global i64 0, align 8
@AslGbl_TotalAllocations = common dso_local global i64 0, align 8
@AslGbl_TotalAllocated = common dso_local global i64 0, align 8
@AslGbl_TotalFolds = common dso_local global i64 0, align 8
@AslGbl_NextEvent = common dso_local global i64 0, align 8
@ASL_NUM_REPORT_LEVELS = common dso_local global i64 0, align 8
@AslGbl_ExceptionCount = common dso_local global i64* null, align 8
@AcpiGbl_CaptureComments = common dso_local global i64 0, align 8
@AslGbl_CommentState = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AslInitializeGlobals() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* @AslGbl_SyntaxError, align 8
  store i64 0, i64* @AslGbl_CurrentColumn, align 8
  store i32 1, i32* @AslGbl_CurrentLineNumber, align 4
  store i32 1, i32* @AslGbl_LogicalLineNumber, align 4
  store i64 0, i64* @AslGbl_CurrentLineOffset, align 8
  store i64 0, i64* @AslGbl_InputFieldCount, align 8
  store i64 0, i64* @AslGbl_InputByteCount, align 8
  store i64 0, i64* @AslGbl_NsLookupCount, align 8
  %2 = load i32, i32* @AslGbl_CurrentLineBuffer, align 4
  store i32 %2, i32* @AslGbl_LineBufPtr, align 4
  store i32* null, i32** @AslGbl_ErrorLog, align 8
  store i32* null, i32** @AslGbl_NextError, align 8
  store i32* null, i32** @AslGbl_Signature, align 8
  store i64 0, i64* @AslGbl_FileType, align 8
  store i64 0, i64* @AslGbl_TotalExecutableOpcodes, align 8
  store i64 0, i64* @AslGbl_TotalNamedObjects, align 8
  store i64 0, i64* @AslGbl_TotalKeywords, align 8
  store i64 0, i64* @AslGbl_TotalParseNodes, align 8
  store i64 0, i64* @AslGbl_TotalMethods, align 8
  store i64 0, i64* @AslGbl_TotalAllocations, align 8
  store i64 0, i64* @AslGbl_TotalAllocated, align 8
  store i64 0, i64* @AslGbl_TotalFolds, align 8
  store i64 0, i64* @AslGbl_NextEvent, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %11, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @ASL_NUM_REPORT_LEVELS, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %1, align 8
  br label %3

14:                                               ; preds = %3
  %15 = load i64, i64* @AcpiGbl_CaptureComments, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 2), align 8
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 1), align 4
  br label %19

19:                                               ; preds = %17, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
