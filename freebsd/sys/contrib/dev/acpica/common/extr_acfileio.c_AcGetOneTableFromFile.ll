; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_acfileio.c_AcGetOneTableFromFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_acfileio.c_AcGetOneTableFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"    %s: Table [%4.4s] is not an AML table - ignoring\0A\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, %struct.TYPE_9__**)* @AcGetOneTableFromFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcGetOneTableFromFile(i8* %0, i32* %1, i64 %2, %struct.TYPE_9__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_9__** %3, %struct.TYPE_9__*** %9, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @ftell(i32* %17)
  store i64 %18, i64* %14, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @fread(%struct.TYPE_9__* %11, i32 1, i32 16, i32* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 16
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %25, i32* %5, align 4
  br label %100

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @AcValidateTableHeader(i32* %30, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %100

38:                                               ; preds = %29
  %39 = call i32 @AcpiUtIsAmlTable(%struct.TYPE_9__* %11)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %45)
  %47 = load i32, i32* @AE_TYPE, align 4
  store i32 %47, i32* %5, align 4
  br label %100

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %26
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_9__* @AcpiOsAllocate(i32 %51)
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %12, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = icmp ne %struct.TYPE_9__* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %56, i32* %5, align 4
  br label %100

57:                                               ; preds = %49
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i32 @fseek(i32* %58, i64 %59, i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @fread(%struct.TYPE_9__* %62, i32 1, i32 %64, i32* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %57
  %70 = load i32, i32* %13, align 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @AE_ERROR, align 4
  store i32 %75, i32* %10, align 4
  br label %96

76:                                               ; preds = %69, %57
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @AcpiTbVerifyChecksum(%struct.TYPE_9__* %77, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @ACPI_FAILURE(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %86 = call i32 @AcCheckTextModeCorruption(%struct.TYPE_9__* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @ACPI_FAILURE(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %96

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %76
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %94, align 8
  %95 = load i32, i32* @AE_OK, align 4
  store i32 %95, i32* %5, align 4
  br label %100

96:                                               ; preds = %90, %74
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %98 = call i32 @AcpiOsFree(%struct.TYPE_9__* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %96, %92, %55, %41, %36, %24
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fread(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @AcValidateTableHeader(i32*, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiUtIsAmlTable(%struct.TYPE_9__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @AcpiOsAllocate(i32) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @AcpiTbVerifyChecksum(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @AcCheckTextModeCorruption(%struct.TYPE_9__*) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
