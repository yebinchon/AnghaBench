; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtScanFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtScanFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_InputByteCount = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@AslGbl_CurrentLineNumber = common dso_local global i64 0, align 8
@AslGbl_CurrentLineOffset = common dso_local global i64 0, align 8
@AslGbl_NextLineOffset = common dso_local global i64 0, align 8
@ASL_EOF = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Line %2.2u/%4.4X - %s\00", align 1
@AslGbl_CurrentLineBuffer = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@AslGbl_FieldList = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DtScanFile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call i32 @ACPI_FUNCTION_NAME(i32* (i32*)* @DtScanFile)
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @CmGetFileSize(i32* %6)
  store i64 %7, i64* @AslGbl_InputByteCount, align 8
  %8 = load i64, i64* @AslGbl_InputByteCount, align 8
  %9 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @AslAbort()
  br label %13

13:                                               ; preds = %11, %1
  store i64 0, i64* @AslGbl_CurrentLineNumber, align 8
  store i64 0, i64* @AslGbl_CurrentLineOffset, align 8
  store i64 0, i64* @AslGbl_NextLineOffset, align 8
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @DtGetNextLine(i32* %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @ASL_EOF, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, i32* @ACPI_DB_PARSE, align 4
  %21 = load i64, i64* @AslGbl_CurrentLineNumber, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AslGbl_CurrentLineBuffer, align 4
  %24 = call i32 @ACPI_DEBUG_PRINT(i32 %23)
  %25 = load i32, i32* @AslGbl_CurrentLineBuffer, align 4
  %26 = load i64, i64* @AslGbl_CurrentLineNumber, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @DtParseLine(i32 %25, i64 %26, i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @AE_NOT_FOUND, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %34

33:                                               ; preds = %19
  br label %14

34:                                               ; preds = %32, %14
  %35 = load i32*, i32** @AslGbl_FieldList, align 8
  %36 = call i32 @DtDumpFieldList(i32* %35)
  %37 = load i32*, i32** @AslGbl_FieldList, align 8
  ret i32* %37
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32* (i32*)*) #1

declare dso_local i64 @CmGetFileSize(i32*) #1

declare dso_local i32 @AslAbort(...) #1

declare dso_local i32 @DtGetNextLine(i32*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @DtParseLine(i32, i64, i32) #1

declare dso_local i32 @DtDumpFieldList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
