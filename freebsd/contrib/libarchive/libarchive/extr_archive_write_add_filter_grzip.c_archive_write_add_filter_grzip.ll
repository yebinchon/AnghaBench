; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_grzip.c_archive_write_add_filter_grzip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_grzip.c_archive_write_add_filter_grzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write_filter = type { i8*, i32, i32, i32, i32, i32, %struct.write_grzip*, i32 }
%struct.write_grzip = type { i32* }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"archive_write_add_filter_grzip\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"grzip\00", align 1
@ARCHIVE_FILTER_GRZIP = common dso_local global i32 0, align 4
@archive_write_grzip_open = common dso_local global i32 0, align 4
@archive_write_grzip_options = common dso_local global i32 0, align 4
@archive_write_grzip_write = common dso_local global i32 0, align 4
@archive_write_grzip_close = common dso_local global i32 0, align 4
@archive_write_grzip_free = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Using external grzip program for grzip compression\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_add_filter_grzip(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write_filter*, align 8
  %5 = alloca %struct.write_grzip*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = call %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive* %6)
  store %struct.archive_write_filter* %7, %struct.archive_write_filter** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = call %struct.write_grzip* @calloc(i32 1, i32 8)
  store %struct.write_grzip* %12, %struct.write_grzip** %5, align 8
  %13 = load %struct.write_grzip*, %struct.write_grzip** %5, align 8
  %14 = icmp eq %struct.write_grzip* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.archive*, %struct.archive** %3, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @archive_set_error(%struct.archive* %16, i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %1
  %21 = call i32* @__archive_write_program_allocate(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.write_grzip*, %struct.write_grzip** %5, align 8
  %23 = getelementptr inbounds %struct.write_grzip, %struct.write_grzip* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.write_grzip*, %struct.write_grzip** %5, align 8
  %25 = getelementptr inbounds %struct.write_grzip, %struct.write_grzip* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.write_grzip*, %struct.write_grzip** %5, align 8
  %30 = call i32 @free(%struct.write_grzip* %29)
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @archive_set_error(%struct.archive* %31, i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %20
  %36 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %37 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @ARCHIVE_FILTER_GRZIP, align 4
  %39 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %40 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.write_grzip*, %struct.write_grzip** %5, align 8
  %42 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %43 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %42, i32 0, i32 6
  store %struct.write_grzip* %41, %struct.write_grzip** %43, align 8
  %44 = load i32, i32* @archive_write_grzip_open, align 4
  %45 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %46 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @archive_write_grzip_options, align 4
  %48 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %49 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @archive_write_grzip_write, align 4
  %51 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %52 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @archive_write_grzip_close, align 4
  %54 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %55 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @archive_write_grzip_free, align 4
  %57 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %58 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.archive*, %struct.archive** %3, align 8
  %60 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %61 = call i32 @archive_set_error(%struct.archive* %59, i32 %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %35, %28, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive*) #1

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local %struct.write_grzip* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32* @__archive_write_program_allocate(i8*) #1

declare dso_local i32 @free(%struct.write_grzip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
