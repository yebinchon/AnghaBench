; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utcopy.c_AcpiUtCopyIobjectToIobject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utcopy.c_AcpiUtCopyIobjectToIobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@UtCopyIobjectToIobject = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtCopyIobjectToIobject(%struct.TYPE_12__* %0, %struct.TYPE_12__** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @UtCopyIobjectToIobject, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.TYPE_12__* @AcpiUtCreateInternalObject(i64 %15)
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %17, align 8
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @AE_NO_MEMORY, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @AcpiUtCopyIpackageToIpackage(%struct.TYPE_12__* %32, %struct.TYPE_12__* %34, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i32 @AcpiUtCopySimpleObject(%struct.TYPE_12__* %38, %struct.TYPE_12__* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = call i32 @AcpiUtRemoveReference(%struct.TYPE_12__* %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.TYPE_12__* @AcpiUtCreateInternalObject(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiUtCopyIpackageToIpackage(%struct.TYPE_12__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @AcpiUtCopySimpleObject(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
