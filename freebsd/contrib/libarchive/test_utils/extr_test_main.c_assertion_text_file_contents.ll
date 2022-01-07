; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_text_file_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_text_file_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"File doesn't exist: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Contents don't match\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"  file=\22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"  expected\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"  File empty, contents should be:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_text_file_contents(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @assertion_count(i8* %16, i32 %17)
  %19 = load i8*, i8** %9, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %24, i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %5, align 4
  br label %147

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = mul nsw i32 %33, 2
  %35 = add nsw i32 %34, 128
  %36 = call i8* @malloc(i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %15, align 4
  %39 = mul nsw i32 %38, 2
  %40 = add nsw i32 %39, 128
  %41 = sub nsw i32 %40, 1
  %42 = load i32*, i32** %13, align 8
  %43 = call i64 @fread(i8* %37, i32 1, i32 %41, i32* %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %29
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  br label %52

52:                                               ; preds = %47, %29
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %10, align 8
  store i8* %56, i8** %12, align 8
  br label %57

57:                                               ; preds = %100, %77, %52
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ false, %57 ], [ %66, %62 ]
  br i1 %68, label %69, label %106

69:                                               ; preds = %67
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8*, i8** %12, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %12, align 8
  br label %57

82:                                               ; preds = %69
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 13
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %11, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  store i8* %104, i8** %12, align 8
  br label %57

105:                                              ; preds = %94, %88, %82
  br label %106

106:                                              ; preds = %105, %67
  %107 = load i8*, i8** %11, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i8*, i8** %12, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @free(i8* %117)
  store i32 1, i32* %5, align 4
  br label %147

119:                                              ; preds = %111, %106
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %120, i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* %14, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %119
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @hexdump(i8* %128, i8* %129, i32 %130, i32 0)
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %132)
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @hexdump(i8* %134, i8* %135, i32 %136, i32 0)
  br label %143

138:                                              ; preds = %119
  %139 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @hexdump(i8* %140, i8* null, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %138, %127
  %144 = call i32 @failure_finish(i32* null)
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @free(i8* %145)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %116, %23
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, ...) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @logprintf(i8*, ...) #1

declare dso_local i32 @hexdump(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
