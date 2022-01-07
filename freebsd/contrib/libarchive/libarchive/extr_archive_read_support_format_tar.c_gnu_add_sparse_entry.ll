; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_add_sparse_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_add_sparse_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { %struct.sparse_block*, %struct.sparse_block* }
%struct.sparse_block = type { i64, i64, %struct.sparse_block* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Malformed sparse map data\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, i64, i64)* @gnu_add_sparse_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnu_add_sparse_entry(%struct.archive_read* %0, %struct.tar* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sparse_block*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call i64 @calloc(i32 1, i32 24)
  %12 = inttoptr i64 %11 to %struct.sparse_block*
  store %struct.sparse_block* %12, %struct.sparse_block** %10, align 8
  %13 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %14 = icmp eq %struct.sparse_block* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %17 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %16, i32 0, i32 0
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @archive_set_error(i32* %17, i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %20, i32* %5, align 4
  br label %65

21:                                               ; preds = %4
  %22 = load %struct.tar*, %struct.tar** %7, align 8
  %23 = getelementptr inbounds %struct.tar, %struct.tar* %22, i32 0, i32 0
  %24 = load %struct.sparse_block*, %struct.sparse_block** %23, align 8
  %25 = icmp ne %struct.sparse_block* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %28 = load %struct.tar*, %struct.tar** %7, align 8
  %29 = getelementptr inbounds %struct.tar, %struct.tar* %28, i32 0, i32 0
  %30 = load %struct.sparse_block*, %struct.sparse_block** %29, align 8
  %31 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %30, i32 0, i32 2
  store %struct.sparse_block* %27, %struct.sparse_block** %31, align 8
  br label %36

32:                                               ; preds = %21
  %33 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %34 = load %struct.tar*, %struct.tar** %7, align 8
  %35 = getelementptr inbounds %struct.tar, %struct.tar* %34, i32 0, i32 1
  store %struct.sparse_block* %33, %struct.sparse_block** %35, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %38 = load %struct.tar*, %struct.tar** %7, align 8
  %39 = getelementptr inbounds %struct.tar, %struct.tar* %38, i32 0, i32 0
  store %struct.sparse_block* %37, %struct.sparse_block** %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @INT64_MAX, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub nsw i64 %47, %48
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45, %42, %36
  %52 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %53 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %52, i32 0, i32 0
  %54 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %55 = call i32 @archive_set_error(i32* %53, i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %45
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %60 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %63 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %51, %15
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
