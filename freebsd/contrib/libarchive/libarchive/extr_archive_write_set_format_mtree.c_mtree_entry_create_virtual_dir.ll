; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_create_virtual_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_create_virtual_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.mtree_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.archive_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, %struct.mtree_entry**)* @mtree_entry_create_virtual_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtree_entry_create_virtual_dir(%struct.archive_write* %0, i8* %1, %struct.mtree_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mtree_entry**, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca %struct.mtree_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mtree_entry** %2, %struct.mtree_entry*** %7, align 8
  %11 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %11, %struct.archive_entry** %8, align 8
  %12 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %13 = icmp eq %struct.archive_entry* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.mtree_entry**, %struct.mtree_entry*** %7, align 8
  store %struct.mtree_entry* null, %struct.mtree_entry** %15, align 8
  %16 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %17 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %16, i32 0, i32 0
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @archive_set_error(i32* %17, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %3
  %22 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %22, i8* %23)
  %25 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %26 = load i32, i32* @AE_IFDIR, align 4
  %27 = or i32 %26, 493
  %28 = call i32 @archive_entry_set_mode(%struct.archive_entry* %25, i32 %27)
  %29 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %30 = call i32 @time(i32* null)
  %31 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %29, i32 %30, i32 0)
  %32 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %33 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %34 = call i32 @mtree_entry_new(%struct.archive_write* %32, %struct.archive_entry* %33, %struct.mtree_entry** %9)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %36 = call i32 @archive_entry_free(%struct.archive_entry* %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @ARCHIVE_WARN, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %21
  %41 = load %struct.mtree_entry**, %struct.mtree_entry*** %7, align 8
  store %struct.mtree_entry* null, %struct.mtree_entry** %41, align 8
  %42 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %43 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %42, i32 0, i32 0
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @archive_set_error(i32* %43, i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %21
  %48 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %49 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %53 = load %struct.mtree_entry**, %struct.mtree_entry*** %7, align 8
  store %struct.mtree_entry* %52, %struct.mtree_entry** %53, align 8
  %54 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %40, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @mtree_entry_new(%struct.archive_write*, %struct.archive_entry*, %struct.mtree_entry**) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
