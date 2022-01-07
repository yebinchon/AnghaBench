; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslascii.c_FlIsFileAsciiSource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslascii.c_FlIsFileAsciiSource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not open input file\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [83 x i8] c"Found non-ASCII character in source text: 0x%2.2X in line %u, file offset 0x%2.2X\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"Found invalid character in source text: 0x%2.2X in line %u, file offset 0x%2.2X\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [73 x i8] c"File appears to be binary: found %u non-ASCII characters, disassembling\0A\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"Total %u invalid characters found in input source text, could be a binary file\0A\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_NON_ASCII = common dso_local global i32 0, align 4
@AE_BAD_CHARACTER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FlIsFileAsciiSource(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @AE_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %133

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %107, %19
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @fread(i8* %6, i32 1, i32 1, i32* %23)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %111

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i8, i8* %6, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @FlConsumeAnsiComment(i32* %34, %struct.TYPE_4__* %9)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @FlConsumeNewComment(i32* %41, %struct.TYPE_4__* %9)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %8, align 8
  br label %52

45:                                               ; preds = %26
  %46 = load i8, i8* %6, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i8, i8* %6, align 1
  %54 = call i32 @ACPI_IS_ASCII(i8 signext %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i8, i8* %6, align 1
  %64 = sext i8 %63 to i32
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, i32, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %66, i64 %68)
  br label %70

70:                                               ; preds = %62, %59, %56
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %99

73:                                               ; preds = %52
  %74 = load i8, i8* %6, align 1
  %75 = call i32 @isprint(i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %73
  %78 = load i8, i8* %6, align 1
  %79 = call i32 @isspace(i8 signext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 10
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i8, i8* %6, align 1
  %89 = sext i8 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, i32, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %91, i64 %93)
  br label %95

95:                                               ; preds = %87, %84, %81
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %95, %77, %73
  br label %99

99:                                               ; preds = %98, %70
  %100 = load i8, i8* %6, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %22

111:                                              ; preds = %22
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @fclose(i32* %112)
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i32, i32* @stderr, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i64, i64* %5, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i8*, i32, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ASL_ERROR, align 4
  %126 = load i32, i32* @ASL_MSG_NON_ASCII, align 4
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 @AslError(i32 %125, i32 %126, i32* null, i8* %127)
  br label %129

129:                                              ; preds = %122, %116
  %130 = load i32, i32* @AE_BAD_CHARACTER, align 4
  store i32 %130, i32* %3, align 4
  br label %133

131:                                              ; preds = %111
  %132 = load i32, i32* @AE_OK, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %129, %16
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @FlConsumeAnsiComment(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @FlConsumeNewComment(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ACPI_IS_ASCII(i8 signext) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32, ...) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @AslError(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
