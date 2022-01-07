; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsfield.c_AcpiDsCreateField.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsfield.c_AcpiDsCreateField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_29__*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__*, i32, i64, i64 }

@DsCreateField = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_PLATFORM_COMM = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsCreateField(%struct.TYPE_29__* %0, %struct.TYPE_30__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %11 = load i32, i32* @DsCreateField, align 4
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %struct.TYPE_29__* %12)
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  store %struct.TYPE_29__* %18, %struct.TYPE_29__** %9, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %20 = icmp ne %struct.TYPE_30__* %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %31 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %32 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %34 = call i32 @AcpiNsLookup(i32 %24, i32 %29, i32 %30, i32 %31, i32 %32, %struct.TYPE_28__* %33, %struct.TYPE_30__** %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %21
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ACPI_ERROR_NAMESPACE(i32 %41, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %38, %21
  br label %52

52:                                               ; preds = %51, %3
  %53 = call i32 @memset(%struct.TYPE_31__* %10, i32 0, i32 32)
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %56, align 8
  store %struct.TYPE_29__* %57, %struct.TYPE_29__** %9, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  store %struct.TYPE_30__* %67, %struct.TYPE_30__** %68, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %72, align 8
  %74 = call i32 @AcpiDsGetFieldNames(%struct.TYPE_31__* %10, %struct.TYPE_28__* %69, %struct.TYPE_29__* %73)
  store i32 %74, i32* %8, align 4
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ACPI_ADR_SPACE_PLATFORM_COMM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %52
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ACPI_ALLOCATE_ZEROED(i32 %91)
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 8
  %98 = icmp ne i32 %92, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %84
  %100 = load i32, i32* @AE_NO_MEMORY, align 4
  %101 = call i32 @return_ACPI_STATUS(i32 %100)
  br label %102

102:                                              ; preds = %99, %84, %52
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @return_ACPI_STATUS(i32 %103)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @AcpiNsLookup(i32, i32, i32, i32, i32, %struct.TYPE_28__*, %struct.TYPE_30__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @AcpiDsGetFieldNames(%struct.TYPE_31__*, %struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ACPI_ALLOCATE_ZEROED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
