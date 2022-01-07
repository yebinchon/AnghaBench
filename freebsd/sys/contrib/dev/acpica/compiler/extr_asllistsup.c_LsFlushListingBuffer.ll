; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsFlushListingBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsFlushListingBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_CurrentHexColumn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%2.2X \00", align 1
@AslGbl_AmlBuffer = common dso_local global i32* null, align 8
@HEX_LISTING_LINE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"0%2.2Xh\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"  ;%8.8X\00", align 1
@AslGbl_CurrentAmlOffset = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"0x%2.2X,\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"    /* %8.8X\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@AslGbl_HexBytesWereWritten = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LsFlushListingBuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %143

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %138 [
    i32 128, label %9
    i32 130, label %46
    i32 129, label %94
  ]

9:                                                ; preds = %7
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %23, %9
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = load i32*, i32** @AslGbl_AmlBuffer, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %10

26:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @HEX_LISTING_LINE_SIZE, align 8
  %31 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %32 = sub nsw i64 %30, %31
  %33 = mul nsw i64 %32, 3
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @FlWriteFile(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load i32, i32* %2, align 4
  %43 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %44 = load i32*, i32** @AslGbl_AmlBuffer, align 8
  %45 = call i32 @LsDumpAscii(i32 %42, i64 %43, i32* %44)
  br label %139

46:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %66, %46
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %2, align 4
  %57 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %2, align 4
  %60 = load i32*, i32** @AslGbl_AmlBuffer, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %47

69:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %81, %69
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @HEX_LISTING_LINE_SIZE, align 8
  %74 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %75 = sub nsw i64 %73, %74
  %76 = mul nsw i64 %75, 5
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @FlWriteFile(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %70

84:                                               ; preds = %70
  %85 = load i32, i32* %2, align 4
  %86 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %87 = load i64, i64* @HEX_LISTING_LINE_SIZE, align 8
  %88 = sub nsw i64 %86, %87
  %89 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* %2, align 4
  %91 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %92 = load i32*, i32** @AslGbl_AmlBuffer, align 8
  %93 = call i32 @LsDumpAscii(i32 %90, i64 %91, i32* %92)
  br label %139

94:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %108, %94
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load i32, i32* %2, align 4
  %102 = load i32*, i32** @AslGbl_AmlBuffer, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %95

111:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %123, %111
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @HEX_LISTING_LINE_SIZE, align 8
  %116 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %117 = sub nsw i64 %115, %116
  %118 = mul nsw i64 %117, 5
  %119 = icmp slt i64 %114, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @FlWriteFile(i32 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %112

126:                                              ; preds = %112
  %127 = load i32, i32* %2, align 4
  %128 = load i64, i64* @AslGbl_CurrentAmlOffset, align 8
  %129 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %130)
  %132 = load i32, i32* %2, align 4
  %133 = load i64, i64* @AslGbl_CurrentHexColumn, align 8
  %134 = load i32*, i32** @AslGbl_AmlBuffer, align 8
  %135 = call i32 @LsDumpAsciiInComment(i32 %132, i64 %133, i32* %134)
  %136 = load i32, i32* %2, align 4
  %137 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %139

138:                                              ; preds = %7
  br label %143

139:                                              ; preds = %126, %84, %41
  %140 = load i32, i32* %2, align 4
  %141 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i64 0, i64* @AslGbl_CurrentHexColumn, align 8
  %142 = load i32, i32* @TRUE, align 4
  store i32 %142, i32* @AslGbl_HexBytesWereWritten, align 4
  br label %143

143:                                              ; preds = %139, %138, %6
  ret void
}

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

declare dso_local i32 @FlWriteFile(i32, i8*, i32) #1

declare dso_local i32 @LsDumpAscii(i32, i64, i32*) #1

declare dso_local i32 @LsDumpAsciiInComment(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
