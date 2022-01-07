; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/os_specific/service_layers/extr_osgendbg.c_AcpiOsWaitCommandReady.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/os_specific/service_layers/extr_osgendbg.c_AcpiOsWaitCommandReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i64 0, align 8
@AcpiGbl_DebuggerConfiguration = common dso_local global i64 0, align 8
@DEBUGGER_MULTI_THREADED = common dso_local global i64 0, align 8
@AE_TIME = common dso_local global i64 0, align 8
@AcpiGbl_DbTerminateLoop = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8
@AcpiGbl_DbCommandReady = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4
@AcpiGbl_MethodExecuting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%1c \00", align 1
@ACPI_DEBUGGER_COMMAND_PROMPT = common dso_local global i32 0, align 4
@ACPI_DEBUGGER_EXECUTE_PROMPT = common dso_local global i32 0, align 4
@AcpiGbl_DbLineBuf = common dso_local global i32 0, align 4
@ACPI_DB_LINE_BUFFER_SIZE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"While parsing/handling command line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiOsWaitCommandReady() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @AE_OK, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* @AcpiGbl_DebuggerConfiguration, align 8
  %4 = load i64, i64* @DEBUGGER_MULTI_THREADED, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %0
  %7 = load i64, i64* @AE_TIME, align 8
  store i64 %7, i64* %1, align 8
  br label %8

8:                                                ; preds = %20, %6
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @AE_TIME, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i64, i64* @AcpiGbl_DbTerminateLoop, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  store i64 %16, i64* %1, align 8
  br label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @AcpiGbl_DbCommandReady, align 4
  %19 = call i64 @AcpiOsAcquireMutex(i32 %18, i32 1000)
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %17, %15
  br label %8

21:                                               ; preds = %8
  br label %37

22:                                               ; preds = %0
  %23 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %24 = call i32 @AcpiDbSetOutputDestination(i32 %23)
  %25 = load i32, i32* @AcpiGbl_MethodExecuting, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ACPI_DEBUGGER_COMMAND_PROMPT, align 4
  %29 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @ACPI_DEBUGGER_EXECUTE_PROMPT, align 4
  %32 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @AcpiGbl_DbLineBuf, align 4
  %35 = load i32, i32* @ACPI_DB_LINE_BUFFER_SIZE, align 4
  %36 = call i64 @AcpiOsGetLine(i32 %34, i32 %35, i32* null)
  store i64 %36, i64* %1, align 8
  br label %37

37:                                               ; preds = %33, %21
  %38 = load i64, i64* %1, align 8
  %39 = call i64 @ACPI_FAILURE(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @AE_INFO, align 4
  %47 = load i64, i64* %1, align 8
  %48 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([36 x i8]* @.str.1 to i32))
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = load i64, i64* %1, align 8
  ret i64 %50
}

declare dso_local i64 @AcpiOsAcquireMutex(i32, i32) #1

declare dso_local i32 @AcpiDbSetOutputDestination(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32) #1

declare dso_local i64 @AcpiOsGetLine(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
