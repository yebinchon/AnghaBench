; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloptions.c_AslCommandLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloptions.c_AslCommandLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@AslGbl_DoTemplates = common dso_local global i64 0, align 8
@AcpiGbl_Optind = common dso_local global i64 0, align 8
@AcpiGbl_DisasmFlag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Missing input filename\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@AslGbl_DoSignon = common dso_local global i64 0, align 8
@ASL_COMPILER_NAME = common dso_local global i32 0, align 4
@AslGbl_IgnoreErrors = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Ignoring all errors, forcing AML file generation\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Use -h option for help information\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AslCommandLine(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 (...) @Usage()
  %11 = call i32 @exit(i32 1) #3
  unreachable

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i8**, i8*** %4, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @AslDoOptions(i32 %13, i8** %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* @AslGbl_DoTemplates, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load i8**, i8*** %4, align 8
  %21 = call i32 @DtCreateTemplates(i8** %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @exit(i32 -1) #3
  unreachable

27:                                               ; preds = %19
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %12
  %30 = load i8**, i8*** %4, align 8
  %31 = load i64, i64* @AcpiGbl_Optind, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @AcpiGbl_DisasmFlag, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %35, %29
  %42 = load i64, i64* @AslGbl_DoSignon, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* @ASL_COMPILER_NAME, align 4
  %46 = call i8* @ACPI_COMMON_SIGNON(i32 %45)
  %47 = call i32 @printf(i8* %46)
  %48 = load i64, i64* @AslGbl_IgnoreErrors, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %53
  %60 = load i64, i64* @AcpiGbl_Optind, align 8
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local i32 @Usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @AslDoOptions(i32, i8**, i32) #1

declare dso_local i32 @DtCreateTemplates(i8**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @ACPI_COMMON_SIGNON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
