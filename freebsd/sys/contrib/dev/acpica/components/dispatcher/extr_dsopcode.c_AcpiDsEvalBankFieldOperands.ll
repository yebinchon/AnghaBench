; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsopcode.c_AcpiDsEvalBankFieldOperands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dsopcode.c_AcpiDsEvalBankFieldOperands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_25__**, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_24__*, i32*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_24__* }

@DsEvalBankFieldOperands = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@AML_INT_NAMEDFIELD_OP = common dso_local global i64 0, align 8
@AE_NOT_EXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsEvalBankFieldOperands(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %12 = load i32, i32* @DsEvalBankFieldOperands, align 4
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %struct.TYPE_24__* %13)
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %10, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %10, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %10, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %32 = call i32 @AcpiDsCreateOperand(%struct.TYPE_23__* %30, %struct.TYPE_24__* %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %42, i64 0
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %45 = call i32 @AcpiExResolveToValue(%struct.TYPE_25__** %43, %struct.TYPE_23__* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @AcpiPsGetOpcodeName(i64 %57)
  %59 = call i32 @ACPI_DUMP_OPERANDS(i32 %53, i32 %58, i32 1)
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %62, i64 0
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  store %struct.TYPE_25__* %64, %struct.TYPE_25__** %8, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = call %struct.TYPE_24__* @AcpiPsGetArg(%struct.TYPE_24__* %65, i32 4)
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %11, align 8
  br label %67

67:                                               ; preds = %97, %52
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %69 = icmp ne %struct.TYPE_24__* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AML_INT_NAMEDFIELD_OP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %9, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call %struct.TYPE_25__* @AcpiNsGetAttachedObject(i32* %82)
  store %struct.TYPE_25__* %83, %struct.TYPE_25__** %7, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %85 = icmp ne %struct.TYPE_25__* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* @AE_NOT_EXIST, align 4
  %88 = call i32 @return_ACPI_STATUS(i32 %87)
  br label %89

89:                                               ; preds = %86, %77
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  br label %97

97:                                               ; preds = %89, %70
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  store %struct.TYPE_24__* %101, %struct.TYPE_24__** %11, align 8
  br label %67

102:                                              ; preds = %67
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %104 = call i32 @AcpiUtRemoveReference(%struct.TYPE_25__* %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @return_ACPI_STATUS(i32 %105)
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @AcpiDsCreateOperand(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiExResolveToValue(%struct.TYPE_25__**, %struct.TYPE_23__*) #1

declare dso_local i32 @ACPI_DUMP_OPERANDS(i32, i32, i32) #1

declare dso_local i32 @AcpiPsGetOpcodeName(i64) #1

declare dso_local %struct.TYPE_24__* @AcpiPsGetArg(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @AcpiNsGetAttachedObject(i32*) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
