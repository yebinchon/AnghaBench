; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_raw.c_archive_write_set_format_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_raw.c_archive_write_set_format_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i8*, %struct.TYPE_2__, i32 (%struct.archive_write*)*, i32*, i32*, i32, i32, i32*, %struct.raw* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.raw = type { i64 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"archive_write_set_format_raw\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't allocate raw data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@archive_write_raw_header = common dso_local global i32 0, align 4
@archive_write_raw_data = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_RAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_raw(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.raw*, align 8
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
  %23 = call i64 @calloc(i32 1, i32 8)
  %24 = inttoptr i64 %23 to %struct.raw*
  store %struct.raw* %24, %struct.raw** %5, align 8
  %25 = load %struct.raw*, %struct.raw** %5, align 8
  %26 = icmp eq %struct.raw* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @archive_set_error(%struct.TYPE_2__* %29, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %22
  %34 = load %struct.raw*, %struct.raw** %5, align 8
  %35 = getelementptr inbounds %struct.raw, %struct.raw* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.raw*, %struct.raw** %5, align 8
  %37 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %38 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %37, i32 0, i32 8
  store %struct.raw* %36, %struct.raw** %38, align 8
  %39 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %40 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %42 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %41, i32 0, i32 7
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @archive_write_raw_header, align 4
  %44 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %45 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @archive_write_raw_data, align 4
  %47 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %48 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %50 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %49, i32 0, i32 4
  store i32* null, i32** %50, align 8
  %51 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %52 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  %53 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %54 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %53, i32 0, i32 2
  store i32 (%struct.archive_write*)* @archive_write_raw_free, i32 (%struct.archive_write*)** %54, align 8
  %55 = load i32, i32* @ARCHIVE_FORMAT_RAW, align 4
  %56 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %57 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %60 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %61, align 8
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %33, %27
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @archive_write_raw_free(%struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
