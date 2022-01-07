; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lzop.c_archive_write_add_filter_lzop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lzop.c_archive_write_add_filter_lzop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write_filter = type { i8*, i32, i32, i32, i32, i32, %struct.write_lzop*, i32 }
%struct.write_lzop = type { i32, i32* }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"archive_write_add_filter_lzop\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"lzop\00", align 1
@ARCHIVE_FILTER_LZOP = common dso_local global i32 0, align 4
@archive_write_lzop_open = common dso_local global i32 0, align 4
@archive_write_lzop_options = common dso_local global i32 0, align 4
@archive_write_lzop_write = common dso_local global i32 0, align 4
@archive_write_lzop_close = common dso_local global i32 0, align 4
@archive_write_lzop_free = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Using external lzop program for lzop compression\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@LZO_E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_add_filter_lzop(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write_filter*, align 8
  %5 = alloca %struct.write_lzop*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = call %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive* %6)
  store %struct.archive_write_filter* %7, %struct.archive_write_filter** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = call %struct.write_lzop* @calloc(i32 1, i32 16)
  store %struct.write_lzop* %12, %struct.write_lzop** %5, align 8
  %13 = load %struct.write_lzop*, %struct.write_lzop** %5, align 8
  %14 = icmp eq %struct.write_lzop* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.archive*, %struct.archive** %3, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %16, i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %22 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @ARCHIVE_FILTER_LZOP, align 4
  %24 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %25 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.write_lzop*, %struct.write_lzop** %5, align 8
  %27 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %28 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %27, i32 0, i32 6
  store %struct.write_lzop* %26, %struct.write_lzop** %28, align 8
  %29 = load i32, i32* @archive_write_lzop_open, align 4
  %30 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %31 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @archive_write_lzop_options, align 4
  %33 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %34 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @archive_write_lzop_write, align 4
  %36 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %37 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @archive_write_lzop_close, align 4
  %39 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %40 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @archive_write_lzop_free, align 4
  %42 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %43 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = call i32* @__archive_write_program_allocate(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.write_lzop*, %struct.write_lzop** %5, align 8
  %46 = getelementptr inbounds %struct.write_lzop, %struct.write_lzop* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.write_lzop*, %struct.write_lzop** %5, align 8
  %48 = getelementptr inbounds %struct.write_lzop, %struct.write_lzop* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %20
  %52 = load %struct.write_lzop*, %struct.write_lzop** %5, align 8
  %53 = call i32 @free(%struct.write_lzop* %52)
  %54 = load %struct.archive*, %struct.archive** %3, align 8
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %54, i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %57, i32* %2, align 4
  br label %65

58:                                               ; preds = %20
  %59 = load %struct.write_lzop*, %struct.write_lzop** %5, align 8
  %60 = getelementptr inbounds %struct.write_lzop, %struct.write_lzop* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.archive*, %struct.archive** %3, align 8
  %62 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %63 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %61, i32 %62, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %51, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive*) #1

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local %struct.write_lzop* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, ...) #1

declare dso_local i32* @__archive_write_program_allocate(i8*) #1

declare dso_local i32 @free(%struct.write_lzop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
