; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_support_format_7zip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_support_format_7zip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct._7zip = type { i32 }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"archive_read_support_format_7zip\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't allocate 7zip data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"7zip\00", align 1
@archive_read_format_7zip_bid = common dso_local global i32 0, align 4
@archive_read_format_7zip_read_header = common dso_local global i32 0, align 4
@archive_read_format_7zip_read_data = common dso_local global i32 0, align 4
@archive_read_format_7zip_read_data_skip = common dso_local global i32 0, align 4
@archive_read_format_7zip_cleanup = common dso_local global i32 0, align 4
@archive_read_support_format_7zip_capabilities = common dso_local global i32 0, align 4
@archive_read_format_7zip_has_encrypted_entries = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_format_7zip(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct._7zip*, align 8
  %6 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_read*
  store %struct.archive_read* %8, %struct.archive_read** %4, align 8
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %11 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %12 = call i32 @archive_check_magic(%struct.archive* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = call %struct._7zip* @calloc(i32 1, i32 4)
  store %struct._7zip* %13, %struct._7zip** %5, align 8
  %14 = load %struct._7zip*, %struct._7zip** %5, align 8
  %15 = icmp eq %struct._7zip* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 0
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @archive_set_error(i32* %18, i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %1
  %23 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 4
  %24 = load %struct._7zip*, %struct._7zip** %5, align 8
  %25 = getelementptr inbounds %struct._7zip, %struct._7zip* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = load %struct._7zip*, %struct._7zip** %5, align 8
  %28 = load i32, i32* @archive_read_format_7zip_bid, align 4
  %29 = load i32, i32* @archive_read_format_7zip_read_header, align 4
  %30 = load i32, i32* @archive_read_format_7zip_read_data, align 4
  %31 = load i32, i32* @archive_read_format_7zip_read_data_skip, align 4
  %32 = load i32, i32* @archive_read_format_7zip_cleanup, align 4
  %33 = load i32, i32* @archive_read_support_format_7zip_capabilities, align 4
  %34 = load i32, i32* @archive_read_format_7zip_has_encrypted_entries, align 4
  %35 = call i32 @__archive_read_register_format(%struct.archive_read* %26, %struct._7zip* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32* null, i32 %29, i32 %30, i32 %31, i32* null, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load %struct._7zip*, %struct._7zip** %5, align 8
  %41 = call i32 @free(%struct._7zip* %40)
  br label %42

42:                                               ; preds = %39, %22
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local %struct._7zip* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @__archive_read_register_format(%struct.archive_read*, %struct._7zip*, i8*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @free(%struct._7zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
