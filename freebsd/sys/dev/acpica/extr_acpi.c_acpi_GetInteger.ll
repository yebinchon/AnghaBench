; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_GetInteger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_GetInteger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ACPI_ROOT_OBJECT = common dso_local global i32* null, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@AE_TYPE = common dso_local global i64 0, align 8
@AE_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_GetInteger(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** @ACPI_ROOT_OBJECT, align 8
  store i32* %13, i32** %4, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 16, i32* %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @AcpiEvaluateObject(i32* %17, i8* %18, i32* null, %struct.TYPE_10__* %8)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @ACPI_SUCCESS(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %35

33:                                               ; preds = %23
  %34 = load i64, i64* @AE_TYPE, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @AE_BUFFER_OVERFLOW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_9__* @AcpiOsAllocate(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %44, align 8
  %45 = icmp eq %struct.TYPE_9__* %43, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %47, i64* %7, align 8
  br label %62

48:                                               ; preds = %40
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @AcpiEvaluateObject(i32* %49, i8* %50, i32* null, %struct.TYPE_10__* %8)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @ACPI_SUCCESS(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @acpi_ConvertBufferToInteger(%struct.TYPE_10__* %8, i32* %56)
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %55, %48
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i32 @AcpiOsFree(%struct.TYPE_9__* %60)
  br label %62

62:                                               ; preds = %58, %46
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i64, i64* %7, align 8
  ret i64 %64
}

declare dso_local i64 @AcpiEvaluateObject(i32*, i8*, i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local %struct.TYPE_9__* @AcpiOsAllocate(i32) #1

declare dso_local i64 @acpi_ConvertBufferToInteger(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
