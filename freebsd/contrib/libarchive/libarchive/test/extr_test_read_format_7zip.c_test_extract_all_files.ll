; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_extract_all_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_extract_all_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dir1/file1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"aaaaaaaaaaaa\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"aaaaaaaaaaaa\0Abbbbbbbbbbbb\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"file3\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"aaaaaaaaaaaa\0Abbbbbbbbbbbb\0Acccccccccccc\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"file4\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"aaaaaaaaaaaa\0Abbbbbbbbbbbb\0Acccccccccccc\0Adddddddddddd\0A\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"dir1/\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_extract_all_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extract_all_files(i8* %0) #0 {
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
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %56 = call i32 @archive_read_data(%struct.archive* %54, i8* %55, i32 128)
  %57 = call i32 @assertEqualInt(i32 13, i32 %56)
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %59 = call i32 @assertEqualMem(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %60 = load %struct.archive*, %struct.archive** %4, align 8
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  %62 = load %struct.archive*, %struct.archive** %4, align 8
  %63 = call i32 @archive_read_next_header(%struct.archive* %62, %struct.archive_entry** %3)
  %64 = call i32 @assertEqualIntA(%struct.archive* %60, i32 %61, i32 %63)
  %65 = load i32, i32* @AE_IFREG, align 4
  %66 = or i32 %65, 420
  %67 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %68 = call i32 @archive_entry_mode(%struct.archive_entry* %67)
  %69 = call i32 @assertEqualInt(i32 %66, i32 %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %71 = call i32 @archive_entry_pathname(%struct.archive_entry* %70)
  %72 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %74 = call i32 @archive_entry_mtime(%struct.archive_entry* %73)
  %75 = call i32 @assertEqualInt(i32 86401, i32 %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %77 = call i32 @archive_entry_size(%struct.archive_entry* %76)
  %78 = call i32 @assertEqualInt(i32 26, i32 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %80 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 %80, i32 0)
  %82 = load %struct.archive*, %struct.archive** %4, align 8
  %83 = load %struct.archive*, %struct.archive** %4, align 8
  %84 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %83)
  %85 = call i32 @assertEqualIntA(%struct.archive* %82, i32 %84, i32 0)
  %86 = load %struct.archive*, %struct.archive** %4, align 8
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %88 = call i32 @archive_read_data(%struct.archive* %86, i8* %87, i32 128)
  %89 = call i32 @assertEqualInt(i32 26, i32 %88)
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %91 = call i32 @assertEqualMem(i8* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 26)
  %92 = load %struct.archive*, %struct.archive** %4, align 8
  %93 = load i32, i32* @ARCHIVE_OK, align 4
  %94 = load %struct.archive*, %struct.archive** %4, align 8
  %95 = call i32 @archive_read_next_header(%struct.archive* %94, %struct.archive_entry** %3)
  %96 = call i32 @assertEqualIntA(%struct.archive* %92, i32 %93, i32 %95)
  %97 = load i32, i32* @AE_IFREG, align 4
  %98 = or i32 %97, 420
  %99 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %100 = call i32 @archive_entry_mode(%struct.archive_entry* %99)
  %101 = call i32 @assertEqualInt(i32 %98, i32 %100)
  %102 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %103 = call i32 @archive_entry_pathname(%struct.archive_entry* %102)
  %104 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %106 = call i32 @archive_entry_mtime(%struct.archive_entry* %105)
  %107 = call i32 @assertEqualInt(i32 86401, i32 %106)
  %108 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %109 = call i32 @archive_entry_size(%struct.archive_entry* %108)
  %110 = call i32 @assertEqualInt(i32 39, i32 %109)
  %111 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %112 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %111)
  %113 = call i32 @assertEqualInt(i32 %112, i32 0)
  %114 = load %struct.archive*, %struct.archive** %4, align 8
  %115 = load %struct.archive*, %struct.archive** %4, align 8
  %116 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %115)
  %117 = call i32 @assertEqualIntA(%struct.archive* %114, i32 %116, i32 0)
  %118 = load %struct.archive*, %struct.archive** %4, align 8
  %119 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %120 = call i32 @archive_read_data(%struct.archive* %118, i8* %119, i32 128)
  %121 = call i32 @assertEqualInt(i32 39, i32 %120)
  %122 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %123 = call i32 @assertEqualMem(i8* %122, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 39)
  %124 = load %struct.archive*, %struct.archive** %4, align 8
  %125 = load i32, i32* @ARCHIVE_OK, align 4
  %126 = load %struct.archive*, %struct.archive** %4, align 8
  %127 = call i32 @archive_read_next_header(%struct.archive* %126, %struct.archive_entry** %3)
  %128 = call i32 @assertEqualIntA(%struct.archive* %124, i32 %125, i32 %127)
  %129 = load i32, i32* @AE_IFREG, align 4
  %130 = or i32 %129, 420
  %131 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %132 = call i32 @archive_entry_mode(%struct.archive_entry* %131)
  %133 = call i32 @assertEqualInt(i32 %130, i32 %132)
  %134 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %135 = call i32 @archive_entry_pathname(%struct.archive_entry* %134)
  %136 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %138 = call i32 @archive_entry_mtime(%struct.archive_entry* %137)
  %139 = call i32 @assertEqualInt(i32 86401, i32 %138)
  %140 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %141 = call i32 @archive_entry_size(%struct.archive_entry* %140)
  %142 = call i32 @assertEqualInt(i32 52, i32 %141)
  %143 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %144 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %143)
  %145 = call i32 @assertEqualInt(i32 %144, i32 0)
  %146 = load %struct.archive*, %struct.archive** %4, align 8
  %147 = load %struct.archive*, %struct.archive** %4, align 8
  %148 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %147)
  %149 = call i32 @assertEqualIntA(%struct.archive* %146, i32 %148, i32 0)
  %150 = load %struct.archive*, %struct.archive** %4, align 8
  %151 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %152 = call i32 @archive_read_data(%struct.archive* %150, i8* %151, i32 128)
  %153 = call i32 @assertEqualInt(i32 52, i32 %152)
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %155 = call i32 @assertEqualMem(i8* %154, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 52)
  %156 = load %struct.archive*, %struct.archive** %4, align 8
  %157 = load i32, i32* @ARCHIVE_OK, align 4
  %158 = load %struct.archive*, %struct.archive** %4, align 8
  %159 = call i32 @archive_read_next_header(%struct.archive* %158, %struct.archive_entry** %3)
  %160 = call i32 @assertEqualIntA(%struct.archive* %156, i32 %157, i32 %159)
  %161 = load i32, i32* @AE_IFDIR, align 4
  %162 = or i32 %161, 493
  %163 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %164 = call i32 @archive_entry_mode(%struct.archive_entry* %163)
  %165 = call i32 @assertEqualInt(i32 %162, i32 %164)
  %166 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %167 = call i32 @archive_entry_pathname(%struct.archive_entry* %166)
  %168 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %167)
  %169 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %170 = call i32 @archive_entry_mtime(%struct.archive_entry* %169)
  %171 = call i32 @assertEqualInt(i32 2764801, i32 %170)
  %172 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %173 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %172)
  %174 = call i32 @assertEqualInt(i32 %173, i32 0)
  %175 = load %struct.archive*, %struct.archive** %4, align 8
  %176 = load %struct.archive*, %struct.archive** %4, align 8
  %177 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %176)
  %178 = call i32 @assertEqualIntA(%struct.archive* %175, i32 %177, i32 0)
  %179 = load %struct.archive*, %struct.archive** %4, align 8
  %180 = call i32 @archive_file_count(%struct.archive* %179)
  %181 = call i32 @assertEqualInt(i32 5, i32 %180)
  %182 = load %struct.archive*, %struct.archive** %4, align 8
  %183 = load i32, i32* @ARCHIVE_EOF, align 4
  %184 = load %struct.archive*, %struct.archive** %4, align 8
  %185 = call i32 @archive_read_next_header(%struct.archive* %184, %struct.archive_entry** %3)
  %186 = call i32 @assertEqualIntA(%struct.archive* %182, i32 %183, i32 %185)
  %187 = load %struct.archive*, %struct.archive** %4, align 8
  %188 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %189 = load %struct.archive*, %struct.archive** %4, align 8
  %190 = call i32 @archive_filter_code(%struct.archive* %189, i32 0)
  %191 = call i32 @assertEqualIntA(%struct.archive* %187, i32 %188, i32 %190)
  %192 = load %struct.archive*, %struct.archive** %4, align 8
  %193 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %194 = load %struct.archive*, %struct.archive** %4, align 8
  %195 = call i32 @archive_format(%struct.archive* %194)
  %196 = call i32 @assertEqualIntA(%struct.archive* %192, i32 %193, i32 %195)
  %197 = load i32, i32* @ARCHIVE_OK, align 4
  %198 = load %struct.archive*, %struct.archive** %4, align 8
  %199 = call i32 @archive_read_close(%struct.archive* %198)
  %200 = call i32 @assertEqualInt(i32 %197, i32 %199)
  %201 = load i32, i32* @ARCHIVE_OK, align 4
  %202 = load %struct.archive*, %struct.archive** %4, align 8
  %203 = call i32 @archive_read_free(%struct.archive* %202)
  %204 = call i32 @assertEqualInt(i32 %201, i32 %203)
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
