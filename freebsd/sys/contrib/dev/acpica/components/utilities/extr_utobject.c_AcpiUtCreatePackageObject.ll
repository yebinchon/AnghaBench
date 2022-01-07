; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utobject.c_AcpiUtCreatePackageObject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utobject.c_AcpiUtCreatePackageObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__**, i64 }

@UtCreatePackageObject = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @AcpiUtCreatePackageObject(i64 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @UtCreatePackageObject, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %6, i64 %7)
  %9 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %10 = call %struct.TYPE_9__* @AcpiUtCreateInternalObject(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @return_PTR(%struct.TYPE_9__* null)
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i64, i64* %3, align 8
  %17 = trunc i64 %16 to i32
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call %struct.TYPE_9__** @ACPI_ALLOCATE_ZEROED(i32 %21)
  store %struct.TYPE_9__** %22, %struct.TYPE_9__*** %5, align 8
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %24 = icmp ne %struct.TYPE_9__** %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @ACPI_FREE(%struct.TYPE_9__* %26)
  %28 = call i32 @return_PTR(%struct.TYPE_9__* null)
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i64 %30, i64* %33, align 8
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store %struct.TYPE_9__** %34, %struct.TYPE_9__*** %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = call i32 @return_PTR(%struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local %struct.TYPE_9__* @AcpiUtCreateInternalObject(i32) #1

declare dso_local i32 @return_PTR(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__** @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
