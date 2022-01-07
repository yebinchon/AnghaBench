; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.mtree_writer* }
%struct.mtree_writer = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AE_IFREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_write*, i8*, i64)* @archive_write_mtree_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @archive_write_mtree_data(%struct.archive_write* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mtree_writer*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 0
  %11 = load %struct.mtree_writer*, %struct.mtree_writer** %10, align 8
  store %struct.mtree_writer* %11, %struct.mtree_writer** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %14 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %19 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %24 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %28 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp eq %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %4, align 8
  br label %48

33:                                               ; preds = %21
  %34 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %35 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AE_IFREG, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.mtree_writer*, %struct.mtree_writer** %8, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @sum_update(%struct.mtree_writer* %42, i8* %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %33
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %46, %31
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i32 @sum_update(%struct.mtree_writer*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
