; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_acfileio.c_AcGetAllTablesFromFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_acfileio.c_AcGetAllTablesFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32* }

@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open input file: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@AE_NOT_EXIST = common dso_local global i64 0, align 8
@AE_ERROR = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Input file %s, Length 0x%X (%u) bytes\0A\00", align 1
@AE_BAD_HEADER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"    %s: File does not appear to contain a valid AML table\0A\00", align 1
@AE_TYPE = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcGetAllTablesFromFile(i8* %0, i32 %1, %struct.TYPE_4__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  store i32* null, i32** %12, align 8
  %15 = load i64, i64* @AE_OK, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ENOENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @AE_NOT_EXIST, align 8
  store i64 %28, i64* %4, align 8
  br label %140

29:                                               ; preds = %20
  %30 = load i64, i64* @AE_ERROR, align 8
  store i64 %30, i64* %4, align 8
  br label %140

31:                                               ; preds = %3
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @CmGetFileSize(i32* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* @AE_ERROR, align 8
  store i64 %38, i64* %14, align 8
  br label %136

39:                                               ; preds = %31
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* @AE_BAD_HEADER, align 8
  store i64 %49, i64* %14, align 8
  br label %136

50:                                               ; preds = %39
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @AcIsFileBinary(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i64, i64* @AE_TYPE, align 8
  store i64 %58, i64* %14, align 8
  br label %136

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %111, %59
  %61 = load i64, i64* %14, align 8
  %62 = call i64 @ACPI_SUCCESS(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %112

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @AcGetOneTableFromFile(i8* %65, i32* %66, i32 %67, i32** %12)
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @AE_OK, align 8
  store i64 %73, i64* %14, align 8
  br label %112

74:                                               ; preds = %64
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @AE_TYPE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* @AE_OK, align 8
  store i64 %79, i64* %14, align 8
  br label %136

80:                                               ; preds = %74
  %81 = load i64, i64* %14, align 8
  %82 = call i64 @ACPI_FAILURE(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %136

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = call %struct.TYPE_4__* @AcpiOsAllocate(i32 16)
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %10, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @AcpiOsFree(i32* %92)
  %94 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %94, i64* %14, align 8
  br label %136

95:                                               ; preds = %87
  %96 = load i32*, i32** %12, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %100, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = icmp ne %struct.TYPE_4__* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %8, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %9, align 8
  br label %111

106:                                              ; preds = %95
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %109, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %9, align 8
  br label %111

111:                                              ; preds = %106, %103
  br label %60

112:                                              ; preds = %72, %60
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = icmp ne %struct.TYPE_4__* %114, null
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %9, align 8
  br label %119

119:                                              ; preds = %124, %116
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = icmp ne %struct.TYPE_4__* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %9, align 8
  br label %119

128:                                              ; preds = %119
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store %struct.TYPE_4__* %129, %struct.TYPE_4__** %131, align 8
  br label %135

132:                                              ; preds = %112
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %133, %struct.TYPE_4__** %134, align 8
  br label %135

135:                                              ; preds = %132, %128
  br label %136

136:                                              ; preds = %135, %91, %84, %78, %54, %48, %37
  %137 = load i32*, i32** %11, align 8
  %138 = call i32 @fclose(i32* %137)
  %139 = load i64, i64* %14, align 8
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %136, %29, %27
  %141 = load i64, i64* %4, align 8
  ret i64 %141
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @CmGetFileSize(i32*) #1

declare dso_local i32 @AcIsFileBinary(i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i64 @AcGetOneTableFromFile(i8*, i32*, i32, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local %struct.TYPE_4__* @AcpiOsAllocate(i32) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
