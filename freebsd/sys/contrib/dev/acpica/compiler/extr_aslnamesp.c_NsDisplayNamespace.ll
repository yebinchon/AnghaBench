; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslnamesp.c_NsDisplayNamespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslnamesp.c_NsDisplayNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_NsOutputFlag = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AslGbl_NumNamespaceObjects = common dso_local global i64 0, align 8
@ASL_FILE_NAMESPACE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Contents of ACPI Namespace\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Count  Depth    Name - Type\0A\0A\00", align 1
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NsDoOneNamespaceObject = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"\0ANamespace pathnames\0A\0A\00", align 1
@NsDoOnePathname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NsDisplayNamespace() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @AslGbl_NsOutputFlag, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %1, align 4
  br label %33

7:                                                ; preds = %0
  store i64 0, i64* @AslGbl_NumNamespaceObjects, align 8
  %8 = load i32, i32* @ASL_FILE_NAMESPACE_OUTPUT, align 4
  %9 = call i32 @FlPrintFile(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ASL_FILE_NAMESPACE_OUTPUT, align 4
  %11 = call i32 @FlPrintFile(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %13 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %14 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32, i32* @NsDoOneNamespaceObject, align 4
  %17 = call i32 @AcpiNsWalkNamespace(i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32* null, i32* null, i32* null)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %33

23:                                               ; preds = %7
  %24 = load i32, i32* @ASL_FILE_NAMESPACE_OUTPUT, align 4
  %25 = call i32 @FlPrintFile(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %27 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %28 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* @NsDoOnePathname, align 4
  %31 = call i32 @AcpiNsWalkNamespace(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32* null, i32* null, i32* null)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %23, %21, %5
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @FlPrintFile(i32, i8*) #1

declare dso_local i32 @AcpiNsWalkNamespace(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
