; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio_newc.c_archive_write_set_format_cpio_newc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio_newc.c_archive_write_set_format_cpio_newc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32 (%struct.archive_write*)*, i32, i32, i32, i32, i32, %struct.cpio* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cpio = type { i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"archive_write_set_format_cpio_newc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't allocate cpio data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"cpio\00", align 1
@archive_write_newc_options = common dso_local global i32 0, align 4
@archive_write_newc_header = common dso_local global i32 0, align 4
@archive_write_newc_data = common dso_local global i32 0, align 4
@archive_write_newc_finish_entry = common dso_local global i32 0, align 4
@archive_write_newc_close = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_CPIO_SVR4_NOCRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"SVR4 cpio nocrc\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_cpio_newc(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.cpio*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 2
  %14 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %13, align 8
  %15 = icmp ne i32 (%struct.archive_write*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 2
  %19 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %18, align 8
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = call i32 %19(%struct.archive_write* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = call i64 @calloc(i32 1, i32 4)
  %24 = inttoptr i64 %23 to %struct.cpio*
  store %struct.cpio* %24, %struct.cpio** %5, align 8
  %25 = load %struct.cpio*, %struct.cpio** %5, align 8
  %26 = icmp eq %struct.cpio* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @archive_set_error(%struct.TYPE_2__* %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load %struct.cpio*, %struct.cpio** %5, align 8
  %35 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %36 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %35, i32 0, i32 8
  store %struct.cpio* %34, %struct.cpio** %36, align 8
  %37 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %38 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @archive_write_newc_options, align 4
  %40 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %41 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @archive_write_newc_header, align 4
  %43 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %44 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @archive_write_newc_data, align 4
  %46 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %47 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @archive_write_newc_finish_entry, align 4
  %49 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %50 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @archive_write_newc_close, align 4
  %52 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %53 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %55 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %54, i32 0, i32 2
  store i32 (%struct.archive_write*)* @archive_write_newc_free, i32 (%struct.archive_write*)** %55, align 8
  %56 = load i32, i32* @ARCHIVE_FORMAT_CPIO_SVR4_NOCRC, align 4
  %57 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %58 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %61 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %62, align 8
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %33, %27
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @archive_write_newc_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
