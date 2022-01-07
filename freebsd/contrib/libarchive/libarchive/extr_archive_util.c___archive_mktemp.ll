; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_util.c___archive_mktemp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_util.c___archive_mktemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i8*, i32 }
%struct.stat = type { i32 }

@__archive_mktemp.num = internal constant [62 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", align 16
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"/libarchive_\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"XXXXXXXXXX\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_mktemp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive_string, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %5, align 4
  %10 = call i32 @archive_string_init(%struct.archive_string* %3)
  %11 = load i8*, i8** %2, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = call i64 @get_tempdir(%struct.archive_string* %3)
  %15 = load i64, i64* @ARCHIVE_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %126

18:                                               ; preds = %13
  br label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @archive_strcpy(%struct.archive_string* %3, i8* %20)
  br label %22

22:                                               ; preds = %19, %18
  %23 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %33, %22
  %45 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @la_stat(i8* %46, %struct.stat* %4)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %126

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @S_ISDIR(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @ENOTDIR, align 8
  store i64 %56, i64* @errno, align 8
  br label %126

57:                                               ; preds = %50
  %58 = call i32 @archive_strcat(%struct.archive_string* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @archive_strlen(%struct.archive_string* %3)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %6, align 8
  %64 = call i32 @archive_strcat(%struct.archive_string* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @archive_strlen(%struct.archive_string* %3)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %7, align 8
  br label %70

70:                                               ; preds = %114, %57
  %71 = load i8*, i8** %6, align 8
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @archive_random(i8* %72, i32 %78)
  br label %80

80:                                               ; preds = %84, %70
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = icmp ult i8* %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = urem i64 %87, 62
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [62 x i8], [62 x i8]* @__archive_mktemp.num, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  store i8 %93, i8* %94, align 1
  br label %80

96:                                               ; preds = %80
  %97 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @O_CREAT, align 4
  %100 = load i32, i32* @O_EXCL, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @O_RDWR, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @O_CLOEXEC, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @open(i8* %98, i32 %105, i32 384)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* @errno, align 8
  %112 = load i64, i64* @EEXIST, align 8
  %113 = icmp eq i64 %111, %112
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  br i1 %115, label %70, label %116

116:                                              ; preds = %114
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %126

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @__archive_ensure_cloexec_flag(i32 %121)
  %123 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %3, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @unlink(i8* %124)
  br label %126

126:                                              ; preds = %120, %119, %55, %49, %17
  %127 = call i32 @archive_string_free(%struct.archive_string* %3)
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i64 @get_tempdir(%struct.archive_string*) #1

declare dso_local i32 @archive_strcpy(%struct.archive_string*, i8*) #1

declare dso_local i64 @la_stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strlen(%struct.archive_string*) #1

declare dso_local i32 @archive_random(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
