; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsWriteOneSourceLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsWriteOneSourceLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@AslGbl_SourceLine = common dso_local global i32 0, align 4
@AslGbl_ListingNode = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_SOURCE_OUTPUT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@ASL_FILE_C_SOURCE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"     *\00", align 1
@ASL_FILE_ASM_SOURCE_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@AslGbl_HasIncludeFiles = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%12s %5d%s\00", align 1
@ASL_LISTING_LINE_PREFIX = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%8u%s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"\0A%*s{\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%*s}\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LsWriteOneSourceLine(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 16, i32* %6, align 4
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* @AslGbl_SourceLine, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @AslGbl_SourceLine, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_ListingNode, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @ASL_FILE_SOURCE_OUTPUT, align 4
  %18 = call i64 @FlReadFile(i32 %17, i8* %4, i32 1)
  %19 = load i64, i64* @AE_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %166

22:                                               ; preds = %1
  %23 = load i8, i8* %4, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %166

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ASL_FILE_C_SOURCE_OUTPUT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ASL_FILE_ASM_SOURCE_OUTPUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i64, i64* @AslGbl_HasIncludeFiles, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_ListingNode, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_ListingNode, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** @ASL_LISTING_LINE_PREFIX, align 8
  %53 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %51, i8* %52)
  br label %59

54:                                               ; preds = %41
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @AslGbl_SourceLine, align 4
  %57 = load i8*, i8** @ASL_LISTING_LINE_PREFIX, align 8
  %58 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %54, %44
  br label %60

60:                                               ; preds = %160, %59
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ASL_FILE_C_SOURCE_OUTPUT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i8, i8* %4, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 47
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8 42, i8* %4, align 1
  br label %69

69:                                               ; preds = %68, %64
  br label %70

70:                                               ; preds = %69, %60
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 128
  br i1 %74, label %75, label %148

75:                                               ; preds = %70
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load i8, i8* %4, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 125
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8, i8* %4, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 123
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %137

87:                                               ; preds = %82, %78
  %88 = load i64, i64* @TRUE, align 8
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %87, %75
  %90 = load i8, i8* %4, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 123
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i64, i64* @TRUE, align 8
  store i64 %97, i64* %7, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 4
  store i32 %99, i32* %6, align 4
  br label %160

100:                                              ; preds = %89
  %101 = load i8, i8* %4, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 125
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %3, align 4
  %109 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64, i64* @TRUE, align 8
  store i64 %111, i64* %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sub nsw i32 %112, 4
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %160

117:                                              ; preds = %100
  %118 = load i8, i8* %4, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %160

125:                                              ; preds = %121, %117
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i64, i64* @FALSE, align 8
  store i64 %129, i64* %7, align 8
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %125
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %86
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @FlWriteFile(i32 %138, i8* %4, i32 1)
  %140 = load i8, i8* %4, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* @AslGbl_SourceLine, align 4
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @LsCheckException(i32 %144, i32 %145)
  store i32 1, i32* %2, align 4
  br label %166

147:                                              ; preds = %137
  br label %159

148:                                              ; preds = %70
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @FlWriteFile(i32 %149, i8* %4, i32 1)
  %151 = load i8, i8* %4, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 10
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* @AslGbl_SourceLine, align 4
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @LsCheckException(i32 %155, i32 %156)
  store i32 1, i32* %2, align 4
  br label %166

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %147
  br label %160

160:                                              ; preds = %159, %124, %110, %93
  %161 = load i32, i32* @ASL_FILE_SOURCE_OUTPUT, align 4
  %162 = call i64 @FlReadFile(i32 %161, i8* %4, i32 1)
  %163 = load i64, i64* @AE_OK, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %60, label %165

165:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %154, %143, %26, %21
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @FlReadFile(i32, i8*, i32) #1

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local i32 @FlWriteFile(i32, i8*, i32) #1

declare dso_local i32 @LsCheckException(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
