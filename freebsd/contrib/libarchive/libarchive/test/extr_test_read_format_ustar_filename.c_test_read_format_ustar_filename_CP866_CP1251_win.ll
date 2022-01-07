; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_ustar_filename.c_test_read_format_ustar_filename_CP866_CP1251_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_ustar_filename.c_test_read_format_ustar_filename_CP866_CP1251_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Russian_Russia\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Russian_Russia locale not available on this system.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\CF\D0\C8\C2\C5\D2\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"\EF\F0\E8\E2\E5\F2\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_read_format_ustar_filename_CP866_CP1251_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_ustar_filename_CP866_CP1251_win(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @LC_ALL, align 4
  %6 = call i32* @setlocale(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i32* null, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @skipping(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %92

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
  %25 = load %struct.archive*, %struct.archive** %3, align 8
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  %27 = load %struct.archive*, %struct.archive** %3, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @archive_read_open_filename(%struct.archive* %27, i8* %28, i32 10240)
  %30 = call i32 @assertEqualIntA(%struct.archive* %25, i32 %26, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  %33 = load %struct.archive*, %struct.archive** %3, align 8
  %34 = call i32 @archive_read_next_header(%struct.archive* %33, %struct.archive_entry** %4)
  %35 = call i32 @assertEqualIntA(%struct.archive* %31, i32 %32, i32 %34)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %37 = call i32 @archive_entry_pathname(%struct.archive_entry* %36)
  %38 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %40 = call i32 @archive_entry_size(%struct.archive_entry* %39)
  %41 = call i32 @assertEqualInt(i32 6, i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %43 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %42)
  %44 = call i32 @assertEqualInt(i32 %43, i32 0)
  %45 = load %struct.archive*, %struct.archive** %3, align 8
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %46)
  %48 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %49 = call i32 @assertEqualIntA(%struct.archive* %45, i32 %47, i32 %48)
  %50 = load %struct.archive*, %struct.archive** %3, align 8
  %51 = load i32, i32* @ARCHIVE_OK, align 4
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = call i32 @archive_read_next_header(%struct.archive* %52, %struct.archive_entry** %4)
  %54 = call i32 @assertEqualIntA(%struct.archive* %50, i32 %51, i32 %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %56 = call i32 @archive_entry_pathname(%struct.archive_entry* %55)
  %57 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %59 = call i32 @archive_entry_size(%struct.archive_entry* %58)
  %60 = call i32 @assertEqualInt(i32 6, i32 %59)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %62 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %61)
  %63 = call i32 @assertEqualInt(i32 %62, i32 0)
  %64 = load %struct.archive*, %struct.archive** %3, align 8
  %65 = load %struct.archive*, %struct.archive** %3, align 8
  %66 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %65)
  %67 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %68 = call i32 @assertEqualIntA(%struct.archive* %64, i32 %66, i32 %67)
  %69 = load %struct.archive*, %struct.archive** %3, align 8
  %70 = load i32, i32* @ARCHIVE_EOF, align 4
  %71 = load %struct.archive*, %struct.archive** %3, align 8
  %72 = call i32 @archive_read_next_header(%struct.archive* %71, %struct.archive_entry** %4)
  %73 = call i32 @assertEqualIntA(%struct.archive* %69, i32 %70, i32 %72)
  %74 = load %struct.archive*, %struct.archive** %3, align 8
  %75 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %76 = load %struct.archive*, %struct.archive** %3, align 8
  %77 = call i32 @archive_filter_code(%struct.archive* %76, i32 0)
  %78 = call i32 @assertEqualIntA(%struct.archive* %74, i32 %75, i32 %77)
  %79 = load %struct.archive*, %struct.archive** %3, align 8
  %80 = load i32, i32* @ARCHIVE_FORMAT_TAR_USTAR, align 4
  %81 = load %struct.archive*, %struct.archive** %3, align 8
  %82 = call i32 @archive_format(%struct.archive* %81)
  %83 = call i32 @assertEqualIntA(%struct.archive* %79, i32 %80, i32 %82)
  %84 = load i32, i32* @ARCHIVE_OK, align 4
  %85 = load %struct.archive*, %struct.archive** %3, align 8
  %86 = call i32 @archive_read_close(%struct.archive* %85)
  %87 = call i32 @assertEqualInt(i32 %84, i32 %86)
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  %89 = load %struct.archive*, %struct.archive** %3, align 8
  %90 = call i32 @archive_read_free(%struct.archive* %89)
  %91 = call i32 @assertEqualInt(i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

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
