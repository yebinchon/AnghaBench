; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utstring.c_AcpiUtRepairName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utstring.c_AcpiUtRepairName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@UtRepairName = common dso_local global i32 0, align 4
@ACPI_ROOT_PATHNAME = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@AcpiGbl_EnableInterpreterSlack = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Invalid character(s) in name (0x%.8X), repaired: [%4.4s]\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiUtRepairName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @UtRepairName, align 4
  %8 = call i32 @ACPI_FUNCTION_NAME(i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @ACPI_ROOT_PATHNAME, align 4
  %11 = call i64 @ACPI_COMPARE_NAMESEG(i8* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %57

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @ACPI_COPY_NAMESEG(i64* %5, i8* %15)
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %35, %14
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @AcpiUtValidNameChar(i8 signext %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %35

30:                                               ; preds = %21
  %31 = load i8*, i8** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 42, i8* %33, align 1
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %30, %29
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %17

38:                                               ; preds = %17
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i32, i32* @AcpiGbl_EnableInterpreterSlack, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @AE_INFO, align 4
  %46 = load i64, i64* %5, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = call i32 @ACPI_WARNING(i32 %48)
  br label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @ACPI_DB_INFO, align 4
  %52 = load i64, i64* %5, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = call i32 @ACPI_DEBUG_PRINT(i32 %54)
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %13, %56, %38
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i8*, i32) #1

declare dso_local i32 @ACPI_COPY_NAMESEG(i64*, i8*) #1

declare dso_local i64 @AcpiUtValidNameChar(i8 signext, i64) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
