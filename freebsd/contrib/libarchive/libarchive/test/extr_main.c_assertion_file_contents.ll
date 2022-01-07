; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_file_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_assertion_file_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"File should exist: %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"File contents don't match\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"  file=\22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"  File empty, contents should be:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_file_contents(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @assertion_count(i8* %15, i32 %16)
  %18 = load i8*, i8** %11, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %23, i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = call i32 @failure_finish(i32* null)
  store i32 0, i32* %6, align 4
  br label %86

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %29, 2
  %31 = call i8* @malloc(i32 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %33, 2
  %35 = load i32*, i32** %13, align 8
  %36 = call i64 @fread(i8* %32, i32 1, i32 %34, i32* %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %28
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @memcmp(i8* %44, i8* %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @free(i8* %50)
  store i32 1, i32* %6, align 4
  br label %86

52:                                               ; preds = %43, %28
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %53, i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %14, align 4
  %64 = icmp sgt i32 %63, 512
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ 512, %65 ], [ %67, %66 ]
  %70 = call i32 @hexdump(i8* %61, i8* %62, i32 %69, i32 0)
  br label %82

71:                                               ; preds = %52
  %72 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 512
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 512, %76 ], [ %78, %77 ]
  %81 = call i32 @hexdump(i8* %73, i8* null, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %79, %68
  %83 = call i32 @failure_finish(i32* null)
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @free(i8* %84)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %49, %22
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, ...) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @logprintf(i8*, ...) #1

declare dso_local i32 @hexdump(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
