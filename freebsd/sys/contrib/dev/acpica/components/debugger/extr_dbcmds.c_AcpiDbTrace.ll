; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbTrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbTrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AcpiDbTraceMethodName = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate method name (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ENABLE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"METHOD\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"OPCODE\00", align 1
@AcpiGbl_DbConsoleDebugLevel = common dso_local global i32 0, align 4
@AcpiDbgLayer = common dso_local global i32 0, align 4
@ACPI_LV_TRACE_POINT = common dso_local global i32 0, align 4
@ACPI_EXECUTER = common dso_local global i32 0, align 4
@ACPI_TRACE_ENABLED = common dso_local global i32 0, align 4
@ACPI_TRACE_OPCODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"ONCE\00", align 1
@ACPI_TRACE_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbTrace(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @AcpiUtStrupr(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @AcpiUtStrupr(i8* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load i32*, i32** @AcpiDbTraceMethodName, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** @AcpiDbTraceMethodName, align 8
  %21 = call i32 @ACPI_FREE(i32* %20)
  store i32* null, i32** @AcpiDbTraceMethodName, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %24, 1
  %26 = call i32* @ACPI_ALLOCATE(i64 %25)
  store i32* %26, i32** @AcpiDbTraceMethodName, align 8
  %27 = load i32*, i32** @AcpiDbTraceMethodName, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %85

32:                                               ; preds = %22
  %33 = load i32*, i32** @AcpiDbTraceMethodName, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcpy(i32* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %44, %40, %36
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @AcpiGbl_DbConsoleDebugLevel, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @AcpiDbgLayer, align 4
  store i32 %54, i32* %8, align 4
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @ACPI_LV_TRACE_POINT, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @ACPI_EXECUTER, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @ACPI_TRACE_ENABLED, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ACPI_TRACE_OPCODE, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @ACPI_TRACE_ONESHOT, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %70, %67
  br label %79

79:                                               ; preds = %78, %44
  %80 = load i32*, i32** @AcpiDbTraceMethodName, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @AcpiDebugTrace(i32* %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %29
  ret void
}

declare dso_local i32 @AcpiUtStrupr(i8*) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

declare dso_local i32* @ACPI_ALLOCATE(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @AcpiDebugTrace(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
