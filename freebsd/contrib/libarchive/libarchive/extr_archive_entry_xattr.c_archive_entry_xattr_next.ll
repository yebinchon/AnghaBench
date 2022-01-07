; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_xattr.c_archive_entry_xattr_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_xattr.c_archive_entry_xattr_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i64, %struct.TYPE_2__* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_entry_xattr_next(%struct.archive_entry* %0, i8** %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %11 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %4
  %15 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %16 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %7, align 8
  store i8* %19, i8** %20, align 8
  %21 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %22 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %8, align 8
  store i8* %25, i8** %26, align 8
  %27 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %28 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  %33 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %34 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %39 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %38, i32 0, i32 0
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %4
  %42 = load i8**, i8*** %7, align 8
  store i8* null, i8** %42, align 8
  %43 = load i8**, i8*** %8, align 8
  store i8* null, i8** %43, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %14
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
