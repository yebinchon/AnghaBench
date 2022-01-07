; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_solaris_sparse_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_solaris_sparse_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*)* @solaris_sparse_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solaris_sparse_parse(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 1, i32* %13, align 4
  %14 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  store i64 0, i64* %12, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %9, align 8
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %23, i32* %5, align 4
  br label %104

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %98, %24
  %26 = load i8*, i8** %9, align 8
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %51, %25
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 32
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %54

39:                                               ; preds = %37
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp slt i32 %42, 48
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sgt i32 %47, 57
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %50, i32* %5, align 4
  br label %104

51:                                               ; preds = %44
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  br label %27

54:                                               ; preds = %37
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %11, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @tar_atol10(i8* %56, i32 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %67, i32* %5, align 4
  br label %104

68:                                               ; preds = %54
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %74 = load %struct.tar*, %struct.tar** %7, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call i64 @gnu_add_sparse_entry(%struct.archive_read* %73, %struct.tar* %74, i64 %75, i64 %78)
  %80 = load i64, i64* @ARCHIVE_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %83, i32* %5, align 4
  br label %104

84:                                               ; preds = %72
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.tar*, %struct.tar** %7, align 8
  %87 = getelementptr inbounds %struct.tar, %struct.tar* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %68
  %91 = load i8*, i8** %10, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i64, i64* @ARCHIVE_OK, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %5, align 4
  br label %104

98:                                               ; preds = %90
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  store i8* %100, i8** %9, align 8
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %13, align 4
  br label %25

104:                                              ; preds = %95, %82, %66, %49, %22
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i64 @tar_atol10(i8*, i32) #1

declare dso_local i64 @gnu_add_sparse_entry(%struct.archive_read*, %struct.tar*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
