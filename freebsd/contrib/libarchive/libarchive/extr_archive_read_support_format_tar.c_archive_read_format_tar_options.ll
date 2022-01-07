; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_archive_read_format_tar_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_archive_read_format_tar_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tar = type { i32, i32, i32, i32, i32* }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"compat-2x\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hdrcharset\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"tar: hdrcharset option needs a character-set name\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"mac-ext\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"read_concatenated_archives\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8*, i8*)* @archive_read_format_tar_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_tar_options(%struct.archive_read* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tar*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.tar*
  store %struct.tar* %16, %struct.tar** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = load %struct.tar*, %struct.tar** %8, align 8
  %33 = getelementptr inbounds %struct.tar, %struct.tar* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tar*, %struct.tar** %8, align 8
  %35 = getelementptr inbounds %struct.tar, %struct.tar* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tar*, %struct.tar** %8, align 8
  %38 = getelementptr inbounds %struct.tar, %struct.tar* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %39, i32* %4, align 4
  br label %119

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %44
  %54 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %55 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %54, i32 0, i32 0
  %56 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %57 = call i32 @archive_set_error(i32* %55, i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %74

58:                                               ; preds = %47
  %59 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %60 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %59, i32 0, i32 0
  %61 = load i8*, i8** %7, align 8
  %62 = call i32* @archive_string_conversion_from_charset(i32* %60, i8* %61, i32 0)
  %63 = load %struct.tar*, %struct.tar** %8, align 8
  %64 = getelementptr inbounds %struct.tar, %struct.tar* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load %struct.tar*, %struct.tar** %8, align 8
  %66 = getelementptr inbounds %struct.tar, %struct.tar* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %70, i32* %9, align 4
  br label %73

71:                                               ; preds = %58
  %72 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %119

76:                                               ; preds = %40
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi i1 [ false, %80 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  %92 = load %struct.tar*, %struct.tar** %8, align 8
  %93 = getelementptr inbounds %struct.tar, %struct.tar* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %94, i32* %4, align 4
  br label %119

95:                                               ; preds = %76
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %102, %99
  %109 = phi i1 [ false, %99 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = load %struct.tar*, %struct.tar** %8, align 8
  %112 = getelementptr inbounds %struct.tar, %struct.tar* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %113, i32* %4, align 4
  br label %119

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %108, %89, %74, %29
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
