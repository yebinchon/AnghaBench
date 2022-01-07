; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_comment_stored.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_comment_stored.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"file0\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"build.sh\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @extract_reference_file(i8* %7)
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @slurpfile(i64* %4, i8* %9)
  store i8* %10, i8** %3, align 8
  %11 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %11, %struct.archive** %5, align 8
  %12 = icmp ne %struct.archive* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.archive*, %struct.archive** %5, align 8
  %16 = load i32, i32* @ARCHIVE_OK, align 4
  %17 = load %struct.archive*, %struct.archive** %5, align 8
  %18 = call i32 @archive_read_support_format_zip(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %5, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  %22 = load %struct.archive*, %struct.archive** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @read_open_memory_seek(%struct.archive* %22, i8* %23, i64 %24, i32 1)
  %26 = call i32 @assertEqualIntA(%struct.archive* %20, i32 %21, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %5, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive*, %struct.archive** %5, align 8
  %30 = call i32 @archive_read_next_header(%struct.archive* %29, %struct.archive_entry** %6)
  %31 = call i32 @assertEqualIntA(%struct.archive* %27, i32 %28, i32 %30)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %33 = call i32 @archive_entry_pathname(%struct.archive_entry* %32)
  %34 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @AE_IFREG, align 4
  %36 = or i32 %35, 420
  %37 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %38 = call i32 @archive_entry_mode(%struct.archive_entry* %37)
  %39 = call i32 @assertEqualInt(i32 %36, i32 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %41 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %40)
  %42 = call i32 @assertEqualInt(i32 %41, i32 0)
  %43 = load %struct.archive*, %struct.archive** %5, align 8
  %44 = load %struct.archive*, %struct.archive** %5, align 8
  %45 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %44)
  %46 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %45, i32 0)
  %47 = load %struct.archive*, %struct.archive** %5, align 8
  %48 = load i32, i32* @ARCHIVE_OK, align 4
  %49 = load %struct.archive*, %struct.archive** %5, align 8
  %50 = call i32 @archive_read_next_header(%struct.archive* %49, %struct.archive_entry** %6)
  %51 = call i32 @assertEqualIntA(%struct.archive* %47, i32 %48, i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %53 = call i32 @archive_entry_pathname(%struct.archive_entry* %52)
  %54 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @AE_IFREG, align 4
  %56 = or i32 %55, 493
  %57 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %58 = call i32 @archive_entry_mode(%struct.archive_entry* %57)
  %59 = call i32 @assertEqualInt(i32 %56, i32 %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %61 = call i32 @archive_entry_size(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualInt(i32 23, i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %64 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %63)
  %65 = call i32 @assertEqualInt(i32 %64, i32 0)
  %66 = load %struct.archive*, %struct.archive** %5, align 8
  %67 = load %struct.archive*, %struct.archive** %5, align 8
  %68 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %67)
  %69 = call i32 @assertEqualIntA(%struct.archive* %66, i32 %68, i32 0)
  %70 = load %struct.archive*, %struct.archive** %5, align 8
  %71 = load i32, i32* @ARCHIVE_EOF, align 4
  %72 = load %struct.archive*, %struct.archive** %5, align 8
  %73 = call i32 @archive_read_next_header(%struct.archive* %72, %struct.archive_entry** %6)
  %74 = call i32 @assertEqualIntA(%struct.archive* %70, i32 %71, i32 %73)
  %75 = load %struct.archive*, %struct.archive** %5, align 8
  %76 = load %struct.archive*, %struct.archive** %5, align 8
  %77 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %76)
  %78 = call i32 @assertEqualIntA(%struct.archive* %75, i32 %77, i32 0)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %80 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 %80, i32 0)
  %82 = load %struct.archive*, %struct.archive** %5, align 8
  %83 = load i32, i32* @ARCHIVE_OK, align 4
  %84 = load %struct.archive*, %struct.archive** %5, align 8
  %85 = call i32 @archive_read_close(%struct.archive* %84)
  %86 = call i32 @assertEqualIntA(%struct.archive* %82, i32 %83, i32 %85)
  %87 = load %struct.archive*, %struct.archive** %5, align 8
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  %89 = load %struct.archive*, %struct.archive** %5, align 8
  %90 = call i32 @archive_read_free(%struct.archive* %89)
  %91 = call i32 @assertEqualIntA(%struct.archive* %87, i32 %88, i32 %90)
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @free(i8* %92)
  ret void
}

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i8* @slurpfile(i64*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_format_zip(%struct.archive*) #1

declare dso_local i32 @read_open_memory_seek(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
