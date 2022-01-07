; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.mtree_writer* }
%struct.mtree_writer = type { i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_mtree_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_mtree_free(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.mtree_writer*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 0
  %7 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  store %struct.mtree_writer* %7, %struct.mtree_writer** %4, align 8
  %8 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %9 = icmp eq %struct.mtree_writer* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %14 = call i32 @mtree_entry_register_free(%struct.mtree_writer* %13)
  %15 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %16 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %15, i32 0, i32 2
  %17 = call i32 @archive_string_free(i32* %16)
  %18 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %19 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %18, i32 0, i32 1
  %20 = call i32 @archive_string_free(i32* %19)
  %21 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %22 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %21, i32 0, i32 0
  %23 = call i32 @archive_string_free(i32* %22)
  %24 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %25 = call i32 @attr_counter_set_free(%struct.mtree_writer* %24)
  %26 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %27 = call i32 @free(%struct.mtree_writer* %26)
  %28 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 0
  store %struct.mtree_writer* null, %struct.mtree_writer** %29, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %12, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mtree_entry_register_free(%struct.mtree_writer*) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @attr_counter_set_free(%struct.mtree_writer*) #1

declare dso_local i32 @free(%struct.mtree_writer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
