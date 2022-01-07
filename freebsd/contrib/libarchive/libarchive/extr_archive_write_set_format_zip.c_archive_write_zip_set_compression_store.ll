; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_set_compression_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_set_compression_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { %struct.TYPE_2__, %struct.zip* }
%struct.TYPE_2__ = type { i64 }
%struct.zip = type { i32 }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"archive_write_zip_set_compression_deflate\00", align 1
@ARCHIVE_FORMAT_ZIP = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Can only use archive_write_zip_set_compression_store with zip format\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@COMPRESSION_STORE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_zip_set_compression_store(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %2, align 8
  %6 = load %struct.archive*, %struct.archive** %2, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %3, align 8
  %8 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %9 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %8, i32 0, i32 1
  %10 = load %struct.zip*, %struct.zip** %9, align 8
  store %struct.zip* %10, %struct.zip** %4, align 8
  %11 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.archive*, %struct.archive** %2, align 8
  %13 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %15 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @archive_check_magic(%struct.archive* %12, i32 %13, i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ARCHIVE_FORMAT_ZIP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %28 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %27, i32 0, i32 0
  %29 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %30 = call i32 @archive_set_error(%struct.TYPE_2__* %28, i32 %29, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load i32, i32* @COMPRESSION_STORE, align 4
  %34 = load %struct.zip*, %struct.zip** %4, align 8
  %35 = getelementptr inbounds %struct.zip, %struct.zip* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %26
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
