; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_lha_filename.c_test_read_format_lha_filename_CP932_UTF8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_lha_filename.c_test_read_format_lha_filename_CP932_UTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"en_US.UTF-8 locale not available on this system.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hdrcharset=CP932\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"This system cannot convert character-set from CP932 to UTF-8.\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\E6\BC\A2\E5\AD\97.txt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\E8\A1\A8.txt\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_LHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_read_format_lha_filename_CP932_UTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_lha_filename_CP932_UTF8(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @LC_ALL, align 4
  %6 = call i32* @setlocale(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i32* null, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @skipping(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %100

10:                                               ; preds = %1
  %11 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %11, %struct.archive** %3, align 8
  %12 = icmp ne %struct.archive* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_read_support_format_all(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = call i32 @archive_read_set_options(%struct.archive* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %10
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_read_free(%struct.archive* %26)
  %28 = call i32 @assertEqualInt(i32 %25, i32 %27)
  %29 = call i32 @skipping(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %100

30:                                               ; preds = %10
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %3, align 8
  %33 = call i32 @archive_read_free(%struct.archive* %32)
  %34 = call i32 @assertEqualInt(i32 %31, i32 %33)
  %35 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %35, %struct.archive** %3, align 8
  %36 = icmp ne %struct.archive* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.archive*, %struct.archive** %3, align 8
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = load %struct.archive*, %struct.archive** %3, align 8
  %42 = call i32 @archive_read_support_filter_all(%struct.archive* %41)
  %43 = call i32 @assertEqualIntA(%struct.archive* %39, i32 %40, i32 %42)
  %44 = load %struct.archive*, %struct.archive** %3, align 8
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = call i32 @archive_read_support_format_all(%struct.archive* %46)
  %48 = call i32 @assertEqualIntA(%struct.archive* %44, i32 %45, i32 %47)
  %49 = load %struct.archive*, %struct.archive** %3, align 8
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @archive_read_open_filename(%struct.archive* %51, i8* %52, i32 10240)
  %54 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %50, i32 %53)
  %55 = load %struct.archive*, %struct.archive** %3, align 8
  %56 = load i32, i32* @ARCHIVE_OK, align 4
  %57 = load %struct.archive*, %struct.archive** %3, align 8
  %58 = call i32 @archive_read_next_header(%struct.archive* %57, %struct.archive_entry** %4)
  %59 = call i32 @assertEqualIntA(%struct.archive* %55, i32 %56, i32 %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %61 = call i32 @archive_entry_pathname(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %64 = call i32 @archive_entry_size(%struct.archive_entry* %63)
  %65 = call i32 @assertEqualInt(i32 8, i32 %64)
  %66 = load %struct.archive*, %struct.archive** %3, align 8
  %67 = load i32, i32* @ARCHIVE_OK, align 4
  %68 = load %struct.archive*, %struct.archive** %3, align 8
  %69 = call i32 @archive_read_next_header(%struct.archive* %68, %struct.archive_entry** %4)
  %70 = call i32 @assertEqualIntA(%struct.archive* %66, i32 %67, i32 %69)
  %71 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %72 = call i32 @archive_entry_pathname(%struct.archive_entry* %71)
  %73 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %75 = call i32 @archive_entry_size(%struct.archive_entry* %74)
  %76 = call i32 @assertEqualInt(i32 4, i32 %75)
  %77 = load %struct.archive*, %struct.archive** %3, align 8
  %78 = load i32, i32* @ARCHIVE_EOF, align 4
  %79 = load %struct.archive*, %struct.archive** %3, align 8
  %80 = call i32 @archive_read_next_header(%struct.archive* %79, %struct.archive_entry** %4)
  %81 = call i32 @assertEqualIntA(%struct.archive* %77, i32 %78, i32 %80)
  %82 = load %struct.archive*, %struct.archive** %3, align 8
  %83 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %84 = load %struct.archive*, %struct.archive** %3, align 8
  %85 = call i32 @archive_filter_code(%struct.archive* %84, i32 0)
  %86 = call i32 @assertEqualIntA(%struct.archive* %82, i32 %83, i32 %85)
  %87 = load %struct.archive*, %struct.archive** %3, align 8
  %88 = load i32, i32* @ARCHIVE_FORMAT_LHA, align 4
  %89 = load %struct.archive*, %struct.archive** %3, align 8
  %90 = call i32 @archive_format(%struct.archive* %89)
  %91 = call i32 @assertEqualIntA(%struct.archive* %87, i32 %88, i32 %90)
  %92 = load i32, i32* @ARCHIVE_OK, align 4
  %93 = load %struct.archive*, %struct.archive** %3, align 8
  %94 = call i32 @archive_read_close(%struct.archive* %93)
  %95 = call i32 @assertEqualInt(i32 %92, i32 %94)
  %96 = load i32, i32* @ARCHIVE_OK, align 4
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = call i32 @archive_read_free(%struct.archive* %97)
  %99 = call i32 @assertEqualInt(i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %30, %24, %8
  ret void
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
