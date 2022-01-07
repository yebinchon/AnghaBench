; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_tempnam.c_tempnam.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_tempnam.c_tempnam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tmp.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s%s%sXXXXXX\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@P_tmpdir = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"%s%sXXXXXX\00", align 1
@_PATH_TMP = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tempnam(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = call i8* @malloc(i32 %9)
  store i8* %10, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %101

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = call i64 (...) @issetugid()
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %26, i8* %37, i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i8* @_mktemp(i8* %40)
  store i8* %41, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %3, align 8
  br label %101

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45, %20, %17
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @MAXPATHLEN, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %63, i8* %64)
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @_mktemp(i8* %66)
  store i8* %67, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %49
  %70 = load i8*, i8** %7, align 8
  store i8* %70, i8** %3, align 8
  br label %101

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i8*, i8** @P_tmpdir, align 8
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* @MAXPATHLEN, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %74, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %76, i8* %77)
  %79 = load i8*, i8** %8, align 8
  %80 = call i8* @_mktemp(i8* %79)
  store i8* %80, i8** %7, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i8*, i8** %7, align 8
  store i8* %83, i8** %3, align 8
  br label %101

84:                                               ; preds = %72
  %85 = load i8*, i8** @_PATH_TMP, align 8
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* @MAXPATHLEN, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %86, i32 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %88, i8* %89)
  %91 = load i8*, i8** %8, align 8
  %92 = call i8* @_mktemp(i8* %91)
  store i8* %92, i8** %7, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i8*, i8** %7, align 8
  store i8* %95, i8** %3, align 8
  br label %101

96:                                               ; preds = %84
  %97 = load i32, i32* @errno, align 4
  store i32 %97, i32* %6, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %101

101:                                              ; preds = %96, %94, %82, %69, %43, %12
  %102 = load i8*, i8** %3, align 8
  ret i8* %102
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @issetugid(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @_mktemp(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
