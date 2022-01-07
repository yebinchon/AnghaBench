; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/namespace/extr_nsnames.c_AcpiNsGetPathnameLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/namespace/extr_nsnames.c_AcpiNsGetPathnameLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Invalid/cached reference target node: %p, descriptor type %d\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiNsGetPathnameLength(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(i32* %5)
  %7 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @AE_INFO, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(i32* %12)
  %14 = trunc i64 %13 to i32
  %15 = call i32 @ACPI_ERROR(i32 %14)
  store i32 0, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @AcpiNsBuildNormalizedPath(i32* %17, i32* null, i32 0, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(i32*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiNsBuildNormalizedPath(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
