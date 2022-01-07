; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbDisplayTemplate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbcmds.c_AcpiDbDisplayTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@AcpiGbl_RootNode = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Invalid argument: %s\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Not a Buffer object, cannot be a template: %s\0A\00", align 1
@ACPI_DEBUG_BUFFER_SIZE = common dso_local global i32 0, align 4
@AcpiGbl_DbBuffer = common dso_local global i32 0, align 4
@ACPI_DB_REDIRECTABLE_OUTPUT = common dso_local global i32 0, align 4
@ACPI_LV_RESOURCES = common dso_local global i32 0, align 4
@AcpiDbgLevel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Could not convert Buffer to a resource list: %s, %s\0A\00", align 1
@ACPI_RESOURCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"\0ARaw data buffer:\0A\00", align 1
@DB_BYTE_DISPLAY = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbDisplayTemplate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.TYPE_9__* @AcpiDbConvertToNode(i8* %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AcpiGbl_RootNode, align 8
  %13 = icmp eq %struct.TYPE_9__* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %74

17:                                               ; preds = %10
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %74

26:                                               ; preds = %17
  %27 = load i32, i32* @ACPI_DEBUG_BUFFER_SIZE, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @AcpiGbl_DbBuffer, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = call i32 @AcpiRsCreateResourceList(%struct.TYPE_11__* %33, %struct.TYPE_10__* %5)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @ACPI_DB_REDIRECTABLE_OUTPUT, align 4
  %36 = call i32 @AcpiDbSetOutputDestination(i32 %35)
  %37 = load i32, i32* @ACPI_LV_RESOURCES, align 4
  %38 = load i32, i32* @AcpiDbgLevel, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @AcpiDbgLevel, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load i8*, i8** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @AcpiFormatException(i32 %45)
  %47 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %46)
  br label %54

48:                                               ; preds = %26
  %49 = load i32, i32* @ACPI_RESOURCE, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ACPI_CAST_PTR(i32 %49, i32 %51)
  %53 = call i32 @AcpiRsDumpResourceList(i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  %70 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %71 = call i32 @AcpiUtDebugDumpBuffer(i32* %62, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %73 = call i32 @AcpiDbSetOutputDestination(i32 %72)
  br label %74

74:                                               ; preds = %54, %23, %14
  ret void
}

declare dso_local %struct.TYPE_9__* @AcpiDbConvertToNode(i8*) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiRsCreateResourceList(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @AcpiDbSetOutputDestination(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiRsDumpResourceList(i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, i32) #1

declare dso_local i32 @AcpiUtDebugDumpBuffer(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
