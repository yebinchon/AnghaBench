; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_warc.c_archive_write_set_format_warc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_warc.c_archive_write_set_format_warc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32, i32 (%struct.archive_write*)*, i32, i32, i32, i32, %struct.warc_s* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.warc_s = type { i32, i32, i64, i64 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"archive_write_set_format_warc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't allocate warc data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"WARC/1.0\00", align 1
@_warc_options = common dso_local global i32 0, align 4
@_warc_header = common dso_local global i32 0, align 4
@_warc_data = common dso_local global i32 0, align 4
@_warc_close = common dso_local global i32 0, align 4
@_warc_finish_entry = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_WARC = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_warc(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.warc_s*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 3
  %14 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %13, align 8
  %15 = icmp ne i32 (%struct.archive_write*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 3
  %19 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %18, align 8
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = call i32 %19(%struct.archive_write* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = call %struct.warc_s* @malloc(i32 24)
  store %struct.warc_s* %23, %struct.warc_s** %5, align 8
  %24 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %25 = icmp eq %struct.warc_s* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %28 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %27, i32 0, i32 1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @archive_set_error(%struct.TYPE_2__* %28, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %31, i32* %2, align 4
  br label %76

32:                                               ; preds = %22
  %33 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %34 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = call i64 @time(i32* null)
  %36 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %37 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %39 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %41 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %45 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %47 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %48 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %47, i32 0, i32 8
  store %struct.warc_s* %46, %struct.warc_s** %48, align 8
  %49 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %50 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* @_warc_options, align 4
  %52 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %53 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @_warc_header, align 4
  %55 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %56 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @_warc_data, align 4
  %58 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %59 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @_warc_close, align 4
  %61 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %62 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %64 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %63, i32 0, i32 3
  store i32 (%struct.archive_write*)* @_warc_free, i32 (%struct.archive_write*)** %64, align 8
  %65 = load i32, i32* @_warc_finish_entry, align 4
  %66 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %67 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @ARCHIVE_FORMAT_WARC, align 4
  %69 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %70 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %73 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %32, %26
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local %struct.warc_s* @malloc(i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @_warc_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
