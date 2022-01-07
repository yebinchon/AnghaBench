; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_filename.c_open_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_open_filename.c_open_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.write_file_data = type { i32, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't convert '%s' to WCS\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't convert '%S' to MBS\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@file_open = common dso_local global i32 0, align 4
@file_write = common dso_local global i32 0, align 4
@file_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i32, i8*)* @open_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_filename(%struct.archive* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.write_file_data*, align 8
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = call i64 @calloc(i32 1, i32 8)
  %11 = inttoptr i64 %10 to %struct.write_file_data*
  store %struct.write_file_data* %11, %struct.write_file_data** %8, align 8
  %12 = load %struct.write_file_data*, %struct.write_file_data** %8, align 8
  %13 = icmp eq %struct.write_file_data* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.archive*, %struct.archive** %5, align 8
  %16 = load i64, i64* @ENOMEM, align 8
  %17 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %15, i64 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %18, i32* %4, align 4
  br label %70

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.write_file_data*, %struct.write_file_data** %8, align 8
  %24 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %23, i32 0, i32 1
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @archive_mstring_copy_mbs(i32* %24, i8* %25)
  store i32 %26, i32* %9, align 4
  br label %32

27:                                               ; preds = %19
  %28 = load %struct.write_file_data*, %struct.write_file_data** %8, align 8
  %29 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %28, i32 0, i32 1
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @archive_mstring_copy_wcs(i32* %29, i8* %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOMEM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.archive*, %struct.archive** %5, align 8
  %41 = load i64, i64* @ENOMEM, align 8
  %42 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %40, i64 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %43, i32* %4, align 4
  br label %70

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.archive*, %struct.archive** %5, align 8
  %49 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %50 = sext i32 %49 to i64
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %48, i64 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %59

53:                                               ; preds = %44
  %54 = load %struct.archive*, %struct.archive** %5, align 8
  %55 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %56 = sext i32 %55 to i64
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %54, i64 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %60, i32* %4, align 4
  br label %70

61:                                               ; preds = %32
  %62 = load %struct.write_file_data*, %struct.write_file_data** %8, align 8
  %63 = getelementptr inbounds %struct.write_file_data, %struct.write_file_data* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 4
  %64 = load %struct.archive*, %struct.archive** %5, align 8
  %65 = load %struct.write_file_data*, %struct.write_file_data** %8, align 8
  %66 = load i32, i32* @file_open, align 4
  %67 = load i32, i32* @file_write, align 4
  %68 = load i32, i32* @file_close, align 4
  %69 = call i32 @archive_write_open(%struct.archive* %64, %struct.write_file_data* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %61, %59, %39, %14
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*, ...) #1

declare dso_local i32 @archive_mstring_copy_mbs(i32*, i8*) #1

declare dso_local i32 @archive_mstring_copy_wcs(i32*, i8*) #1

declare dso_local i32 @archive_write_open(%struct.archive*, %struct.write_file_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
