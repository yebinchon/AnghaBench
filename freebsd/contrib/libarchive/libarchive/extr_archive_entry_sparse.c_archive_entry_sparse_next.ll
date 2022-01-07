; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_sparse.c_archive_entry_sparse_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_sparse.c_archive_entry_sparse_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_entry_sparse_next(%struct.archive_entry* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %9 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %14 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %20 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %26 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %31 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %30, i32 0, i32 0
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %31, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load i64*, i64** %6, align 8
  store i64 0, i64* %34, align 8
  %35 = load i64*, i64** %7, align 8
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %12
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
