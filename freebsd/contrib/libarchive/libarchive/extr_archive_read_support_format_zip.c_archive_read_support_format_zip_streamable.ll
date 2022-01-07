; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_support_format_zip_streamable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_support_format_zip_streamable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct.zip = type { i32, i32, i64 }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"archive_read_support_format_zip\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't allocate zip data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i32 0, align 4
@real_crc32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@archive_read_format_zip_streamable_bid = common dso_local global i32 0, align 4
@archive_read_format_zip_options = common dso_local global i32 0, align 4
@archive_read_format_zip_streamable_read_header = common dso_local global i32 0, align 4
@archive_read_format_zip_read_data = common dso_local global i32 0, align 4
@archive_read_format_zip_read_data_skip_streamable = common dso_local global i32 0, align 4
@archive_read_format_zip_cleanup = common dso_local global i32 0, align 4
@archive_read_support_format_zip_capabilities_streamable = common dso_local global i32 0, align 4
@archive_read_format_zip_has_encrypted_entries = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_format_zip_streamable(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_read*
  store %struct.archive_read* %8, %struct.archive_read** %4, align 8
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %11 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %12 = call i32 @archive_check_magic(%struct.archive* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 @calloc(i32 1, i32 16)
  %14 = inttoptr i64 %13 to %struct.zip*
  store %struct.zip* %14, %struct.zip** %5, align 8
  %15 = load %struct.zip*, %struct.zip** %5, align 8
  %16 = icmp eq %struct.zip* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @archive_set_error(i32* %19, i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.zip*, %struct.zip** %5, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 4
  %27 = load %struct.zip*, %struct.zip** %5, align 8
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @real_crc32, align 4
  %30 = load %struct.zip*, %struct.zip** %5, align 8
  %31 = getelementptr inbounds %struct.zip, %struct.zip* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %33 = load %struct.zip*, %struct.zip** %5, align 8
  %34 = load i32, i32* @archive_read_format_zip_streamable_bid, align 4
  %35 = load i32, i32* @archive_read_format_zip_options, align 4
  %36 = load i32, i32* @archive_read_format_zip_streamable_read_header, align 4
  %37 = load i32, i32* @archive_read_format_zip_read_data, align 4
  %38 = load i32, i32* @archive_read_format_zip_read_data_skip_streamable, align 4
  %39 = load i32, i32* @archive_read_format_zip_cleanup, align 4
  %40 = load i32, i32* @archive_read_support_format_zip_capabilities_streamable, align 4
  %41 = load i32, i32* @archive_read_format_zip_has_encrypted_entries, align 4
  %42 = call i32 @__archive_read_register_format(%struct.archive_read* %32, %struct.zip* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32* null, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %23
  %47 = load %struct.zip*, %struct.zip** %5, align 8
  %48 = call i32 @free(%struct.zip* %47)
  br label %49

49:                                               ; preds = %46, %23
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @__archive_read_register_format(%struct.archive_read*, %struct.zip*, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
