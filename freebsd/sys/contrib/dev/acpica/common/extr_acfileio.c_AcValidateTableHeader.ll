; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_acfileio.c_AcValidateTableHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_acfileio.c_AcValidateTableHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64*, i64*, i64* }

@SEEK_SET = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_BAD_SIGNATURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Table [%4.4s] is too long for file - needs: 0x%.2X, remaining in file: 0x%.2X\0A\00", align 1
@AE_BAD_HEADER = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@ACPI_OEM_ID_SIZE = common dso_local global i64 0, align 8
@ACPI_OEM_TABLE_ID_SIZE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Table header for [%4.4s] has invalid ASCII character(s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcValidateTableHeader(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 (i32*, i64)* @AcValidateTableHeader)
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @ftell(i32* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = call i32 @fseek(i32* %14, i64 %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @fread(%struct.TYPE_3__* %6, i32 1, i32 40, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @fseek(i32* %20, i64 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 40
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @AE_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @AcpiUtValidNameseg(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  store i32 %35, i32* %3, align 4
  br label %140

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @CmGetFileSize(i32* %37)
  store i64 %38, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 %41, %42
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load i32, i32* @stderr, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %48, i64 %50, i64 %53)
  %55 = load i32, i32* @AE_BAD_HEADER, align 4
  store i32 %55, i32* %3, align 4
  br label %140

56:                                               ; preds = %36
  store i64 0, i64* %10, align 8
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ACPI_IS_ASCII(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %133

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %57

75:                                               ; preds = %57
  store i64 0, i64* %10, align 8
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @ACPI_OEM_ID_SIZE, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %80, %76
  %88 = phi i1 [ false, %76 ], [ %86, %80 ]
  br i1 %88, label %89, label %103

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @ACPI_IS_ASCII(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %89
  br label %133

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %10, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %10, align 8
  br label %76

103:                                              ; preds = %87
  store i64 0, i64* %10, align 8
  br label %104

104:                                              ; preds = %128, %103
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @ACPI_OEM_TABLE_ID_SIZE, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %108, %104
  %116 = phi i1 [ false, %104 ], [ %114, %108 ]
  br i1 %116, label %117, label %131

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @ACPI_IS_ASCII(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %117
  br label %133

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %10, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %10, align 8
  br label %104

131:                                              ; preds = %115
  %132 = load i32, i32* @AE_OK, align 4
  store i32 %132, i32* %3, align 4
  br label %140

133:                                              ; preds = %126, %98, %70
  %134 = load i32, i32* @AE_INFO, align 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = call i32 @ACPI_WARNING(i32 %137)
  %139 = load i32, i32* @AE_OK, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %133, %131, %45, %34, %27
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i32*, i64)*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fread(%struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i32 @AcpiUtValidNameseg(i8*) #1

declare dso_local i64 @CmGetFileSize(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, i64) #1

declare dso_local i32 @ACPI_IS_ASCII(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
