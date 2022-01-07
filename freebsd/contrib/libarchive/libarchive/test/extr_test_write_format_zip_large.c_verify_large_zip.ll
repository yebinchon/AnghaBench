; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_verify_large_zip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_large.c_verify_large_zip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.fileblocks = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"zip:ignorecrc32\00", align 1
@memory_read_open = common dso_local global i32 0, align 4
@memory_read = common dso_local global i32 0, align 4
@memory_read_skip = common dso_local global i32 0, align 4
@memory_read_seek = common dso_local global i32 0, align 4
@test_sizes = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"file_%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"lastfile\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.fileblocks*)* @verify_large_zip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_large_zip(%struct.archive* %0, %struct.fileblocks* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.fileblocks*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.fileblocks* %1, %struct.fileblocks** %4, align 8
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = call i32 @archive_read_set_options(%struct.archive* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @assertEqualIntA(%struct.archive* %8, i32 %9, i32 %11)
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = load i32, i32* @memory_read_open, align 4
  %17 = call i32 @archive_read_set_open_callback(%struct.archive* %15, i32 %16)
  %18 = call i32 @assertEqualIntA(%struct.archive* %13, i32 %14, i32 %17)
  %19 = load %struct.archive*, %struct.archive** %3, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = load i32, i32* @memory_read, align 4
  %23 = call i32 @archive_read_set_read_callback(%struct.archive* %21, i32 %22)
  %24 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %23)
  %25 = load %struct.archive*, %struct.archive** %3, align 8
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  %27 = load %struct.archive*, %struct.archive** %3, align 8
  %28 = load i32, i32* @memory_read_skip, align 4
  %29 = call i32 @archive_read_set_skip_callback(%struct.archive* %27, i32 %28)
  %30 = call i32 @assertEqualIntA(%struct.archive* %25, i32 %26, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  %33 = load %struct.archive*, %struct.archive** %3, align 8
  %34 = load i32, i32* @memory_read_seek, align 4
  %35 = call i32 @archive_read_set_seek_callback(%struct.archive* %33, i32 %34)
  %36 = call i32 @assertEqualIntA(%struct.archive* %31, i32 %32, i32 %35)
  %37 = load %struct.archive*, %struct.archive** %3, align 8
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  %39 = load %struct.archive*, %struct.archive** %3, align 8
  %40 = load %struct.fileblocks*, %struct.fileblocks** %4, align 8
  %41 = call i32 @archive_read_set_callback_data(%struct.archive* %39, %struct.fileblocks* %40)
  %42 = call i32 @assertEqualIntA(%struct.archive* %37, i32 %38, i32 %41)
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %3, align 8
  %46 = call i32 @archive_read_open1(%struct.archive* %45)
  %47 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %44, i32 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %76, %2
  %49 = load i64*, i64** @test_sizes, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %48
  %56 = load %struct.archive*, %struct.archive** %3, align 8
  %57 = load i32, i32* @ARCHIVE_OK, align 4
  %58 = load %struct.archive*, %struct.archive** %3, align 8
  %59 = call i32 @archive_read_next_header(%struct.archive* %58, %struct.archive_entry** %6)
  %60 = call i32 @assertEqualIntA(%struct.archive* %56, i32 %57, i32 %59)
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %65 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %66 = call i32 @archive_entry_pathname(%struct.archive_entry* %65)
  %67 = call i32 @assertEqualString(i8* %64, i32 %66)
  %68 = load i64*, i64** @test_sizes, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %74 = call i32 @archive_entry_size(%struct.archive_entry* %73)
  %75 = call i32 @assertEqualInt(i64 %72, i32 %74)
  br label %76

76:                                               ; preds = %55
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %48

79:                                               ; preds = %48
  %80 = load %struct.archive*, %struct.archive** %3, align 8
  %81 = load %struct.archive*, %struct.archive** %3, align 8
  %82 = call i32 @archive_read_next_header(%struct.archive* %81, %struct.archive_entry** %6)
  %83 = call i32 @assertEqualIntA(%struct.archive* %80, i32 0, i32 %82)
  %84 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %85 = call i32 @archive_entry_pathname(%struct.archive_entry* %84)
  %86 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.archive*, %struct.archive** %3, align 8
  %88 = load i32, i32* @ARCHIVE_EOF, align 4
  %89 = load %struct.archive*, %struct.archive** %3, align 8
  %90 = call i32 @archive_read_next_header(%struct.archive* %89, %struct.archive_entry** %6)
  %91 = call i32 @assertEqualIntA(%struct.archive* %87, i32 %88, i32 %90)
  %92 = load %struct.archive*, %struct.archive** %3, align 8
  %93 = load i32, i32* @ARCHIVE_OK, align 4
  %94 = load %struct.archive*, %struct.archive** %3, align 8
  %95 = call i32 @archive_read_close(%struct.archive* %94)
  %96 = call i32 @assertEqualIntA(%struct.archive* %92, i32 %93, i32 %95)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_set_open_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_read_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_skip_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_seek_callback(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_set_callback_data(%struct.archive*, %struct.fileblocks*) #1

declare dso_local i32 @archive_read_open1(%struct.archive*) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i64, i32) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
