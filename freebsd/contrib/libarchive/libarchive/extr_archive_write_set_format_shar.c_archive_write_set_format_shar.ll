; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_set_format_shar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_set_format_shar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32, i32, i32 (%struct.archive_write*)*, i32, i32, %struct.shar* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.shar = type { i32, i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"archive_write_set_format_shar\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't allocate shar data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"shar\00", align 1
@archive_write_shar_header = common dso_local global i32 0, align 4
@archive_write_shar_close = common dso_local global i32 0, align 4
@archive_write_shar_data_sed = common dso_local global i32 0, align 4
@archive_write_shar_finish_entry = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_SHAR_BASE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_shar(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.shar*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 4
  %14 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %13, align 8
  %15 = icmp ne i32 (%struct.archive_write*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %18 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %17, i32 0, i32 4
  %19 = load i32 (%struct.archive_write*)*, i32 (%struct.archive_write*)** %18, align 8
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = call i32 %19(%struct.archive_write* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = call i64 @calloc(i32 1, i32 8)
  %24 = inttoptr i64 %23 to %struct.shar*
  store %struct.shar* %24, %struct.shar** %5, align 8
  %25 = load %struct.shar*, %struct.shar** %5, align 8
  %26 = icmp eq %struct.shar* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @archive_set_error(%struct.TYPE_2__* %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %22
  %34 = load %struct.shar*, %struct.shar** %5, align 8
  %35 = getelementptr inbounds %struct.shar, %struct.shar* %34, i32 0, i32 1
  %36 = call i32 @archive_string_init(i32* %35)
  %37 = load %struct.shar*, %struct.shar** %5, align 8
  %38 = getelementptr inbounds %struct.shar, %struct.shar* %37, i32 0, i32 0
  %39 = call i32 @archive_string_init(i32* %38)
  %40 = load %struct.shar*, %struct.shar** %5, align 8
  %41 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %42 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %41, i32 0, i32 7
  store %struct.shar* %40, %struct.shar** %42, align 8
  %43 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %44 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @archive_write_shar_header, align 4
  %46 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %47 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @archive_write_shar_close, align 4
  %49 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %50 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %52 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %51, i32 0, i32 4
  store i32 (%struct.archive_write*)* @archive_write_shar_free, i32 (%struct.archive_write*)** %52, align 8
  %53 = load i32, i32* @archive_write_shar_data_sed, align 4
  %54 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %55 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @archive_write_shar_finish_entry, align 4
  %57 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %58 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @ARCHIVE_FORMAT_SHAR_BASE, align 4
  %60 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %61 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %64 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %65, align 8
  %66 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %33, %27
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @archive_string_init(i32*) #1

declare dso_local i32 @archive_write_shar_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
