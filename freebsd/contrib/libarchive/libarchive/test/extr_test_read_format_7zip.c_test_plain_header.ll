; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_plain_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_plain_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"The libarchive distribution \00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_plain_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_plain_header(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca [128 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @extract_reference_file(i8* %6)
  %8 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %8, %struct.archive** %4, align 8
  %9 = icmp ne %struct.archive* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.archive*, %struct.archive** %4, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = call i32 @archive_read_support_filter_all(%struct.archive* %14)
  %16 = call i32 @assertEqualIntA(%struct.archive* %12, i32 %13, i32 %15)
  %17 = load %struct.archive*, %struct.archive** %4, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %4, align 8
  %20 = call i32 @archive_read_support_format_all(%struct.archive* %19)
  %21 = call i32 @assertEqualIntA(%struct.archive* %17, i32 %18, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %4, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %4, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @archive_read_open_filename(%struct.archive* %24, i8* %25, i32 10240)
  %27 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %26)
  %28 = load %struct.archive*, %struct.archive** %4, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %4, align 8
  %31 = call i32 @archive_read_next_header(%struct.archive* %30, %struct.archive_entry** %3)
  %32 = call i32 @assertEqualIntA(%struct.archive* %28, i32 %29, i32 %31)
  %33 = load i32, i32* @AE_IFREG, align 4
  %34 = or i32 %33, 420
  %35 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %36 = call i32 @archive_entry_mode(%struct.archive_entry* %35)
  %37 = call i32 @assertEqualInt(i32 %34, i32 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %39 = call i32 @archive_entry_pathname(%struct.archive_entry* %38)
  %40 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %42 = call i32 @archive_entry_mtime(%struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 1322058763, i32 %42)
  %44 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %45 = call i32 @archive_entry_size(%struct.archive_entry* %44)
  %46 = call i32 @assertEqualInt(i32 2844, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %48 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %47)
  %49 = call i32 @assertEqualInt(i32 %48, i32 0)
  %50 = load %struct.archive*, %struct.archive** %4, align 8
  %51 = load %struct.archive*, %struct.archive** %4, align 8
  %52 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %51)
  %53 = call i32 @assertEqualIntA(%struct.archive* %50, i32 %52, i32 0)
  %54 = load %struct.archive*, %struct.archive** %4, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %56 = call i32 @archive_read_data(%struct.archive* %54, i8* %55, i32 128)
  %57 = call i32 @assertEqualInt(i32 128, i32 %56)
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %59 = call i32 @assertEqualMem(i8* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 28)
  %60 = load %struct.archive*, %struct.archive** %4, align 8
  %61 = call i32 @archive_file_count(%struct.archive* %60)
  %62 = call i32 @assertEqualInt(i32 1, i32 %61)
  %63 = load %struct.archive*, %struct.archive** %4, align 8
  %64 = load i32, i32* @ARCHIVE_EOF, align 4
  %65 = load %struct.archive*, %struct.archive** %4, align 8
  %66 = call i32 @archive_read_next_header(%struct.archive* %65, %struct.archive_entry** %3)
  %67 = call i32 @assertEqualIntA(%struct.archive* %63, i32 %64, i32 %66)
  %68 = load %struct.archive*, %struct.archive** %4, align 8
  %69 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %70 = load %struct.archive*, %struct.archive** %4, align 8
  %71 = call i32 @archive_filter_code(%struct.archive* %70, i32 0)
  %72 = call i32 @assertEqualIntA(%struct.archive* %68, i32 %69, i32 %71)
  %73 = load %struct.archive*, %struct.archive** %4, align 8
  %74 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %75 = load %struct.archive*, %struct.archive** %4, align 8
  %76 = call i32 @archive_format(%struct.archive* %75)
  %77 = call i32 @assertEqualIntA(%struct.archive* %73, i32 %74, i32 %76)
  %78 = load i32, i32* @ARCHIVE_OK, align 4
  %79 = load %struct.archive*, %struct.archive** %4, align 8
  %80 = call i32 @archive_read_close(%struct.archive* %79)
  %81 = call i32 @assertEqualInt(i32 %78, i32 %80)
  %82 = load i32, i32* @ARCHIVE_OK, align 4
  %83 = load %struct.archive*, %struct.archive** %4, align 8
  %84 = call i32 @archive_read_free(%struct.archive* %83)
  %85 = call i32 @assertEqualInt(i32 %82, i32 %84)
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

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

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
