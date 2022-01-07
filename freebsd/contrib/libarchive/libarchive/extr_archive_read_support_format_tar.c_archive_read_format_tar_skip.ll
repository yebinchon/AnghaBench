; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_archive_read_format_tar_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_archive_read_format_tar_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sparse_block = type { i64, i32, %struct.sparse_block* }
%struct.tar = type { i64, i64, i64, %struct.sparse_block* }

@INT64_MAX = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_tar_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_tar_skip(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sparse_block*, align 8
  %7 = alloca %struct.tar*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %8 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %9 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.tar*
  store %struct.tar* %13, %struct.tar** %7, align 8
  store i64 0, i64* %5, align 8
  %14 = load %struct.tar*, %struct.tar** %7, align 8
  %15 = getelementptr inbounds %struct.tar, %struct.tar* %14, i32 0, i32 3
  %16 = load %struct.sparse_block*, %struct.sparse_block** %15, align 8
  store %struct.sparse_block* %16, %struct.sparse_block** %6, align 8
  br label %17

17:                                               ; preds = %42, %1
  %18 = load %struct.sparse_block*, %struct.sparse_block** %6, align 8
  %19 = icmp ne %struct.sparse_block* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load %struct.sparse_block*, %struct.sparse_block** %6, align 8
  %22 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = load %struct.sparse_block*, %struct.sparse_block** %6, align 8
  %27 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INT64_MAX, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %29, %30
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %2, align 4
  br label %83

35:                                               ; preds = %25
  %36 = load %struct.sparse_block*, %struct.sparse_block** %6, align 8
  %37 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %35, %20
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.sparse_block*, %struct.sparse_block** %6, align 8
  %44 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %43, i32 0, i32 2
  %45 = load %struct.sparse_block*, %struct.sparse_block** %44, align 8
  store %struct.sparse_block* %45, %struct.sparse_block** %6, align 8
  br label %17

46:                                               ; preds = %17
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.tar*, %struct.tar** %7, align 8
  %49 = getelementptr inbounds %struct.tar, %struct.tar* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.tar*, %struct.tar** %7, align 8
  %54 = getelementptr inbounds %struct.tar, %struct.tar* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.tar*, %struct.tar** %7, align 8
  %58 = getelementptr inbounds %struct.tar, %struct.tar* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tar*, %struct.tar** %7, align 8
  %61 = getelementptr inbounds %struct.tar, %struct.tar* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %5, align 8
  %66 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @__archive_read_consume(%struct.archive_read* %66, i64 %67)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %72, i32* %2, align 4
  br label %83

73:                                               ; preds = %56
  %74 = load %struct.tar*, %struct.tar** %7, align 8
  %75 = getelementptr inbounds %struct.tar, %struct.tar* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.tar*, %struct.tar** %7, align 8
  %77 = getelementptr inbounds %struct.tar, %struct.tar* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.tar*, %struct.tar** %7, align 8
  %79 = getelementptr inbounds %struct.tar, %struct.tar* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.tar*, %struct.tar** %7, align 8
  %81 = call i32 @gnu_clear_sparse_list(%struct.tar* %80)
  %82 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %73, %71, %33
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @gnu_clear_sparse_list(%struct.tar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
