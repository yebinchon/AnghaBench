; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslbtypes.c_AnMapArgTypeToBtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslbtypes.c_AnMapArgTypeToBtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_BTYPE_OBJECTS_AND_REFS = common dso_local global i32 0, align 4
@ACPI_BTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_BTYPE_EVENT = common dso_local global i32 0, align 4
@ACPI_BTYPE_MUTEX = common dso_local global i32 0, align 4
@ACPI_BTYPE_DDB_HANDLE = common dso_local global i32 0, align 4
@ACPI_BTYPE_REFERENCE_OBJECT = common dso_local global i32 0, align 4
@ACPI_BTYPE_COMPUTE_DATA = common dso_local global i32 0, align 4
@ACPI_BTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_BTYPE_ALL_OBJECTS = common dso_local global i32 0, align 4
@ACPI_BTYPE_DEVICE_OBJECTS = common dso_local global i32 0, align 4
@ACPI_BTYPE_NAMED_REFERENCE = common dso_local global i32 0, align 4
@ACPI_BTYPE_DEBUG_OBJECT = common dso_local global i32 0, align 4
@ACPI_BTYPE_DATA = common dso_local global i32 0, align 4
@ACPI_BTYPE_STRING = common dso_local global i32 0, align 4
@ACPI_BTYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_BTYPE_REGION = common dso_local global i32 0, align 4
@ACPI_BTYPE_FIELD_UNIT = common dso_local global i32 0, align 4
@ACPI_BTYPE_DATA_REFERENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnMapArgTypeToBtype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %69 [
    i32 150, label %5
    i32 135, label %7
    i32 141, label %9
    i32 137, label %11
    i32 143, label %13
    i32 139, label %17
    i32 129, label %17
    i32 149, label %17
    i32 148, label %17
    i32 146, label %17
    i32 138, label %19
    i32 136, label %21
    i32 142, label %23
    i32 134, label %25
    i32 128, label %27
    i32 130, label %33
    i32 140, label %39
    i32 131, label %39
    i32 145, label %41
    i32 147, label %49
    i32 133, label %55
    i32 132, label %59
    i32 144, label %65
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ACPI_BTYPE_OBJECTS_AND_REFS, align 4
  store i32 %6, i32* %2, align 4
  br label %72

7:                                                ; preds = %1
  %8 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  store i32 %8, i32* %2, align 4
  br label %72

9:                                                ; preds = %1
  %10 = load i32, i32* @ACPI_BTYPE_EVENT, align 4
  store i32 %10, i32* %2, align 4
  br label %72

11:                                               ; preds = %1
  %12 = load i32, i32* @ACPI_BTYPE_MUTEX, align 4
  store i32 %12, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load i32, i32* @ACPI_BTYPE_DDB_HANDLE, align 4
  %15 = load i32, i32* @ACPI_BTYPE_REFERENCE_OBJECT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %72

17:                                               ; preds = %1, %1, %1, %1, %1
  %18 = load i32, i32* @ACPI_BTYPE_COMPUTE_DATA, align 4
  store i32 %18, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load i32, i32* @ACPI_BTYPE_INTEGER, align 4
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load i32, i32* @ACPI_BTYPE_ALL_OBJECTS, align 4
  store i32 %22, i32* %2, align 4
  br label %72

23:                                               ; preds = %1
  %24 = load i32, i32* @ACPI_BTYPE_DEVICE_OBJECTS, align 4
  store i32 %24, i32* %2, align 4
  br label %72

25:                                               ; preds = %1
  %26 = load i32, i32* @ACPI_BTYPE_NAMED_REFERENCE, align 4
  store i32 %26, i32* %2, align 4
  br label %72

27:                                               ; preds = %1
  %28 = load i32, i32* @ACPI_BTYPE_COMPUTE_DATA, align 4
  %29 = load i32, i32* @ACPI_BTYPE_DEBUG_OBJECT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ACPI_BTYPE_REFERENCE_OBJECT, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %72

33:                                               ; preds = %1
  %34 = load i32, i32* @ACPI_BTYPE_DATA, align 4
  %35 = load i32, i32* @ACPI_BTYPE_DEBUG_OBJECT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ACPI_BTYPE_REFERENCE_OBJECT, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %2, align 4
  br label %72

39:                                               ; preds = %1, %1
  %40 = load i32, i32* @ACPI_BTYPE_OBJECTS_AND_REFS, align 4
  store i32 %40, i32* %2, align 4
  br label %72

41:                                               ; preds = %1
  %42 = load i32, i32* @ACPI_BTYPE_STRING, align 4
  %43 = load i32, i32* @ACPI_BTYPE_BUFFER, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ACPI_BTYPE_REFERENCE_OBJECT, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %2, align 4
  br label %72

49:                                               ; preds = %1
  %50 = load i32, i32* @ACPI_BTYPE_STRING, align 4
  %51 = load i32, i32* @ACPI_BTYPE_BUFFER, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %2, align 4
  br label %72

55:                                               ; preds = %1
  %56 = load i32, i32* @ACPI_BTYPE_STRING, align 4
  %57 = load i32, i32* @ACPI_BTYPE_REFERENCE_OBJECT, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %2, align 4
  br label %72

59:                                               ; preds = %1
  %60 = load i32, i32* @ACPI_BTYPE_REGION, align 4
  %61 = load i32, i32* @ACPI_BTYPE_BUFFER, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ACPI_BTYPE_FIELD_UNIT, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %1
  %66 = load i32, i32* @ACPI_BTYPE_DATA_REFERENCE, align 4
  %67 = load i32, i32* @ACPI_BTYPE_REFERENCE_OBJECT, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %2, align 4
  br label %72

69:                                               ; preds = %1
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @ACPI_BTYPE_OBJECTS_AND_REFS, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %65, %59, %55, %49, %41, %39, %33, %27, %25, %23, %21, %19, %17, %13, %11, %9, %7, %5
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
