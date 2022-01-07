; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c__citrus_iconv_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c__citrus_iconv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv = type { %struct._citrus_iconv_shared* }
%struct._citrus_iconv_shared = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct._citrus_iconv*)* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@CODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@_CITRUS_ICONV_ALIAS = common dso_local global i8* null, align 8
@_LOOKUP_CASE_IGNORE = common dso_local global i32 0, align 4
@_PATH_ICONV = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_iconv_open(%struct._citrus_iconv** noalias %0, i8* noalias %1, i8* noalias %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._citrus_iconv**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._citrus_iconv*, align 8
  %9 = alloca %struct._citrus_iconv_shared*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._citrus_iconv** %0, %struct._citrus_iconv*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct._citrus_iconv* null, %struct._citrus_iconv** %8, align 8
  store %struct._citrus_iconv_shared* null, %struct._citrus_iconv_shared** %9, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = call i32 (...) @init_cache()
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %3
  %31 = load i32, i32* @CODESET, align 4
  %32 = call i8* @nl_langinfo(i32 %31)
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @CODESET, align 4
  %43 = call i8* @nl_langinfo(i32 %42)
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @PATH_MAX, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @strlcpy(i8* %21, i8* %45, i64 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @PATH_MAX, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @strlcpy(i8* %18, i8* %49, i64 %51)
  %53 = call i32* @strchr(i8* %21, i8 signext 47)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = call i32* @strchr(i8* %18, i8 signext 47)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %44
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %104

60:                                               ; preds = %55
  %61 = call i32 @get_shared(%struct._citrus_iconv_shared** %9, i8* %21, i8* %18)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %104

66:                                               ; preds = %60
  %67 = load %struct._citrus_iconv**, %struct._citrus_iconv*** %5, align 8
  %68 = load %struct._citrus_iconv*, %struct._citrus_iconv** %67, align 8
  %69 = icmp eq %struct._citrus_iconv* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = call %struct._citrus_iconv* @malloc(i32 8)
  store %struct._citrus_iconv* %71, %struct._citrus_iconv** %8, align 8
  %72 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %73 = icmp eq %struct._citrus_iconv* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %13, align 4
  %76 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %9, align 8
  %77 = call i32 @release_shared(%struct._citrus_iconv_shared* %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %104

79:                                               ; preds = %70
  %80 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %81 = load %struct._citrus_iconv**, %struct._citrus_iconv*** %5, align 8
  store %struct._citrus_iconv* %80, %struct._citrus_iconv** %81, align 8
  br label %82

82:                                               ; preds = %79, %66
  %83 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %9, align 8
  %84 = load %struct._citrus_iconv**, %struct._citrus_iconv*** %5, align 8
  %85 = load %struct._citrus_iconv*, %struct._citrus_iconv** %84, align 8
  %86 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %85, i32 0, i32 0
  store %struct._citrus_iconv_shared* %83, %struct._citrus_iconv_shared** %86, align 8
  %87 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %9, align 8
  %88 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct._citrus_iconv*)*, i32 (%struct._citrus_iconv*)** %90, align 8
  %92 = load %struct._citrus_iconv**, %struct._citrus_iconv*** %5, align 8
  %93 = load %struct._citrus_iconv*, %struct._citrus_iconv** %92, align 8
  %94 = call i32 %91(%struct._citrus_iconv* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %82
  %98 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %9, align 8
  %99 = call i32 @release_shared(%struct._citrus_iconv_shared* %98)
  %100 = load %struct._citrus_iconv*, %struct._citrus_iconv** %8, align 8
  %101 = call i32 @free(%struct._citrus_iconv* %100)
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %104

103:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %104

104:                                              ; preds = %103, %97, %74, %64, %58
  %105 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @init_cache(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @nl_langinfo(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @get_shared(%struct._citrus_iconv_shared**, i8*, i8*) #2

declare dso_local %struct._citrus_iconv* @malloc(i32) #2

declare dso_local i32 @release_shared(%struct._citrus_iconv_shared*) #2

declare dso_local i32 @free(%struct._citrus_iconv*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
