; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utobject.c_AcpiUtCreateStringObject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utobject.c_AcpiUtCreateStringObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i64 }

@UtCreateStringObject = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate size %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @AcpiUtCreateStringObject(i64 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @UtCreateStringObject, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %6, i64 %7)
  %9 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %10 = call %struct.TYPE_8__* @AcpiUtCreateInternalObject(i32 %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @return_PTR(%struct.TYPE_8__* null)
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i8* @ACPI_ALLOCATE_ZEROED(i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @AE_INFO, align 4
  %23 = load i64, i64* %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ACPI_ERROR(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @AcpiUtRemoveReference(%struct.TYPE_8__* %26)
  %28 = call i32 @return_PTR(%struct.TYPE_8__* null)
  br label %29

29:                                               ; preds = %21, %15
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = call i32 @return_PTR(%struct.TYPE_8__* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local %struct.TYPE_8__* @AcpiUtCreateInternalObject(i32) #1

declare dso_local i32 @return_PTR(%struct.TYPE_8__*) #1

declare dso_local i8* @ACPI_ALLOCATE_ZEROED(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
