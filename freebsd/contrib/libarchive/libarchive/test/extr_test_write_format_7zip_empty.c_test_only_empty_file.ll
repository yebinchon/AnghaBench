; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_7zip_empty.c_test_only_empty_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_7zip_empty.c_test_only_empty_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"7z\BC\AF'\1C\00\03\00[X%\00\00\00\00\00\00\00\00F\00\00\00\00\00\00\00\8F\CE\1D\F3\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_only_empty_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_only_empty_file() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64 1000, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i8* @malloc(i64 %6)
  store i8* %7, i8** %4, align 8
  %8 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %8, %struct.archive** %1, align 8
  %9 = icmp ne %struct.archive* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.archive*, %struct.archive** %1, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  %14 = load %struct.archive*, %struct.archive** %1, align 8
  %15 = call i32 @archive_write_set_format_7zip(%struct.archive* %14)
  %16 = call i32 @assertEqualIntA(%struct.archive* %12, i32 %13, i32 %15)
  %17 = load %struct.archive*, %struct.archive** %1, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %1, align 8
  %20 = call i32 @archive_write_add_filter_none(%struct.archive* %19)
  %21 = call i32 @assertEqualIntA(%struct.archive* %17, i32 %18, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %1, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %1, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @archive_write_open_memory(%struct.archive* %24, i8* %25, i64 %26, i64* %5)
  %28 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %27)
  %29 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %29, %struct.archive_entry** %2, align 8
  %30 = icmp ne %struct.archive_entry* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %34 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %33, i32 1, i32 10)
  %35 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %36 = call i64 @archive_entry_mtime(%struct.archive_entry* %35)
  %37 = call i32 @assertEqualInt(i32 1, i64 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %39 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %38)
  %40 = call i32 @assertEqualInt(i32 10, i64 %39)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %42 = call i32 @archive_entry_set_atime(%struct.archive_entry* %41, i32 2, i32 20)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %44 = call i64 @archive_entry_atime(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 2, i64 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %47 = call i64 @archive_entry_atime_nsec(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualInt(i32 20, i64 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %50 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %49, i32 0, i32 100)
  %51 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %52 = call i64 @archive_entry_ctime(%struct.archive_entry* %51)
  %53 = call i32 @assertEqualInt(i32 0, i64 %52)
  %54 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %55 = call i64 @archive_entry_ctime_nsec(%struct.archive_entry* %54)
  %56 = call i32 @assertEqualInt(i32 100, i64 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %58 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %60 = call i32 @archive_entry_pathname(%struct.archive_entry* %59)
  %61 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %63 = load i32, i32* @AE_IFREG, align 4
  %64 = or i32 %63, 493
  %65 = call i32 @archive_entry_set_mode(%struct.archive_entry* %62, i32 %64)
  %66 = load i32, i32* @S_IFREG, align 4
  %67 = or i32 %66, 493
  %68 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %69 = call i64 @archive_entry_mode(%struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 %67, i64 %69)
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = load %struct.archive*, %struct.archive** %1, align 8
  %73 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %74 = call i64 @archive_write_header(%struct.archive* %72, %struct.archive_entry* %73)
  %75 = call i32 @assertEqualInt(i32 %71, i64 %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %77 = call i32 @archive_entry_free(%struct.archive_entry* %76)
  %78 = load i32, i32* @ARCHIVE_OK, align 4
  %79 = load %struct.archive*, %struct.archive** %1, align 8
  %80 = call i64 @archive_write_close(%struct.archive* %79)
  %81 = call i32 @assertEqualInt(i32 %78, i64 %80)
  %82 = load i32, i32* @ARCHIVE_OK, align 4
  %83 = load %struct.archive*, %struct.archive** %1, align 8
  %84 = call i64 @archive_write_free(%struct.archive* %83)
  %85 = call i32 @assertEqualInt(i32 %82, i64 %84)
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @assertEqualInt(i32 102, i64 %86)
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @assertEqualMem(i8* %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 32)
  %90 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %90, %struct.archive** %1, align 8
  %91 = icmp ne %struct.archive* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.archive*, %struct.archive** %1, align 8
  %95 = load i32, i32* @ARCHIVE_OK, align 4
  %96 = load %struct.archive*, %struct.archive** %1, align 8
  %97 = call i32 @archive_read_support_format_all(%struct.archive* %96)
  %98 = call i32 @assertEqualIntA(%struct.archive* %94, i32 %95, i32 %97)
  %99 = load %struct.archive*, %struct.archive** %1, align 8
  %100 = load i32, i32* @ARCHIVE_OK, align 4
  %101 = load %struct.archive*, %struct.archive** %1, align 8
  %102 = call i32 @archive_read_support_filter_all(%struct.archive* %101)
  %103 = call i32 @assertEqualIntA(%struct.archive* %99, i32 %100, i32 %102)
  %104 = load %struct.archive*, %struct.archive** %1, align 8
  %105 = load i32, i32* @ARCHIVE_OK, align 4
  %106 = load %struct.archive*, %struct.archive** %1, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @read_open_memory_seek(%struct.archive* %106, i8* %107, i64 %108, i32 7)
  %110 = call i32 @assertEqualIntA(%struct.archive* %104, i32 %105, i32 %109)
  %111 = load %struct.archive*, %struct.archive** %1, align 8
  %112 = load i32, i32* @ARCHIVE_OK, align 4
  %113 = load %struct.archive*, %struct.archive** %1, align 8
  %114 = call i32 @archive_read_next_header(%struct.archive* %113, %struct.archive_entry** %2)
  %115 = call i32 @assertEqualIntA(%struct.archive* %111, i32 %112, i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %117 = call i64 @archive_entry_mtime(%struct.archive_entry* %116)
  %118 = call i32 @assertEqualInt(i32 1, i64 %117)
  %119 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %120 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %119)
  %121 = call i32 @assertEqualInt(i32 0, i64 %120)
  %122 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %123 = call i64 @archive_entry_atime(%struct.archive_entry* %122)
  %124 = call i32 @assertEqualInt(i32 2, i64 %123)
  %125 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %126 = call i64 @archive_entry_atime_nsec(%struct.archive_entry* %125)
  %127 = call i32 @assertEqualInt(i32 0, i64 %126)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %129 = call i64 @archive_entry_ctime(%struct.archive_entry* %128)
  %130 = call i32 @assertEqualInt(i32 0, i64 %129)
  %131 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %132 = call i64 @archive_entry_ctime_nsec(%struct.archive_entry* %131)
  %133 = call i32 @assertEqualInt(i32 100, i64 %132)
  %134 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %135 = call i32 @archive_entry_pathname(%struct.archive_entry* %134)
  %136 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @AE_IFREG, align 4
  %138 = or i32 %137, 493
  %139 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %140 = call i64 @archive_entry_mode(%struct.archive_entry* %139)
  %141 = call i32 @assertEqualInt(i32 %138, i64 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %143 = call i64 @archive_entry_size(%struct.archive_entry* %142)
  %144 = call i32 @assertEqualInt(i32 0, i64 %143)
  %145 = load %struct.archive*, %struct.archive** %1, align 8
  %146 = load i32, i32* @ARCHIVE_EOF, align 4
  %147 = load %struct.archive*, %struct.archive** %1, align 8
  %148 = call i32 @archive_read_next_header(%struct.archive* %147, %struct.archive_entry** %2)
  %149 = call i32 @assertEqualIntA(%struct.archive* %145, i32 %146, i32 %148)
  %150 = load %struct.archive*, %struct.archive** %1, align 8
  %151 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %152 = load %struct.archive*, %struct.archive** %1, align 8
  %153 = call i32 @archive_filter_code(%struct.archive* %152, i32 0)
  %154 = call i32 @assertEqualIntA(%struct.archive* %150, i32 %151, i32 %153)
  %155 = load %struct.archive*, %struct.archive** %1, align 8
  %156 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %157 = load %struct.archive*, %struct.archive** %1, align 8
  %158 = call i32 @archive_format(%struct.archive* %157)
  %159 = call i32 @assertEqualIntA(%struct.archive* %155, i32 %156, i32 %158)
  %160 = load i32, i32* @ARCHIVE_OK, align 4
  %161 = load %struct.archive*, %struct.archive** %1, align 8
  %162 = call i64 @archive_read_close(%struct.archive* %161)
  %163 = call i32 @assertEqualInt(i32 %160, i64 %162)
  %164 = load i32, i32* @ARCHIVE_OK, align 4
  %165 = load %struct.archive*, %struct.archive** %1, align 8
  %166 = call i64 @archive_read_free(%struct.archive* %165)
  %167 = call i32 @assertEqualInt(i32 %164, i64 %166)
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @free(i8* %168)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_7zip(%struct.archive*) #1

declare dso_local i32 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @assertEqualInt(i32, i64) #1

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i64 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_atime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i64 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i64 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i64 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i64 @archive_write_close(%struct.archive*) #1

declare dso_local i64 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @read_open_memory_seek(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i64 @archive_read_close(%struct.archive*) #1

declare dso_local i64 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
