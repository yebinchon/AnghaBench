; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_verify_extract_length_at_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_verify_extract_length_at_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"hello.txt\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unsupported ZIP compression method (8: deflation)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32)* @verify_extract_length_at_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_extract_length_at_end(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = load i32, i32* @ARCHIVE_OK, align 4
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = call i32 @archive_read_next_header(%struct.archive* %8, %struct.archive_entry** %5)
  %10 = call i32 @assertEqualIntA(%struct.archive* %6, i32 %7, i32 %9)
  %11 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %12 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %11)
  %13 = call i32 @assertEqualInt(i32 %12, i32 0)
  %14 = load %struct.archive*, %struct.archive** %3, align 8
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %15)
  %17 = call i32 @assertEqualIntA(%struct.archive* %14, i32 %16, i32 0)
  %18 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %19 = call i8* @archive_entry_pathname(%struct.archive_entry* %18)
  %20 = call i32 @assertEqualString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load i32, i32* @AE_IFREG, align 4
  %25 = or i32 %24, 420
  %26 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %27 = call i32 @archive_entry_mode(%struct.archive_entry* %26)
  %28 = call i32 @assertEqualInt(i32 %25, i32 %27)
  %29 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %30 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %33 = call i32 @archive_entry_size(%struct.archive_entry* %32)
  %34 = call i32 @assertEqualInt(i32 6, i32 %33)
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %37 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %43 = call i32 @archive_entry_size(%struct.archive_entry* %42)
  %44 = call i32 @assertEqualInt(i32 0, i32 %43)
  br label %45

45:                                               ; preds = %35, %23
  %46 = call i32* (...) @archive_zlib_version()
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.archive*, %struct.archive** %3, align 8
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %53 = call i32 @archive_read_extract(%struct.archive* %51, %struct.archive_entry* %52, i32 0)
  %54 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %50, i32 %53)
  %55 = call i32 @assertFileContents(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %71

56:                                               ; preds = %45
  %57 = load %struct.archive*, %struct.archive** %3, align 8
  %58 = load i32, i32* @ARCHIVE_FAILED, align 4
  %59 = load %struct.archive*, %struct.archive** %3, align 8
  %60 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %61 = call i32 @archive_read_extract(%struct.archive* %59, %struct.archive_entry* %60, i32 0)
  %62 = call i32 @assertEqualIntA(%struct.archive* %57, i32 %58, i32 %61)
  %63 = load %struct.archive*, %struct.archive** %3, align 8
  %64 = call i8* @archive_error_string(%struct.archive* %63)
  %65 = call i32 @assertEqualString(i8* %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.archive*, %struct.archive** %3, align 8
  %67 = call i64 @archive_errno(%struct.archive* %66)
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  br label %71

71:                                               ; preds = %56, %48
  %72 = load %struct.archive*, %struct.archive** %3, align 8
  %73 = load i32, i32* @ARCHIVE_OK, align 4
  %74 = load %struct.archive*, %struct.archive** %3, align 8
  %75 = call i32 @archive_read_close(%struct.archive* %74)
  %76 = call i32 @assertEqualIntA(%struct.archive* %72, i32 %73, i32 %75)
  %77 = load %struct.archive*, %struct.archive** %3, align 8
  %78 = load i32, i32* @ARCHIVE_OK, align 4
  %79 = load %struct.archive*, %struct.archive** %3, align 8
  %80 = call i32 @archive_read_free(%struct.archive* %79)
  %81 = call i32 @assertEqualIntA(%struct.archive* %77, i32 %78, i32 %80)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32* @archive_zlib_version(...) #1

declare dso_local i32 @archive_read_extract(%struct.archive*, %struct.archive_entry*, i32) #1

declare dso_local i32 @assertFileContents(i8*, i32, i8*) #1

declare dso_local i8* @archive_error_string(%struct.archive*) #1

declare dso_local i64 @archive_errno(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
