; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_10_atol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_10_atol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32 }

@INT64_MAX = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, i32*, i64*)* @gnu_sparse_10_atol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnu_sparse_10_atol(%struct.archive_read* %0, %struct.tar* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 10, i32* %15, align 4
  %17 = load i32, i32* @INT64_MAX, align 4
  %18 = load i32, i32* %15, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @INT64_MAX, align 4
  %21 = load i32, i32* %15, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %42, %4
  %24 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %25 = load %struct.tar*, %struct.tar** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @tar_min(i32 %27, i32 100)
  %29 = load i64*, i64** %9, align 8
  %30 = call i64 @readline(%struct.archive_read* %24, %struct.tar* %25, i8** %13, i64 %28, i64* %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %5, align 4
  br label %104

35:                                               ; preds = %23
  %36 = load i64, i64* %14, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %36
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  br label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %13, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %23, label %48

48:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %97, %48
  %50 = load i64, i64* %14, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %102

52:                                               ; preds = %49
  %53 = load i8*, i8** %13, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %104

59:                                               ; preds = %52
  %60 = load i8*, i8** %13, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp slt i32 %62, 48
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %13, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 48, %68
  %70 = icmp sge i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64, %59
  %72 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %72, i32* %5, align 4
  br label %104

73:                                               ; preds = %64
  %74 = load i8*, i8** %13, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 48
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85, %73
  %90 = load i32, i32* @INT64_MAX, align 4
  store i32 %90, i32* %10, align 4
  br label %97

91:                                               ; preds = %85, %81
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %15, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %91, %89
  %98 = load i8*, i8** %13, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %13, align 8
  %100 = load i64, i64* %14, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %14, align 8
  br label %49

102:                                              ; preds = %49
  %103 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %71, %57, %33
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i64 @readline(%struct.archive_read*, %struct.tar*, i8**, i64, i64*) #1

declare dso_local i64 @tar_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
