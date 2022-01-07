; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsutils.c_AcpiDsCreateOperands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsutils.c_AcpiDsCreateOperands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32** }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_OBJ_NUM_OPERANDS = common dso_local global i32 0, align 4
@DsCreateOperands = common dso_local global i32 0, align 4
@AE_BAD_DATA = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"NumOperands %d, ArgCount %d, Index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Created Arg #%u (%p) %u args total\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"While creating Arg %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsCreateOperands(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ACPI_OBJ_NUM_OPERANDS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca %struct.TYPE_12__*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @DsCreateOperands, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %21, %struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %7, align 8
  br label %25

25:                                               ; preds = %35, %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ACPI_OBJ_NUM_OPERANDS, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @AE_BAD_DATA, align 4
  %34 = call i32 @return_ACPI_STATUS(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %17, i64 %38
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ACPI_DEBUG_PRINT(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %93, %54
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %17, i64 %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @AcpiDsCreateOperand(%struct.TYPE_11__* %77, %struct.TYPE_12__* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @ACPI_FAILURE(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %99

85:                                               ; preds = %68
  %86 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ACPI_DEBUG_PRINT(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %64

96:                                               ; preds = %64
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @return_ACPI_STATUS(i32 %97)
  br label %99

99:                                               ; preds = %96, %84
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = call i32 @AcpiDsObjStackPopAndDelete(i32 %100, %struct.TYPE_11__* %101)
  %103 = load i32, i32* @AE_INFO, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @ACPI_EXCEPTION(i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @return_ACPI_STATUS(i32 %107)
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @return_ACPI_STATUS(i32) #2

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #2

declare dso_local i32 @AcpiDsCreateOperand(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @AcpiDsObjStackPopAndDelete(i32, %struct.TYPE_11__*) #2

declare dso_local i32 @ACPI_EXCEPTION(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
