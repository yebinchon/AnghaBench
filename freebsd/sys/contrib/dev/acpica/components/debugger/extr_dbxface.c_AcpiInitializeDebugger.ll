; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbxface.c_AcpiInitializeDebugger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbxface.c_AcpiInitializeDebugger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AcpiGbl_DbBuffer = common dso_local global i32* null, align 8
@AcpiGbl_DbFilename = common dso_local global i32* null, align 8
@FALSE = common dso_local global i8* null, align 8
@AcpiGbl_DbOutputToFile = common dso_local global i8* null, align 8
@ACPI_LV_VERBOSITY2 = common dso_local global i32 0, align 4
@AcpiGbl_DbDebugLevel = common dso_local global i32 0, align 4
@ACPI_NORMAL_DEFAULT = common dso_local global i32 0, align 4
@ACPI_LV_TABLES = common dso_local global i32 0, align 4
@AcpiGbl_DbConsoleDebugLevel = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4
@AcpiGbl_DbOutputFlags = common dso_local global i32 0, align 4
@AcpiGbl_DbOpt_NoIniMethods = common dso_local global i8* null, align 8
@ACPI_DEBUG_BUFFER_SIZE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AML_ROOT_PREFIX = common dso_local global i64 0, align 8
@AcpiGbl_DbScopeBuf = common dso_local global i64* null, align 8
@AcpiGbl_RootNode = common dso_local global i32 0, align 4
@AcpiGbl_DbScopeNode = common dso_local global i32 0, align 4
@AcpiGbl_DbTerminateLoop = common dso_local global i8* null, align 8
@AcpiGbl_DebuggerConfiguration = common dso_local global i32 0, align 4
@DEBUGGER_MULTI_THREADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not get debugger mutex\0A\00", align 1
@AcpiGbl_DbThreadsTerminated = common dso_local global i8* null, align 8
@OSL_DEBUGGER_MAIN_THREAD = common dso_local global i32 0, align 4
@AcpiDbExecuteThread = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not start debugger thread\00", align 1
@TRUE = common dso_local global i8* null, align 8
@AcpiGbl_DbThreadId = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiInitializeDebugger() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @ACPI_FUNCTION_TRACE(i32 (...)* bitcast (i32 ()* @AcpiInitializeDebugger to i32 (...)*))
  store i32* null, i32** @AcpiGbl_DbBuffer, align 8
  store i32* null, i32** @AcpiGbl_DbFilename, align 8
  %4 = load i8*, i8** @FALSE, align 8
  store i8* %4, i8** @AcpiGbl_DbOutputToFile, align 8
  %5 = load i32, i32* @ACPI_LV_VERBOSITY2, align 4
  store i32 %5, i32* @AcpiGbl_DbDebugLevel, align 4
  %6 = load i32, i32* @ACPI_NORMAL_DEFAULT, align 4
  %7 = load i32, i32* @ACPI_LV_TABLES, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* @AcpiGbl_DbConsoleDebugLevel, align 4
  %9 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  store i32 %9, i32* @AcpiGbl_DbOutputFlags, align 4
  %10 = load i8*, i8** @FALSE, align 8
  store i8* %10, i8** @AcpiGbl_DbOpt_NoIniMethods, align 8
  %11 = load i32, i32* @ACPI_DEBUG_BUFFER_SIZE, align 4
  %12 = call i32* @AcpiOsAllocate(i32 %11)
  store i32* %12, i32** @AcpiGbl_DbBuffer, align 8
  %13 = load i32*, i32** @AcpiGbl_DbBuffer, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @AE_NO_MEMORY, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32*, i32** @AcpiGbl_DbBuffer, align 8
  %20 = load i32, i32* @ACPI_DEBUG_BUFFER_SIZE, align 4
  %21 = call i32 @memset(i32* %19, i32 0, i32 %20)
  %22 = load i64, i64* @AML_ROOT_PREFIX, align 8
  %23 = load i64*, i64** @AcpiGbl_DbScopeBuf, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %22, i64* %24, align 8
  %25 = load i64*, i64** @AcpiGbl_DbScopeBuf, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @AcpiGbl_RootNode, align 4
  store i32 %27, i32* @AcpiGbl_DbScopeNode, align 4
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** @AcpiGbl_DbTerminateLoop, align 8
  %29 = load i32, i32* @AcpiGbl_DebuggerConfiguration, align 4
  %30 = load i32, i32* @DEBUGGER_MULTI_THREADED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %18
  %34 = call i32 (...) @AcpiOsInitializeDebugger()
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @return_ACPI_STATUS(i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i8*, i8** @FALSE, align 8
  store i8* %43, i8** @AcpiGbl_DbThreadsTerminated, align 8
  %44 = load i32, i32* @OSL_DEBUGGER_MAIN_THREAD, align 4
  %45 = load i32, i32* @AcpiDbExecuteThread, align 4
  %46 = call i32 @AcpiOsExecute(i32 %44, i32 %45, i32* null)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32, i32* @AE_INFO, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([32 x i8]* @.str.1 to i32))
  %54 = load i8*, i8** @TRUE, align 8
  store i8* %54, i8** @AcpiGbl_DbThreadsTerminated, align 8
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  br label %57

57:                                               ; preds = %50, %42
  br label %60

58:                                               ; preds = %18
  %59 = call i32 (...) @AcpiOsGetThreadId()
  store i32 %59, i32* @AcpiGbl_DbThreadId, align 4
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i32, i32* @AE_OK, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (...)*) #1

declare dso_local i32* @AcpiOsAllocate(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AcpiOsInitializeDebugger(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*) #1

declare dso_local i32 @AcpiOsExecute(i32, i32, i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @AcpiOsGetThreadId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
