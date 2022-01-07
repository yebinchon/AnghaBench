; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_old_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_gnu_sparse_old_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32 }
%struct.gnu_sparse = type { i64*, i64* }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.gnu_sparse*, i32)* @gnu_sparse_old_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnu_sparse_old_parse(%struct.archive_read* %0, %struct.tar* %1, %struct.gnu_sparse* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca %struct.gnu_sparse*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store %struct.gnu_sparse* %2, %struct.gnu_sparse** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %10

10:                                               ; preds = %38, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.gnu_sparse*, %struct.gnu_sparse** %8, align 8
  %15 = getelementptr inbounds %struct.gnu_sparse, %struct.gnu_sparse* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %13, %10
  %21 = phi i1 [ false, %10 ], [ %19, %13 ]
  br i1 %21, label %22, label %43

22:                                               ; preds = %20
  %23 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %24 = load %struct.tar*, %struct.tar** %7, align 8
  %25 = load %struct.gnu_sparse*, %struct.gnu_sparse** %8, align 8
  %26 = getelementptr inbounds %struct.gnu_sparse, %struct.gnu_sparse* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = call i32 @tar_atol(i64* %27, i32 8)
  %29 = load %struct.gnu_sparse*, %struct.gnu_sparse** %8, align 8
  %30 = getelementptr inbounds %struct.gnu_sparse, %struct.gnu_sparse* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = call i32 @tar_atol(i64* %31, i32 8)
  %33 = call i64 @gnu_add_sparse_entry(%struct.archive_read* %23, %struct.tar* %24, i32 %28, i32 %32)
  %34 = load i64, i64* @ARCHIVE_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %37, i32* %5, align 4
  br label %46

38:                                               ; preds = %22
  %39 = load %struct.gnu_sparse*, %struct.gnu_sparse** %8, align 8
  %40 = getelementptr inbounds %struct.gnu_sparse, %struct.gnu_sparse* %39, i32 1
  store %struct.gnu_sparse* %40, %struct.gnu_sparse** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %9, align 4
  br label %10

43:                                               ; preds = %20
  %44 = load i64, i64* @ARCHIVE_OK, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @gnu_add_sparse_entry(%struct.archive_read*, %struct.tar*, i32, i32) #1

declare dso_local i32 @tar_atol(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
