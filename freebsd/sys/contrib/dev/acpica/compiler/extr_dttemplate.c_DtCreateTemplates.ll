; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtCreateTemplates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtCreateTemplates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@AcpiGbl_Optind = common dso_local global i32 0, align 4
@ACPI_SIG_DSDT = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%u SSDTs requested, maximum is 254\0A\00", align 1
@AE_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtCreateTemplates(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %8 = load i32, i32* @AE_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 (...) @AslInitializeGlobals()
  %10 = call i32 (...) @AdInitialize()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load i32, i32* @AcpiGbl_Optind, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** @ACPI_SIG_DSDT, align 8
  %21 = call i32 @DtCreateOneTemplateFile(i8* %20, i64 0)
  store i32 %21, i32* %7, align 4
  br label %82

22:                                               ; preds = %16
  %23 = load i32, i32* @AcpiGbl_Optind, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* @AcpiGbl_Optind, align 4
  %25 = load i8**, i8*** %3, align 8
  %26 = load i32, i32* @AcpiGbl_Optind, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @AcpiUtStrupr(i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strtoul(i8* %32, i8** %5, i32 0)
  store i64 %33, i64* %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %22
  %38 = load i64, i64* %6, align 8
  %39 = icmp ugt i64 %38, 254
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @stderr, align 4
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @AE_LIMIT, align 4
  store i32 %45, i32* %7, align 4
  br label %82

46:                                               ; preds = %37
  %47 = load i8*, i8** @ACPI_SIG_DSDT, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @DtCreateOneTemplateFile(i8* %47, i64 %48)
  store i32 %49, i32* %7, align 4
  br label %82

50:                                               ; preds = %22
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 (...) @DtCreateAllTemplates()
  store i32 %55, i32* %7, align 4
  br label %82

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %78, %56
  %58 = load i8**, i8*** %3, align 8
  %59 = load i32, i32* @AcpiGbl_Optind, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %57
  %65 = load i8**, i8*** %3, align 8
  %66 = load i32, i32* @AcpiGbl_Optind, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %4, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @AcpiUtStrupr(i8* %70)
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @DtCreateOneTemplateFile(i8* %72, i64 0)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @ACPI_FAILURE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %82

78:                                               ; preds = %64
  %79 = load i32, i32* @AcpiGbl_Optind, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @AcpiGbl_Optind, align 4
  br label %57

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %77, %54, %46, %40, %19
  %83 = call i32 (...) @AcpiTerminate()
  %84 = call i32 (...) @UtDeleteLocalCaches()
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @AslInitializeGlobals(...) #1

declare dso_local i32 @AdInitialize(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DtCreateOneTemplateFile(i8*, i64) #1

declare dso_local i32 @AcpiUtStrupr(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @DtCreateAllTemplates(...) #1

declare dso_local i32 @AcpiTerminate(...) #1

declare dso_local i32 @UtDeleteLocalCaches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
