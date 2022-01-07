; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttable1.c_DtCompileHest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttable1.c_DtCompileHest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@AcpiDmTableInfoHest = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest0 = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest1 = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest2 = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest6 = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest7 = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest8 = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest9 = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest10 = common dso_local global i32* null, align 8
@AcpiDmTableInfoHest11 = common dso_local global i32* null, align 8
@ASL_MSG_UNKNOWN_SUBTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEST\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@ACPI_HEST_IA_MACHINE_CHECK = common dso_local global i32 0, align 4
@ACPI_HEST_IA_CORRECTED = common dso_local global i32 0, align 4
@ACPI_HEST_IA_DEFERRED_CHECK = common dso_local global i32 0, align 4
@AcpiDmTableInfoHestBank = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtCompileHest(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = bitcast i8** %12 to i32**
  store i32** %13, i32*** %7, align 8
  %14 = load i32**, i32*** %7, align 8
  %15 = load i32*, i32** @AcpiDmTableInfoHest, align 8
  %16 = call i32 @DtCompileTable(i32** %14, i32* %15, %struct.TYPE_7__** %5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %122

22:                                               ; preds = %1
  %23 = call %struct.TYPE_7__* (...) @DtPeekSubtable()
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %6, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = call i32 @DtInsertSubtable(%struct.TYPE_7__* %24, %struct.TYPE_7__* %25)
  br label %27

27:                                               ; preds = %119, %22
  %28 = load i32**, i32*** %7, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %120

31:                                               ; preds = %27
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %8, align 8
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @DtCompileInteger(i32* %10, i32* %35, i32 2, i32 0)
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %56 [
    i32 131, label %38
    i32 130, label %40
    i32 128, label %42
    i32 134, label %44
    i32 135, label %46
    i32 136, label %48
    i32 133, label %50
    i32 132, label %52
    i32 129, label %54
  ]

38:                                               ; preds = %31
  %39 = load i32*, i32** @AcpiDmTableInfoHest0, align 8
  store i32* %39, i32** %9, align 8
  br label %61

40:                                               ; preds = %31
  %41 = load i32*, i32** @AcpiDmTableInfoHest1, align 8
  store i32* %41, i32** %9, align 8
  br label %61

42:                                               ; preds = %31
  %43 = load i32*, i32** @AcpiDmTableInfoHest2, align 8
  store i32* %43, i32** %9, align 8
  br label %61

44:                                               ; preds = %31
  %45 = load i32*, i32** @AcpiDmTableInfoHest6, align 8
  store i32* %45, i32** %9, align 8
  br label %61

46:                                               ; preds = %31
  %47 = load i32*, i32** @AcpiDmTableInfoHest7, align 8
  store i32* %47, i32** %9, align 8
  br label %61

48:                                               ; preds = %31
  %49 = load i32*, i32** @AcpiDmTableInfoHest8, align 8
  store i32* %49, i32** %9, align 8
  br label %61

50:                                               ; preds = %31
  %51 = load i32*, i32** @AcpiDmTableInfoHest9, align 8
  store i32* %51, i32** %9, align 8
  br label %61

52:                                               ; preds = %31
  %53 = load i32*, i32** @AcpiDmTableInfoHest10, align 8
  store i32* %53, i32** %9, align 8
  br label %61

54:                                               ; preds = %31
  %55 = load i32*, i32** @AcpiDmTableInfoHest11, align 8
  store i32* %55, i32** %9, align 8
  br label %61

56:                                               ; preds = %31
  %57 = load i32, i32* @ASL_MSG_UNKNOWN_SUBTABLE, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @DtFatal(i32 %57, i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @AE_ERROR, align 4
  store i32 %60, i32* %2, align 4
  br label %122

61:                                               ; preds = %54, %52, %50, %48, %46, %44, %42, %40, %38
  %62 = load i32**, i32*** %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @DtCompileTable(i32** %62, i32* %63, %struct.TYPE_7__** %5)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @ACPI_FAILURE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %122

70:                                               ; preds = %61
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = call i32 @DtInsertSubtable(%struct.TYPE_7__* %71, %struct.TYPE_7__* %72)
  store i64 0, i64* %11, align 8
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %99 [
    i32 131, label %75
    i32 130, label %83
    i32 129, label %91
  ]

75:                                               ; preds = %70
  %76 = load i32, i32* @ACPI_HEST_IA_MACHINE_CHECK, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_8__* @ACPI_CAST_PTR(i32 %76, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  br label %100

83:                                               ; preds = %70
  %84 = load i32, i32* @ACPI_HEST_IA_CORRECTED, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_8__* @ACPI_CAST_PTR(i32 %84, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %11, align 8
  br label %100

91:                                               ; preds = %70
  %92 = load i32, i32* @ACPI_HEST_IA_DEFERRED_CHECK, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.TYPE_8__* @ACPI_CAST_PTR(i32 %92, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %11, align 8
  br label %100

99:                                               ; preds = %70
  br label %100

100:                                              ; preds = %99, %91, %83, %75
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load i32**, i32*** %7, align 8
  %106 = load i32*, i32** @AcpiDmTableInfoHestBank, align 8
  %107 = call i32 @DtCompileTable(i32** %105, i32* %106, %struct.TYPE_7__** %5)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i64 @ACPI_FAILURE(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %122

113:                                              ; preds = %104
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = call i32 @DtInsertSubtable(%struct.TYPE_7__* %114, %struct.TYPE_7__* %115)
  %117 = load i64, i64* %11, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %11, align 8
  br label %101

119:                                              ; preds = %101
  br label %27

120:                                              ; preds = %27
  %121 = load i32, i32* @AE_OK, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %111, %68, %56, %20
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @DtCompileTable(i32**, i32*, %struct.TYPE_7__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_7__* @DtPeekSubtable(...) #1

declare dso_local i32 @DtInsertSubtable(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @DtCompileInteger(i32*, i32*, i32, i32) #1

declare dso_local i32 @DtFatal(i32, i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @ACPI_CAST_PTR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
