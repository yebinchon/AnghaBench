; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_bcj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_bcj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"x86exe\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_bcj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bcj(i8* %0) #0 {
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
  %36 = or i32 %35, 292
  %37 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %38 = call i32 @archive_entry_mode(%struct.archive_entry* %37)
  %39 = and i32 %38, -74
  %40 = sext i32 %39 to i64
  %41 = call i32 @assertEqualInt(i32 %36, i64 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %43 = call i32 @archive_entry_pathname(%struct.archive_entry* %42)
  %44 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %46 = call i64 @archive_entry_mtime(%struct.archive_entry* %45)
  %47 = call i32 @assertEqualInt(i32 172802, i64 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %49 = call i64 @archive_entry_size(%struct.archive_entry* %48)
  %50 = call i32 @assertEqualInt(i32 27328, i64 %49)
  %51 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %52 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %51)
  %53 = call i32 @assertEqualInt(i32 %52, i64 0)
  %54 = load %struct.archive*, %struct.archive** %4, align 8
  %55 = load %struct.archive*, %struct.archive** %4, align 8
  %56 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %55)
  %57 = call i32 @assertEqualIntA(%struct.archive* %54, i32 %56, i32 0)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %59 = call i64 @archive_entry_size(%struct.archive_entry* %58)
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %86, %1
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  %64 = load i64, i64* %5, align 8
  %65 = icmp ult i64 %64, 1024
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i64, i64* %5, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.archive*, %struct.archive** %4, align 8
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %71 = call i64 @archive_read_data(%struct.archive* %69, i8* %70, i32 1024)
  store i64 %71, i64* %6, align 8
  %72 = call i32 @assertEqualInt(i32 %68, i64 %71)
  br label %78

73:                                               ; preds = %63
  %74 = load %struct.archive*, %struct.archive** %4, align 8
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %76 = call i64 @archive_read_data(%struct.archive* %74, i8* %75, i32 1024)
  store i64 %76, i64* %6, align 8
  %77 = call i32 @assertEqualInt(i32 1024, i64 %76)
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i64, i64* %6, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %5, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %5, align 8
  br label %86

85:                                               ; preds = %78
  br label %87

86:                                               ; preds = %81
  br label %60

87:                                               ; preds = %85, %60
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @assertEqualInt(i32 0, i64 %88)
  %90 = load %struct.archive*, %struct.archive** %4, align 8
  %91 = call i64 @archive_file_count(%struct.archive* %90)
  %92 = call i32 @assertEqualInt(i32 1, i64 %91)
  %93 = load %struct.archive*, %struct.archive** %4, align 8
  %94 = load i32, i32* @ARCHIVE_EOF, align 4
  %95 = load %struct.archive*, %struct.archive** %4, align 8
  %96 = call i32 @archive_read_next_header(%struct.archive* %95, %struct.archive_entry** %3)
  %97 = call i32 @assertEqualIntA(%struct.archive* %93, i32 %94, i32 %96)
  %98 = load %struct.archive*, %struct.archive** %4, align 8
  %99 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %100 = load %struct.archive*, %struct.archive** %4, align 8
  %101 = call i32 @archive_filter_code(%struct.archive* %100, i32 0)
  %102 = call i32 @assertEqualIntA(%struct.archive* %98, i32 %99, i32 %101)
  %103 = load %struct.archive*, %struct.archive** %4, align 8
  %104 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %105 = load %struct.archive*, %struct.archive** %4, align 8
  %106 = call i32 @archive_format(%struct.archive* %105)
  %107 = call i32 @assertEqualIntA(%struct.archive* %103, i32 %104, i32 %106)
  %108 = load i32, i32* @ARCHIVE_OK, align 4
  %109 = load %struct.archive*, %struct.archive** %4, align 8
  %110 = call i64 @archive_read_close(%struct.archive* %109)
  %111 = call i32 @assertEqualInt(i32 %108, i64 %110)
  %112 = load i32, i32* @ARCHIVE_OK, align 4
  %113 = load %struct.archive*, %struct.archive** %4, align 8
  %114 = call i64 @archive_read_free(%struct.archive* %113)
  %115 = call i32 @assertEqualInt(i32 %112, i64 %114)
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

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

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
