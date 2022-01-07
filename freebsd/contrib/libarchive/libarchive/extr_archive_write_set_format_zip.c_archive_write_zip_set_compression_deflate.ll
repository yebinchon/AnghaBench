; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_set_compression_deflate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_set_compression_deflate.c"
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
@.str.1 = private unnamed_addr constant [71 x i8] c"Can only use archive_write_zip_set_compression_deflate with zip format\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"deflate compression not supported\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@COMPRESSION_DEFLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_zip_set_compression_deflate(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = bitcast %struct.archive* %5 to %struct.archive_write*
  store %struct.archive_write* %6, %struct.archive_write** %3, align 8
  %7 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.archive*, %struct.archive** %2, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %17 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ARCHIVE_FORMAT_ZIP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %24 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %23, i32 0, i32 0
  %25 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %26 = call i32 @archive_set_error(%struct.TYPE_2__* %24, i32 %25, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %30 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %29, i32 0, i32 0
  %31 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %32 = call i32 @archive_set_error(%struct.TYPE_2__* %30, i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
