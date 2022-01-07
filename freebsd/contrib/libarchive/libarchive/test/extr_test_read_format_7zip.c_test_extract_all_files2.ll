; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_extract_all_files2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_7zip.c_test_extract_all_files2.c"
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
@.str.8 = private unnamed_addr constant [12 x i8] c"dir1/zfile1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"zfile2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"zfile3\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"zfile4\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"dir1/\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_extract_all_files2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extract_all_files2(i8* %0) #0 {
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
  %161 = load i32, i32* @AE_IFREG, align 4
  %162 = or i32 %161, 420
  %163 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %164 = call i32 @archive_entry_mode(%struct.archive_entry* %163)
  %165 = call i32 @assertEqualInt(i32 %162, i32 %164)
  %166 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %167 = call i32 @archive_entry_pathname(%struct.archive_entry* %166)
  %168 = call i32 @assertEqualString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %167)
  %169 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %170 = call i32 @archive_entry_mtime(%struct.archive_entry* %169)
  %171 = call i32 @assertEqualInt(i32 5184001, i32 %170)
  %172 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %173 = call i32 @archive_entry_size(%struct.archive_entry* %172)
  %174 = call i32 @assertEqualInt(i32 13, i32 %173)
  %175 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %176 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %175)
  %177 = call i32 @assertEqualInt(i32 %176, i32 0)
  %178 = load %struct.archive*, %struct.archive** %4, align 8
  %179 = load %struct.archive*, %struct.archive** %4, align 8
  %180 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %179)
  %181 = call i32 @assertEqualIntA(%struct.archive* %178, i32 %180, i32 0)
  %182 = load %struct.archive*, %struct.archive** %4, align 8
  %183 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %184 = call i32 @archive_read_data(%struct.archive* %182, i8* %183, i32 128)
  %185 = call i32 @assertEqualInt(i32 13, i32 %184)
  %186 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %187 = call i32 @assertEqualMem(i8* %186, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %188 = load %struct.archive*, %struct.archive** %4, align 8
  %189 = load i32, i32* @ARCHIVE_OK, align 4
  %190 = load %struct.archive*, %struct.archive** %4, align 8
  %191 = call i32 @archive_read_next_header(%struct.archive* %190, %struct.archive_entry** %3)
  %192 = call i32 @assertEqualIntA(%struct.archive* %188, i32 %189, i32 %191)
  %193 = load i32, i32* @AE_IFREG, align 4
  %194 = or i32 %193, 420
  %195 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %196 = call i32 @archive_entry_mode(%struct.archive_entry* %195)
  %197 = call i32 @assertEqualInt(i32 %194, i32 %196)
  %198 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %199 = call i32 @archive_entry_pathname(%struct.archive_entry* %198)
  %200 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %199)
  %201 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %202 = call i32 @archive_entry_mtime(%struct.archive_entry* %201)
  %203 = call i32 @assertEqualInt(i32 5184001, i32 %202)
  %204 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %205 = call i32 @archive_entry_size(%struct.archive_entry* %204)
  %206 = call i32 @assertEqualInt(i32 26, i32 %205)
  %207 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %208 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %207)
  %209 = call i32 @assertEqualInt(i32 %208, i32 0)
  %210 = load %struct.archive*, %struct.archive** %4, align 8
  %211 = load %struct.archive*, %struct.archive** %4, align 8
  %212 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %211)
  %213 = call i32 @assertEqualIntA(%struct.archive* %210, i32 %212, i32 0)
  %214 = load %struct.archive*, %struct.archive** %4, align 8
  %215 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %216 = call i32 @archive_read_data(%struct.archive* %214, i8* %215, i32 128)
  %217 = call i32 @assertEqualInt(i32 26, i32 %216)
  %218 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %219 = call i32 @assertEqualMem(i8* %218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 26)
  %220 = load %struct.archive*, %struct.archive** %4, align 8
  %221 = load i32, i32* @ARCHIVE_OK, align 4
  %222 = load %struct.archive*, %struct.archive** %4, align 8
  %223 = call i32 @archive_read_next_header(%struct.archive* %222, %struct.archive_entry** %3)
  %224 = call i32 @assertEqualIntA(%struct.archive* %220, i32 %221, i32 %223)
  %225 = load i32, i32* @AE_IFREG, align 4
  %226 = or i32 %225, 420
  %227 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %228 = call i32 @archive_entry_mode(%struct.archive_entry* %227)
  %229 = call i32 @assertEqualInt(i32 %226, i32 %228)
  %230 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %231 = call i32 @archive_entry_pathname(%struct.archive_entry* %230)
  %232 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %231)
  %233 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %234 = call i32 @archive_entry_mtime(%struct.archive_entry* %233)
  %235 = call i32 @assertEqualInt(i32 5184001, i32 %234)
  %236 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %237 = call i32 @archive_entry_size(%struct.archive_entry* %236)
  %238 = call i32 @assertEqualInt(i32 39, i32 %237)
  %239 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %240 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %239)
  %241 = call i32 @assertEqualInt(i32 %240, i32 0)
  %242 = load %struct.archive*, %struct.archive** %4, align 8
  %243 = load %struct.archive*, %struct.archive** %4, align 8
  %244 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %243)
  %245 = call i32 @assertEqualIntA(%struct.archive* %242, i32 %244, i32 0)
  %246 = load %struct.archive*, %struct.archive** %4, align 8
  %247 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %248 = call i32 @archive_read_data(%struct.archive* %246, i8* %247, i32 128)
  %249 = call i32 @assertEqualInt(i32 39, i32 %248)
  %250 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %251 = call i32 @assertEqualMem(i8* %250, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 39)
  %252 = load %struct.archive*, %struct.archive** %4, align 8
  %253 = load i32, i32* @ARCHIVE_OK, align 4
  %254 = load %struct.archive*, %struct.archive** %4, align 8
  %255 = call i32 @archive_read_next_header(%struct.archive* %254, %struct.archive_entry** %3)
  %256 = call i32 @assertEqualIntA(%struct.archive* %252, i32 %253, i32 %255)
  %257 = load i32, i32* @AE_IFREG, align 4
  %258 = or i32 %257, 420
  %259 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %260 = call i32 @archive_entry_mode(%struct.archive_entry* %259)
  %261 = call i32 @assertEqualInt(i32 %258, i32 %260)
  %262 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %263 = call i32 @archive_entry_pathname(%struct.archive_entry* %262)
  %264 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %263)
  %265 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %266 = call i32 @archive_entry_mtime(%struct.archive_entry* %265)
  %267 = call i32 @assertEqualInt(i32 5184001, i32 %266)
  %268 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %269 = call i32 @archive_entry_size(%struct.archive_entry* %268)
  %270 = call i32 @assertEqualInt(i32 52, i32 %269)
  %271 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %272 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %271)
  %273 = call i32 @assertEqualInt(i32 %272, i32 0)
  %274 = load %struct.archive*, %struct.archive** %4, align 8
  %275 = load %struct.archive*, %struct.archive** %4, align 8
  %276 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %275)
  %277 = call i32 @assertEqualIntA(%struct.archive* %274, i32 %276, i32 0)
  %278 = load %struct.archive*, %struct.archive** %4, align 8
  %279 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %280 = call i32 @archive_read_data(%struct.archive* %278, i8* %279, i32 128)
  %281 = call i32 @assertEqualInt(i32 52, i32 %280)
  %282 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %283 = call i32 @assertEqualMem(i8* %282, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 52)
  %284 = load %struct.archive*, %struct.archive** %4, align 8
  %285 = load i32, i32* @ARCHIVE_OK, align 4
  %286 = load %struct.archive*, %struct.archive** %4, align 8
  %287 = call i32 @archive_read_next_header(%struct.archive* %286, %struct.archive_entry** %3)
  %288 = call i32 @assertEqualIntA(%struct.archive* %284, i32 %285, i32 %287)
  %289 = load i32, i32* @AE_IFDIR, align 4
  %290 = or i32 %289, 493
  %291 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %292 = call i32 @archive_entry_mode(%struct.archive_entry* %291)
  %293 = call i32 @assertEqualInt(i32 %290, i32 %292)
  %294 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %295 = call i32 @archive_entry_pathname(%struct.archive_entry* %294)
  %296 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %295)
  %297 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %298 = call i32 @archive_entry_mtime(%struct.archive_entry* %297)
  %299 = call i32 @assertEqualInt(i32 2764801, i32 %298)
  %300 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %301 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %300)
  %302 = call i32 @assertEqualInt(i32 %301, i32 0)
  %303 = load %struct.archive*, %struct.archive** %4, align 8
  %304 = load %struct.archive*, %struct.archive** %4, align 8
  %305 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %304)
  %306 = call i32 @assertEqualIntA(%struct.archive* %303, i32 %305, i32 0)
  %307 = load %struct.archive*, %struct.archive** %4, align 8
  %308 = call i32 @archive_file_count(%struct.archive* %307)
  %309 = call i32 @assertEqualInt(i32 9, i32 %308)
  %310 = load %struct.archive*, %struct.archive** %4, align 8
  %311 = load i32, i32* @ARCHIVE_EOF, align 4
  %312 = load %struct.archive*, %struct.archive** %4, align 8
  %313 = call i32 @archive_read_next_header(%struct.archive* %312, %struct.archive_entry** %3)
  %314 = call i32 @assertEqualIntA(%struct.archive* %310, i32 %311, i32 %313)
  %315 = load %struct.archive*, %struct.archive** %4, align 8
  %316 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %317 = load %struct.archive*, %struct.archive** %4, align 8
  %318 = call i32 @archive_filter_code(%struct.archive* %317, i32 0)
  %319 = call i32 @assertEqualIntA(%struct.archive* %315, i32 %316, i32 %318)
  %320 = load %struct.archive*, %struct.archive** %4, align 8
  %321 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %322 = load %struct.archive*, %struct.archive** %4, align 8
  %323 = call i32 @archive_format(%struct.archive* %322)
  %324 = call i32 @assertEqualIntA(%struct.archive* %320, i32 %321, i32 %323)
  %325 = load i32, i32* @ARCHIVE_OK, align 4
  %326 = load %struct.archive*, %struct.archive** %4, align 8
  %327 = call i32 @archive_read_close(%struct.archive* %326)
  %328 = call i32 @assertEqualInt(i32 %325, i32 %327)
  %329 = load i32, i32* @ARCHIVE_OK, align 4
  %330 = load %struct.archive*, %struct.archive** %4, align 8
  %331 = call i32 @archive_read_free(%struct.archive* %330)
  %332 = call i32 @assertEqualInt(i32 %329, i32 %331)
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
