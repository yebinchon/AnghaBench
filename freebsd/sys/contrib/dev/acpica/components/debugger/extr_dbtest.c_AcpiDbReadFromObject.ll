; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbtest.c_AcpiDbReadFromObject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbtest.c_AcpiDbReadFromObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64, i32 }

@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@ACPI_HANDLE = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_MethodExecuting = common dso_local global i32 0, align 4
@ReadHandle = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not read from object, %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c" Type mismatch:  Expected %s, Received %s\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c" Unsupported return object type, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, %struct.TYPE_13__**)* @AcpiDbReadFromObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDbReadFromObject(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca [2 x %struct.TYPE_13__], align 16
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %7, align 8
  %13 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %14 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %10, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 16
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %10, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @ACPI_HANDLE, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @ACPI_CAST_PTR(i32 %22, %struct.TYPE_14__* %23)
  %25 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %10, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds [2 x %struct.TYPE_13__], [2 x %struct.TYPE_13__]* %10, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %30, align 8
  %31 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* @AcpiGbl_MethodExecuting, align 4
  %34 = load i32, i32* @ReadHandle, align 4
  %35 = call i32 @AcpiEvaluateObject(i32 %34, i32* null, %struct.TYPE_12__* %9, %struct.TYPE_15__* %11)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* @AcpiGbl_MethodExecuting, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @AcpiFormatException(i32 %41)
  %43 = call i32 (i8*, i32, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %85

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %8, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %73 [
    i32 130, label %52
    i32 131, label %52
    i32 128, label %52
    i32 129, label %52
  ]

52:                                               ; preds = %45, %45, %45, %45
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @AcpiUtGetTypeName(i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AcpiUtGetTypeName(i32 %63)
  %65 = call i32 (i8*, i32, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @AcpiOsFree(i64 %67)
  %69 = load i32, i32* @AE_TYPE, align 4
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %52
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %72, align 8
  br label %83

73:                                               ; preds = %45
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @AcpiUtGetTypeName(i32 %76)
  %78 = call i32 (i8*, i32, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @AcpiOsFree(i64 %80)
  %82 = load i32, i32* @AE_TYPE, align 4
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %73, %58, %40
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ACPI_CAST_PTR(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32*, %struct.TYPE_12__*, %struct.TYPE_15__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32, ...) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i32) #1

declare dso_local i32 @AcpiOsFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
