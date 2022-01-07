; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/parser/extr_psobject.c_AcpiPsCompleteFinalOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/parser/extr_psobject.c_AcpiPsCompleteFinalOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 (%struct.TYPE_16__*)*, i32, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@PsCompleteFinalOp = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"AML package complete at Op %p\0A\00", align 1
@AE_CTRL_PENDING = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiPsCompleteFinalOp(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @PsCompleteFinalOp, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %struct.TYPE_16__* %10)
  %12 = load i32, i32* @ACPI_DB_PARSE, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = ptrtoint %struct.TYPE_17__* %13 to i32
  %15 = call i32 @ACPI_DEBUG_PRINT(i32 %14)
  br label %16

16:                                               ; preds = %129, %3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %121

19:                                               ; preds = %16
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %21, align 8
  %23 = icmp ne i64 (%struct.TYPE_16__*)* %22, null
  br i1 %23, label %24, label %110

24:                                               ; preds = %19
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 6
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @AcpiPsGetOpcodeInfo(i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = call i64 %43(%struct.TYPE_16__* %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @AcpiPsNextParseState(%struct.TYPE_16__* %46, %struct.TYPE_17__* %47, i64 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @AE_CTRL_PENDING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %24
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = load i64, i64* @AE_OK, align 8
  %56 = call i64 @AcpiPsCompleteOp(%struct.TYPE_16__* %54, %struct.TYPE_17__** %6, i64 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @ACPI_FAILURE(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @return_ACPI_STATUS(i64 %61)
  br label %63

63:                                               ; preds = %60, %53
  br label %64

64:                                               ; preds = %63, %24
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  %69 = load i64, i64* @AE_OK, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %92, %68
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = icmp ne %struct.TYPE_17__* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = call i64 @AcpiPsCompleteThisOp(%struct.TYPE_16__* %74, %struct.TYPE_17__* %75)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @ACPI_FAILURE(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @return_ACPI_STATUS(i64 %81)
  br label %83

83:                                               ; preds = %80, %73
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = call i32 @AcpiPsPopScope(i32* %86, %struct.TYPE_17__** %6, i32* %88, i32* %90)
  br label %92

92:                                               ; preds = %84
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %94 = icmp ne %struct.TYPE_17__* %93, null
  br i1 %94, label %70, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @return_ACPI_STATUS(i64 %96)
  br label %109

98:                                               ; preds = %64
  %99 = load i64, i64* %7, align 8
  %100 = call i64 @ACPI_FAILURE(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = call i64 @AcpiPsCompleteThisOp(%struct.TYPE_16__* %103, %struct.TYPE_17__* %104)
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @return_ACPI_STATUS(i64 %106)
  br label %108

108:                                              ; preds = %102, %98
  br label %109

109:                                              ; preds = %108, %95
  br label %110

110:                                              ; preds = %109, %19
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = call i64 @AcpiPsCompleteThisOp(%struct.TYPE_16__* %111, %struct.TYPE_17__* %112)
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i64 @ACPI_FAILURE(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @return_ACPI_STATUS(i64 %118)
  br label %120

120:                                              ; preds = %117, %110
  br label %121

121:                                              ; preds = %120, %16
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = call i32 @AcpiPsPopScope(i32* %123, %struct.TYPE_17__** %6, i32* %125, i32* %127)
  br label %129

129:                                              ; preds = %121
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %131 = icmp ne %struct.TYPE_17__* %130, null
  br i1 %131, label %16, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @return_ACPI_STATUS(i64 %133)
  %135 = load i64, i64* %4, align 8
  ret i64 %135
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiPsGetOpcodeInfo(i32) #1

declare dso_local i64 @AcpiPsNextParseState(%struct.TYPE_16__*, %struct.TYPE_17__*, i64) #1

declare dso_local i64 @AcpiPsCompleteOp(%struct.TYPE_16__*, %struct.TYPE_17__**, i64) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @AcpiPsCompleteThisOp(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @AcpiPsPopScope(i32*, %struct.TYPE_17__**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
