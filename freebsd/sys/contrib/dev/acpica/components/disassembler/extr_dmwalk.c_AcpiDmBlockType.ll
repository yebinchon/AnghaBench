; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmwalk.c_AcpiDmBlockType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmwalk.c_AcpiDmBlockType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@BLOCK_NONE = common dso_local global i32 0, align 4
@BLOCK_BRACE = common dso_local global i32 0, align 4
@BLOCK_PAREN = common dso_local global i32 0, align 4
@ACPI_DASM_UNICODE = common dso_local global i32 0, align 4
@ACPI_DASM_UUID = common dso_local global i32 0, align 4
@ACPI_DASM_PLD_METHOD = common dso_local global i32 0, align 4
@AML_HAS_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDmBlockType(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = icmp ne %struct.TYPE_11__* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %8, i32* %2, align 4
  br label %93

9:                                                ; preds = %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %77 [
    i32 141, label %14
    i32 135, label %16
    i32 142, label %16
    i32 131, label %16
    i32 132, label %16
    i32 133, label %16
    i32 130, label %16
    i32 138, label %16
    i32 128, label %16
    i32 139, label %16
    i32 137, label %16
    i32 144, label %16
    i32 143, label %20
    i32 134, label %44
    i32 129, label %44
    i32 140, label %48
    i32 136, label %50
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* @BLOCK_BRACE, align 4
  store i32 %15, i32* %2, align 4
  br label %93

16:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %17 = load i32, i32* @BLOCK_PAREN, align 4
  %18 = load i32, i32* @BLOCK_BRACE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %2, align 4
  br label %93

20:                                               ; preds = %9
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ACPI_DASM_UNICODE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ACPI_DASM_UUID, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ACPI_DASM_PLD_METHOD, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %27, %20
  %42 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %42, i32* %2, align 4
  br label %93

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %9, %9, %43
  %45 = load i32, i32* @BLOCK_PAREN, align 4
  %46 = load i32, i32* @BLOCK_BRACE, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %2, align 4
  br label %93

48:                                               ; preds = %9
  %49 = load i32, i32* @BLOCK_PAREN, align 4
  store i32 %49, i32* %2, align 4
  br label %93

50:                                               ; preds = %9
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 134
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 129
  br i1 %73, label %74, label %76

74:                                               ; preds = %65, %56
  %75 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %75, i32* %2, align 4
  br label %93

76:                                               ; preds = %65, %50
  br label %77

77:                                               ; preds = %9, %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.TYPE_12__* @AcpiPsGetOpcodeInfo(i32 %81)
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %4, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AML_HAS_ARGS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* @BLOCK_PAREN, align 4
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %77
  %92 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %89, %74, %48, %44, %41, %16, %14, %7
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_12__* @AcpiPsGetOpcodeInfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
