; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcSetOptimalIntegerSize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcSetOptimalIntegerSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@AslGbl_IntegerOptimizationFlag = common dso_local global i64 0, align 8
@AML_ZERO_OP = common dso_local global i8* null, align 8
@ASL_OPTIMIZATION = common dso_local global i32 0, align 4
@ASL_MSG_INTEGER_OPTIMIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Zero\00", align 1
@AML_ONE_OP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"One\00", align 1
@AcpiGbl_IntegerByteWidth = common dso_local global i32 0, align 4
@AML_ONES_OP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Ones\00", align 1
@ACPI_UINT8_MAX = common dso_local global i32 0, align 4
@AML_BYTE_OP = common dso_local global i8* null, align 8
@ACPI_UINT16_MAX = common dso_local global i32 0, align 4
@AML_WORD_OP = common dso_local global i8* null, align 8
@AML_DWORD_OP = common dso_local global i8* null, align 8
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_INTEGER_LENGTH = common dso_local global i32 0, align 4
@AslGbl_IgnoreErrors = common dso_local global i32 0, align 4
@AML_QWORD_OP = common dso_local global i8* null, align 8
@PARSEOP_DEFINITION_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpcSetOptimalIntegerSize(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %4 = load i64, i64* @AslGbl_IntegerOptimizationFlag, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %1
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %56 [
    i32 0, label %12
    i32 1, label %21
    i32 129, label %30
    i32 128, label %43
  ]

12:                                               ; preds = %6
  %13 = load i8*, i8** @AML_ZERO_OP, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load i32, i32* @ASL_OPTIMIZATION, align 4
  %18 = load i32, i32* @ASL_MSG_INTEGER_OPTIMIZATION, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = call i32 @AslError(i32 %17, i32 %18, %struct.TYPE_16__* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %121

21:                                               ; preds = %6
  %22 = load i8*, i8** @AML_ONE_OP, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @ASL_OPTIMIZATION, align 4
  %27 = load i32, i32* @ASL_MSG_INTEGER_OPTIMIZATION, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = call i32 @AslError(i32 %26, i32 %27, %struct.TYPE_16__* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %121

30:                                               ; preds = %6
  %31 = load i32, i32* @AcpiGbl_IntegerByteWidth, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8*, i8** @AML_ONES_OP, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* @ASL_OPTIMIZATION, align 4
  %39 = load i32, i32* @ASL_MSG_INTEGER_OPTIMIZATION, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = call i32 @AslError(i32 %38, i32 %39, %struct.TYPE_16__* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %121

42:                                               ; preds = %30
  br label %57

43:                                               ; preds = %6
  %44 = load i32, i32* @AcpiGbl_IntegerByteWidth, align 4
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i8*, i8** @AML_ONES_OP, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @ASL_OPTIMIZATION, align 4
  %52 = load i32, i32* @ASL_MSG_INTEGER_OPTIMIZATION, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = call i32 @AslError(i32 %51, i32 %52, %struct.TYPE_16__* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %121

55:                                               ; preds = %43
  br label %57

56:                                               ; preds = %6
  br label %57

57:                                               ; preds = %56, %55, %42
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ACPI_UINT8_MAX, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i8*, i8** @AML_BYTE_OP, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  store i32 1, i32* %2, align 4
  br label %121

71:                                               ; preds = %58
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ACPI_UINT16_MAX, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i8*, i8** @AML_WORD_OP, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  store i32 2, i32* %2, align 4
  br label %121

84:                                               ; preds = %71
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %89, 129
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i8*, i8** @AML_DWORD_OP, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  store i32 4, i32* %2, align 4
  br label %121

96:                                               ; preds = %84
  %97 = load i32, i32* @AcpiGbl_IntegerByteWidth, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load i32, i32* @ASL_WARNING, align 4
  %101 = load i32, i32* @ASL_MSG_INTEGER_LENGTH, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = call i32 @AslError(i32 %100, i32 %101, %struct.TYPE_16__* %102, i8* null)
  %104 = load i32, i32* @AslGbl_IgnoreErrors, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %99
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, 129
  store i32 %112, i32* %110, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = call i32 @OpcSetOptimalIntegerSize(%struct.TYPE_16__* %113)
  store i32 %114, i32* %2, align 4
  br label %121

115:                                              ; preds = %99
  br label %116

116:                                              ; preds = %115, %96
  %117 = load i8*, i8** @AML_QWORD_OP, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  store i32 8, i32* %2, align 4
  br label %121

121:                                              ; preds = %116, %106, %91, %79, %66, %46, %33, %21, %12
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
