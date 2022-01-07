; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtbdump.c_AcpiDmDumpFadt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtbdump.c_AcpiDmDumpFadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@AcpiDmTableInfoFadt1 = common dso_local global i32 0, align 4
@ACPI_FADT_V1_SIZE = common dso_local global i64 0, align 8
@ACPI_FADT_V2_SIZE = common dso_local global i64 0, align 8
@AcpiDmTableInfoFadt2 = common dso_local global i32 0, align 4
@AcpiDmTableInfoFadt3 = common dso_local global i32 0, align 4
@ACPI_FADT_V3_SIZE = common dso_local global i64 0, align 8
@AcpiDmTableInfoFadt5 = common dso_local global i32 0, align 4
@AcpiDmTableInfoFadt6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmDumpFadt(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load i32, i32* @AcpiDmTableInfoFadt1, align 4
  %9 = call i32 @AcpiDmDumpTable(i64 %6, i32 0, %struct.TYPE_5__* %7, i32 0, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @ACPI_FAILURE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %106

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACPI_FADT_V1_SIZE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ACPI_FADT_V2_SIZE, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = load i32, i32* @AcpiDmTableInfoFadt2, align 4
  %32 = call i32 @AcpiDmDumpTable(i64 %29, i32 0, %struct.TYPE_5__* %30, i32 0, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %106

37:                                               ; preds = %26
  br label %93

38:                                               ; preds = %20, %14
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ACPI_FADT_V2_SIZE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = load i32, i32* @AcpiDmTableInfoFadt3, align 4
  %50 = call i32 @AcpiDmDumpTable(i64 %47, i32 0, %struct.TYPE_5__* %48, i32 0, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @ACPI_FAILURE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %106

55:                                               ; preds = %44
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ACPI_FADT_V3_SIZE, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = load i32, i32* @AcpiDmTableInfoFadt5, align 4
  %67 = call i32 @AcpiDmDumpTable(i64 %64, i32 0, %struct.TYPE_5__* %65, i32 0, i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %106

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ACPI_FADT_V3_SIZE, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = load i32, i32* @AcpiDmTableInfoFadt6, align 4
  %85 = call i32 @AcpiDmDumpTable(i64 %82, i32 0, %struct.TYPE_5__* %83, i32 0, i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i64 @ACPI_FAILURE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %106

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %73
  br label %92

92:                                               ; preds = %91, %38
  br label %93

93:                                               ; preds = %92, %37
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @AcpiTbCreateLocalFadt(%struct.TYPE_5__* %94, i64 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @AcpiDmValidateFadtLength(i32 %101, i64 %104)
  br label %106

106:                                              ; preds = %93, %89, %71, %54, %36, %13
  ret void
}

declare dso_local i32 @AcpiDmDumpTable(i64, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiTbCreateLocalFadt(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @AcpiDmValidateFadtLength(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
