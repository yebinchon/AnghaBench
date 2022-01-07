; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_delta_lzma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_delta_lzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_delta_lzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delta_lzma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1024 x i8], align 16
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @extract_reference_file(i8* %8)
  %10 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %10, %struct.archive** %4, align 8
  %11 = icmp ne %struct.archive* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  %16 = load %struct.archive*, %struct.archive** %4, align 8
  %17 = call i32 @archive_read_support_filter_all(%struct.archive* %16)
  %18 = call i32 @assertEqualIntA(%struct.archive* %14, i32 %15, i32 %17)
  %19 = load %struct.archive*, %struct.archive** %4, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %4, align 8
  %22 = call i32 @archive_read_support_format_all(%struct.archive* %21)
  %23 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %22)
  %24 = load %struct.archive*, %struct.archive** %4, align 8
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive*, %struct.archive** %4, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @archive_read_open_filename(%struct.archive* %26, i8* %27, i32 10240)
  %29 = call i32 @assertEqualIntA(%struct.archive* %24, i32 %25, i32 %28)
  %30 = load %struct.archive*, %struct.archive** %4, align 8
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %4, align 8
  %33 = call i32 @archive_read_next_header(%struct.archive* %32, %struct.archive_entry** %3)
  %34 = call i32 @assertEqualIntA(%struct.archive* %30, i32 %31, i32 %33)
  %35 = load i32, i32* @AE_IFREG, align 4
  %36 = or i32 %35, 420
  %37 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %38 = call i64 @archive_entry_mode(%struct.archive_entry* %37)
  %39 = call i32 @assertEqualInt(i32 %36, i64 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %41 = call i32 @archive_entry_pathname(%struct.archive_entry* %40)
  %42 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %44 = call i64 @archive_entry_mtime(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 172802, i64 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %47 = call i64 @archive_entry_size(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualInt(i32 27627, i64 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %50 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %49)
  %51 = call i32 @assertEqualInt(i32 %50, i64 0)
  %52 = load %struct.archive*, %struct.archive** %4, align 8
  %53 = load %struct.archive*, %struct.archive** %4, align 8
  %54 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %53)
  %55 = call i32 @assertEqualIntA(%struct.archive* %52, i32 %54, i32 0)
  %56 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %57 = call i64 @archive_entry_size(%struct.archive_entry* %56)
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %84, %1
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = icmp ult i64 %62, 1024
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i64, i64* %5, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.archive*, %struct.archive** %4, align 8
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %69 = call i64 @archive_read_data(%struct.archive* %67, i8* %68, i32 1024)
  store i64 %69, i64* %6, align 8
  %70 = call i32 @assertEqualInt(i32 %66, i64 %69)
  br label %76

71:                                               ; preds = %61
  %72 = load %struct.archive*, %struct.archive** %4, align 8
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %74 = call i64 @archive_read_data(%struct.archive* %72, i8* %73, i32 1024)
  store i64 %74, i64* %6, align 8
  %75 = call i32 @assertEqualInt(i32 1024, i64 %74)
  br label %76

76:                                               ; preds = %71, %64
  %77 = load i64, i64* %6, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %5, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %5, align 8
  br label %84

83:                                               ; preds = %76
  br label %85

84:                                               ; preds = %79
  br label %58

85:                                               ; preds = %83, %58
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @assertEqualInt(i32 0, i64 %86)
  %88 = load %struct.archive*, %struct.archive** %4, align 8
  %89 = call i64 @archive_file_count(%struct.archive* %88)
  %90 = call i32 @assertEqualInt(i32 1, i64 %89)
  %91 = load %struct.archive*, %struct.archive** %4, align 8
  %92 = load i32, i32* @ARCHIVE_EOF, align 4
  %93 = load %struct.archive*, %struct.archive** %4, align 8
  %94 = call i32 @archive_read_next_header(%struct.archive* %93, %struct.archive_entry** %3)
  %95 = call i32 @assertEqualIntA(%struct.archive* %91, i32 %92, i32 %94)
  %96 = load %struct.archive*, %struct.archive** %4, align 8
  %97 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %98 = load %struct.archive*, %struct.archive** %4, align 8
  %99 = call i32 @archive_filter_code(%struct.archive* %98, i32 0)
  %100 = call i32 @assertEqualIntA(%struct.archive* %96, i32 %97, i32 %99)
  %101 = load %struct.archive*, %struct.archive** %4, align 8
  %102 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %103 = load %struct.archive*, %struct.archive** %4, align 8
  %104 = call i32 @archive_format(%struct.archive* %103)
  %105 = call i32 @assertEqualIntA(%struct.archive* %101, i32 %102, i32 %104)
  %106 = load i32, i32* @ARCHIVE_OK, align 4
  %107 = load %struct.archive*, %struct.archive** %4, align 8
  %108 = call i64 @archive_read_close(%struct.archive* %107)
  %109 = call i32 @assertEqualInt(i32 %106, i64 %108)
  %110 = load i32, i32* @ARCHIVE_OK, align 4
  %111 = load %struct.archive*, %struct.archive** %4, align 8
  %112 = call i64 @archive_read_free(%struct.archive* %111)
  %113 = call i32 @assertEqualInt(i32 %110, i64 %112)
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
