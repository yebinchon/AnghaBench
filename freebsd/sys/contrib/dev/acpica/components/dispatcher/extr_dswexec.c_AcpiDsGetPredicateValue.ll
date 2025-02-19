; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dswexec.c_AcpiDsGetPredicateValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dswexec.c_AcpiDsGetPredicateValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_26__*, i32, %struct.TYPE_28__** }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@DsGetPredicateValue = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not get result from predicate evaluation\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No predicate ObjDesc=%p State=%p\00", align 1
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERSION = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Bad predicate (not an integer) ObjDesc=%p State=%p Type=0x%X\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AE_CTRL_FALSE = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Completed a predicate eval=%X Op=%p\0A\00", align 1
@ACPI_CONTROL_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsGetPredicateValue(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %6, align 4
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %8, align 8
  %10 = load i32, i32* @DsGetPredicateValue, align 4
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %struct.TYPE_27__* %11)
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %19 = icmp ne %struct.TYPE_28__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %22 = call i32 @AcpiDsResultPop(%struct.TYPE_28__** %7, %struct.TYPE_27__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @AE_INFO, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([47 x i8]* @.str to i32))
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  br label %64

33:                                               ; preds = %2
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @AcpiDsCreateOperand(%struct.TYPE_27__* %34, i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @return_ACPI_STATUS(i32 %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %48, i64 0
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %51 = call i32 @AcpiExResolveToValue(%struct.TYPE_28__** %49, %struct.TYPE_27__* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @ACPI_FAILURE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %61, i64 0
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %62, align 8
  store %struct.TYPE_28__* %63, %struct.TYPE_28__** %7, align 8
  br label %64

64:                                               ; preds = %58, %32
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %66 = icmp ne %struct.TYPE_28__* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @AE_INFO, align 4
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %71 = ptrtoint %struct.TYPE_27__* %70 to i32
  %72 = call i32 @ACPI_ERROR(i32 %71)
  %73 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %74 = call i32 @return_ACPI_STATUS(i32 %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %77 = load i32, i32* @ACPI_IMPLICIT_CONVERSION, align 4
  %78 = call i32 @AcpiExConvertToInteger(%struct.TYPE_28__* %76, %struct.TYPE_28__** %8, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @ACPI_FAILURE(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %129

83:                                               ; preds = %75
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load i32, i32* @AE_INFO, align 4
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @ACPI_ERROR(i32 %98)
  %100 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %100, i32* %6, align 4
  br label %129

101:                                              ; preds = %83
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %103 = call i32 @AcpiExTruncateFor32bitTable(%struct.TYPE_28__* %102)
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load i32, i32* @TRUE, align 4
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 1
  store i32 %110, i32* %115, align 8
  br label %124

116:                                              ; preds = %101
  %117 = load i32, i32* @FALSE, align 4
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 8
  %123 = load i32, i32* @AE_CTRL_FALSE, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %116, %109
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %127 = load i32, i32* @TRUE, align 4
  %128 = call i32 @AcpiDsDoImplicitReturn(%struct.TYPE_28__* %125, %struct.TYPE_27__* %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %90, %82
  %130 = load i32, i32* @ACPI_DB_EXEC, align 4
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ACPI_DEBUG_PRINT(i32 %139)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %143 = call i32 @AcpiDbDisplayResultObject(%struct.TYPE_28__* %141, %struct.TYPE_27__* %142)
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %146 = icmp ne %struct.TYPE_28__* %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %129
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %149 = call i32 @AcpiUtRemoveReference(%struct.TYPE_28__* %148)
  br label %150

150:                                              ; preds = %147, %129
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %152 = call i32 @AcpiUtRemoveReference(%struct.TYPE_28__* %151)
  %153 = load i64, i64* @ACPI_CONTROL_NORMAL, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  store i64 %153, i64* %158, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @return_ACPI_STATUS(i32 %159)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @AcpiDsResultPop(%struct.TYPE_28__**, %struct.TYPE_27__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsCreateOperand(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @AcpiExResolveToValue(%struct.TYPE_28__**, %struct.TYPE_27__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiExConvertToInteger(%struct.TYPE_28__*, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @AcpiExTruncateFor32bitTable(%struct.TYPE_28__*) #1

declare dso_local i32 @AcpiDsDoImplicitReturn(%struct.TYPE_28__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiDbDisplayResultObject(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
