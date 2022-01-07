; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtbdump3.c_AcpiDmDumpSlit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtbdump3.c_AcpiDmDumpSlit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }

@AcpiDmTableInfoSlit = common dso_local global i32 0, align 4
@ACPI_TABLE_SLIT = common dso_local global i32 0, align 4
@Entry = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Locality\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\0A**** Not enough room in table for all localities\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%2.2X\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmDumpSlit(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = load i32, i32* @AcpiDmTableInfoSlit, align 4
  %14 = call i32 @AcpiDmDumpTable(i64 %11, i32 0, %struct.TYPE_6__* %12, i32 0, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %95

19:                                               ; preds = %1
  %20 = load i32, i32* @ACPI_TABLE_SLIT, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = call %struct.TYPE_7__* @ACPI_CAST_PTR(i32 %20, %struct.TYPE_6__* %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @ACPI_TABLE_SLIT, align 4
  %26 = load i32*, i32** @Entry, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ACPI_OFFSET(i32 %25, i32 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i32, i32* @ACPI_TABLE_SLIT, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = call %struct.TYPE_7__* @ACPI_CAST_PTR(i32 %30, %struct.TYPE_6__* %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %5, align 8
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %92, %19
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @AcpiDmLineHeader2(i64 %41, i64 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %43)
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %84, %40
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %95

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %4, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  %67 = load i64, i64* %6, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %57
  %70 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %74, 1
  %76 = srem i64 %75, 16
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @AcpiDmLineHeader(i64 %80, i32 0, i32* null)
  br label %82

82:                                               ; preds = %78, %73, %69
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %8, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %45

87:                                               ; preds = %45
  %88 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i64, i64* %6, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %5, align 8
  br label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %7, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %36

95:                                               ; preds = %18, %55, %36
  ret void
}

declare dso_local i32 @AcpiDmDumpTable(i64, i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_7__* @ACPI_CAST_PTR(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @ACPI_OFFSET(i32, i32) #1

declare dso_local i32 @AcpiDmLineHeader2(i64, i64, i8*, i64) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiDmLineHeader(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
