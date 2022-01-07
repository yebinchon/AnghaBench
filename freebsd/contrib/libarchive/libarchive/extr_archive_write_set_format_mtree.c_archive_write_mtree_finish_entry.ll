; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_finish_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_finish_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.mtree_writer* }
%struct.mtree_writer = type { %struct.mtree_entry* }
%struct.mtree_entry = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_mtree_finish_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_mtree_finish_entry(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.mtree_writer*, align 8
  %5 = alloca %struct.mtree_entry*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %6 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %7 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %6, i32 0, i32 0
  %8 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  store %struct.mtree_writer* %8, %struct.mtree_writer** %4, align 8
  %9 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %10 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %9, i32 0, i32 0
  %11 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  store %struct.mtree_entry* %11, %struct.mtree_entry** %5, align 8
  %12 = icmp eq %struct.mtree_entry* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %17 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %16, i32 0, i32 0
  store %struct.mtree_entry* null, %struct.mtree_entry** %17, align 8
  %18 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %19 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %24 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %25 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @sum_final(%struct.mtree_writer* %23, i64 %26)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @sum_final(%struct.mtree_writer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
