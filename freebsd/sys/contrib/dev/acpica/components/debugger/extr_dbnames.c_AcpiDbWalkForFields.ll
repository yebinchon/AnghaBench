; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbWalkForFields.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbWalkForFields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_LOCAL_BUFFER = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could Not get pathname for object %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%8.8X%8.8X\00", align 1
@DB_DISPLAY_DATA_ONLY = common dso_local global i32 0, align 4
@DB_BYTE_DISPLAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @AcpiDbWalkForFields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDbWalkForFields(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_23__* @AcpiNsValidateHandle(i32 %17)
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %14, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %20 = icmp ne %struct.TYPE_23__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %5, align 4
  br label %102

23:                                               ; preds = %4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* @AE_OK, align 4
  store i32 %38, i32* %5, align 4
  br label %102

39:                                               ; preds = %23
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i8*, i8** @ACPI_ALLOCATE_LOCAL_BUFFER, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @AcpiNsHandleToPathname(i32 %46, %struct.TYPE_14__* %12, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @AE_OK, align 4
  store i32 %55, i32* %5, align 4
  br label %102

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ACPI_FREE(i64 %62)
  %64 = load i8*, i8** @ACPI_ALLOCATE_LOCAL_BUFFER, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @AcpiEvaluateObject(i32 %66, i32* null, i32* null, %struct.TYPE_14__* %12)
  %68 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %10, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %95 [
    i32 128, label %75
    i32 129, label %82
  ]

75:                                               ; preds = %56
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ACPI_FORMAT_UINT64(i32 %79)
  %81 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %96

82:                                               ; preds = %56
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DB_DISPLAY_DATA_ONLY, align 4
  %92 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @AcpiUtDumpBuffer(i32 %86, i32 %90, i32 %93, i32 0)
  br label %96

95:                                               ; preds = %56
  br label %96

96:                                               ; preds = %95, %82, %75
  %97 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ACPI_FREE(i64 %99)
  %101 = load i32, i32* @AE_OK, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %96, %52, %37, %21
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_23__* @AcpiNsValidateHandle(i32) #1

declare dso_local i32 @AcpiNsHandleToPathname(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @ACPI_FREE(i64) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @AcpiUtDumpBuffer(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
