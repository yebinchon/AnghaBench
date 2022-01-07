; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_zip64.c_verify_zip_filesize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip_zip64.c_verify_zip_filesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"zip64\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @verify_zip_filesize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_zip_filesize(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %9, %struct.archive** %5, align 8
  %10 = icmp ne %struct.archive* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.archive*, %struct.archive** %5, align 8
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  %15 = load %struct.archive*, %struct.archive** %5, align 8
  %16 = call i32 @archive_write_set_format_zip(%struct.archive* %15)
  %17 = call i32 @assertEqualIntA(%struct.archive* %13, i32 %14, i32 %16)
  %18 = load %struct.archive*, %struct.archive** %5, align 8
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  %20 = load %struct.archive*, %struct.archive** %5, align 8
  %21 = call i32 @archive_write_set_format_option(%struct.archive* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %22 = call i32 @assertEqualIntA(%struct.archive* %18, i32 %19, i32 %21)
  %23 = load %struct.archive*, %struct.archive** %5, align 8
  %24 = load i32, i32* @ARCHIVE_OK, align 4
  %25 = load %struct.archive*, %struct.archive** %5, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %27 = call i32 @archive_write_open_memory(%struct.archive* %25, i8* %26, i32 256, i64* %8)
  %28 = call i32 @assertEqualIntA(%struct.archive* %23, i32 %24, i32 %27)
  %29 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %29, %struct.archive_entry** %6, align 8
  %30 = icmp ne %struct.archive_entry* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %34 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %36 = load i32, i32* @AE_IFREG, align 4
  %37 = or i32 %36, 420
  %38 = call i32 @archive_entry_set_mode(%struct.archive_entry* %35, i32 %37)
  %39 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @archive_entry_set_size(%struct.archive_entry* %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.archive*, %struct.archive** %5, align 8
  %44 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %45 = call i32 @archive_write_header(%struct.archive* %43, %struct.archive_entry* %44)
  %46 = call i32 @assertEqualInt(i32 %42, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %48 = call i32 @archive_entry_free(%struct.archive_entry* %47)
  %49 = load %struct.archive*, %struct.archive** %5, align 8
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %5, align 8
  %52 = call i32 @archive_write_free(%struct.archive* %51)
  %53 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %50, i32 %52)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_zip(%struct.archive*) #1

declare dso_local i32 @archive_write_set_format_option(%struct.archive*, i8*, i8*, i32*) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i32, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
