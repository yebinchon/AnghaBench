; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_archive_read_open_filename_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_archive_read_open_filename_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_file_data = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.archive_string = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@FNT_STDIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"Failed to convert a wide-character filename to a multi-byte filename\00", align 1
@FNT_MBS = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@file_open = common dso_local global i32 0, align 4
@file_read = common dso_local global i32 0, align 4
@file_skip = common dso_local global i32 0, align 4
@file_close = common dso_local global i32 0, align 4
@file_switch = common dso_local global i32 0, align 4
@file_seek = common dso_local global i32 0, align 4
@FNT_WCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_open_filename_w(%struct.archive* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.read_file_data*, align 8
  %9 = alloca %struct.archive_string, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @wcslen(i32* %10)
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 32, %13
  %15 = trunc i64 %14 to i32
  %16 = call i64 @calloc(i32 1, i32 %15)
  %17 = inttoptr i64 %16 to %struct.read_file_data*
  store %struct.read_file_data* %17, %struct.read_file_data** %8, align 8
  %18 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %19 = icmp ne %struct.read_file_data* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.archive*, %struct.archive** %5, align 8
  %22 = load i64, i64* @ENOMEM, align 8
  %23 = call i32 @archive_set_error(%struct.archive* %21, i64 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %24, i32* %4, align 4
  br label %107

25:                                               ; preds = %3
  %26 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %27 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %30 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %25
  %39 = load i32, i32* @FNT_STDIN, align 4
  %40 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %41 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  br label %78

42:                                               ; preds = %33
  %43 = call i32 @archive_string_init(%struct.archive_string* %9)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @wcslen(i32* %45)
  %47 = call i64 @archive_string_append_from_wcs(%struct.archive_string* %9, i32* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @ENOMEM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.archive*, %struct.archive** %5, align 8
  %55 = load i64, i64* @errno, align 8
  %56 = call i32 @archive_set_error(%struct.archive* %54, i64 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %61

57:                                               ; preds = %49
  %58 = load %struct.archive*, %struct.archive** %5, align 8
  %59 = load i64, i64* @EINVAL, align 8
  %60 = call i32 @archive_set_error(%struct.archive* %58, i64 %59, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %53
  %62 = call i32 @archive_string_free(%struct.archive_string* %9)
  %63 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %64 = call i32 @free(%struct.read_file_data* %63)
  %65 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %65, i32* %4, align 4
  br label %107

66:                                               ; preds = %42
  %67 = load i32, i32* @FNT_MBS, align 4
  %68 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %69 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %71 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strcpy(i32 %73, i32 %75)
  %77 = call i32 @archive_string_free(%struct.archive_string* %9)
  br label %78

78:                                               ; preds = %66, %38
  %79 = load %struct.archive*, %struct.archive** %5, align 8
  %80 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %81 = call i64 @archive_read_append_callback_data(%struct.archive* %79, %struct.read_file_data* %80)
  %82 = load i64, i64* @ARCHIVE_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %85, i32* %4, align 4
  br label %107

86:                                               ; preds = %78
  %87 = load %struct.archive*, %struct.archive** %5, align 8
  %88 = load i32, i32* @file_open, align 4
  %89 = call i32 @archive_read_set_open_callback(%struct.archive* %87, i32 %88)
  %90 = load %struct.archive*, %struct.archive** %5, align 8
  %91 = load i32, i32* @file_read, align 4
  %92 = call i32 @archive_read_set_read_callback(%struct.archive* %90, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %5, align 8
  %94 = load i32, i32* @file_skip, align 4
  %95 = call i32 @archive_read_set_skip_callback(%struct.archive* %93, i32 %94)
  %96 = load %struct.archive*, %struct.archive** %5, align 8
  %97 = load i32, i32* @file_close, align 4
  %98 = call i32 @archive_read_set_close_callback(%struct.archive* %96, i32 %97)
  %99 = load %struct.archive*, %struct.archive** %5, align 8
  %100 = load i32, i32* @file_switch, align 4
  %101 = call i32 @archive_read_set_switch_callback(%struct.archive* %99, i32 %100)
  %102 = load %struct.archive*, %struct.archive** %5, align 8
  %103 = load i32, i32* @file_seek, align 4
  %104 = call i32 @archive_read_set_seek_callback(%struct.archive* %102, i32 %103)
  %105 = load %struct.archive*, %struct.archive** %5, align 8
  %106 = call i32 @archive_read_open1(%struct.archive* %105)
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %86, %84, %61, %20
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i64 @archive_string_append_from_wcs(%struct.archive_string*, i32*, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @free(%struct.read_file_data*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @archive_read_append_callback_data(%struct.archive*, %struct.read_file_data*) #1

declare dso_local i32 @archive_read_set_open_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_read_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_skip_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_close_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_switch_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_seek_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_open1(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
