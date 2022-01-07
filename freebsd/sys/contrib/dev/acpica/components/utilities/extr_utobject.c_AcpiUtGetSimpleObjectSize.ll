; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utobject.c_AcpiUtGetSimpleObjectSize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utobject.c_AcpiUtGetSimpleObjectSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@UtGetSimpleObjectSize = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Received a namespace node [%4.4s] where an operand object is required\00", align 1
@ACPI_NAMESPACE_NODE = common dso_local global i32 0, align 4
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"Cannot convert to external object - unsupported Reference Class [%s] 0x%X in object %p\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"Cannot convert to external object - unsupported type [%s] 0x%X in object %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*)* @AcpiUtGetSimpleObjectSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiUtGetSimpleObjectSize(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @UtGetSimpleObjectSize, align 4
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %struct.TYPE_20__* %11)
  store i32 4, i32* %6, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = icmp ne %struct.TYPE_20__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %16)
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @AE_OK, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__* %22)
  %24 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* @AE_INFO, align 4
  %28 = load i32, i32* @ACPI_NAMESPACE_NODE, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = call %struct.TYPE_14__* @ACPI_CAST_PTR(i32 %28, %struct.TYPE_20__* %29)
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ACPI_ERROR(i32 %33)
  %35 = load i32, i32* @AE_AML_INTERNAL, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %26, %21
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %92 [
    i32 128, label %42
    i32 133, label %50
    i32 132, label %57
    i32 129, label %57
    i32 130, label %57
    i32 131, label %58
  ]

42:                                               ; preds = %37
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %104

50:                                               ; preds = %37
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %104

57:                                               ; preds = %37, %37, %37
  br label %104

58:                                               ; preds = %37
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %79 [
    i32 134, label %63
  ]

63:                                               ; preds = %58
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @AcpiNsGetPathnameLength(i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %73 = call i32 @return_ACPI_STATUS(i32 %72)
  br label %74

74:                                               ; preds = %71, %63
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %91

79:                                               ; preds = %58
  %80 = load i32, i32* @AE_INFO, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = call i32 @AcpiUtGetReferenceName(%struct.TYPE_20__* %81)
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = ptrtoint %struct.TYPE_20__* %87 to i32
  %89 = call i32 @ACPI_ERROR(i32 %88)
  %90 = load i32, i32* @AE_TYPE, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %79, %74
  br label %104

92:                                               ; preds = %37
  %93 = load i32, i32* @AE_INFO, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %95 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_20__* %94)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = ptrtoint %struct.TYPE_20__* %100 to i32
  %102 = call i32 @ACPI_ERROR(i32 %101)
  %103 = load i32, i32* @AE_TYPE, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %92, %91, %57, %50, %42
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %105)
  %107 = load i32*, i32** %5, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @return_ACPI_STATUS(i32 %108)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local %struct.TYPE_14__* @ACPI_CAST_PTR(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @AcpiNsGetPathnameLength(i32) #1

declare dso_local i32 @AcpiUtGetReferenceName(%struct.TYPE_20__*) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
