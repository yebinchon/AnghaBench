; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/os_specific/service_layers/extr_osgendbg.c_AcpiDbRunRemoteDebugger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/os_specific/service_layers/extr_osgendbg.c_AcpiDbRunRemoteDebugger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AcpiGbl_DbTerminateLoop = common dso_local global i32 0, align 4
@AcpiGbl_DbLineBuf = common dso_local global i32 0, align 4
@ACPI_DB_LINE_BUFFER_SIZE = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4
@AcpiGbl_MethodExecuting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%1c \00", align 1
@ACPI_DEBUGGER_COMMAND_PROMPT = common dso_local global i32 0, align 4
@ACPI_DEBUGGER_EXECUTE_PROMPT = common dso_local global i32 0, align 4
@AcpiGbl_DbCommandReady = common dso_local global i32 0, align 4
@AcpiGbl_DbCommandComplete = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @AcpiDbRunRemoteDebugger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDbRunRemoteDebugger(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %82, %1
  %9 = load i32, i32* @AcpiGbl_DbTerminateLoop, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %83

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %52

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %39, %36, %19
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 44
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  store i8 32, i8* %30, align 1
  br label %39

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 59
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  store i8 0, i8* %37, align 1
  br label %20

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  br label %20

42:                                               ; preds = %20
  %43 = load i32, i32* @AcpiGbl_DbLineBuf, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @ACPI_DB_LINE_BUFFER_SIZE, align 4
  %46 = call i32 @AcpiUtSafeStrncpy(i32 %43, i8* %44, i32 %45)
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  store i8* %49, i8** %5, align 8
  br label %51

50:                                               ; preds = %15
  br label %83

51:                                               ; preds = %42
  br label %72

52:                                               ; preds = %12
  %53 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %54 = call i32 @AcpiDbSetOutputDestination(i32 %53)
  %55 = load i32, i32* @AcpiGbl_MethodExecuting, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ACPI_DEBUGGER_COMMAND_PROMPT, align 4
  %59 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ACPI_DEBUGGER_EXECUTE_PROMPT, align 4
  %62 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @AcpiGbl_DbLineBuf, align 4
  %65 = load i32, i32* @ACPI_DB_LINE_BUFFER_SIZE, align 4
  %66 = call i32 @AcpiOsGetLine(i32 %64, i32 %65, i32* null)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @ACPI_FAILURE(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %83

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* @AcpiGbl_DbCommandReady, align 4
  %74 = call i32 @AcpiOsReleaseMutex(i32 %73)
  %75 = load i32, i32* @AcpiGbl_DbCommandComplete, align 4
  %76 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %77 = call i32 @AcpiOsAcquireMutex(i32 %75, i32 %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i64 @ACPI_FAILURE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %83

82:                                               ; preds = %72
  br label %8

83:                                               ; preds = %50, %70, %81, %8
  ret void
}

declare dso_local i32 @AcpiUtSafeStrncpy(i32, i8*, i32) #1

declare dso_local i32 @AcpiDbSetOutputDestination(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32) #1

declare dso_local i32 @AcpiOsGetLine(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

declare dso_local i32 @AcpiOsAcquireMutex(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
