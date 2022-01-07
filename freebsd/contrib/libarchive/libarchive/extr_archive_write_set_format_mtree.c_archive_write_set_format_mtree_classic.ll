; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_set_format_mtree_classic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_set_format_mtree_classic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i64 }
%struct.mtree_writer = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"archive_write_set_format_mtree_classic\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_mtree_classic(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.mtree_writer*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %6 = load %struct.archive*, %struct.archive** %2, align 8
  %7 = call i32 @archive_write_set_format_mtree_default(%struct.archive* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.archive*, %struct.archive** %2, align 8
  %13 = bitcast %struct.archive* %12 to %struct.archive_write*
  store %struct.archive_write* %13, %struct.archive_write** %4, align 8
  %14 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %15 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mtree_writer*
  store %struct.mtree_writer* %17, %struct.mtree_writer** %5, align 8
  %18 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %19 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %21 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %11, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @archive_write_set_format_mtree_default(%struct.archive*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
