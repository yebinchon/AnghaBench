; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_zstd.c_archive_write_add_filter_zstd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_zstd.c_archive_write_add_filter_zstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32 }
%struct.archive_write_filter = type { i8*, i32, i32*, i32*, i32*, i32*, %struct.private_data* }
%struct.private_data = type { i32, i32*, i32* }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"archive_write_add_filter_zstd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@archive_compressor_zstd_open = common dso_local global i32 0, align 4
@archive_compressor_zstd_options = common dso_local global i32 0, align 4
@archive_compressor_zstd_close = common dso_local global i32 0, align 4
@archive_compressor_zstd_free = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_ZSTD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Using external zstd program\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_add_filter_zstd(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_write_filter*, align 8
  %6 = alloca %struct.private_data*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_write*
  store %struct.archive_write* %8, %struct.archive_write** %4, align 8
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = call %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive* %9)
  store %struct.archive_write_filter* %10, %struct.archive_write_filter** %5, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 0
  %13 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %15 = call i32 @archive_check_magic(i32* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = call %struct.private_data* @calloc(i32 1, i32 24)
  store %struct.private_data* %16, %struct.private_data** %6, align 8
  %17 = load %struct.private_data*, %struct.private_data** %6, align 8
  %18 = icmp eq %struct.private_data* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @archive_set_error(i32* %21, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %1
  %26 = load %struct.private_data*, %struct.private_data** %6, align 8
  %27 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %28 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %27, i32 0, i32 6
  store %struct.private_data* %26, %struct.private_data** %28, align 8
  %29 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %30 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %29, i32 0, i32 5
  store i32* @archive_compressor_zstd_open, i32** %30, align 8
  %31 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %32 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %31, i32 0, i32 4
  store i32* @archive_compressor_zstd_options, i32** %32, align 8
  %33 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %34 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %33, i32 0, i32 3
  store i32* @archive_compressor_zstd_close, i32** %34, align 8
  %35 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %36 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %35, i32 0, i32 2
  store i32* @archive_compressor_zstd_free, i32** %36, align 8
  %37 = load i32, i32* @ARCHIVE_FILTER_ZSTD, align 4
  %38 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %39 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %41 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %41, align 8
  %42 = load %struct.private_data*, %struct.private_data** %6, align 8
  %43 = getelementptr inbounds %struct.private_data, %struct.private_data* %42, i32 0, i32 0
  store i32 3, i32* %43, align 8
  %44 = call i32* @__archive_write_program_allocate(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.private_data*, %struct.private_data** %6, align 8
  %46 = getelementptr inbounds %struct.private_data, %struct.private_data* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.private_data*, %struct.private_data** %6, align 8
  %48 = getelementptr inbounds %struct.private_data, %struct.private_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %25
  %52 = load %struct.private_data*, %struct.private_data** %6, align 8
  %53 = call i32 @free(%struct.private_data* %52)
  %54 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %55 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %54, i32 0, i32 0
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @archive_set_error(i32* %55, i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %25
  %60 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %61 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %60, i32 0, i32 0
  %62 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %63 = call i32 @archive_set_error(i32* %61, i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %51, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive*) #1

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

declare dso_local %struct.private_data* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32* @__archive_write_program_allocate(i8*) #1

declare dso_local i32 @free(%struct.private_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
