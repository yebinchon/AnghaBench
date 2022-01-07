; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utosi.c_AcpiUtOsiImplementation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utosi.c_AcpiUtOsiImplementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i64 }

@UtOsiImplementation = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@AE_TYPE = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AcpiGbl_OsiMutex = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@ACPI_OSI_INVALID = common dso_local global i32 0, align 4
@AcpiGbl_OsiData = common dso_local global i64 0, align 8
@ACPI_UINT64_MAX = common dso_local global i64 0, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ACPI: BIOS _OSI(\22%s\22) is %ssupported\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtOsiImplementation(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64 (i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load i32, i32* @UtOsiImplementation, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %4, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %1
  %28 = load i32, i32* @AE_TYPE, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %32 = call %struct.TYPE_17__* @AcpiUtCreateInternalObject(i32 %31)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %5, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @AE_NO_MEMORY, align 4
  %37 = call i32 @return_ACPI_STATUS(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  store i64 0, i64* %9, align 8
  %39 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %40 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %41 = call i32 @AcpiOsAcquireMutex(i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = call i32 @AcpiUtRemoveReference(%struct.TYPE_17__* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_18__* @AcpiUtGetInterface(i32 %54)
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %6, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = icmp ne %struct.TYPE_18__* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %50
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ACPI_OSI_INVALID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AcpiGbl_OsiData, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* @AcpiGbl_OsiData, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i64, i64* @ACPI_UINT64_MAX, align 8
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %75, %58, %50
  %78 = load i32, i32* @AcpiGbl_OsiMutex, align 4
  %79 = call i32 @AcpiOsReleaseMutex(i32 %78)
  store i64 (i32, i32)* @AcpiGbl_InterfaceHandler, i64 (i32, i32)** %7, align 8
  %80 = load i64 (i32, i32)*, i64 (i32, i32)** %7, align 8
  %81 = icmp ne i64 (i32, i32)* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i64 (i32, i32)*, i64 (i32, i32)** %7, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i64 %83(i32 %87, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i64, i64* @ACPI_UINT64_MAX, align 8
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %92, %82
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i32, i32* @ACPI_DB_INFO, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %105 = ptrtoint i8* %104 to i32
  %106 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %105)
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %113, align 8
  %114 = load i32, i32* @AE_OK, align 4
  %115 = call i32 @return_ACPI_STATUS(i32 %114)
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.TYPE_17__* @AcpiUtCreateInternalObject(i32) #1

declare dso_local i32 @AcpiOsAcquireMutex(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @AcpiUtGetInterface(i32) #1

declare dso_local i32 @AcpiOsReleaseMutex(i32) #1

declare dso_local i64 @AcpiGbl_InterfaceHandler(i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
