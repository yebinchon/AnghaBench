; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_raw_b64.c_test_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_raw_b64.c_test_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type opaque
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"begin-base64 644 -\0AMTIzNDU2NzgA\0A====\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.archive*)*)* @test_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_format(i32 (%struct.archive*)* %0) #0 {
  %2 = alloca i32 (%struct.archive*)*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 (%struct.archive*)* %0, i32 (%struct.archive*)** %2, align 8
  store i64 1000000, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i8* @malloc(i64 %9)
  store i8* %10, i8** %8, align 8
  %11 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %11, %struct.archive** %5, align 8
  %12 = icmp ne %struct.archive* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.archive*, %struct.archive** %5, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %2, align 8
  %18 = load %struct.archive*, %struct.archive** %5, align 8
  %19 = call i32 %17(%struct.archive* %18)
  %20 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %19)
  %21 = load %struct.archive*, %struct.archive** %5, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %5, align 8
  %24 = call i32 @archive_write_add_filter_b64encode(%struct.archive* %23)
  %25 = call i32 @assertEqualIntA(%struct.archive* %21, i32 %22, i32 %24)
  %26 = load %struct.archive*, %struct.archive** %5, align 8
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = load %struct.archive*, %struct.archive** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @archive_write_open_memory(%struct.archive* %28, i8* %29, i64 %30, i64* %6)
  %32 = call i32 @assertEqualIntA(%struct.archive* %26, i32 %27, i32 %31)
  %33 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %33, %struct.archive_entry** %4, align 8
  %34 = icmp ne %struct.archive_entry* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %38 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %40 = load i32, i32* @AE_IFREG, align 4
  %41 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %39, i32 %40)
  %42 = load %struct.archive*, %struct.archive** %5, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = load %struct.archive*, %struct.archive** %5, align 8
  %45 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %46 = call i32 @archive_write_header(%struct.archive* %44, %struct.archive_entry* %45)
  %47 = call i32 @assertEqualIntA(%struct.archive* %42, i32 %43, i32 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %49 = call i32 @archive_entry_free(%struct.archive_entry* %48)
  %50 = load %struct.archive*, %struct.archive** %5, align 8
  %51 = load %struct.archive*, %struct.archive** %5, align 8
  %52 = call i32 @archive_write_data(%struct.archive* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %53 = call i32 @assertEqualIntA(%struct.archive* %50, i32 9, i32 %52)
  %54 = load %struct.archive*, %struct.archive** %5, align 8
  %55 = load i32, i32* @ARCHIVE_OK, align 4
  %56 = load %struct.archive*, %struct.archive** %5, align 8
  %57 = call i32 @archive_write_close(%struct.archive* %56)
  %58 = call i32 @assertEqualIntA(%struct.archive* %54, i32 %55, i32 %57)
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  %60 = load %struct.archive*, %struct.archive** %5, align 8
  %61 = call i32 @archive_write_free(%struct.archive* %60)
  %62 = call i32 @assertEqualInt(i32 %59, i32 %61)
  %63 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %63, %struct.archive** %5, align 8
  %64 = icmp ne %struct.archive* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.archive*, %struct.archive** %5, align 8
  %68 = load i32, i32* @ARCHIVE_OK, align 4
  %69 = load %struct.archive*, %struct.archive** %5, align 8
  %70 = call i32 @archive_read_support_format_raw(%struct.archive* %69)
  %71 = call i32 @assertEqualIntA(%struct.archive* %67, i32 %68, i32 %70)
  %72 = load %struct.archive*, %struct.archive** %5, align 8
  %73 = load i32, i32* @ARCHIVE_OK, align 4
  %74 = load %struct.archive*, %struct.archive** %5, align 8
  %75 = call i32 @archive_read_support_filter_none(%struct.archive* %74)
  %76 = call i32 @assertEqualIntA(%struct.archive* %72, i32 %73, i32 %75)
  %77 = load %struct.archive*, %struct.archive** %5, align 8
  %78 = load i32, i32* @ARCHIVE_OK, align 4
  %79 = load %struct.archive*, %struct.archive** %5, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @archive_read_open_memory(%struct.archive* %79, i8* %80, i64 %81)
  %83 = call i32 @assertEqualIntA(%struct.archive* %77, i32 %78, i32 %82)
  %84 = load %struct.archive*, %struct.archive** %5, align 8
  %85 = load i32, i32* @ARCHIVE_OK, align 4
  %86 = load %struct.archive*, %struct.archive** %5, align 8
  %87 = call i32 @archive_read_next_header(%struct.archive* %86, %struct.archive_entry** %4)
  %88 = call i32 @assertEqualIntA(%struct.archive* %84, i32 %85, i32 %87)
  %89 = load %struct.archive*, %struct.archive** %5, align 8
  %90 = load %struct.archive*, %struct.archive** %5, align 8
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %92 = call i32 @archive_read_data(%struct.archive* %90, i8* %91, i32 64)
  %93 = call i32 @assertEqualIntA(%struct.archive* %89, i32 37, i32 %92)
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %95 = call i32 @assertEqualMem(i8* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 37)
  %96 = load %struct.archive*, %struct.archive** %5, align 8
  %97 = load i32, i32* @ARCHIVE_OK, align 4
  %98 = load %struct.archive*, %struct.archive** %5, align 8
  %99 = call i32 @archive_read_close(%struct.archive* %98)
  %100 = call i32 @assertEqualIntA(%struct.archive* %96, i32 %97, i32 %99)
  %101 = load i32, i32* @ARCHIVE_OK, align 4
  %102 = load %struct.archive*, %struct.archive** %5, align 8
  %103 = call i32 @archive_read_free(%struct.archive* %102)
  %104 = call i32 @assertEqualInt(i32 %101, i32 %103)
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @free(i8* %105)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_add_filter_b64encode(%struct.archive*) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_raw(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
