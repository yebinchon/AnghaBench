; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_v7tar.c_archive_write_set_format_v7tar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_v7tar.c_archive_write_set_format_v7tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32, i32 (%struct.archive_write*)*, i32, i32, i32, i32, %struct.v7tar* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.v7tar = type { i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"archive_write_set_format_v7tar\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Internal: template_header wrong size: %zu should be 512\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@archive_write_v7tar_close = common dso_local global i32 0, align 4
@archive_write_v7tar_data = common dso_local global i32 0, align 4
@archive_write_v7tar_finish_entry = common dso_local global i32 0, align 4
@archive_write_v7tar_header = common dso_local global i32 0, align 4
@archive_write_v7tar_options = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_v7tar(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.v7tar*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = bitcast %struct.archive* %5 to %struct.archive_write*
  store %struct.archive_write* %6, %struct.archive_write** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %9 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %10 = call i32 @archive_check_magic(%struct.archive* %7, i32 %8, i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 3
  %13 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %12, align 8
  %14 = icmp ne i32 (%struct.archive_write*)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %17 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %16, i32 0, i32 3
  %18 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %17, align 8
  %19 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %20 = call i32 %18(%struct.archive_write* %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %23 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %22, i32 0, i32 1
  %24 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %25 = call i32 (%struct.TYPE_2__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_2__* %23, i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 4)
  %26 = load i32, i32* @ARCHIVE_FATAL, align 4
  ret i32 %26
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
