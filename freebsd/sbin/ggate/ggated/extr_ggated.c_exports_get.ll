; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_exports_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_exports_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPORTS_LINE_SIZE = common dso_local global i32 0, align 4
@exports_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot open exports file (%s): %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Reading exports file (%s).\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Error while reading exports file: %s.\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Line %u too long.\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"There are no objects to export.\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Exporting %u object(s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exports_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exports_get() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = load i32, i32* @EXPORTS_LINE_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = call i32 (...) @exports_clear()
  %13 = load i32, i32* @exports_file, align 4
  %14 = call i32* @fopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = load i32, i32* @exports_file, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 (i8*, ...) @g_gate_xlog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %17, %0
  %23 = load i32, i32* @LOG_INFO, align 4
  %24 = load i32, i32* @exports_file, align 4
  %25 = call i32 @g_gate_log(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %100, %74, %22
  %27 = trunc i64 %9 to i32
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @fgets(i8* %11, i32 %27, i32* %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @feof(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %106

36:                                               ; preds = %31
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 (i8*, ...) @g_gate_xlog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  store i8* %11, i8** %3, align 8
  br label %43

43:                                               ; preds = %56, %40
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 9
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ true, %43 ], [ %52, %48 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  br label %43

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 35
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %3, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %64, %59
  br label %26

75:                                               ; preds = %69
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strlen(i8* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sub i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load i8*, i8** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sub i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 0, i8* %91, align 1
  br label %100

92:                                               ; preds = %75
  %93 = load i32*, i32** %7, align 8
  %94 = call i64 @feof(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (i8*, ...) @g_gate_xlog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %99, %86
  %101 = load i8*, i8** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @line_parse(i8* %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %26

106:                                              ; preds = %35
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @fclose(i32* %107)
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 (i8*, ...) @g_gate_xlog(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %106
  %114 = load i32, i32* @LOG_INFO, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @g_gate_log(i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  %117 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %117)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @exports_clear(...) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @g_gate_xlog(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @g_gate_log(i32, i8*, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @line_parse(i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
