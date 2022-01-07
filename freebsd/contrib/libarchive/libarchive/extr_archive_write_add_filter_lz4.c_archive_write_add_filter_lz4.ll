; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lz4.c_archive_write_add_filter_lz4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lz4.c_archive_write_add_filter_lz4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write = type { i32 }
%struct.archive_write_filter = type { i8*, i32, i32*, i32*, i32*, i32*, %struct.private_data* }
%struct.private_data = type { i32, i32, i32, i32, i32, i32*, i64, i64, i64 }

@ARCHIVE_WRITE_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"archive_write_add_filter_lz4\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@archive_filter_lz4_options = common dso_local global i32 0, align 4
@archive_filter_lz4_close = common dso_local global i32 0, align 4
@archive_filter_lz4_free = common dso_local global i32 0, align 4
@archive_filter_lz4_open = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_LZ4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Using external lz4 program\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_add_filter_lz4(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_write_filter*, align 8
  %6 = alloca %struct.private_data*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = bitcast %struct.archive* %7 to %struct.archive_write*
  store %struct.archive_write* %8, %struct.archive_write** %4, align 8
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = call %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive* %9)
  store %struct.archive_write_filter* %10, %struct.archive_write_filter** %5, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 0
  %13 = load i32, i32* @ARCHIVE_WRITE_MAGIC, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %15 = call i32 @archive_check_magic(i32* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = call %struct.private_data* @calloc(i32 1, i32 56)
  store %struct.private_data* %16, %struct.private_data** %6, align 8
  %17 = load %struct.private_data*, %struct.private_data** %6, align 8
  %18 = icmp eq %struct.private_data* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @archive_set_error(i32* %21, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %24, i32* %2, align 4
  br label %81

25:                                               ; preds = %1
  %26 = load %struct.private_data*, %struct.private_data** %6, align 8
  %27 = getelementptr inbounds %struct.private_data, %struct.private_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.private_data*, %struct.private_data** %6, align 8
  %29 = getelementptr inbounds %struct.private_data, %struct.private_data* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.private_data*, %struct.private_data** %6, align 8
  %31 = getelementptr inbounds %struct.private_data, %struct.private_data* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.private_data*, %struct.private_data** %6, align 8
  %33 = getelementptr inbounds %struct.private_data, %struct.private_data* %32, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.private_data*, %struct.private_data** %6, align 8
  %35 = getelementptr inbounds %struct.private_data, %struct.private_data* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load %struct.private_data*, %struct.private_data** %6, align 8
  %37 = getelementptr inbounds %struct.private_data, %struct.private_data* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.private_data*, %struct.private_data** %6, align 8
  %39 = getelementptr inbounds %struct.private_data, %struct.private_data* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.private_data*, %struct.private_data** %6, align 8
  %41 = getelementptr inbounds %struct.private_data, %struct.private_data* %40, i32 0, i32 4
  store i32 7, i32* %41, align 8
  %42 = load %struct.private_data*, %struct.private_data** %6, align 8
  %43 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %44 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %43, i32 0, i32 6
  store %struct.private_data* %42, %struct.private_data** %44, align 8
  %45 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %46 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %45, i32 0, i32 5
  store i32* @archive_filter_lz4_options, i32** %46, align 8
  %47 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %48 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %47, i32 0, i32 4
  store i32* @archive_filter_lz4_close, i32** %48, align 8
  %49 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %50 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %49, i32 0, i32 3
  store i32* @archive_filter_lz4_free, i32** %50, align 8
  %51 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %52 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %51, i32 0, i32 2
  store i32* @archive_filter_lz4_open, i32** %52, align 8
  %53 = load i32, i32* @ARCHIVE_FILTER_LZ4, align 4
  %54 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %55 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %57 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %57, align 8
  %58 = call i32* @__archive_write_program_allocate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.private_data*, %struct.private_data** %6, align 8
  %60 = getelementptr inbounds %struct.private_data, %struct.private_data* %59, i32 0, i32 5
  store i32* %58, i32** %60, align 8
  %61 = load %struct.private_data*, %struct.private_data** %6, align 8
  %62 = getelementptr inbounds %struct.private_data, %struct.private_data* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %25
  %66 = load %struct.private_data*, %struct.private_data** %6, align 8
  %67 = call i32 @free(%struct.private_data* %66)
  %68 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %69 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %68, i32 0, i32 0
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @archive_set_error(i32* %69, i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %72, i32* %2, align 4
  br label %81

73:                                               ; preds = %25
  %74 = load %struct.private_data*, %struct.private_data** %6, align 8
  %75 = getelementptr inbounds %struct.private_data, %struct.private_data* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %77 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %76, i32 0, i32 0
  %78 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %79 = call i32 @archive_set_error(i32* %77, i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %65, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.archive_write_filter* @__archive_write_allocate_filter(%struct.archive*) #1

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

declare dso_local %struct.private_data* @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32* @__archive_write_program_allocate(i8*) #1

declare dso_local i32 @free(%struct.private_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
