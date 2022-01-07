; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslbtypes.c_AnMapObjTypeToBtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslbtypes.c_AnMapObjTypeToBtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ACPI_BTYPE_BUFFER_FIELD = common dso_local global i32 0, align 4
@ACPI_BTYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_BTYPE_DDB_HANDLE = common dso_local global i32 0, align 4
@ACPI_BTYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_BTYPE_EVENT = common dso_local global i32 0, align 4
@ACPI_BTYPE_FIELD_UNIT = common dso_local global i32 0, align 4
@ACPI_BTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_BTYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_BTYPE_MUTEX = common dso_local global i32 0, align 4
@ACPI_BTYPE_REGION = common dso_local global i32 0, align 4
@ACPI_BTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_BTYPE_POWER = common dso_local global i32 0, align 4
@ACPI_BTYPE_STRING = common dso_local global i32 0, align 4
@ACPI_BTYPE_THERMAL = common dso_local global i32 0, align 4
@ACPI_BTYPE_OBJECTS_AND_REFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnMapObjTypeToBtype(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %38 [
    i32 142, label %8
    i32 141, label %10
    i32 140, label %12
    i32 139, label %14
    i32 138, label %16
    i32 137, label %18
    i32 136, label %20
    i32 135, label %22
    i32 134, label %24
    i32 133, label %26
    i32 132, label %28
    i32 131, label %30
    i32 130, label %32
    i32 129, label %34
    i32 128, label %36
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @ACPI_BTYPE_BUFFER_FIELD, align 4
  store i32 %9, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load i32, i32* @ACPI_BTYPE_BUFFER, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @ACPI_BTYPE_DDB_HANDLE, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load i32, i32* @ACPI_BTYPE_DEVICE, align 4
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load i32, i32* @ACPI_BTYPE_EVENT, align 4
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load i32, i32* @ACPI_BTYPE_FIELD_UNIT, align 4
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = load i32, i32* @ACPI_BTYPE_INTEGER, align 4
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %1
  %23 = load i32, i32* @ACPI_BTYPE_METHOD, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load i32, i32* @ACPI_BTYPE_MUTEX, align 4
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %1
  %27 = load i32, i32* @ACPI_BTYPE_REGION, align 4
  store i32 %27, i32* %2, align 4
  br label %39

28:                                               ; preds = %1
  %29 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load i32, i32* @ACPI_BTYPE_POWER, align 4
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %1
  %33 = load i32, i32* @ACPI_BTYPE_STRING, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %1
  %35 = load i32, i32* @ACPI_BTYPE_THERMAL, align 4
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @ACPI_BTYPE_OBJECTS_AND_REFS, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
