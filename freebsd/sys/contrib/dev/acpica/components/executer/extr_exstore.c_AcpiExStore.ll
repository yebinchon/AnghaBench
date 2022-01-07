; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exstore.c_AcpiExStore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exstore.c_AcpiExStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ExStore = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Null parameter\00", align 1
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@ACPI_IMPLICIT_CONVERSION = common dso_local global i32 0, align 4
@AOPOBJ_AML_CONSTANT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Target is not a Reference or Constant object - [%s] %p\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"**** Write to Debug Object: Object %p [%s] ****:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unknown Reference Class 0x%2.2X\00", align 1
@ACPI_LV_INFO = common dso_local global i32 0, align 4
@AE_AML_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExStore(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %9, align 8
  %12 = load i32, i32* @ExStore, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %struct.TYPE_17__* %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @AE_INFO, align 4
  %22 = call i32 @ACPI_ERROR(i32 ptrtoint ([15 x i8]* @.str to i32))
  %23 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_17__* %26)
  %28 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = bitcast %struct.TYPE_17__* %32 to i32*
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @ACPI_IMPLICIT_CONVERSION, align 4
  %36 = call i32 @AcpiExStoreObjectToNode(%struct.TYPE_17__* %31, i32* %33, i32* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %57 [
    i32 128, label %44
    i32 129, label %45
  ]

44:                                               ; preds = %39
  br label %66

45:                                               ; preds = %39
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AOPOBJ_AML_CONSTANT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @AE_OK, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %39, %56
  %58 = load i32, i32* @AE_INFO, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %60 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_17__* %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = ptrtoint %struct.TYPE_17__* %61 to i32
  %63 = call i32 @ACPI_ERROR(i32 %62)
  %64 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %65 = call i32 @return_ACPI_STATUS(i32 %64)
  br label %66

66:                                               ; preds = %57, %44
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %105 [
    i32 130, label %71
    i32 132, label %80
    i32 131, label %85
    i32 134, label %85
    i32 133, label %97
  ]

71:                                               ; preds = %66
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @ACPI_IMPLICIT_CONVERSION, align 4
  %79 = call i32 @AcpiExStoreObjectToNode(%struct.TYPE_17__* %72, i32* %76, i32* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %116

80:                                               ; preds = %66
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @AcpiExStoreObjectToIndex(%struct.TYPE_17__* %81, %struct.TYPE_17__* %82, i32* %83)
  store i32 %84, i32* %8, align 4
  br label %116

85:                                               ; preds = %66, %66
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @AcpiDsStoreObjectToLocal(i32 %89, i32 %93, %struct.TYPE_17__* %94, i32* %95)
  store i32 %96, i32* %8, align 4
  br label %116

97:                                               ; preds = %66
  %98 = load i32, i32* @ACPI_DB_EXEC, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %101 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_17__* %100)
  %102 = call i32 @ACPI_DEBUG_PRINT(i32 %101)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = call i32 @ACPI_DEBUG_OBJECT(%struct.TYPE_17__* %103, i32 0, i32 0)
  br label %116

105:                                              ; preds = %66
  %106 = load i32, i32* @AE_INFO, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ACPI_ERROR(i32 %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %113 = load i32, i32* @ACPI_LV_INFO, align 4
  %114 = call i32 @ACPI_DUMP_ENTRY(%struct.TYPE_17__* %112, i32 %113)
  %115 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %105, %97, %85, %80, %71
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @return_ACPI_STATUS(i32 %117)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_17__*) #1

declare dso_local i32 @AcpiExStoreObjectToNode(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_17__*) #1

declare dso_local i32 @AcpiExStoreObjectToIndex(%struct.TYPE_17__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @AcpiDsStoreObjectToLocal(i32, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_DEBUG_OBJECT(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ACPI_DUMP_ENTRY(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
