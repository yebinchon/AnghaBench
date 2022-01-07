; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_empty_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_empty_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"test_read_format_7zip_empty_archive.7z\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_archive() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @extract_reference_file(i8* %4)
  %6 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %6, %struct.archive** %3, align 8
  %7 = icmp ne %struct.archive* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  %12 = load %struct.archive*, %struct.archive** %3, align 8
  %13 = call i32 @archive_read_support_filter_all(%struct.archive* %12)
  %14 = call i32 @assertEqualIntA(%struct.archive* %10, i32 %11, i32 %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_read_support_format_all(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %3, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = load %struct.archive*, %struct.archive** %3, align 8
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @archive_read_open_filename(%struct.archive* %22, i8* %23, i32 10240)
  %25 = call i32 @assertEqualIntA(%struct.archive* %20, i32 %21, i32 %24)
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = load i32, i32* @ARCHIVE_EOF, align 4
  %28 = load %struct.archive*, %struct.archive** %3, align 8
  %29 = call i32 @archive_read_next_header(%struct.archive* %28, %struct.archive_entry** %2)
  %30 = call i32 @assertEqualIntA(%struct.archive* %26, i32 %27, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = call i32 @archive_file_count(%struct.archive* %31)
  %33 = call i32 @assertEqualInt(i32 0, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %3, align 8
  %35 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = call i32 @archive_filter_code(%struct.archive* %36, i32 0)
  %38 = call i32 @assertEqualIntA(%struct.archive* %34, i32 %35, i32 %37)
  %39 = load %struct.archive*, %struct.archive** %3, align 8
  %40 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %41 = load %struct.archive*, %struct.archive** %3, align 8
  %42 = call i32 @archive_format(%struct.archive* %41)
  %43 = call i32 @assertEqualIntA(%struct.archive* %39, i32 %40, i32 %42)
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %3, align 8
  %46 = call i32 @archive_read_close(%struct.archive* %45)
  %47 = call i32 @assertEqualInt(i32 %44, i32 %46)
  %48 = load i32, i32* @ARCHIVE_OK, align 4
  %49 = load %struct.archive*, %struct.archive** %3, align 8
  %50 = call i32 @archive_read_free(%struct.archive* %49)
  %51 = call i32 @assertEqualInt(i32 %48, i32 %50)
  ret void
}

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
