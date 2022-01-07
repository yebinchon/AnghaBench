; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_archive_read_open_filenames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_archive_read_open_filenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_file_data = type { i64, i32, i32, i64, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FNT_STDIN = common dso_local global i32 0, align 4
@FNT_MBS = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@file_open = common dso_local global i32 0, align 4
@file_read = common dso_local global i32 0, align 4
@file_skip = common dso_local global i32 0, align 4
@file_close = common dso_local global i32 0, align 4
@file_switch = common dso_local global i32 0, align 4
@file_seek = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"No memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_open_filenames(%struct.archive* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.read_file_data*, align 8
  %9 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8**, i8*** %6, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i32 1
  store i8** %14, i8*** %6, align 8
  %15 = load i8*, i8** %13, align 8
  store i8* %15, i8** %9, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.archive*, %struct.archive** %5, align 8
  %18 = call i32 @archive_clear_error(%struct.archive* %17)
  br label %19

19:                                               ; preds = %91, %16
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = add i64 48, %25
  %27 = call i64 @calloc(i32 1, i64 %26)
  %28 = inttoptr i64 %27 to %struct.read_file_data*
  store %struct.read_file_data* %28, %struct.read_file_data** %8, align 8
  %29 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %30 = icmp eq %struct.read_file_data* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %114

32:                                               ; preds = %23
  %33 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %34 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strcpy(i32 %36, i8* %37)
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %41 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %43 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 8
  %44 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %45 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  %46 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %47 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %49 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %32
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %32
  %59 = load i32, i32* @FNT_STDIN, align 4
  %60 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %61 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @FNT_MBS, align 4
  %64 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %65 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.archive*, %struct.archive** %5, align 8
  %68 = load %struct.read_file_data*, %struct.read_file_data** %8, align 8
  %69 = call i64 @archive_read_append_callback_data(%struct.archive* %67, %struct.read_file_data* %68)
  %70 = load i64, i64* @ARCHIVE_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %73, i32* %4, align 4
  br label %119

74:                                               ; preds = %66
  %75 = load i8**, i8*** %6, align 8
  %76 = icmp eq i8** %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %93

78:                                               ; preds = %74
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %6, align 8
  %81 = load i8*, i8** %79, align 8
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %85, %82
  %92 = phi i1 [ false, %82 ], [ %90, %85 ]
  br i1 %92, label %19, label %93

93:                                               ; preds = %91, %77
  %94 = load %struct.archive*, %struct.archive** %5, align 8
  %95 = load i32, i32* @file_open, align 4
  %96 = call i32 @archive_read_set_open_callback(%struct.archive* %94, i32 %95)
  %97 = load %struct.archive*, %struct.archive** %5, align 8
  %98 = load i32, i32* @file_read, align 4
  %99 = call i32 @archive_read_set_read_callback(%struct.archive* %97, i32 %98)
  %100 = load %struct.archive*, %struct.archive** %5, align 8
  %101 = load i32, i32* @file_skip, align 4
  %102 = call i32 @archive_read_set_skip_callback(%struct.archive* %100, i32 %101)
  %103 = load %struct.archive*, %struct.archive** %5, align 8
  %104 = load i32, i32* @file_close, align 4
  %105 = call i32 @archive_read_set_close_callback(%struct.archive* %103, i32 %104)
  %106 = load %struct.archive*, %struct.archive** %5, align 8
  %107 = load i32, i32* @file_switch, align 4
  %108 = call i32 @archive_read_set_switch_callback(%struct.archive* %106, i32 %107)
  %109 = load %struct.archive*, %struct.archive** %5, align 8
  %110 = load i32, i32* @file_seek, align 4
  %111 = call i32 @archive_read_set_seek_callback(%struct.archive* %109, i32 %110)
  %112 = load %struct.archive*, %struct.archive** %5, align 8
  %113 = call i32 @archive_read_open1(%struct.archive* %112)
  store i32 %113, i32* %4, align 4
  br label %119

114:                                              ; preds = %31
  %115 = load %struct.archive*, %struct.archive** %5, align 8
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = call i32 @archive_set_error(%struct.archive* %115, i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %114, %93, %72
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @archive_clear_error(%struct.archive*) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @archive_read_append_callback_data(%struct.archive*, %struct.read_file_data*) #1

declare dso_local i32 @archive_read_set_open_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_read_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_skip_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_close_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_switch_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_seek_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_open1(%struct.archive*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
