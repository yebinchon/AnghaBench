; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslbtypes.c_AnMapEtypeToBtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslbtypes.c_AnMapEtypeToBtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_BTYPE_OBJECTS_AND_REFS = common dso_local global i32 0, align 4
@ACPI_TYPE_EXTERNAL_MAX = common dso_local global i32 0, align 4
@ACPI_BTYPE_COMPUTE_DATA = common dso_local global i32 0, align 4
@ACPI_BTYPE_DDB_HANDLE = common dso_local global i32 0, align 4
@ACPI_BTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_BTYPE_FIELD_UNIT = common dso_local global i32 0, align 4
@ACPI_BTYPE_BUFFER_FIELD = common dso_local global i32 0, align 4
@ACPI_BTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_BTYPE_REFERENCE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unhandled encoded type: %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @AnMapEtypeToBtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AnMapEtypeToBtype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ACPI_BTYPE_OBJECTS_AND_REFS, align 4
  store i32 %8, i32* %2, align 4
  br label %53

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ACPI_TYPE_EXTERNAL_MAX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %36 [
    i32 136, label %15
    i32 128, label %19
    i32 141, label %19
    i32 129, label %21
    i32 137, label %23
    i32 140, label %27
    i32 139, label %31
    i32 138, label %35
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @ACPI_BTYPE_COMPUTE_DATA, align 4
  %17 = load i32, i32* @ACPI_BTYPE_DDB_HANDLE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %53

19:                                               ; preds = %13, %13
  %20 = load i32, i32* @ACPI_BTYPE_COMPUTE_DATA, align 4
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %13
  %22 = load i32, i32* @ACPI_BTYPE_PACKAGE, align 4
  store i32 %22, i32* %2, align 4
  br label %53

23:                                               ; preds = %13
  %24 = load i32, i32* @ACPI_BTYPE_COMPUTE_DATA, align 4
  %25 = load i32, i32* @ACPI_BTYPE_FIELD_UNIT, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %13
  %28 = load i32, i32* @ACPI_BTYPE_COMPUTE_DATA, align 4
  %29 = load i32, i32* @ACPI_BTYPE_BUFFER_FIELD, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %53

31:                                               ; preds = %13
  %32 = load i32, i32* @ACPI_BTYPE_INTEGER, align 4
  %33 = load i32, i32* @ACPI_BTYPE_DDB_HANDLE, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %2, align 4
  br label %53

35:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %53

36:                                               ; preds = %13
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 1
  %39 = shl i32 1, %38
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %9
  %41 = load i32, i32* %3, align 4
  switch i32 %41, label %50 [
    i32 132, label %42
    i32 134, label %42
    i32 133, label %42
    i32 135, label %46
    i32 131, label %48
    i32 130, label %48
  ]

42:                                               ; preds = %40, %40, %40
  %43 = load i32, i32* @ACPI_BTYPE_COMPUTE_DATA, align 4
  %44 = load i32, i32* @ACPI_BTYPE_FIELD_UNIT, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %2, align 4
  br label %53

46:                                               ; preds = %40
  %47 = load i32, i32* @ACPI_BTYPE_INTEGER, align 4
  store i32 %47, i32* %2, align 4
  br label %53

48:                                               ; preds = %40, %40
  %49 = load i32, i32* @ACPI_BTYPE_REFERENCE_OBJECT, align 4
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %48, %46, %42, %36, %35, %31, %27, %23, %21, %19, %15, %7
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
