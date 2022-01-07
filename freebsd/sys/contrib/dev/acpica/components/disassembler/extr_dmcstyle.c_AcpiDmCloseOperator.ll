; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmcstyle.c_AcpiDmCloseOperator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmcstyle.c_AcpiDmCloseOperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@AcpiGbl_CstyleDisassembly = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@AML_COMMENT_END_NODE = common dso_local global i32 0, align 4
@ACPI_PARSEOP_LEGACY_ASL_ONLY = common dso_local global i32 0, align 4
@ACPI_PARSEOP_COMPOUND_ASSIGNMENT = common dso_local global i32 0, align 4
@ACPI_PARSEOP_ASSIGNMENT = common dso_local global i32 0, align 4
@ACPI_PARSEOP_CLOSING_PAREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmCloseOperator(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load i32, i32* @AcpiGbl_CstyleDisassembly, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = load i32, i32* @AML_COMMENT_END_NODE, align 4
  %9 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_6__* %7, i32 %8, i32* null, i32 0)
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ACPI_PARSEOP_LEGACY_ASL_ONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = load i32, i32* @AML_COMMENT_END_NODE, align 4
  %22 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_6__* %20, i32 %21, i32* null, i32 0)
  br label %75

23:                                               ; preds = %10
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %69 [
    i32 148, label %28
    i32 128, label %28
    i32 132, label %28
    i32 142, label %28
    i32 133, label %28
    i32 131, label %28
    i32 130, label %28
    i32 147, label %28
    i32 145, label %28
    i32 144, label %28
    i32 139, label %28
    i32 138, label %28
    i32 137, label %28
    i32 136, label %28
    i32 134, label %28
    i32 140, label %51
    i32 143, label %65
    i32 141, label %65
    i32 135, label %65
    i32 146, label %65
    i32 129, label %65
  ]

28:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACPI_PARSEOP_COMPOUND_ASSIGNMENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = load i32, i32* @AML_COMMENT_END_NODE, align 4
  %39 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_6__* %37, i32 %38, i32* null, i32 0)
  br label %75

40:                                               ; preds = %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ACPI_PARSEOP_ASSIGNMENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  br label %70

51:                                               ; preds = %23
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ACPI_PARSEOP_CLOSING_PAREN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %51
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = load i32, i32* @AML_COMMENT_END_NODE, align 4
  %64 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_6__* %62, i32 %63, i32* null, i32 0)
  br label %75

65:                                               ; preds = %23, %23, %23, %23, %23
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = load i32, i32* @AML_COMMENT_END_NODE, align 4
  %68 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_6__* %66, i32 %67, i32* null, i32 0)
  br label %75

69:                                               ; preds = %23
  br label %70

70:                                               ; preds = %69, %50
  %71 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = load i32, i32* @AML_COMMENT_END_NODE, align 4
  %74 = call i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_6__* %72, i32 %73, i32* null, i32 0)
  br label %75

75:                                               ; preds = %70, %65, %61, %36, %18, %5
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*) #1

declare dso_local i32 @ASL_CV_PRINT_ONE_COMMENT(%struct.TYPE_6__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
