; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_TrSimpleConstantReduction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_TrSimpleConstantReduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_15__ = type { i32** }

@ASL_PARSE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Simple subtree constant reduction, operator to constant\0A\00", align 1
@PARSEOP_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AML_INT_EVAL_SUBTREE_OP = common dso_local global i32 0, align 4
@ASL_WALK_VISIT_TWICE = common dso_local global i32 0, align 4
@OpcAmlEvaluationWalk1 = common dso_local global i32 0, align 4
@OpcAmlEvaluationWalk2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Constant Subtree evaluation(1), %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Constant Subtree evaluation(2), %s\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @TrSimpleConstantReduction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TrSimpleConstantReduction(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %10 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %11 = call i32 (i32, i8*, ...) @DbgPrint(i32 %10, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @PARSEOP_INTEGER, align 4
  %13 = call %struct.TYPE_16__* @TrAllocateOp(i32 %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %2
  %19 = load i32, i32* @AML_INT_EVAL_SUBTREE_OP, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i32** %8, i32*** %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load i32, i32* @ASL_WALK_VISIT_TWICE, align 4
  %35 = load i32, i32* @OpcAmlEvaluationWalk1, align 4
  %36 = load i32, i32* @OpcAmlEvaluationWalk2, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = call i32 @TrWalkParseTree(%struct.TYPE_16__* %33, i32 %34, i32 %35, i32 %36, %struct.TYPE_15__* %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %18
  %47 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @AcpiFormatException(i32 %48)
  %50 = call i32 (i32, i8*, ...) @DbgPrint(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %18
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = call i32 @AcpiDsResultPop(i32** %8, %struct.TYPE_15__* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @AcpiFormatException(i32 %60)
  %62 = call i32 (i32, i8*, ...) @DbgPrint(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %74

64:                                               ; preds = %52
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @TrInstallReducedConstant(%struct.TYPE_16__* %68, i32* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = call i32 @UtSetParseOpName(%struct.TYPE_16__* %71)
  %73 = load i32, i32* @AE_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %64, %58, %46, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @DbgPrint(i32, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @TrAllocateOp(i32) #1

declare dso_local i32 @TrWalkParseTree(%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiDsResultPop(i32**, %struct.TYPE_15__*) #1

declare dso_local i32 @TrInstallReducedConstant(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @UtSetParseOpName(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
