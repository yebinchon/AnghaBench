; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbIntegrityWalk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbIntegrityWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Invalid Descriptor Type for Node %p [%s] - is %2.2X should be %2.2X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_ALIAS = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_METHOD_ALIAS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid Object Type for Node %p, Type = %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid AcpiName for Node %p\0A\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid Descriptor Type for Object %p [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @AcpiDbIntegrityWalk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDbIntegrityWalk(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %13, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %59, %4
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %28 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_11__* %27)
  %29 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = call i64 @AcpiUtGetDescriptorName(%struct.TYPE_11__* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %36 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_11__* %35)
  %37 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %38 = call i32 (i8*, %struct.TYPE_11__*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %32, i64 %34, i64 %36, i64 %37)
  %39 = load i32, i32* @AE_OK, align 4
  store i32 %39, i32* %5, align 4
  br label %106

40:                                               ; preds = %26
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ACPI_TYPE_LOCAL_ALIAS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ACPI_TYPE_LOCAL_METHOD_ALIAS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46, %40
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %11, align 8
  br label %59

57:                                               ; preds = %46
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %57, %52
  br label %23

60:                                               ; preds = %23
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ACPI_TYPE_LOCAL_MAX, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i8*, %struct.TYPE_11__*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %67, i64 %70)
  %72 = load i32, i32* @AE_OK, align 4
  store i32 %72, i32* %5, align 4
  br label %106

73:                                               ; preds = %60
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @AcpiUtValidNameseg(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %82 = call i32 (i8*, %struct.TYPE_11__*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %81)
  %83 = load i32, i32* @AE_OK, align 4
  store i32 %83, i32* %5, align 4
  br label %106

84:                                               ; preds = %73
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = call %struct.TYPE_11__* @AcpiNsGetAttachedObject(%struct.TYPE_11__* %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %12, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_11__* %94)
  %96 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %101 = call i64 @AcpiUtGetDescriptorName(%struct.TYPE_11__* %100)
  %102 = call i32 (i8*, %struct.TYPE_11__*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %99, i64 %101)
  br label %103

103:                                              ; preds = %98, %89
  br label %104

104:                                              ; preds = %103, %84
  %105 = load i32, i32* @AE_OK, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %80, %66, %31
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_11__*) #1

declare dso_local i32 @AcpiOsPrintf(i8*, %struct.TYPE_11__*, ...) #1

declare dso_local i64 @AcpiUtGetDescriptorName(%struct.TYPE_11__*) #1

declare dso_local i32 @AcpiUtValidNameseg(i32) #1

declare dso_local %struct.TYPE_11__* @AcpiNsGetAttachedObject(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
