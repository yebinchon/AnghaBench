; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_archive_read_support_format_iso9660.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_archive_read_support_format_iso9660.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct.iso9660 = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32*, i32** }
%struct.TYPE_3__ = type { i32*, i32** }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"archive_read_support_format_iso9660\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't allocate iso9660 data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ISO9660_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"iso9660\00", align 1
@archive_read_format_iso9660_bid = common dso_local global i32 0, align 4
@archive_read_format_iso9660_options = common dso_local global i32 0, align 4
@archive_read_format_iso9660_read_header = common dso_local global i32 0, align 4
@archive_read_format_iso9660_read_data = common dso_local global i32 0, align 4
@archive_read_format_iso9660_read_data_skip = common dso_local global i32 0, align 4
@archive_read_format_iso9660_cleanup = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_support_format_iso9660(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.iso9660*, align 8
  %6 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_read*
  store %struct.archive_read* %8, %struct.archive_read** %4, align 8
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %11 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %12 = call i32 @archive_check_magic(%struct.archive* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 @calloc(i32 1, i32 48)
  %14 = inttoptr i64 %13 to %struct.iso9660*
  store %struct.iso9660* %14, %struct.iso9660** %5, align 8
  %15 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %16 = icmp eq %struct.iso9660* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @archive_set_error(i32* %19, i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %22, i32* %2, align 4
  br label %67

23:                                               ; preds = %1
  %24 = load i32, i32* @ISO9660_MAGIC, align 4
  %25 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %26 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %28 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %31 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %34 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32** %32, i32*** %35, align 8
  %36 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %37 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %40 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %43 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32** %41, i32*** %44, align 8
  %45 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %46 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %48 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %50 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %51 = load i32, i32* @archive_read_format_iso9660_bid, align 4
  %52 = load i32, i32* @archive_read_format_iso9660_options, align 4
  %53 = load i32, i32* @archive_read_format_iso9660_read_header, align 4
  %54 = load i32, i32* @archive_read_format_iso9660_read_data, align 4
  %55 = load i32, i32* @archive_read_format_iso9660_read_data_skip, align 4
  %56 = load i32, i32* @archive_read_format_iso9660_cleanup, align 4
  %57 = call i32 @__archive_read_register_format(%struct.archive_read* %49, %struct.iso9660* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32* null, i32 %56, i32* null, i32* null)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %23
  %62 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %63 = call i32 @free(%struct.iso9660* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %23
  %66 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %61, %17
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @__archive_read_register_format(%struct.archive_read*, %struct.iso9660*, i8*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.iso9660*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
