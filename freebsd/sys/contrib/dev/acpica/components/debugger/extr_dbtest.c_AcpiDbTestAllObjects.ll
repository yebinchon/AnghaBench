; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbtest.c_AcpiDbTestAllObjects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbtest.c_AcpiDbTestAllObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ReadHandle = common dso_local global i32 0, align 4
@ReadMethodCode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s, Could not install debugger read method\0A\00", align 1
@ACPI_DB_READ_METHOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not obtain handle for debug method %s\0A\00", align 1
@WriteHandle = common dso_local global i32 0, align 4
@WriteMethodCode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"%s, Could not install debugger write method\0A\00", align 1
@ACPI_DB_WRITE_METHOD = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@AcpiDbTestOneObject = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AcpiDbTestAllObjects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDbTestAllObjects() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ReadHandle, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @ReadMethodCode, align 4
  %6 = call i32 @AcpiInstallMethod(i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @AcpiFormatException(i32 %11)
  %13 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %53

14:                                               ; preds = %4
  %15 = load i32, i32* @ACPI_DB_READ_METHOD, align 4
  %16 = call i32 @AcpiGetHandle(i32* null, i32 %15, i32* @ReadHandle)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @ACPI_DB_READ_METHOD, align 4
  %22 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %53

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %0
  %25 = load i32, i32* @WriteHandle, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @WriteMethodCode, align 4
  %29 = call i32 @AcpiInstallMethod(i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @AcpiFormatException(i32 %34)
  %36 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %53

37:                                               ; preds = %27
  %38 = load i32, i32* @ACPI_DB_WRITE_METHOD, align 4
  %39 = call i32 @AcpiGetHandle(i32* null, i32 %38, i32* @WriteHandle)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ACPI_DB_WRITE_METHOD, align 4
  %45 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %53

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %49 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %50 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %51 = load i32, i32* @AcpiDbTestOneObject, align 4
  %52 = call i32 @AcpiWalkNamespace(i32 %48, i32 %49, i32 %50, i32 %51, i32* null, i32* null, i32* null)
  br label %53

53:                                               ; preds = %47, %43, %33, %20, %10
  ret void
}

declare dso_local i32 @AcpiInstallMethod(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiGetHandle(i32*, i32, i32*) #1

declare dso_local i32 @AcpiWalkNamespace(i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
