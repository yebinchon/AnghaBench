; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_ustar_filename.c_test_read_format_ustar_filename_eucJP_UTF8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_ustar_filename.c_test_read_format_ustar_filename_eucJP_UTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"en_US.UTF-8 locale not available on this system.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hdrcharset=eucJP\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"This system cannot convert character-set from eucJP to UTF-8.\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\E6\BC\A2\E5\AD\97.txt\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"\E8\A1\A8.txt\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_read_format_ustar_filename_eucJP_UTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_ustar_filename_eucJP_UTF8(i8* %0) #0 {
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
  br label %100

10:                                               ; preds = %1
  %11 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %11, %struct.archive** %3, align 8
  %12 = icmp ne %struct.archive* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_read_support_filter_all(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %3, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = load %struct.archive*, %struct.archive** %3, align 8
  %23 = call i32 @archive_read_support_format_all(%struct.archive* %22)
  %24 = call i32 @assertEqualIntA(%struct.archive* %20, i32 %21, i32 %23)
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_read_set_options(%struct.archive* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %10
  %30 = call i32 @skipping(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  br label %95

31:                                               ; preds = %10
  %32 = load %struct.archive*, %struct.archive** %3, align 8
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = load %struct.archive*, %struct.archive** %3, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @archive_read_open_filename(%struct.archive* %34, i8* %35, i32 10240)
  %37 = call i32 @assertEqualIntA(%struct.archive* %32, i32 %33, i32 %36)
  %38 = load %struct.archive*, %struct.archive** %3, align 8
  %39 = load i32, i32* @ARCHIVE_OK, align 4
  %40 = load %struct.archive*, %struct.archive** %3, align 8
  %41 = call i32 @archive_read_next_header(%struct.archive* %40, %struct.archive_entry** %4)
  %42 = call i32 @assertEqualIntA(%struct.archive* %38, i32 %39, i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %44 = call i32 @archive_entry_pathname(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %47 = call i32 @archive_entry_size(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualInt(i32 8, i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %50 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %49)
  %51 = call i32 @assertEqualInt(i32 %50, i32 0)
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = load %struct.archive*, %struct.archive** %3, align 8
  %54 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %53)
  %55 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %56 = call i32 @assertEqualIntA(%struct.archive* %52, i32 %54, i32 %55)
  %57 = load %struct.archive*, %struct.archive** %3, align 8
  %58 = load i32, i32* @ARCHIVE_OK, align 4
  %59 = load %struct.archive*, %struct.archive** %3, align 8
  %60 = call i32 @archive_read_next_header(%struct.archive* %59, %struct.archive_entry** %4)
  %61 = call i32 @assertEqualIntA(%struct.archive* %57, i32 %58, i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %63 = call i32 @archive_entry_pathname(%struct.archive_entry* %62)
  %64 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %66 = call i32 @archive_entry_size(%struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 4, i32 %66)
  %68 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %69 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 %69, i32 0)
  %71 = load %struct.archive*, %struct.archive** %3, align 8
  %72 = load %struct.archive*, %struct.archive** %3, align 8
  %73 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %72)
  %74 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %75 = call i32 @assertEqualIntA(%struct.archive* %71, i32 %73, i32 %74)
  %76 = load %struct.archive*, %struct.archive** %3, align 8
  %77 = load i32, i32* @ARCHIVE_EOF, align 4
  %78 = load %struct.archive*, %struct.archive** %3, align 8
  %79 = call i32 @archive_read_next_header(%struct.archive* %78, %struct.archive_entry** %4)
  %80 = call i32 @assertEqualIntA(%struct.archive* %76, i32 %77, i32 %79)
  %81 = load %struct.archive*, %struct.archive** %3, align 8
  %82 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %83 = load %struct.archive*, %struct.archive** %3, align 8
  %84 = call i32 @archive_filter_code(%struct.archive* %83, i32 0)
  %85 = call i32 @assertEqualIntA(%struct.archive* %81, i32 %82, i32 %84)
  %86 = load %struct.archive*, %struct.archive** %3, align 8
  %87 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %88 = load %struct.archive*, %struct.archive** %3, align 8
  %89 = call i32 @archive_format(%struct.archive* %88)
  %90 = call i32 @assertEqualIntA(%struct.archive* %86, i32 %87, i32 %89)
  %91 = load i32, i32* @ARCHIVE_OK, align 4
  %92 = load %struct.archive*, %struct.archive** %3, align 8
  %93 = call i32 @archive_read_close(%struct.archive* %92)
  %94 = call i32 @assertEqualInt(i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %31, %29
  %96 = load i32, i32* @ARCHIVE_OK, align 4
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = call i32 @archive_read_free(%struct.archive* %97)
  %99 = call i32 @assertEqualInt(i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %8
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
