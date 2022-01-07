; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmGetExternalsFromFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmGetExternalsFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_ExternalRefFilename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not open external reference file \22%s\22\0A\00", align 1
@AslGbl_StringBuffer = common dso_local global i32* null, align 8
@ASL_STRING_BUFFER_SIZE = common dso_local global i32 0, align 4
@METHOD_SEPARATORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MethodObj\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid argument count (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Invalid argument count (%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: Importing method external (%u arguments) %s\0A\00", align 1
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_EXT_RESOLVED_REFERENCE = common dso_local global i32 0, align 4
@ACPI_EXT_ORIGIN_FROM_FILE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"Did not find any external methods in reference file \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"%s: Imported %u external method definitions\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmGetExternalsFromFile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** @AslGbl_ExternalRefFilename, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %106

9:                                                ; preds = %0
  %10 = load i8*, i8** @AslGbl_ExternalRefFilename, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @AslGbl_ExternalRefFilename, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = call i32 (...) @AslAbort()
  br label %106

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %77, %73, %66, %60, %54, %49, %43, %37, %32, %19
  %21 = load i32*, i32** @AslGbl_StringBuffer, align 8
  %22 = load i32, i32* @ASL_STRING_BUFFER_SIZE, align 4
  %23 = load i32*, i32** %1, align 8
  %24 = call i64 @fgets(i32* %21, i32 %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %91

26:                                               ; preds = %20
  %27 = load i32*, i32** @AslGbl_StringBuffer, align 8
  %28 = load i32, i32* @METHOD_SEPARATORS, align 4
  %29 = call i8* @strtok(i32* %27, i32 %28)
  store i8* %29, i8** %2, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %20

33:                                               ; preds = %26
  %34 = load i8*, i8** %2, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %20

38:                                               ; preds = %33
  %39 = load i32, i32* @METHOD_SEPARATORS, align 4
  %40 = call i8* @strtok(i32* null, i32 %39)
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %20

44:                                               ; preds = %38
  %45 = load i32, i32* @METHOD_SEPARATORS, align 4
  %46 = call i8* @strtok(i32* null, i32 %45)
  store i8* %46, i8** %2, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %20

50:                                               ; preds = %44
  %51 = load i8*, i8** %2, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %20

55:                                               ; preds = %50
  %56 = load i32, i32* @METHOD_SEPARATORS, align 4
  %57 = call i8* @strtok(i32* null, i32 %56)
  store i8* %57, i8** %2, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %20

61:                                               ; preds = %55
  store i64 0, i64* @errno, align 8
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 @strtoul(i8* %62, i32* null, i32 0)
  store i32 %63, i32* %4, align 4
  %64 = load i64, i64* @errno, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  br label %20

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  %72 = icmp sgt i32 %71, 7
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  br label %20

77:                                               ; preds = %70
  %78 = load i8*, i8** @AslGbl_ExternalRefFilename, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 (i8*, i8*, i32, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %78, i32 %79, i8* %80)
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @ACPI_EXT_RESOLVED_REFERENCE, align 4
  %86 = load i32, i32* @ACPI_EXT_ORIGIN_FROM_FILE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @AcpiDmAddPathToExternalList(i8* %82, i32 %83, i32 %84, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %20

91:                                               ; preds = %20
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** @AslGbl_ExternalRefFilename, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i8* %96)
  br label %103

98:                                               ; preds = %91
  %99 = call i32 (...) @AcpiDmAddExternalListToNamespace()
  %100 = load i8*, i8** @AslGbl_ExternalRefFilename, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 (i8*, i8*, i32, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @fclose(i32* %104)
  br label %106

106:                                              ; preds = %103, %14, %8
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @AslAbort(...) #1

declare dso_local i64 @fgets(i32*, i32, i32*) #1

declare dso_local i8* @strtok(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @AcpiDmAddPathToExternalList(i8*, i32, i32, i32) #1

declare dso_local i32 @AcpiDmAddExternalListToNamespace(...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
