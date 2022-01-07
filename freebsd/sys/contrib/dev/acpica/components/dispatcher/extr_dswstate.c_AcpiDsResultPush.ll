; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dswstate.c_AcpiDsResultPush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dswstate.c_AcpiDsResultPush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32** }

@DsResultPush = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Result stack is full\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to extend the result stack\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"No free elements in result stack\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"No result stack frame during push\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Null Object! Obj=%p State=%p Num=%u\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_RESULTS_FRAME_OBJ_NUM = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Obj=%p [%s] State=%p Num=%X Cur=%X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsResultPush(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load i32, i32* @DsResultPush, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @AE_INFO, align 4
  %20 = call i32 @ACPI_ERROR(i32 ptrtoint ([21 x i8]* @.str to i32))
  %21 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %21, i32* %3, align 4
  br label %107

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = call i32 @AcpiDsResultStackPush(%struct.TYPE_7__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @AE_INFO, align 4
  %38 = call i32 @ACPI_ERROR(i32 ptrtoint ([34 x i8]* @.str.1 to i32))
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %107

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %22
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @AE_INFO, align 4
  %52 = call i32 @ACPI_ERROR(i32 ptrtoint ([33 x i8]* @.str.2 to i32))
  %53 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %53, i32* %3, align 4
  br label %107

54:                                               ; preds = %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @AE_INFO, align 4
  %62 = call i32 @ACPI_ERROR(i32 ptrtoint ([34 x i8]* @.str.3 to i32))
  %63 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %63, i32* %3, align 4
  br label %107

64:                                               ; preds = %54
  %65 = load i32*, i32** %4, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @AE_INFO, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ACPI_ERROR(i32 %74)
  %76 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %76, i32* %3, align 4
  br label %107

77:                                               ; preds = %64
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ACPI_RESULTS_FRAME_OBJ_NUM, align 8
  %82 = urem i64 %80, %81
  store i64 %82, i64* %8, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  store i32* %83, i32** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load i32, i32* @ACPI_DB_EXEC, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @AcpiUtGetObjectTypeName(i32* %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ACPI_DEBUG_PRINT(i32 %104)
  %106 = load i32, i32* @AE_OK, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %77, %67, %60, %50, %36, %18
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiDsResultStackPush(%struct.TYPE_7__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
