; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_set_format_mtree_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_set_format_mtree_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 (%struct.archive_write*)*, %struct.mtree_writer* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.mtree_writer = type { i32, i32, i32, i64, i64, i32, i32, i32* }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate mtree data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@DEFAULT_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mtree\00", align 1
@archive_write_mtree_options = common dso_local global i32 0, align 4
@archive_write_mtree_header = common dso_local global i32 0, align 4
@archive_write_mtree_close = common dso_local global i32 0, align 4
@archive_write_mtree_data = common dso_local global i32 0, align 4
@archive_write_mtree_finish_entry = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_MTREE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @archive_write_set_format_mtree_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_set_format_mtree_default(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca %struct.mtree_writer*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = bitcast %struct.archive* %8 to %struct.archive_write*
  store %struct.archive_write* %9, %struct.archive_write** %6, align 8
  %10 = load %struct.archive*, %struct.archive** %4, align 8
  %11 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %12, i8* %13)
  %15 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 7
  %17 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %16, align 8
  %18 = icmp ne i32 (%struct.archive_write*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 7
  %22 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %21, align 8
  %23 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %24 = call i32 %22(%struct.archive_write* %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = call %struct.mtree_writer* @calloc(i32 1, i32 48)
  store %struct.mtree_writer* %26, %struct.mtree_writer** %7, align 8
  %27 = icmp eq %struct.mtree_writer* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %30 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %29, i32 0, i32 1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @archive_set_error(%struct.TYPE_2__* %30, i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %25
  %35 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %36 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %35, i32 0, i32 7
  store i32* null, i32** %36, align 8
  %37 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %38 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %40 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %39, i32 0, i32 6
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  %42 = load i32, i32* @DEFAULT_KEYS, align 4
  %43 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %44 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %46 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %48 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %50 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %49, i32 0, i32 2
  %51 = call i32 @archive_string_init(i32* %50)
  %52 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %53 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %52, i32 0, i32 1
  %54 = call i32 @archive_string_init(i32* %53)
  %55 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %56 = call i32 @mtree_entry_register_init(%struct.mtree_writer* %55)
  %57 = load %struct.mtree_writer*, %struct.mtree_writer** %7, align 8
  %58 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %59 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %58, i32 0, i32 8
  store %struct.mtree_writer* %57, %struct.mtree_writer** %59, align 8
  %60 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %61 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %60, i32 0, i32 7
  store i32 (%struct.archive_write*)* @archive_write_mtree_free, i32 (%struct.archive_write*)** %61, align 8
  %62 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %63 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 8
  %64 = load i32, i32* @archive_write_mtree_options, align 4
  %65 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %66 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @archive_write_mtree_header, align 4
  %68 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %69 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @archive_write_mtree_close, align 4
  %71 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %72 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @archive_write_mtree_data, align 4
  %74 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %75 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @archive_write_mtree_finish_entry, align 4
  %77 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %78 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @ARCHIVE_FORMAT_MTREE, align 4
  %80 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %81 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %84 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %85, align 8
  %86 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %34, %28
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local %struct.mtree_writer* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @archive_string_init(i32*) #1

declare dso_local i32 @mtree_entry_register_init(%struct.mtree_writer*) #1

declare dso_local i32 @archive_write_mtree_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
