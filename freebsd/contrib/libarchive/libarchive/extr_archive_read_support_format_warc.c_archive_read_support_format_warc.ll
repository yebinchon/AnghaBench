; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_archive_read_support_format_warc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c_archive_read_support_format_warc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct.warc_s = type { i32 }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"archive_read_support_format_warc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't allocate warc data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"warc\00", align 1
@_warc_bid = common dso_local global i32 0, align 4
@_warc_rdhdr = common dso_local global i32 0, align 4
@_warc_read = common dso_local global i32 0, align 4
@_warc_skip = common dso_local global i32 0, align 4
@_warc_cleanup = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_format_warc(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.warc_s*, align 8
  %6 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_read*
  store %struct.archive_read* %8, %struct.archive_read** %4, align 8
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %11 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %12 = call i32 @archive_check_magic(%struct.archive* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = call %struct.warc_s* @calloc(i32 1, i32 4)
  store %struct.warc_s* %13, %struct.warc_s** %5, align 8
  %14 = icmp eq %struct.warc_s* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %17 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %16, i32 0, i32 0
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @archive_set_error(i32* %17, i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %23 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %24 = load i32, i32* @_warc_bid, align 4
  %25 = load i32, i32* @_warc_rdhdr, align 4
  %26 = load i32, i32* @_warc_read, align 4
  %27 = load i32, i32* @_warc_skip, align 4
  %28 = load i32, i32* @_warc_cleanup, align 4
  %29 = call i32 @__archive_read_register_format(%struct.archive_read* %22, %struct.warc_s* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32* null, i32 %25, i32 %26, i32 %27, i32* null, i32 %28, i32* null, i32* null)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.warc_s*, %struct.warc_s** %5, align 8
  %35 = call i32 @free(%struct.warc_s* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %33, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local %struct.warc_s* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @__archive_read_register_format(%struct.archive_read*, %struct.warc_s*, i8*, i32, i32*, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.warc_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
