; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_ppmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_ppmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"test_read_format_7zip_ppmd.7z\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ppmd_test.txt\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ppmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ppmd() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [1024 x i8], align 16
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @extract_reference_file(i8* %7)
  %9 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %9, %struct.archive** %3, align 8
  %10 = icmp ne %struct.archive* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = call i32 @archive_read_support_filter_all(%struct.archive* %15)
  %17 = call i32 @assertEqualIntA(%struct.archive* %13, i32 %14, i32 %16)
  %18 = load %struct.archive*, %struct.archive** %3, align 8
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  %20 = load %struct.archive*, %struct.archive** %3, align 8
  %21 = call i32 @archive_read_support_format_all(%struct.archive* %20)
  %22 = call i32 @assertEqualIntA(%struct.archive* %18, i32 %19, i32 %21)
  %23 = load %struct.archive*, %struct.archive** %3, align 8
  %24 = load i32, i32* @ARCHIVE_OK, align 4
  %25 = load %struct.archive*, %struct.archive** %3, align 8
  %26 = load i8*, i8** %1, align 8
  %27 = call i32 @archive_read_open_filename(%struct.archive* %25, i8* %26, i32 10240)
  %28 = call i32 @assertEqualIntA(%struct.archive* %23, i32 %24, i32 %27)
  %29 = load %struct.archive*, %struct.archive** %3, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = call i32 @archive_read_next_header(%struct.archive* %31, %struct.archive_entry** %2)
  %33 = call i32 @assertEqualIntA(%struct.archive* %29, i32 %30, i32 %32)
  %34 = load i32, i32* @AE_IFREG, align 4
  %35 = or i32 %34, 438
  %36 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %37 = call i64 @archive_entry_mode(%struct.archive_entry* %36)
  %38 = call i32 @assertEqualInt(i32 %35, i64 %37)
  %39 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %40 = call i32 @archive_entry_pathname(%struct.archive_entry* %39)
  %41 = call i32 @assertEqualString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %43 = call i64 @archive_entry_mtime(%struct.archive_entry* %42)
  %44 = call i32 @assertEqualInt(i32 1322464589, i64 %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %46 = call i64 @archive_entry_size(%struct.archive_entry* %45)
  %47 = call i32 @assertEqualInt(i32 102400, i64 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %49 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %48)
  %50 = call i32 @assertEqualInt(i32 %49, i64 0)
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %52)
  %54 = call i32 @assertEqualIntA(%struct.archive* %51, i32 %53, i32 0)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = call i64 @archive_entry_size(%struct.archive_entry* %55)
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %83, %0
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  %62 = icmp ult i64 %61, 1024
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i64, i64* %4, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.archive*, %struct.archive** %3, align 8
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %68 = call i64 @archive_read_data(%struct.archive* %66, i8* %67, i32 1024)
  store i64 %68, i64* %5, align 8
  %69 = call i32 @assertEqualInt(i32 %65, i64 %68)
  br label %75

70:                                               ; preds = %60
  %71 = load %struct.archive*, %struct.archive** %3, align 8
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %73 = call i64 @archive_read_data(%struct.archive* %71, i8* %72, i32 1024)
  store i64 %73, i64* %5, align 8
  %74 = call i32 @assertEqualInt(i32 1024, i64 %73)
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i64, i64* %5, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %4, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %4, align 8
  br label %83

82:                                               ; preds = %75
  br label %84

83:                                               ; preds = %78
  br label %57

84:                                               ; preds = %82, %57
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @assertEqualInt(i32 0, i64 %85)
  %87 = load %struct.archive*, %struct.archive** %3, align 8
  %88 = call i64 @archive_file_count(%struct.archive* %87)
  %89 = call i32 @assertEqualInt(i32 1, i64 %88)
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = load i32, i32* @ARCHIVE_EOF, align 4
  %92 = load %struct.archive*, %struct.archive** %3, align 8
  %93 = call i32 @archive_read_next_header(%struct.archive* %92, %struct.archive_entry** %2)
  %94 = call i32 @assertEqualIntA(%struct.archive* %90, i32 %91, i32 %93)
  %95 = load %struct.archive*, %struct.archive** %3, align 8
  %96 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = call i32 @archive_filter_code(%struct.archive* %97, i32 0)
  %99 = call i32 @assertEqualIntA(%struct.archive* %95, i32 %96, i32 %98)
  %100 = load %struct.archive*, %struct.archive** %3, align 8
  %101 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %102 = load %struct.archive*, %struct.archive** %3, align 8
  %103 = call i32 @archive_format(%struct.archive* %102)
  %104 = call i32 @assertEqualIntA(%struct.archive* %100, i32 %101, i32 %103)
  %105 = load i32, i32* @ARCHIVE_OK, align 4
  %106 = load %struct.archive*, %struct.archive** %3, align 8
  %107 = call i64 @archive_read_close(%struct.archive* %106)
  %108 = call i32 @assertEqualInt(i32 %105, i64 %107)
  %109 = load i32, i32* @ARCHIVE_OK, align 4
  %110 = load %struct.archive*, %struct.archive** %3, align 8
  %111 = call i64 @archive_read_free(%struct.archive* %110)
  %112 = call i32 @assertEqualInt(i32 %109, i64 %111)
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

declare dso_local i32 @assertEqualInt(i32, i64) #1

declare dso_local i64 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i64 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i64 @archive_read_close(%struct.archive*) #1

declare dso_local i64 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
