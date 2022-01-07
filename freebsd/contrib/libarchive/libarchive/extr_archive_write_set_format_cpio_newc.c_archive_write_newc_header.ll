; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio_newc.c_archive_write_newc_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio_newc.c_archive_write_newc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Filetype required\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Pathname required\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Size required\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @archive_write_newc_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_newc_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %8 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %9 = call i64 @archive_entry_filetype(%struct.archive_entry* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 0
  %14 = call i32 @archive_set_error(i32* %13, i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %18 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %19 = call i32 @get_sconv(%struct.archive_write* %18)
  %20 = call i64 @archive_entry_pathname_l(%struct.archive_entry* %17, i8** %6, i64* %7, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load i32, i32* @errno, align 4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %28 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %27, i32 0, i32 0
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @archive_set_error(i32* %28, i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %22, %16
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %35, %32
  %45 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %46 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %45, i32 0, i32 0
  %47 = call i32 @archive_set_error(i32* %46, i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %38
  %50 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %51 = call i32* @archive_entry_hardlink(%struct.archive_entry* %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %55 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %59 = call i64 @archive_entry_size(%struct.archive_entry* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57, %53
  %62 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %63 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %62, i32 0, i32 0
  %64 = call i32 @archive_set_error(i32* %63, i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %57, %49
  %67 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %68 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %69 = call i32 @write_header(%struct.archive_write* %67, %struct.archive_entry* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %61, %44, %26, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @archive_entry_pathname_l(%struct.archive_entry*, i8**, i64*, i32) #1

declare dso_local i32 @get_sconv(%struct.archive_write*) #1

declare dso_local i32* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @write_header(%struct.archive_write*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
