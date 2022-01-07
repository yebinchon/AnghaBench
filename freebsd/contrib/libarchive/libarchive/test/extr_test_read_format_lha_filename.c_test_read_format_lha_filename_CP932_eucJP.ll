; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_lha_filename.c_test_read_format_lha_filename_CP932_eucJP.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_lha_filename.c_test_read_format_lha_filename_CP932_eucJP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ja_JP.eucJP\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"ja_JP.eucJP locale not available on this system.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hdrcharset=CP932\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"This system cannot convert character-set from CP932 to eucJP.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\B4\C1\BB\FA.txt\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"\C9\BD.txt\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_LHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_read_format_lha_filename_CP932_eucJP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_lha_filename_CP932_eucJP(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @LC_ALL, align 4
  %6 = call i32* @setlocale(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i32* null, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @skipping(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %116

10:                                               ; preds = %1
  %11 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %11, %struct.archive** %3, align 8
  %12 = icmp ne %struct.archive* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_read_support_format_all(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = call i32 @archive_read_set_options(%struct.archive* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %10
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_read_free(%struct.archive* %26)
  %28 = call i32 @assertEqualInt(i32 %25, i32 %27)
  %29 = call i32 @skipping(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %116

30:                                               ; preds = %10
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %3, align 8
  %33 = call i32 @archive_read_free(%struct.archive* %32)
  %34 = call i32 @assertEqualInt(i32 %31, i32 %33)
  %35 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %35, %struct.archive** %3, align 8
  %36 = icmp ne %struct.archive* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.archive*, %struct.archive** %3, align 8
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = load %struct.archive*, %struct.archive** %3, align 8
  %42 = call i32 @archive_read_support_filter_all(%struct.archive* %41)
  %43 = call i32 @assertEqualIntA(%struct.archive* %39, i32 %40, i32 %42)
  %44 = load %struct.archive*, %struct.archive** %3, align 8
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = call i32 @archive_read_support_format_all(%struct.archive* %46)
  %48 = call i32 @assertEqualIntA(%struct.archive* %44, i32 %45, i32 %47)
  %49 = load %struct.archive*, %struct.archive** %3, align 8
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @archive_read_open_filename(%struct.archive* %51, i8* %52, i32 10240)
  %54 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %50, i32 %53)
  %55 = load %struct.archive*, %struct.archive** %3, align 8
  %56 = load i32, i32* @ARCHIVE_OK, align 4
  %57 = load %struct.archive*, %struct.archive** %3, align 8
  %58 = call i32 @archive_read_next_header(%struct.archive* %57, %struct.archive_entry** %4)
  %59 = call i32 @assertEqualIntA(%struct.archive* %55, i32 %56, i32 %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %61 = call i32 @archive_entry_pathname(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %64 = call i32 @archive_entry_size(%struct.archive_entry* %63)
  %65 = call i32 @assertEqualInt(i32 8, i32 %64)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %67 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %66)
  %68 = call i32 @assertEqualInt(i32 %67, i32 0)
  %69 = load %struct.archive*, %struct.archive** %3, align 8
  %70 = load %struct.archive*, %struct.archive** %3, align 8
  %71 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %70)
  %72 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %73 = call i32 @assertEqualIntA(%struct.archive* %69, i32 %71, i32 %72)
  %74 = load %struct.archive*, %struct.archive** %3, align 8
  %75 = load i32, i32* @ARCHIVE_OK, align 4
  %76 = load %struct.archive*, %struct.archive** %3, align 8
  %77 = call i32 @archive_read_next_header(%struct.archive* %76, %struct.archive_entry** %4)
  %78 = call i32 @assertEqualIntA(%struct.archive* %74, i32 %75, i32 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %80 = call i32 @archive_entry_pathname(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %83 = call i32 @archive_entry_size(%struct.archive_entry* %82)
  %84 = call i32 @assertEqualInt(i32 4, i32 %83)
  %85 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %86 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %85)
  %87 = call i32 @assertEqualInt(i32 %86, i32 0)
  %88 = load %struct.archive*, %struct.archive** %3, align 8
  %89 = load %struct.archive*, %struct.archive** %3, align 8
  %90 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %89)
  %91 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %92 = call i32 @assertEqualIntA(%struct.archive* %88, i32 %90, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %3, align 8
  %94 = load i32, i32* @ARCHIVE_EOF, align 4
  %95 = load %struct.archive*, %struct.archive** %3, align 8
  %96 = call i32 @archive_read_next_header(%struct.archive* %95, %struct.archive_entry** %4)
  %97 = call i32 @assertEqualIntA(%struct.archive* %93, i32 %94, i32 %96)
  %98 = load %struct.archive*, %struct.archive** %3, align 8
  %99 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %100 = load %struct.archive*, %struct.archive** %3, align 8
  %101 = call i32 @archive_filter_code(%struct.archive* %100, i32 0)
  %102 = call i32 @assertEqualIntA(%struct.archive* %98, i32 %99, i32 %101)
  %103 = load %struct.archive*, %struct.archive** %3, align 8
  %104 = load i32, i32* @ARCHIVE_FORMAT_LHA, align 4
  %105 = load %struct.archive*, %struct.archive** %3, align 8
  %106 = call i32 @archive_format(%struct.archive* %105)
  %107 = call i32 @assertEqualIntA(%struct.archive* %103, i32 %104, i32 %106)
  %108 = load i32, i32* @ARCHIVE_OK, align 4
  %109 = load %struct.archive*, %struct.archive** %3, align 8
  %110 = call i32 @archive_read_close(%struct.archive* %109)
  %111 = call i32 @assertEqualInt(i32 %108, i32 %110)
  %112 = load i32, i32* @ARCHIVE_OK, align 4
  %113 = load %struct.archive*, %struct.archive** %3, align 8
  %114 = call i32 @archive_read_free(%struct.archive* %113)
  %115 = call i32 @assertEqualInt(i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %30, %24, %8
  ret void
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
