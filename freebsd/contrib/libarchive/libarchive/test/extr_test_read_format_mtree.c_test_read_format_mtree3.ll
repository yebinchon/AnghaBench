; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_mtree.c_test_read_format_mtree3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_mtree.c_test_read_format_mtree3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@test_read_format_mtree3.archive = internal global [79 x i8] c"#mtree\0Aa type=file contents=file\0Ab type=link link=a\0Ac type=file contents=file\0A\00", align 16
@.str = private unnamed_addr constant [7 x i8] c"mtree3\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"file contents\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"mtree:checkfs\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_format_mtree3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_mtree3() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = call i32 @assertMakeDir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 511)
  %4 = call i32 @assertChdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @assertMakeFile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %6 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %6, %struct.archive** %2, align 8
  %7 = icmp ne %struct.archive* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.archive*, %struct.archive** %2, align 8
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  %12 = load %struct.archive*, %struct.archive** %2, align 8
  %13 = call i32 @archive_read_support_filter_all(%struct.archive* %12)
  %14 = call i32 @assertEqualIntA(%struct.archive* %10, i32 %11, i32 %13)
  %15 = load %struct.archive*, %struct.archive** %2, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %2, align 8
  %18 = call i32 @archive_read_support_format_all(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = load %struct.archive*, %struct.archive** %2, align 8
  %23 = call i32 @archive_read_set_options(%struct.archive* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @assertEqualIntA(%struct.archive* %20, i32 %21, i32 %23)
  %25 = load %struct.archive*, %struct.archive** %2, align 8
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  %27 = load %struct.archive*, %struct.archive** %2, align 8
  %28 = call i32 @archive_read_open_memory(%struct.archive* %27, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @test_read_format_mtree3.archive, i64 0, i64 0), i32 79)
  %29 = call i32 @assertEqualIntA(%struct.archive* %25, i32 %26, i32 %28)
  %30 = load %struct.archive*, %struct.archive** %2, align 8
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %2, align 8
  %33 = call i32 @archive_read_next_header(%struct.archive* %32, %struct.archive_entry** %1)
  %34 = call i32 @assertEqualIntA(%struct.archive* %30, i32 %31, i32 %33)
  %35 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %36 = call i32 @archive_entry_pathname(%struct.archive_entry* %35)
  %37 = call i32 @assertEqualString(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %38 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %39 = call i32 @archive_entry_filetype(%struct.archive_entry* %38)
  %40 = load i32, i32* @AE_IFREG, align 4
  %41 = call i32 @assertEqualInt(i32 %39, i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %43 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %42)
  %44 = call i32 @assertEqualInt(i32 %43, i32 0)
  %45 = load %struct.archive*, %struct.archive** %2, align 8
  %46 = load %struct.archive*, %struct.archive** %2, align 8
  %47 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %46)
  %48 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %49 = call i32 @assertEqualIntA(%struct.archive* %45, i32 %47, i32 %48)
  %50 = load %struct.archive*, %struct.archive** %2, align 8
  %51 = load i32, i32* @ARCHIVE_OK, align 4
  %52 = load %struct.archive*, %struct.archive** %2, align 8
  %53 = call i32 @archive_read_next_header(%struct.archive* %52, %struct.archive_entry** %1)
  %54 = call i32 @assertEqualIntA(%struct.archive* %50, i32 %51, i32 %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %56 = call i32 @archive_entry_pathname(%struct.archive_entry* %55)
  %57 = call i32 @assertEqualString(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %59 = call i32 @archive_entry_filetype(%struct.archive_entry* %58)
  %60 = load i32, i32* @AE_IFLNK, align 4
  %61 = call i32 @assertEqualInt(i32 %59, i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %63 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %62)
  %64 = call i32 @assertEqualInt(i32 %63, i32 0)
  %65 = load %struct.archive*, %struct.archive** %2, align 8
  %66 = load %struct.archive*, %struct.archive** %2, align 8
  %67 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %66)
  %68 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %69 = call i32 @assertEqualIntA(%struct.archive* %65, i32 %67, i32 %68)
  %70 = load %struct.archive*, %struct.archive** %2, align 8
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = load %struct.archive*, %struct.archive** %2, align 8
  %73 = call i32 @archive_read_next_header(%struct.archive* %72, %struct.archive_entry** %1)
  %74 = call i32 @assertEqualIntA(%struct.archive* %70, i32 %71, i32 %73)
  %75 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %76 = call i32 @archive_entry_pathname(%struct.archive_entry* %75)
  %77 = call i32 @assertEqualString(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %79 = call i32 @archive_entry_filetype(%struct.archive_entry* %78)
  %80 = load i32, i32* @AE_IFREG, align 4
  %81 = call i32 @assertEqualInt(i32 %79, i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %83 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %82)
  %84 = call i32 @assertEqualInt(i32 %83, i32 0)
  %85 = load %struct.archive*, %struct.archive** %2, align 8
  %86 = load %struct.archive*, %struct.archive** %2, align 8
  %87 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %86)
  %88 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %89 = call i32 @assertEqualIntA(%struct.archive* %85, i32 %87, i32 %88)
  %90 = load %struct.archive*, %struct.archive** %2, align 8
  %91 = load i32, i32* @ARCHIVE_EOF, align 4
  %92 = load %struct.archive*, %struct.archive** %2, align 8
  %93 = call i32 @archive_read_next_header(%struct.archive* %92, %struct.archive_entry** %1)
  %94 = call i32 @assertEqualIntA(%struct.archive* %90, i32 %91, i32 %93)
  %95 = load %struct.archive*, %struct.archive** %2, align 8
  %96 = call i32 @archive_file_count(%struct.archive* %95)
  %97 = call i32 @assertEqualInt(i32 3, i32 %96)
  %98 = load i32, i32* @ARCHIVE_OK, align 4
  %99 = load %struct.archive*, %struct.archive** %2, align 8
  %100 = call i32 @archive_read_close(%struct.archive* %99)
  %101 = call i32 @assertEqualInt(i32 %98, i32 %100)
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  %103 = load %struct.archive*, %struct.archive** %2, align 8
  %104 = call i32 @archive_read_free(%struct.archive* %103)
  %105 = call i32 @assertEqualInt(i32 %102, i32 %104)
  %106 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertChdir(i8*) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i32, i8*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
