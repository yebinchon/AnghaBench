; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_ustar_filename.c_test_read_format_ustar_filename_CP866_KOI8R.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_ustar_filename.c_test_read_format_ustar_filename_CP866_KOI8R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Russian_Russia.20866\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ru_RU.KOI8-R\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"ru_RU.KOI8-R locale not available on this system.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"hdrcharset=CP866\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"This system cannot convert character-set from CP866 to KOI8-R.\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\F0\F2\E9\F7\E5\F4\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"\D0\D2\C9\D7\C5\D4\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_read_format_ustar_filename_CP866_KOI8R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_ustar_filename_CP866_KOI8R(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @LC_ALL, align 4
  %6 = call i32* @setlocale(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i32* null, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @LC_ALL, align 4
  %10 = call i32* @setlocale(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i32* null, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @skipping(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %104

14:                                               ; preds = %8, %1
  %15 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %15, %struct.archive** %3, align 8
  %16 = icmp ne %struct.archive* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.archive*, %struct.archive** %3, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = call i32 @archive_read_support_filter_all(%struct.archive* %21)
  %23 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %22)
  %24 = load %struct.archive*, %struct.archive** %3, align 8
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_read_support_format_all(%struct.archive* %26)
  %28 = call i32 @assertEqualIntA(%struct.archive* %24, i32 %25, i32 %27)
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %3, align 8
  %31 = call i32 @archive_read_set_options(%struct.archive* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %14
  %34 = call i32 @skipping(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  br label %99

35:                                               ; preds = %14
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  %38 = load %struct.archive*, %struct.archive** %3, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @archive_read_open_filename(%struct.archive* %38, i8* %39, i32 10240)
  %41 = call i32 @assertEqualIntA(%struct.archive* %36, i32 %37, i32 %40)
  %42 = load %struct.archive*, %struct.archive** %3, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = load %struct.archive*, %struct.archive** %3, align 8
  %45 = call i32 @archive_read_next_header(%struct.archive* %44, %struct.archive_entry** %4)
  %46 = call i32 @assertEqualIntA(%struct.archive* %42, i32 %43, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %48 = call i32 @archive_entry_pathname(%struct.archive_entry* %47)
  %49 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %51 = call i32 @archive_entry_size(%struct.archive_entry* %50)
  %52 = call i32 @assertEqualInt(i32 6, i32 %51)
  %53 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %54 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %53)
  %55 = call i32 @assertEqualInt(i32 %54, i32 0)
  %56 = load %struct.archive*, %struct.archive** %3, align 8
  %57 = load %struct.archive*, %struct.archive** %3, align 8
  %58 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %57)
  %59 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %60 = call i32 @assertEqualIntA(%struct.archive* %56, i32 %58, i32 %59)
  %61 = load %struct.archive*, %struct.archive** %3, align 8
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  %63 = load %struct.archive*, %struct.archive** %3, align 8
  %64 = call i32 @archive_read_next_header(%struct.archive* %63, %struct.archive_entry** %4)
  %65 = call i32 @assertEqualIntA(%struct.archive* %61, i32 %62, i32 %64)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %67 = call i32 @archive_entry_pathname(%struct.archive_entry* %66)
  %68 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %70 = call i32 @archive_entry_size(%struct.archive_entry* %69)
  %71 = call i32 @assertEqualInt(i32 6, i32 %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %73 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %72)
  %74 = call i32 @assertEqualInt(i32 %73, i32 0)
  %75 = load %struct.archive*, %struct.archive** %3, align 8
  %76 = load %struct.archive*, %struct.archive** %3, align 8
  %77 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %76)
  %78 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %79 = call i32 @assertEqualIntA(%struct.archive* %75, i32 %77, i32 %78)
  %80 = load %struct.archive*, %struct.archive** %3, align 8
  %81 = load i32, i32* @ARCHIVE_EOF, align 4
  %82 = load %struct.archive*, %struct.archive** %3, align 8
  %83 = call i32 @archive_read_next_header(%struct.archive* %82, %struct.archive_entry** %4)
  %84 = call i32 @assertEqualIntA(%struct.archive* %80, i32 %81, i32 %83)
  %85 = load %struct.archive*, %struct.archive** %3, align 8
  %86 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %87 = load %struct.archive*, %struct.archive** %3, align 8
  %88 = call i32 @archive_filter_code(%struct.archive* %87, i32 0)
  %89 = call i32 @assertEqualIntA(%struct.archive* %85, i32 %86, i32 %88)
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %92 = load %struct.archive*, %struct.archive** %3, align 8
  %93 = call i32 @archive_format(%struct.archive* %92)
  %94 = call i32 @assertEqualIntA(%struct.archive* %90, i32 %91, i32 %93)
  %95 = load i32, i32* @ARCHIVE_OK, align 4
  %96 = load %struct.archive*, %struct.archive** %3, align 8
  %97 = call i32 @archive_read_close(%struct.archive* %96)
  %98 = call i32 @assertEqualInt(i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %35, %33
  %100 = load i32, i32* @ARCHIVE_OK, align 4
  %101 = load %struct.archive*, %struct.archive** %3, align 8
  %102 = call i32 @archive_read_free(%struct.archive* %101)
  %103 = call i32 @assertEqualInt(i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %99, %12
  ret void
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

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
