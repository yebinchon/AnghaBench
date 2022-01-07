; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/namespace/extr_nsxfeval.c_AcpiEvaluateObjectTyped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/namespace/extr_nsxfeval.c_AcpiEvaluateObjectTyped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s did not return any object\00", align 1
@AE_NULL_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Incorrect return type from %s - received [%s], requested [%s]\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiEvaluateObjectTyped(i32 %0, i64 %1, i32* %2, %struct.TYPE_7__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %13, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 (i32, i64, i32*, %struct.TYPE_7__*, i64)* @AcpiEvaluateObjectTyped)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %22 = call i32 @return_ACPI_STATUS(i32 %21)
  br label %23

23:                                               ; preds = %20, %5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ACPI_ALLOCATE_BUFFER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @AcpiGetHandle(i32 %36, i64 %37, i32* %14)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @return_ACPI_STATUS(i32 %43)
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %14, align 4
  %48 = call i8* @AcpiNsGetExternalPathname(i32 %47)
  store i8* %48, i8** %15, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @AE_NO_MEMORY, align 4
  %53 = call i32 @return_ACPI_STATUS(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %14, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = call i32 @AcpiEvaluateObject(i32 %55, i32* null, i32* %56, %struct.TYPE_7__* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %115

63:                                               ; preds = %54
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %115

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @AE_INFO, align 4
  %75 = load i8*, i8** %15, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = call i32 @ACPI_ERROR(i32 %76)
  %78 = load i32, i32* @AE_NULL_OBJECT, align 4
  store i32 %78, i32* %12, align 4
  br label %115

79:                                               ; preds = %68
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %115

89:                                               ; preds = %79
  %90 = load i32, i32* @AE_INFO, align 4
  %91 = load i8*, i8** %15, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = bitcast i32* %94 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @AcpiUtGetTypeName(i64 %97)
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @AcpiUtGetTypeName(i64 %99)
  %101 = call i32 @ACPI_ERROR(i32 %100)
  %102 = load i64, i64* %13, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %89
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @AcpiOsFree(i32* %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %104, %89
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* @AE_TYPE, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %111, %88, %73, %67, %62
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 @ACPI_FREE(i8* %116)
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @return_ACPI_STATUS(i32 %118)
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i32, i64, i32*, %struct.TYPE_7__*, i64)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiGetHandle(i32, i64, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i8* @AcpiNsGetExternalPathname(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i64) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
