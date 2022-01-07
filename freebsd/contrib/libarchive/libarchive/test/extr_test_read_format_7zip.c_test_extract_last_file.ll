; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_extract_last_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_extract_last_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dir1/file1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"file3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"file4\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"aaaaaaaaaaaa\0Abbbbbbbbbbbb\0Acccccccccccc\0Adddddddddddd\0A\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dir1/\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_extract_last_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extract_last_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca %struct.archive*, align 8
  %5 = alloca [128 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @extract_reference_file(i8* %6)
  %8 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %8, %struct.archive** %4, align 8
  %9 = icmp ne %struct.archive* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.archive*, %struct.archive** %4, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  %14 = load %struct.archive*, %struct.archive** %4, align 8
  %15 = call i32 @archive_read_support_filter_all(%struct.archive* %14)
  %16 = call i32 @assertEqualIntA(%struct.archive* %12, i32 %13, i32 %15)
  %17 = load %struct.archive*, %struct.archive** %4, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %4, align 8
  %20 = call i32 @archive_read_support_format_all(%struct.archive* %19)
  %21 = call i32 @assertEqualIntA(%struct.archive* %17, i32 %18, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %4, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %4, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @archive_read_open_filename(%struct.archive* %24, i8* %25, i32 10240)
  %27 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %26)
  %28 = load %struct.archive*, %struct.archive** %4, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %4, align 8
  %31 = call i32 @archive_read_next_header(%struct.archive* %30, %struct.archive_entry** %3)
  %32 = call i32 @assertEqualIntA(%struct.archive* %28, i32 %29, i32 %31)
  %33 = load i32, i32* @AE_IFREG, align 4
  %34 = or i32 %33, 420
  %35 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %36 = call i32 @archive_entry_mode(%struct.archive_entry* %35)
  %37 = call i32 @assertEqualInt(i32 %34, i32 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %39 = call i32 @archive_entry_pathname(%struct.archive_entry* %38)
  %40 = call i32 @assertEqualString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %42 = call i32 @archive_entry_mtime(%struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 86401, i32 %42)
  %44 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %45 = call i32 @archive_entry_size(%struct.archive_entry* %44)
  %46 = call i32 @assertEqualInt(i32 13, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %48 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %47)
  %49 = call i32 @assertEqualInt(i32 %48, i32 0)
  %50 = load %struct.archive*, %struct.archive** %4, align 8
  %51 = load %struct.archive*, %struct.archive** %4, align 8
  %52 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %51)
  %53 = call i32 @assertEqualIntA(%struct.archive* %50, i32 %52, i32 0)
  %54 = load %struct.archive*, %struct.archive** %4, align 8
  %55 = load i32, i32* @ARCHIVE_OK, align 4
  %56 = load %struct.archive*, %struct.archive** %4, align 8
  %57 = call i32 @archive_read_next_header(%struct.archive* %56, %struct.archive_entry** %3)
  %58 = call i32 @assertEqualIntA(%struct.archive* %54, i32 %55, i32 %57)
  %59 = load i32, i32* @AE_IFREG, align 4
  %60 = or i32 %59, 420
  %61 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %62 = call i32 @archive_entry_mode(%struct.archive_entry* %61)
  %63 = call i32 @assertEqualInt(i32 %60, i32 %62)
  %64 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %65 = call i32 @archive_entry_pathname(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %68 = call i32 @archive_entry_mtime(%struct.archive_entry* %67)
  %69 = call i32 @assertEqualInt(i32 86401, i32 %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %71 = call i32 @archive_entry_size(%struct.archive_entry* %70)
  %72 = call i32 @assertEqualInt(i32 26, i32 %71)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %74 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %73)
  %75 = call i32 @assertEqualInt(i32 %74, i32 0)
  %76 = load %struct.archive*, %struct.archive** %4, align 8
  %77 = load %struct.archive*, %struct.archive** %4, align 8
  %78 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %77)
  %79 = call i32 @assertEqualIntA(%struct.archive* %76, i32 %78, i32 0)
  %80 = load %struct.archive*, %struct.archive** %4, align 8
  %81 = load i32, i32* @ARCHIVE_OK, align 4
  %82 = load %struct.archive*, %struct.archive** %4, align 8
  %83 = call i32 @archive_read_next_header(%struct.archive* %82, %struct.archive_entry** %3)
  %84 = call i32 @assertEqualIntA(%struct.archive* %80, i32 %81, i32 %83)
  %85 = load i32, i32* @AE_IFREG, align 4
  %86 = or i32 %85, 420
  %87 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %88 = call i32 @archive_entry_mode(%struct.archive_entry* %87)
  %89 = call i32 @assertEqualInt(i32 %86, i32 %88)
  %90 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %91 = call i32 @archive_entry_pathname(%struct.archive_entry* %90)
  %92 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %94 = call i32 @archive_entry_mtime(%struct.archive_entry* %93)
  %95 = call i32 @assertEqualInt(i32 86401, i32 %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %97 = call i32 @archive_entry_size(%struct.archive_entry* %96)
  %98 = call i32 @assertEqualInt(i32 39, i32 %97)
  %99 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %100 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %99)
  %101 = call i32 @assertEqualInt(i32 %100, i32 0)
  %102 = load %struct.archive*, %struct.archive** %4, align 8
  %103 = load %struct.archive*, %struct.archive** %4, align 8
  %104 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %103)
  %105 = call i32 @assertEqualIntA(%struct.archive* %102, i32 %104, i32 0)
  %106 = load %struct.archive*, %struct.archive** %4, align 8
  %107 = load i32, i32* @ARCHIVE_OK, align 4
  %108 = load %struct.archive*, %struct.archive** %4, align 8
  %109 = call i32 @archive_read_next_header(%struct.archive* %108, %struct.archive_entry** %3)
  %110 = call i32 @assertEqualIntA(%struct.archive* %106, i32 %107, i32 %109)
  %111 = load i32, i32* @AE_IFREG, align 4
  %112 = or i32 %111, 420
  %113 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %114 = call i32 @archive_entry_mode(%struct.archive_entry* %113)
  %115 = call i32 @assertEqualInt(i32 %112, i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %117 = call i32 @archive_entry_pathname(%struct.archive_entry* %116)
  %118 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %120 = call i32 @archive_entry_mtime(%struct.archive_entry* %119)
  %121 = call i32 @assertEqualInt(i32 86401, i32 %120)
  %122 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %123 = call i32 @archive_entry_size(%struct.archive_entry* %122)
  %124 = call i32 @assertEqualInt(i32 52, i32 %123)
  %125 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %126 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %125)
  %127 = call i32 @assertEqualInt(i32 %126, i32 0)
  %128 = load %struct.archive*, %struct.archive** %4, align 8
  %129 = load %struct.archive*, %struct.archive** %4, align 8
  %130 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %129)
  %131 = call i32 @assertEqualIntA(%struct.archive* %128, i32 %130, i32 0)
  %132 = load %struct.archive*, %struct.archive** %4, align 8
  %133 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %134 = call i32 @archive_read_data(%struct.archive* %132, i8* %133, i32 128)
  %135 = call i32 @assertEqualInt(i32 52, i32 %134)
  %136 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %137 = call i32 @assertEqualMem(i8* %136, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 52)
  %138 = load %struct.archive*, %struct.archive** %4, align 8
  %139 = load i32, i32* @ARCHIVE_OK, align 4
  %140 = load %struct.archive*, %struct.archive** %4, align 8
  %141 = call i32 @archive_read_next_header(%struct.archive* %140, %struct.archive_entry** %3)
  %142 = call i32 @assertEqualIntA(%struct.archive* %138, i32 %139, i32 %141)
  %143 = load i32, i32* @AE_IFDIR, align 4
  %144 = or i32 %143, 493
  %145 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %146 = call i32 @archive_entry_mode(%struct.archive_entry* %145)
  %147 = call i32 @assertEqualInt(i32 %144, i32 %146)
  %148 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %149 = call i32 @archive_entry_pathname(%struct.archive_entry* %148)
  %150 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  %151 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %152 = call i32 @archive_entry_mtime(%struct.archive_entry* %151)
  %153 = call i32 @assertEqualInt(i32 2764801, i32 %152)
  %154 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %155 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %154)
  %156 = call i32 @assertEqualInt(i32 %155, i32 0)
  %157 = load %struct.archive*, %struct.archive** %4, align 8
  %158 = load %struct.archive*, %struct.archive** %4, align 8
  %159 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %158)
  %160 = call i32 @assertEqualIntA(%struct.archive* %157, i32 %159, i32 0)
  %161 = load %struct.archive*, %struct.archive** %4, align 8
  %162 = call i32 @archive_file_count(%struct.archive* %161)
  %163 = call i32 @assertEqualInt(i32 5, i32 %162)
  %164 = load %struct.archive*, %struct.archive** %4, align 8
  %165 = load i32, i32* @ARCHIVE_EOF, align 4
  %166 = load %struct.archive*, %struct.archive** %4, align 8
  %167 = call i32 @archive_read_next_header(%struct.archive* %166, %struct.archive_entry** %3)
  %168 = call i32 @assertEqualIntA(%struct.archive* %164, i32 %165, i32 %167)
  %169 = load %struct.archive*, %struct.archive** %4, align 8
  %170 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %171 = load %struct.archive*, %struct.archive** %4, align 8
  %172 = call i32 @archive_filter_code(%struct.archive* %171, i32 0)
  %173 = call i32 @assertEqualIntA(%struct.archive* %169, i32 %170, i32 %172)
  %174 = load %struct.archive*, %struct.archive** %4, align 8
  %175 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %176 = load %struct.archive*, %struct.archive** %4, align 8
  %177 = call i32 @archive_format(%struct.archive* %176)
  %178 = call i32 @assertEqualIntA(%struct.archive* %174, i32 %175, i32 %177)
  %179 = load i32, i32* @ARCHIVE_OK, align 4
  %180 = load %struct.archive*, %struct.archive** %4, align 8
  %181 = call i32 @archive_read_close(%struct.archive* %180)
  %182 = call i32 @assertEqualInt(i32 %179, i32 %181)
  %183 = load i32, i32* @ARCHIVE_OK, align 4
  %184 = load %struct.archive*, %struct.archive** %4, align 8
  %185 = call i32 @archive_read_free(%struct.archive* %184)
  %186 = call i32 @assertEqualInt(i32 %183, i32 %185)
  ret void
}

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

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
