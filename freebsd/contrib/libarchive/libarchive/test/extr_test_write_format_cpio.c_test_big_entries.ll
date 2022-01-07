; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_cpio.c_test_big_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_cpio.c_test_big_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type opaque
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.archive*)*, i32, i32)* @test_big_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_big_entries(i32 (%struct.archive*)* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32 (%struct.archive*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.archive*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 (%struct.archive*)* %0, i32 (%struct.archive*)** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 1000000, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %11, align 8
  %14 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %14, %struct.archive** %8, align 8
  %15 = icmp ne %struct.archive* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %4, align 8
  %19 = load %struct.archive*, %struct.archive** %8, align 8
  %20 = call i32 %18(%struct.archive* %19)
  %21 = icmp eq i32 0, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assertA(i32 %22)
  %24 = load %struct.archive*, %struct.archive** %8, align 8
  %25 = call i64 @archive_write_add_filter_none(%struct.archive* %24)
  %26 = icmp eq i64 0, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assertA(i32 %27)
  %29 = load %struct.archive*, %struct.archive** %8, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @archive_write_open_memory(%struct.archive* %29, i8* %30, i64 %31, i64* %10)
  %33 = icmp eq i64 0, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assertA(i32 %34)
  %36 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %36, %struct.archive_entry** %7, align 8
  %37 = icmp ne %struct.archive_entry* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %41 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @archive_entry_set_size(%struct.archive_entry* %42, i32 %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %46 = load i32, i32* @AE_IFREG, align 4
  %47 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.archive*, %struct.archive** %8, align 8
  %50 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %51 = call i32 @archive_write_header(%struct.archive* %49, %struct.archive_entry* %50)
  %52 = call i32 @assertEqualInt(i32 %48, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ARCHIVE_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %3
  %57 = load %struct.archive*, %struct.archive** %8, align 8
  %58 = call i32* @archive_error_string(%struct.archive* %57)
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %62

62:                                               ; preds = %56, %3
  %63 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %64 = call i32 @archive_entry_free(%struct.archive_entry* %63)
  %65 = load %struct.archive*, %struct.archive** %8, align 8
  %66 = call i32 @archive_write_free(%struct.archive* %65)
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @free(i8* %67)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i64 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
