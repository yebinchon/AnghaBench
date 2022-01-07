; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_symname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_symname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"test_read_format_7zip_symbolic_name.7z\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"hellohellohello\0Ahellohellohello\0A\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"symlinkfile\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_symname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_symname() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca [128 x i8], align 16
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @extract_reference_file(i8* %5)
  %7 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %7, %struct.archive** %3, align 8
  %8 = icmp ne %struct.archive* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.archive*, %struct.archive** %3, align 8
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = call i32 @archive_read_support_filter_all(%struct.archive* %13)
  %15 = call i32 @assertEqualIntA(%struct.archive* %11, i32 %12, i32 %14)
  %16 = load %struct.archive*, %struct.archive** %3, align 8
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = load %struct.archive*, %struct.archive** %3, align 8
  %19 = call i32 @archive_read_support_format_all(%struct.archive* %18)
  %20 = call i32 @assertEqualIntA(%struct.archive* %16, i32 %17, i32 %19)
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %3, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @archive_read_open_filename(%struct.archive* %23, i8* %24, i32 10240)
  %26 = call i32 @assertEqualIntA(%struct.archive* %21, i32 %22, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %3, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive*, %struct.archive** %3, align 8
  %30 = call i32 @archive_read_next_header(%struct.archive* %29, %struct.archive_entry** %2)
  %31 = call i32 @assertEqualIntA(%struct.archive* %27, i32 %28, i32 %30)
  %32 = load i32, i32* @AE_IFREG, align 4
  %33 = or i32 %32, 420
  %34 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %35 = call i32 @archive_entry_mode(%struct.archive_entry* %34)
  %36 = call i32 @assertEqualInt(i32 %33, i32 %35)
  %37 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %38 = call i32 @archive_entry_pathname(%struct.archive_entry* %37)
  %39 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %41 = call i32 @archive_entry_mtime(%struct.archive_entry* %40)
  %42 = call i32 @assertEqualInt(i32 86401, i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %44 = call i32 @archive_entry_size(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 32, i32 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %47 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualInt(i32 %47, i32 0)
  %49 = load %struct.archive*, %struct.archive** %3, align 8
  %50 = load %struct.archive*, %struct.archive** %3, align 8
  %51 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %50)
  %52 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %51, i32 0)
  %53 = load %struct.archive*, %struct.archive** %3, align 8
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %55 = call i32 @archive_read_data(%struct.archive* %53, i8* %54, i32 128)
  %56 = call i32 @assertEqualInt(i32 32, i32 %55)
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %58 = call i32 @assertEqualMem(i8* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 32)
  %59 = load %struct.archive*, %struct.archive** %3, align 8
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  %61 = load %struct.archive*, %struct.archive** %3, align 8
  %62 = call i32 @archive_read_next_header(%struct.archive* %61, %struct.archive_entry** %2)
  %63 = call i32 @assertEqualIntA(%struct.archive* %59, i32 %60, i32 %62)
  %64 = load i32, i32* @AE_IFLNK, align 4
  %65 = or i32 %64, 493
  %66 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %67 = call i32 @archive_entry_mode(%struct.archive_entry* %66)
  %68 = call i32 @assertEqualInt(i32 %65, i32 %67)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %70 = call i32 @archive_entry_pathname(%struct.archive_entry* %69)
  %71 = call i32 @assertEqualString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %73 = call i32 @archive_entry_symlink(%struct.archive_entry* %72)
  %74 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %76 = call i32 @archive_entry_mtime(%struct.archive_entry* %75)
  %77 = call i32 @assertEqualInt(i32 86401, i32 %76)
  %78 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %79 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %78)
  %80 = call i32 @assertEqualInt(i32 %79, i32 0)
  %81 = load %struct.archive*, %struct.archive** %3, align 8
  %82 = load %struct.archive*, %struct.archive** %3, align 8
  %83 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %82)
  %84 = call i32 @assertEqualIntA(%struct.archive* %81, i32 %83, i32 0)
  %85 = load %struct.archive*, %struct.archive** %3, align 8
  %86 = call i32 @archive_file_count(%struct.archive* %85)
  %87 = call i32 @assertEqualInt(i32 2, i32 %86)
  %88 = load %struct.archive*, %struct.archive** %3, align 8
  %89 = load i32, i32* @ARCHIVE_EOF, align 4
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = call i32 @archive_read_next_header(%struct.archive* %90, %struct.archive_entry** %2)
  %92 = call i32 @assertEqualIntA(%struct.archive* %88, i32 %89, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %3, align 8
  %94 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %95 = load %struct.archive*, %struct.archive** %3, align 8
  %96 = call i32 @archive_filter_code(%struct.archive* %95, i32 0)
  %97 = call i32 @assertEqualIntA(%struct.archive* %93, i32 %94, i32 %96)
  %98 = load %struct.archive*, %struct.archive** %3, align 8
  %99 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %100 = load %struct.archive*, %struct.archive** %3, align 8
  %101 = call i32 @archive_format(%struct.archive* %100)
  %102 = call i32 @assertEqualIntA(%struct.archive* %98, i32 %99, i32 %101)
  %103 = load i32, i32* @ARCHIVE_OK, align 4
  %104 = load %struct.archive*, %struct.archive** %3, align 8
  %105 = call i32 @archive_read_close(%struct.archive* %104)
  %106 = call i32 @assertEqualInt(i32 %103, i32 %105)
  %107 = load i32, i32* @ARCHIVE_OK, align 4
  %108 = load %struct.archive*, %struct.archive** %3, align 8
  %109 = call i32 @archive_read_free(%struct.archive* %108)
  %110 = call i32 @assertEqualInt(i32 %107, i32 %109)
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

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

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
