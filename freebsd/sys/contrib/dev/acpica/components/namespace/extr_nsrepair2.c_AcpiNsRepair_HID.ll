; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/namespace/extr_nsrepair2.c_AcpiNsRepair_HID.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/namespace/extr_nsrepair2.c_AcpiNsRepair_HID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_9__ = type { i64 }

@NsRepair_HID = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid zero-length _HID or _CID string\00", align 1
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Removed invalid leading asterisk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__**)* @AcpiNsRepair_HID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiNsRepair_HID(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  %10 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  %12 = load i32, i32* @NsRepair_HID, align 4
  %13 = call i32 @ACPI_FUNCTION_NAME(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @AE_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %102

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i32, i32* @AE_INFO, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([40 x i8]* @.str to i32))
  %37 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @AE_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %22
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.TYPE_11__* @AcpiUtCreateStringObject(i64 %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %52, i32* %3, align 4
  br label %102

53:                                               ; preds = %43
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 42
  br i1 %61, label %62, label %75

62:                                               ; preds = %53
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ACPI_DEBUG_PRINT(i32 %73)
  br label %75

75:                                               ; preds = %62, %53
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %9, align 8
  br label %80

80:                                               ; preds = %91, %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i64 @toupper(i32 %87)
  %89 = trunc i64 %88 to i8
  %90 = load i8*, i8** %9, align 8
  store i8 %89, i8* %90, align 1
  br label %91

91:                                               ; preds = %84
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %9, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  br label %80

96:                                               ; preds = %80
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = call i32 @AcpiUtRemoveReference(%struct.TYPE_11__* %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %100, align 8
  %101 = load i32, i32* @AE_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %51, %28, %20
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local %struct.TYPE_11__* @AcpiUtCreateStringObject(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @toupper(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
