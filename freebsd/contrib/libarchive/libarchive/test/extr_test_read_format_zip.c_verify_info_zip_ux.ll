; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_verify_info_zip_ux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_verify_info_zip_ux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"zip reader should read Info-ZIP New Unix Extra Field\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"archive_read_data() returns number of bytes read\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"hello\0Ahello\0Ahello\0A\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Unsupported ZIP compression method (8: deflation)\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"the archive file has just one file\00", align 1
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32)* @verify_info_zip_ux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_info_zip_ux(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca [128 x i8*], align 16
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.archive*, %struct.archive** %3, align 8
  %8 = load i32, i32* @ARCHIVE_OK, align 4
  %9 = load %struct.archive*, %struct.archive** %3, align 8
  %10 = call i32 @archive_read_next_header(%struct.archive* %9, %struct.archive_entry** %5)
  %11 = call i32 @assertEqualIntA(%struct.archive* %7, i32 %8, i32 %10)
  %12 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %13 = call i8* @archive_entry_pathname(%struct.archive_entry* %12)
  %14 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %16 = call i32 @archive_entry_mtime(%struct.archive_entry* %15)
  %17 = call i32 @assertEqualInt(i32 1300668680, i32 %16)
  %18 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %19 = call i32 @archive_entry_size(%struct.archive_entry* %18)
  %20 = call i32 @assertEqualInt(i32 18, i32 %19)
  %21 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %22 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %21)
  %23 = call i32 @assertEqualInt(i32 %22, i32 0)
  %24 = load %struct.archive*, %struct.archive** %3, align 8
  %25 = load %struct.archive*, %struct.archive** %3, align 8
  %26 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %25)
  %27 = call i32 @assertEqualIntA(%struct.archive* %24, i32 %26, i32 0)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @AE_IFREG, align 4
  %32 = or i32 %31, 420
  %33 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %34 = call i32 @archive_entry_mode(%struct.archive_entry* %33)
  %35 = call i32 @assertEqualInt(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %30, %2
  %37 = call i32 @failure(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %39 = call i32 @archive_entry_uid(%struct.archive_entry* %38)
  %40 = call i32 @assertEqualInt(i32 1001, i32 %39)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %42 = call i32 @archive_entry_gid(%struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 1001, i32 %42)
  %44 = call i32* (...) @archive_zlib_version()
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = call i32 @failure(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.archive*, %struct.archive** %3, align 8
  %49 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %50 = call i32 @archive_read_data(%struct.archive* %48, i8** %49, i32 19)
  %51 = call i32 @assertEqualInt(i32 18, i32 %50)
  %52 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %53 = call i32 @assertEqualMem(i8** %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 18)
  br label %68

54:                                               ; preds = %36
  %55 = load i32, i32* @ARCHIVE_FAILED, align 4
  %56 = load %struct.archive*, %struct.archive** %3, align 8
  %57 = getelementptr inbounds [128 x i8*], [128 x i8*]* %6, i64 0, i64 0
  %58 = call i32 @archive_read_data(%struct.archive* %56, i8** %57, i32 19)
  %59 = call i32 @assertEqualInt(i32 %55, i32 %58)
  %60 = load %struct.archive*, %struct.archive** %3, align 8
  %61 = call i8* @archive_error_string(%struct.archive* %60)
  %62 = call i32 @assertEqualString(i8* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.archive*, %struct.archive** %3, align 8
  %64 = call i64 @archive_errno(%struct.archive* %63)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %54, %46
  %69 = load %struct.archive*, %struct.archive** %3, align 8
  %70 = load i32, i32* @ARCHIVE_EOF, align 4
  %71 = load %struct.archive*, %struct.archive** %3, align 8
  %72 = call i32 @archive_read_next_header(%struct.archive* %71, %struct.archive_entry** %5)
  %73 = call i32 @assertEqualIntA(%struct.archive* %69, i32 %70, i32 %72)
  %74 = call i32 @failure(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.archive*, %struct.archive** %3, align 8
  %76 = call i32 @archive_file_count(%struct.archive* %75)
  %77 = call i32 @assertEqualInt(i32 1, i32 %76)
  %78 = load %struct.archive*, %struct.archive** %3, align 8
  %79 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %80 = load %struct.archive*, %struct.archive** %3, align 8
  %81 = call i32 @archive_filter_code(%struct.archive* %80, i32 0)
  %82 = call i32 @assertEqualIntA(%struct.archive* %78, i32 %79, i32 %81)
  %83 = load %struct.archive*, %struct.archive** %3, align 8
  %84 = load i32, i32* @ARCHIVE_FORMAT_ZIP, align 4
  %85 = load %struct.archive*, %struct.archive** %3, align 8
  %86 = call i32 @archive_format(%struct.archive* %85)
  %87 = call i32 @assertEqualIntA(%struct.archive* %83, i32 %84, i32 %86)
  %88 = load %struct.archive*, %struct.archive** %3, align 8
  %89 = load i32, i32* @ARCHIVE_OK, align 4
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = call i32 @archive_read_close(%struct.archive* %90)
  %92 = call i32 @assertEqualIntA(%struct.archive* %88, i32 %89, i32 %91)
  %93 = load i32, i32* @ARCHIVE_OK, align 4
  %94 = load %struct.archive*, %struct.archive** %3, align 8
  %95 = call i32 @archive_read_free(%struct.archive* %94)
  %96 = call i32 @assertEqualInt(i32 %93, i32 %95)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32* @archive_zlib_version(...) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8**, i32) #1

declare dso_local i32 @assertEqualMem(i8**, i8*, i32) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @archive_errno(%struct.archive*) #1

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
