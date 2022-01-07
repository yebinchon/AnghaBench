; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_01_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_01_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, i8*)* @gnu_sparse_01_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnu_sparse_01_parse(%struct.archive_read* %0, %struct.tar* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.tar*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.tar* %1, %struct.tar** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 -1, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  br label %11

11:                                               ; preds = %89, %3
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %37, %11
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 44
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, 48
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sgt i32 %33, 57
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %36, i32* %4, align 4
  br label %92

37:                                               ; preds = %30
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  br label %13

40:                                               ; preds = %23
  %41 = load i64, i64* %9, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i64 @tar_atol10(i8* %44, i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %55, i32* %4, align 4
  br label %92

56:                                               ; preds = %43
  br label %81

57:                                               ; preds = %40
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i64 @tar_atol10(i8* %58, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %69, i32* %4, align 4
  br label %92

70:                                               ; preds = %57
  %71 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %72 = load %struct.tar*, %struct.tar** %6, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @gnu_add_sparse_entry(%struct.archive_read* %71, %struct.tar* %72, i64 %73, i64 %74)
  %76 = load i64, i64* @ARCHIVE_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %79, i32* %4, align 4
  br label %92

80:                                               ; preds = %70
  store i64 -1, i64* %9, align 8
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, i64* @ARCHIVE_OK, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  br label %92

89:                                               ; preds = %81
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %91, i8** %7, align 8
  br label %11

92:                                               ; preds = %86, %78, %68, %54, %35
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @tar_atol10(i8*, i32) #1

declare dso_local i64 @gnu_add_sparse_entry(%struct.archive_read*, %struct.tar*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
