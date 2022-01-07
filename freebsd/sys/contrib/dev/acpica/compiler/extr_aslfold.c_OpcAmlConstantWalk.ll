; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_OpcAmlConstantWalk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_OpcAmlConstantWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i32* }

@OP_COMPILE_TIME_CONST = common dso_local global i32 0, align 4
@OP_IS_TARGET = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ASL_WALK_VISIT_DOWNWARD = common dso_local global i32 0, align 4
@OpcAmlCheckForConstant = common dso_local global i32 0, align 4
@ASL_PARSE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot resolve, %s\0A\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_CONSTANT_EVALUATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpcAmlConstantWalk(%struct.TYPE_17__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 129, i32* %9, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 129, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OP_COMPILE_TIME_CONST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OP_IS_TARGET, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %16
  store i32 129, i32* %4, align 4
  br label %83

33:                                               ; preds = %24
  %34 = call %struct.TYPE_16__* @AcpiDsCreateWalkState(i32 0, i32* null, i32* null, i32* null)
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %8, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = icmp ne %struct.TYPE_16__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %38, i32* %4, align 4
  br label %83

39:                                               ; preds = %33
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = load i32, i32* @ASL_WALK_VISIT_DOWNWARD, align 4
  %46 = load i32, i32* @OpcAmlCheckForConstant, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = call i32 @TrWalkParseTree(%struct.TYPE_17__* %44, i32 %45, i32 %46, i32* null, %struct.TYPE_16__* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %61 [
    i32 129, label %50
    i32 130, label %54
    i32 128, label %58
  ]

50:                                               ; preds = %39
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = call i32 @TrSimpleConstantReduction(%struct.TYPE_17__* %51, %struct.TYPE_16__* %52)
  store i32 %53, i32* %9, align 4
  br label %64

54:                                               ; preds = %39
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = call i32 @TrTransformToStoreOp(%struct.TYPE_17__* %55, %struct.TYPE_16__* %56)
  store i32 %57, i32* %9, align 4
  br label %64

58:                                               ; preds = %39
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = call i32 @AcpiDsDeleteWalkState(%struct.TYPE_16__* %59)
  store i32 129, i32* %4, align 4
  br label %83

61:                                               ; preds = %39
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = call i32 @AcpiDsDeleteWalkState(%struct.TYPE_16__* %62)
  br label %64

64:                                               ; preds = %61, %54, %50
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @ACPI_FAILURE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @AcpiFormatException(i32 %70)
  %72 = call i32 @DbgPrint(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @ASL_ERROR, align 4
  %74 = load i32, i32* @ASL_MSG_CONSTANT_EVALUATION, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @AcpiFormatException(i32 %76)
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @AslError(i32 %73, i32 %74, %struct.TYPE_17__* %75, i8* %78)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = call i32 @OpcUpdateIntegerNode(%struct.TYPE_17__* %80, i32 0)
  br label %82

82:                                               ; preds = %68, %64
  store i32 129, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %58, %37, %32, %15
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_16__* @AcpiDsCreateWalkState(i32, i32*, i32*, i32*) #1

declare dso_local i32 @TrWalkParseTree(%struct.TYPE_17__*, i32, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @TrSimpleConstantReduction(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @TrTransformToStoreOp(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @AcpiDsDeleteWalkState(%struct.TYPE_16__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DbgPrint(i32, i8*, i64) #1

declare dso_local i64 @AcpiFormatException(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_17__*, i8*) #1

declare dso_local i32 @OpcUpdateIntegerNode(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
