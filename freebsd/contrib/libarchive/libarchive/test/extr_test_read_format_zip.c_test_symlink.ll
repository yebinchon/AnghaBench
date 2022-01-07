; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_test_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_test_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"test_read_format_zip_symlink.zip\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_symlink() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @extract_reference_file(i8* %6)
  %8 = load i8*, i8** %1, align 8
  %9 = call i8* @slurpfile(i64* %3, i8* %8)
  store i8* %9, i8** %2, align 8
  %10 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %10, %struct.archive** %4, align 8
  %11 = icmp ne %struct.archive* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  %16 = load %struct.archive*, %struct.archive** %4, align 8
  %17 = call i32 @archive_read_support_format_zip(%struct.archive* %16)
  %18 = call i32 @assertEqualIntA(%struct.archive* %14, i32 %15, i32 %17)
  %19 = load %struct.archive*, %struct.archive** %4, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %4, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @read_open_memory_seek(%struct.archive* %21, i8* %22, i64 %23, i32 1)
  %25 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %24)
  %26 = load %struct.archive*, %struct.archive** %4, align 8
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = load %struct.archive*, %struct.archive** %4, align 8
  %29 = call i32 @archive_read_next_header(%struct.archive* %28, %struct.archive_entry** %5)
  %30 = call i32 @assertEqualIntA(%struct.archive* %26, i32 %27, i32 %29)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %32 = call i32 @archive_entry_pathname(%struct.archive_entry* %31)
  %33 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @AE_IFREG, align 4
  %35 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %36 = call i32 @archive_entry_filetype(%struct.archive_entry* %35)
  %37 = call i32 @assertEqualInt(i32 %34, i32 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %39 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %38)
  %40 = call i32 @assertEqualInt(i32 %39, i32 0)
  %41 = load %struct.archive*, %struct.archive** %4, align 8
  %42 = load %struct.archive*, %struct.archive** %4, align 8
  %43 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %42)
  %44 = call i32 @assertEqualIntA(%struct.archive* %41, i32 %43, i32 0)
  %45 = load %struct.archive*, %struct.archive** %4, align 8
  %46 = load i32, i32* @ARCHIVE_OK, align 4
  %47 = load %struct.archive*, %struct.archive** %4, align 8
  %48 = call i32 @archive_read_next_header(%struct.archive* %47, %struct.archive_entry** %5)
  %49 = call i32 @assertEqualIntA(%struct.archive* %45, i32 %46, i32 %48)
  %50 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %51 = call i32 @archive_entry_pathname(%struct.archive_entry* %50)
  %52 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @AE_IFLNK, align 4
  %54 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %55 = call i32 @archive_entry_filetype(%struct.archive_entry* %54)
  %56 = call i32 @assertEqualInt(i32 %53, i32 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %58 = call i32 @archive_entry_size(%struct.archive_entry* %57)
  %59 = call i32 @assertEqualInt(i32 0, i32 %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %61 = call i32 @archive_entry_symlink(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %64 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %63)
  %65 = call i32 @assertEqualInt(i32 %64, i32 0)
  %66 = load %struct.archive*, %struct.archive** %4, align 8
  %67 = load %struct.archive*, %struct.archive** %4, align 8
  %68 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %67)
  %69 = call i32 @assertEqualIntA(%struct.archive* %66, i32 %68, i32 0)
  %70 = load %struct.archive*, %struct.archive** %4, align 8
  %71 = load i32, i32* @ARCHIVE_EOF, align 4
  %72 = load %struct.archive*, %struct.archive** %4, align 8
  %73 = call i32 @archive_read_next_header(%struct.archive* %72, %struct.archive_entry** %5)
  %74 = call i32 @assertEqualIntA(%struct.archive* %70, i32 %71, i32 %73)
  %75 = load %struct.archive*, %struct.archive** %4, align 8
  %76 = load i32, i32* @ARCHIVE_OK, align 4
  %77 = load %struct.archive*, %struct.archive** %4, align 8
  %78 = call i32 @archive_read_close(%struct.archive* %77)
  %79 = call i32 @assertEqualIntA(%struct.archive* %75, i32 %76, i32 %78)
  %80 = load %struct.archive*, %struct.archive** %4, align 8
  %81 = load i32, i32* @ARCHIVE_OK, align 4
  %82 = load %struct.archive*, %struct.archive** %4, align 8
  %83 = call i32 @archive_read_free(%struct.archive* %82)
  %84 = call i32 @assertEqualIntA(%struct.archive* %80, i32 %81, i32 %83)
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @free(i8* %85)
  ret void
}

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i8* @slurpfile(i64*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_format_zip(%struct.archive*) #1

declare dso_local i32 @read_open_memory_seek(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
