; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_EvaluateOSC.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_EvaluateOSC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i8*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }

@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8
@ACPI_UUID_LENGTH = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_OSC\00", align 1
@AE_BUFFER_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_EvaluateOSC(i32 %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [4 x %struct.TYPE_12__], align 16
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %25 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 16
  %27 = load i32, i32* @ACPI_UUID_LENGTH, align 4
  %28 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 16
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32* %31, i32** %34, align 8
  %35 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %36 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 16
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %43 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 16
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %50 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 3
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 16
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 3
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 16
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %16, i64 0, i64 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32* %59, i32** %62, align 8
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %69, align 8
  %70 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %74 = call i32 @AcpiEvaluateObjectTyped(i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %18, %struct.TYPE_13__* %19, i8* %73)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = call i64 @ACPI_FAILURE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %7
  %79 = load i32, i32* %20, align 4
  store i32 %79, i32* %8, align 4
  br label %116

80:                                               ; preds = %7
  %81 = load i32*, i32** %14, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %111

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %17, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = call i32 @AcpiOsFree(%struct.TYPE_12__* %97)
  %99 = load i32, i32* @AE_BUFFER_OVERFLOW, align 4
  store i32 %99, i32* %8, align 4
  br label %116

100:                                              ; preds = %83
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bcopy(i32* %104, i32* %105, i32 %109)
  br label %111

111:                                              ; preds = %100, %80
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = call i32 @AcpiOsFree(%struct.TYPE_12__* %113)
  %115 = load i32, i32* %20, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %111, %95, %78
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local i32 @AcpiEvaluateObjectTyped(i32, i8*, %struct.TYPE_11__*, %struct.TYPE_13__*, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_12__*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
