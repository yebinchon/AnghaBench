; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslDetectSourceFileType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslstartup.c_AslDetectSourceFileType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ASL_INPUT_TYPE_ASCII_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AslGbl_CurrentLineBuffer = common dso_local global i8* null, align 8
@AslGbl_LineBufferSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DEFINITIONBLOCK\00", align 1
@ASL_INPUT_TYPE_ASCII_ASL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Binary file appears to be a valid ACPI table, disassembling\0A\00", align 1
@ASL_INPUT_TYPE_BINARY_ACPI_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Binary file does not contain a valid ACPI table\0A\00", align 1
@ASL_INPUT_TYPE_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @AslDetectSourceFileType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AslDetectSourceFileType(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i32, i32* @ASL_INPUT_TYPE_ASCII_DATA, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @FlIsFileAsciiSource(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @ACPI_SUCCESS(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %45, %15
  %17 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %18 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @fgets(i8* %17, i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %16
  %25 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %30, %24
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i64 @toupper(i32 %33)
  %35 = trunc i64 %34 to i8
  %36 = load i8*, i8** %3, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  br label %26

39:                                               ; preds = %26
  %40 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %41 = call i64 @strstr(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @ASL_INPUT_TYPE_ASCII_ASL, align 4
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %39
  br label %16

46:                                               ; preds = %16
  %47 = load i32, i32* @ASL_INPUT_TYPE_ASCII_DATA, align 4
  store i32 %47, i32* %4, align 4
  br label %70

48:                                               ; preds = %1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i32 @fseek(i32 %51, i32 0, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AcValidateTableHeader(i32 %56, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @ACPI_SUCCESS(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ASL_INPUT_TYPE_BINARY_ACPI_TABLE, align 4
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %48
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @ASL_INPUT_TYPE_BINARY, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %61, %46, %43
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SEEK_SET, align 4
  %75 = call i32 @fseek(i32 %73, i32 0, i32 %74)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @FlIsFileAsciiSource(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @toupper(i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local i32 @AcValidateTableHeader(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
