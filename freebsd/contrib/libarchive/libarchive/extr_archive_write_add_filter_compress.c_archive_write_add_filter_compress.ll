; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_archive_write_add_filter_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_archive_write_add_filter_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32 }
%struct.archive_write_filter = type { i8*, i32, i32* }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"archive_write_add_filter_compress\00", align 1
@archive_compressor_compress_open = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_add_filter_compress(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.archive_write_filter*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = bitcast %struct.archive* %5 to %struct.archive_write*
  store %struct.archive_write* %6, %struct.archive_write** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = call %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive* %7)
  store %struct.archive_write_filter* %8, %struct.archive_write_filter** %4, align 8
  %9 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 0
  %11 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %13 = call i32 @archive_check_magic(i32* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %15 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %14, i32 0, i32 2
  store i32* @archive_compressor_compress_open, i32** %15, align 8
  %16 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %17 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %20 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %21
}

declare dso_local %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive*) #1

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
