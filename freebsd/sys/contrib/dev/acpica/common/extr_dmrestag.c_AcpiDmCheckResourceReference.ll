; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmrestag.c_AcpiDmCheckResourceReference.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmrestag.c_AcpiDmCheckResourceReference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, i32*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64 }

@AML_TYPE_CREATE_FIELD = common dso_local global i64 0, align 8
@AML_INT_NAMEPATH_OP = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@AML_CREATE_BIT_FIELD_OP = common dso_local global i64 0, align 8
@AML_CREATE_FIELD_OP = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmCheckResourceReference(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.TYPE_23__* @AcpiPsGetOpcodeInfo(i64 %15)
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %10, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AML_TYPE_CREATE_FIELD, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %117

23:                                               ; preds = %2
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = call %struct.TYPE_22__* @AcpiPsGetDepthNext(i32* null, %struct.TYPE_22__* %24)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %6, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %117

33:                                               ; preds = %23
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %7, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.TYPE_23__* @AcpiPsGetOpcodeInfo(i64 %44)
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %10, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  br label %117

52:                                               ; preds = %33
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AML_CREATE_BIT_FIELD_OP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AML_CREATE_FIELD_OP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59, %52
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %11, align 8
  br label %79

72:                                               ; preds = %59
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @ACPI_MUL_8(i64 %77)
  store i64 %78, i64* %11, align 8
  br label %79

79:                                               ; preds = %72, %66
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %89 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %90 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = call i32 @AcpiNsLookup(i32 %82, i32 %87, i64 %88, i32 %89, i32 %90, %struct.TYPE_21__* %91, %struct.TYPE_24__** %8)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @ACPI_FAILURE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  br label %117

97:                                               ; preds = %79
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %117

104:                                              ; preds = %97
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call %struct.TYPE_24__* @AcpiDmGetResourceNode(%struct.TYPE_24__* %105, i64 %106)
  store %struct.TYPE_24__* %107, %struct.TYPE_24__** %9, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = icmp ne %struct.TYPE_24__* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %117

111:                                              ; preds = %104
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @AcpiGetTagPathname(%struct.TYPE_22__* %112, %struct.TYPE_24__* %113, %struct.TYPE_24__* %114, i64 %115)
  br label %117

117:                                              ; preds = %111, %110, %103, %96, %51, %32, %22
  ret void
}

declare dso_local %struct.TYPE_23__* @AcpiPsGetOpcodeInfo(i64) #1

declare dso_local %struct.TYPE_22__* @AcpiPsGetDepthNext(i32*, %struct.TYPE_22__*) #1

declare dso_local i64 @ACPI_MUL_8(i64) #1

declare dso_local i32 @AcpiNsLookup(i32, i32, i64, i32, i32, %struct.TYPE_21__*, %struct.TYPE_24__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_24__* @AcpiDmGetResourceNode(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @AcpiGetTagPathname(%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
