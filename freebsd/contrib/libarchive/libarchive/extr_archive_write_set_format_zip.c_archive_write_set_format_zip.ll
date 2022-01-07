; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_set_format_zip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_set_format_zip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32 (%struct.archive_write*)*, i32, i32, i32, i32, i32, %struct.zip* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.zip = type { i32, i32*, i32, i32, i32 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"archive_write_set_format_zip\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't allocate zip data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@COMPRESSION_UNSPECIFIED = common dso_local global i32 0, align 4
@real_crc32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't allocate compression buffer\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@archive_write_zip_options = common dso_local global i32 0, align 4
@archive_write_zip_header = common dso_local global i32 0, align 4
@archive_write_zip_data = common dso_local global i32 0, align 4
@archive_write_zip_finish_entry = common dso_local global i32 0, align 4
@archive_write_zip_close = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_ZIP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ZIP\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_zip(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.zip*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_write*
  store %struct.archive_write* %7, %struct.archive_write** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
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
  %23 = call i64 @calloc(i32 1, i32 32)
  %24 = inttoptr i64 %23 to %struct.zip*
  store %struct.zip* %24, %struct.zip** %5, align 8
  %25 = load %struct.zip*, %struct.zip** %5, align 8
  %26 = icmp eq %struct.zip* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @archive_set_error(%struct.TYPE_2__* %29, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %2, align 4
  br label %91

33:                                               ; preds = %22
  %34 = load i32, i32* @COMPRESSION_UNSPECIFIED, align 4
  %35 = load %struct.zip*, %struct.zip** %5, align 8
  %36 = getelementptr inbounds %struct.zip, %struct.zip* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @real_crc32, align 4
  %38 = load %struct.zip*, %struct.zip** %5, align 8
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.zip*, %struct.zip** %5, align 8
  %41 = getelementptr inbounds %struct.zip, %struct.zip* %40, i32 0, i32 0
  store i32 65536, i32* %41, align 8
  %42 = load %struct.zip*, %struct.zip** %5, align 8
  %43 = getelementptr inbounds %struct.zip, %struct.zip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @malloc(i32 %44)
  %46 = load %struct.zip*, %struct.zip** %5, align 8
  %47 = getelementptr inbounds %struct.zip, %struct.zip* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.zip*, %struct.zip** %5, align 8
  %49 = getelementptr inbounds %struct.zip, %struct.zip* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %33
  %53 = load %struct.zip*, %struct.zip** %5, align 8
  %54 = call i32 @free(%struct.zip* %53)
  %55 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %56 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %55, i32 0, i32 1
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @archive_set_error(%struct.TYPE_2__* %56, i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %59, i32* %2, align 4
  br label %91

60:                                               ; preds = %33
  %61 = load %struct.zip*, %struct.zip** %5, align 8
  %62 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %63 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %62, i32 0, i32 8
  store %struct.zip* %61, %struct.zip** %63, align 8
  %64 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %65 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %65, align 8
  %66 = load i32, i32* @archive_write_zip_options, align 4
  %67 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %68 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @archive_write_zip_header, align 4
  %70 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %71 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @archive_write_zip_data, align 4
  %73 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %74 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @archive_write_zip_finish_entry, align 4
  %76 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %77 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @archive_write_zip_close, align 4
  %79 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %80 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %82 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %81, i32 0, i32 2
  store i32 (%struct.archive_write*)* @archive_write_zip_free, i32 (%struct.archive_write*)** %82, align 8
  %83 = load i32, i32* @ARCHIVE_FORMAT_ZIP, align 4
  %84 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %85 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  %87 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %88 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %89, align 8
  %90 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %60, %52, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(%struct.zip*) #1

declare dso_local i32 @archive_write_zip_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
