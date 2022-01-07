; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_7zip.c_test_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_7zip.c_test_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"7zip\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s writing not fully supported on this platform\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"empty2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"symbolic\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [59 x i8] c"size should be zero so that applications know not to write\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"dir/subdir\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"dir/subdir/subdir\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"7z\BC\AF'\1C\00\03\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"dir/subdir/subdir/\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"dir/subdir/\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"dir/\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 1000, i64* %7, align 8
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
  %17 = load %struct.archive*, %struct.archive** %5, align 8
  %18 = call i32 @archive_write_set_format_7zip(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %15, i32 %16, i32 %18)
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %5, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @archive_write_set_format_option(%struct.archive* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @skipping(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %5, align 8
  %33 = call i32 @archive_write_free(%struct.archive* %32)
  %34 = call i32 @assertEqualInt(i32 %31, i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @free(i8* %35)
  br label %631

37:                                               ; preds = %22, %1
  %38 = load %struct.archive*, %struct.archive** %5, align 8
  %39 = load i32, i32* @ARCHIVE_OK, align 4
  %40 = load %struct.archive*, %struct.archive** %5, align 8
  %41 = call i32 @archive_write_add_filter_none(%struct.archive* %40)
  %42 = call i32 @assertEqualIntA(%struct.archive* %38, i32 %39, i32 %41)
  %43 = load %struct.archive*, %struct.archive** %5, align 8
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %5, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @archive_write_open_memory(%struct.archive* %45, i8* %46, i64 %47, i64* %6)
  %49 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %44, i32 %48)
  %50 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %50, %struct.archive_entry** %4, align 8
  %51 = icmp ne %struct.archive_entry* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %55 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %54, i32 1, i32 10)
  %56 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %57 = call i32 @archive_entry_mtime(%struct.archive_entry* %56)
  %58 = call i32 @assertEqualInt(i32 1, i32 %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %60 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %59)
  %61 = call i32 @assertEqualInt(i32 10, i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %63 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %65 = call i32 @archive_entry_pathname(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %68 = load i32, i32* @AE_IFREG, align 4
  %69 = or i32 %68, 493
  %70 = call i32 @archive_entry_set_mode(%struct.archive_entry* %67, i32 %69)
  %71 = load i32, i32* @AE_IFREG, align 4
  %72 = or i32 %71, 493
  %73 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %74 = call i32 @archive_entry_mode(%struct.archive_entry* %73)
  %75 = call i32 @assertEqualInt(i32 %72, i32 %74)
  %76 = load i32, i32* @ARCHIVE_OK, align 4
  %77 = load %struct.archive*, %struct.archive** %5, align 8
  %78 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %79 = call i32 @archive_write_header(%struct.archive* %77, %struct.archive_entry* %78)
  %80 = call i32 @assertEqualInt(i32 %76, i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %82 = call i32 @archive_entry_free(%struct.archive_entry* %81)
  %83 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %83, %struct.archive_entry** %4, align 8
  %84 = icmp ne %struct.archive_entry* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %88 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %87, i32 1, i32 10)
  %89 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %90 = call i32 @archive_entry_mtime(%struct.archive_entry* %89)
  %91 = call i32 @assertEqualInt(i32 1, i32 %90)
  %92 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %93 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %92)
  %94 = call i32 @assertEqualInt(i32 10, i32 %93)
  %95 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %96 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %98 = call i32 @archive_entry_pathname(%struct.archive_entry* %97)
  %99 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %101 = load i32, i32* @AE_IFREG, align 4
  %102 = or i32 %101, 292
  %103 = call i32 @archive_entry_set_mode(%struct.archive_entry* %100, i32 %102)
  %104 = load i32, i32* @AE_IFREG, align 4
  %105 = or i32 %104, 292
  %106 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %107 = call i32 @archive_entry_mode(%struct.archive_entry* %106)
  %108 = call i32 @assertEqualInt(i32 %105, i32 %107)
  %109 = load i32, i32* @ARCHIVE_OK, align 4
  %110 = load %struct.archive*, %struct.archive** %5, align 8
  %111 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %112 = call i32 @archive_write_header(%struct.archive* %110, %struct.archive_entry* %111)
  %113 = call i32 @assertEqualInt(i32 %109, i32 %112)
  %114 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %115 = call i32 @archive_entry_free(%struct.archive_entry* %114)
  %116 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %116, %struct.archive_entry** %4, align 8
  %117 = icmp ne %struct.archive_entry* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %121 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %120, i32 1, i32 100)
  %122 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %123 = call i32 @archive_entry_mtime(%struct.archive_entry* %122)
  %124 = call i32 @assertEqualInt(i32 1, i32 %123)
  %125 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %126 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %125)
  %127 = call i32 @assertEqualInt(i32 100, i32 %126)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %129 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %130 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %131 = call i32 @archive_entry_pathname(%struct.archive_entry* %130)
  %132 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %134 = load i32, i32* @AE_IFREG, align 4
  %135 = or i32 %134, 493
  %136 = call i32 @archive_entry_set_mode(%struct.archive_entry* %133, i32 %135)
  %137 = load i32, i32* @AE_IFREG, align 4
  %138 = or i32 %137, 493
  %139 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %140 = call i32 @archive_entry_mode(%struct.archive_entry* %139)
  %141 = call i32 @assertEqualInt(i32 %138, i32 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %143 = call i32 @archive_entry_set_size(%struct.archive_entry* %142, i32 8)
  %144 = load %struct.archive*, %struct.archive** %5, align 8
  %145 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %146 = call i32 @archive_write_header(%struct.archive* %144, %struct.archive_entry* %145)
  %147 = call i32 @assertEqualInt(i32 0, i32 %146)
  %148 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %149 = call i32 @archive_entry_free(%struct.archive_entry* %148)
  %150 = load %struct.archive*, %struct.archive** %5, align 8
  %151 = call i32 @archive_write_data(%struct.archive* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %152 = call i32 @assertEqualInt(i32 8, i32 %151)
  %153 = load %struct.archive*, %struct.archive** %5, align 8
  %154 = call i32 @archive_write_data(%struct.archive* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %155 = call i32 @assertEqualInt(i32 0, i32 %154)
  %156 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %156, %struct.archive_entry** %4, align 8
  %157 = icmp ne %struct.archive_entry* %156, null
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %161 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %160, i32 1, i32 10)
  %162 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %163 = call i32 @archive_entry_mtime(%struct.archive_entry* %162)
  %164 = call i32 @assertEqualInt(i32 1, i32 %163)
  %165 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %166 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %165)
  %167 = call i32 @assertEqualInt(i32 10, i32 %166)
  %168 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %169 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %170 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %171 = call i32 @archive_entry_pathname(%struct.archive_entry* %170)
  %172 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  %173 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %174 = load i32, i32* @AE_IFREG, align 4
  %175 = or i32 %174, 493
  %176 = call i32 @archive_entry_set_mode(%struct.archive_entry* %173, i32 %175)
  %177 = load i32, i32* @AE_IFREG, align 4
  %178 = or i32 %177, 493
  %179 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %180 = call i32 @archive_entry_mode(%struct.archive_entry* %179)
  %181 = call i32 @assertEqualInt(i32 %178, i32 %180)
  %182 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %183 = call i32 @archive_entry_set_size(%struct.archive_entry* %182, i32 4)
  %184 = load i32, i32* @ARCHIVE_OK, align 4
  %185 = load %struct.archive*, %struct.archive** %5, align 8
  %186 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %187 = call i32 @archive_write_header(%struct.archive* %185, %struct.archive_entry* %186)
  %188 = call i32 @assertEqualInt(i32 %184, i32 %187)
  %189 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %190 = call i32 @archive_entry_free(%struct.archive_entry* %189)
  %191 = load %struct.archive*, %struct.archive** %5, align 8
  %192 = call i32 @archive_write_data(%struct.archive* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %193 = call i32 @assertEqualInt(i32 4, i32 %192)
  %194 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %194, %struct.archive_entry** %4, align 8
  %195 = icmp ne %struct.archive_entry* %194, null
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %199 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %198, i32 1, i32 10)
  %200 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %201 = call i32 @archive_entry_mtime(%struct.archive_entry* %200)
  %202 = call i32 @assertEqualInt(i32 1, i32 %201)
  %203 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %204 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %203)
  %205 = call i32 @assertEqualInt(i32 10, i32 %204)
  %206 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %207 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %208 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %209 = call i32 @archive_entry_copy_symlink(%struct.archive_entry* %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %210 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %211 = call i32 @archive_entry_pathname(%struct.archive_entry* %210)
  %212 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %211)
  %213 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %214 = load i32, i32* @AE_IFLNK, align 4
  %215 = or i32 %214, 493
  %216 = call i32 @archive_entry_set_mode(%struct.archive_entry* %213, i32 %215)
  %217 = load i32, i32* @AE_IFLNK, align 4
  %218 = or i32 %217, 493
  %219 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %220 = call i32 @archive_entry_mode(%struct.archive_entry* %219)
  %221 = call i32 @assertEqualInt(i32 %218, i32 %220)
  %222 = load i32, i32* @ARCHIVE_OK, align 4
  %223 = load %struct.archive*, %struct.archive** %5, align 8
  %224 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %225 = call i32 @archive_write_header(%struct.archive* %223, %struct.archive_entry* %224)
  %226 = call i32 @assertEqualInt(i32 %222, i32 %225)
  %227 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %228 = call i32 @archive_entry_free(%struct.archive_entry* %227)
  %229 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %229, %struct.archive_entry** %4, align 8
  %230 = icmp ne %struct.archive_entry* %229, null
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %234 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %233, i32 11, i32 100)
  %235 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %236 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %237 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %238 = load i32, i32* @AE_IFDIR, align 4
  %239 = or i32 %238, 493
  %240 = call i32 @archive_entry_set_mode(%struct.archive_entry* %237, i32 %239)
  %241 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %242 = call i32 @archive_entry_set_size(%struct.archive_entry* %241, i32 512)
  %243 = load %struct.archive*, %struct.archive** %5, align 8
  %244 = load i32, i32* @ARCHIVE_OK, align 4
  %245 = load %struct.archive*, %struct.archive** %5, align 8
  %246 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %247 = call i32 @archive_write_header(%struct.archive* %245, %struct.archive_entry* %246)
  %248 = call i32 @assertEqualIntA(%struct.archive* %243, i32 %244, i32 %247)
  %249 = call i32 @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0))
  %250 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %251 = call i32 @archive_entry_size(%struct.archive_entry* %250)
  %252 = call i32 @assertEqualInt(i32 0, i32 %251)
  %253 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %254 = call i32 @archive_entry_free(%struct.archive_entry* %253)
  %255 = load %struct.archive*, %struct.archive** %5, align 8
  %256 = load %struct.archive*, %struct.archive** %5, align 8
  %257 = call i32 @archive_write_data(%struct.archive* %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %258 = call i32 @assertEqualIntA(%struct.archive* %255, i32 0, i32 %257)
  %259 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %259, %struct.archive_entry** %4, align 8
  %260 = icmp ne %struct.archive_entry* %259, null
  %261 = zext i1 %260 to i32
  %262 = call i32 @assert(i32 %261)
  %263 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %264 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %263, i32 11, i32 200)
  %265 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %266 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %265, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %267 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %268 = load i32, i32* @AE_IFDIR, align 4
  %269 = or i32 %268, 493
  %270 = call i32 @archive_entry_set_mode(%struct.archive_entry* %267, i32 %269)
  %271 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %272 = call i32 @archive_entry_set_size(%struct.archive_entry* %271, i32 512)
  %273 = load %struct.archive*, %struct.archive** %5, align 8
  %274 = load i32, i32* @ARCHIVE_OK, align 4
  %275 = load %struct.archive*, %struct.archive** %5, align 8
  %276 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %277 = call i32 @archive_write_header(%struct.archive* %275, %struct.archive_entry* %276)
  %278 = call i32 @assertEqualIntA(%struct.archive* %273, i32 %274, i32 %277)
  %279 = call i32 @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0))
  %280 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %281 = call i32 @archive_entry_size(%struct.archive_entry* %280)
  %282 = call i32 @assertEqualInt(i32 0, i32 %281)
  %283 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %284 = call i32 @archive_entry_free(%struct.archive_entry* %283)
  %285 = load %struct.archive*, %struct.archive** %5, align 8
  %286 = load %struct.archive*, %struct.archive** %5, align 8
  %287 = call i32 @archive_write_data(%struct.archive* %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %288 = call i32 @assertEqualIntA(%struct.archive* %285, i32 0, i32 %287)
  %289 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %289, %struct.archive_entry** %4, align 8
  %290 = icmp ne %struct.archive_entry* %289, null
  %291 = zext i1 %290 to i32
  %292 = call i32 @assert(i32 %291)
  %293 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %294 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %293, i32 11, i32 300)
  %295 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %296 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %295, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %297 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %298 = load i32, i32* @AE_IFDIR, align 4
  %299 = or i32 %298, 493
  %300 = call i32 @archive_entry_set_mode(%struct.archive_entry* %297, i32 %299)
  %301 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %302 = call i32 @archive_entry_set_size(%struct.archive_entry* %301, i32 512)
  %303 = load %struct.archive*, %struct.archive** %5, align 8
  %304 = load i32, i32* @ARCHIVE_OK, align 4
  %305 = load %struct.archive*, %struct.archive** %5, align 8
  %306 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %307 = call i32 @archive_write_header(%struct.archive* %305, %struct.archive_entry* %306)
  %308 = call i32 @assertEqualIntA(%struct.archive* %303, i32 %304, i32 %307)
  %309 = call i32 @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0))
  %310 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %311 = call i32 @archive_entry_size(%struct.archive_entry* %310)
  %312 = call i32 @assertEqualInt(i32 0, i32 %311)
  %313 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %314 = call i32 @archive_entry_free(%struct.archive_entry* %313)
  %315 = load %struct.archive*, %struct.archive** %5, align 8
  %316 = load %struct.archive*, %struct.archive** %5, align 8
  %317 = call i32 @archive_write_data(%struct.archive* %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %318 = call i32 @assertEqualIntA(%struct.archive* %315, i32 0, i32 %317)
  %319 = load i32, i32* @ARCHIVE_OK, align 4
  %320 = load %struct.archive*, %struct.archive** %5, align 8
  %321 = call i32 @archive_write_close(%struct.archive* %320)
  %322 = call i32 @assertEqualInt(i32 %319, i32 %321)
  %323 = load i32, i32* @ARCHIVE_OK, align 4
  %324 = load %struct.archive*, %struct.archive** %5, align 8
  %325 = call i32 @archive_write_free(%struct.archive* %324)
  %326 = call i32 @assertEqualInt(i32 %323, i32 %325)
  %327 = load i8*, i8** %8, align 8
  %328 = call i32 @assertEqualMem(i8* %327, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 8)
  %329 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %329, %struct.archive** %5, align 8
  %330 = icmp ne %struct.archive* %329, null
  %331 = zext i1 %330 to i32
  %332 = call i32 @assert(i32 %331)
  %333 = load %struct.archive*, %struct.archive** %5, align 8
  %334 = load i32, i32* @ARCHIVE_OK, align 4
  %335 = load %struct.archive*, %struct.archive** %5, align 8
  %336 = call i32 @archive_read_support_format_all(%struct.archive* %335)
  %337 = call i32 @assertEqualIntA(%struct.archive* %333, i32 %334, i32 %336)
  %338 = load %struct.archive*, %struct.archive** %5, align 8
  %339 = load i32, i32* @ARCHIVE_OK, align 4
  %340 = load %struct.archive*, %struct.archive** %5, align 8
  %341 = call i32 @archive_read_support_filter_all(%struct.archive* %340)
  %342 = call i32 @assertEqualIntA(%struct.archive* %338, i32 %339, i32 %341)
  %343 = load %struct.archive*, %struct.archive** %5, align 8
  %344 = load i32, i32* @ARCHIVE_OK, align 4
  %345 = load %struct.archive*, %struct.archive** %5, align 8
  %346 = load i8*, i8** %8, align 8
  %347 = load i64, i64* %6, align 8
  %348 = call i32 @read_open_memory_seek(%struct.archive* %345, i8* %346, i64 %347, i32 7)
  %349 = call i32 @assertEqualIntA(%struct.archive* %343, i32 %344, i32 %348)
  %350 = load %struct.archive*, %struct.archive** %5, align 8
  %351 = load i32, i32* @ARCHIVE_OK, align 4
  %352 = load %struct.archive*, %struct.archive** %5, align 8
  %353 = call i32 @archive_read_next_header(%struct.archive* %352, %struct.archive_entry** %4)
  %354 = call i32 @assertEqualIntA(%struct.archive* %350, i32 %351, i32 %353)
  %355 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %356 = call i32 @archive_entry_mtime(%struct.archive_entry* %355)
  %357 = call i32 @assertEqualInt(i32 1, i32 %356)
  %358 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %359 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %358)
  %360 = call i32 @assertEqualInt(i32 100, i32 %359)
  %361 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %362 = call i32 @archive_entry_atime(%struct.archive_entry* %361)
  %363 = call i32 @assertEqualInt(i32 0, i32 %362)
  %364 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %365 = call i32 @archive_entry_ctime(%struct.archive_entry* %364)
  %366 = call i32 @assertEqualInt(i32 0, i32 %365)
  %367 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %368 = call i32 @archive_entry_pathname(%struct.archive_entry* %367)
  %369 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %368)
  %370 = load i32, i32* @AE_IFREG, align 4
  %371 = or i32 %370, 493
  %372 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %373 = call i32 @archive_entry_mode(%struct.archive_entry* %372)
  %374 = call i32 @assertEqualInt(i32 %371, i32 %373)
  %375 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %376 = call i32 @archive_entry_size(%struct.archive_entry* %375)
  %377 = call i32 @assertEqualInt(i32 8, i32 %376)
  %378 = load %struct.archive*, %struct.archive** %5, align 8
  %379 = load %struct.archive*, %struct.archive** %5, align 8
  %380 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %381 = call i32 @archive_read_data(%struct.archive* %379, i8* %380, i32 64)
  %382 = call i32 @assertEqualIntA(%struct.archive* %378, i32 8, i32 %381)
  %383 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %384 = call i32 @assertEqualMem(i8* %383, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %385 = load %struct.archive*, %struct.archive** %5, align 8
  %386 = load i32, i32* @ARCHIVE_OK, align 4
  %387 = load %struct.archive*, %struct.archive** %5, align 8
  %388 = call i32 @archive_read_next_header(%struct.archive* %387, %struct.archive_entry** %4)
  %389 = call i32 @assertEqualIntA(%struct.archive* %385, i32 %386, i32 %388)
  %390 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %391 = call i32 @archive_entry_mtime(%struct.archive_entry* %390)
  %392 = call i32 @assertEqualInt(i32 1, i32 %391)
  %393 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %394 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %393)
  %395 = call i32 @assertEqualInt(i32 0, i32 %394)
  %396 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %397 = call i32 @archive_entry_atime(%struct.archive_entry* %396)
  %398 = call i32 @assertEqualInt(i32 0, i32 %397)
  %399 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %400 = call i32 @archive_entry_ctime(%struct.archive_entry* %399)
  %401 = call i32 @assertEqualInt(i32 0, i32 %400)
  %402 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %403 = call i32 @archive_entry_pathname(%struct.archive_entry* %402)
  %404 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %403)
  %405 = load i32, i32* @AE_IFREG, align 4
  %406 = or i32 %405, 493
  %407 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %408 = call i32 @archive_entry_mode(%struct.archive_entry* %407)
  %409 = call i32 @assertEqualInt(i32 %406, i32 %408)
  %410 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %411 = call i32 @archive_entry_size(%struct.archive_entry* %410)
  %412 = call i32 @assertEqualInt(i32 4, i32 %411)
  %413 = load %struct.archive*, %struct.archive** %5, align 8
  %414 = load %struct.archive*, %struct.archive** %5, align 8
  %415 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %416 = call i32 @archive_read_data(%struct.archive* %414, i8* %415, i32 64)
  %417 = call i32 @assertEqualIntA(%struct.archive* %413, i32 4, i32 %416)
  %418 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %419 = call i32 @assertEqualMem(i8* %418, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %420 = load %struct.archive*, %struct.archive** %5, align 8
  %421 = load i32, i32* @ARCHIVE_OK, align 4
  %422 = load %struct.archive*, %struct.archive** %5, align 8
  %423 = call i32 @archive_read_next_header(%struct.archive* %422, %struct.archive_entry** %4)
  %424 = call i32 @assertEqualIntA(%struct.archive* %420, i32 %421, i32 %423)
  %425 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %426 = call i32 @archive_entry_mtime(%struct.archive_entry* %425)
  %427 = call i32 @assertEqualInt(i32 1, i32 %426)
  %428 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %429 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %428)
  %430 = call i32 @assertEqualInt(i32 0, i32 %429)
  %431 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %432 = call i32 @archive_entry_atime(%struct.archive_entry* %431)
  %433 = call i32 @assertEqualInt(i32 0, i32 %432)
  %434 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %435 = call i32 @archive_entry_ctime(%struct.archive_entry* %434)
  %436 = call i32 @assertEqualInt(i32 0, i32 %435)
  %437 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %438 = call i32 @archive_entry_pathname(%struct.archive_entry* %437)
  %439 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %438)
  %440 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %441 = call i32 @archive_entry_symlink(%struct.archive_entry* %440)
  %442 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %441)
  %443 = load i32, i32* @AE_IFLNK, align 4
  %444 = or i32 %443, 493
  %445 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %446 = call i32 @archive_entry_mode(%struct.archive_entry* %445)
  %447 = call i32 @assertEqualInt(i32 %444, i32 %446)
  %448 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %449 = call i32 @archive_entry_size(%struct.archive_entry* %448)
  %450 = call i32 @assertEqualInt(i32 0, i32 %449)
  %451 = load %struct.archive*, %struct.archive** %5, align 8
  %452 = load i32, i32* @ARCHIVE_OK, align 4
  %453 = load %struct.archive*, %struct.archive** %5, align 8
  %454 = call i32 @archive_read_next_header(%struct.archive* %453, %struct.archive_entry** %4)
  %455 = call i32 @assertEqualIntA(%struct.archive* %451, i32 %452, i32 %454)
  %456 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %457 = call i32 @archive_entry_mtime(%struct.archive_entry* %456)
  %458 = call i32 @assertEqualInt(i32 1, i32 %457)
  %459 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %460 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %459)
  %461 = call i32 @assertEqualInt(i32 0, i32 %460)
  %462 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %463 = call i32 @archive_entry_atime(%struct.archive_entry* %462)
  %464 = call i32 @assertEqualInt(i32 0, i32 %463)
  %465 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %466 = call i32 @archive_entry_ctime(%struct.archive_entry* %465)
  %467 = call i32 @assertEqualInt(i32 0, i32 %466)
  %468 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %469 = call i32 @archive_entry_pathname(%struct.archive_entry* %468)
  %470 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %469)
  %471 = load i32, i32* @AE_IFREG, align 4
  %472 = or i32 %471, 493
  %473 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %474 = call i32 @archive_entry_mode(%struct.archive_entry* %473)
  %475 = call i32 @assertEqualInt(i32 %472, i32 %474)
  %476 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %477 = call i32 @archive_entry_size(%struct.archive_entry* %476)
  %478 = call i32 @assertEqualInt(i32 0, i32 %477)
  %479 = load %struct.archive*, %struct.archive** %5, align 8
  %480 = load i32, i32* @ARCHIVE_OK, align 4
  %481 = load %struct.archive*, %struct.archive** %5, align 8
  %482 = call i32 @archive_read_next_header(%struct.archive* %481, %struct.archive_entry** %4)
  %483 = call i32 @assertEqualIntA(%struct.archive* %479, i32 %480, i32 %482)
  %484 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %485 = call i32 @archive_entry_mtime(%struct.archive_entry* %484)
  %486 = call i32 @assertEqualInt(i32 1, i32 %485)
  %487 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %488 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %487)
  %489 = call i32 @assertEqualInt(i32 0, i32 %488)
  %490 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %491 = call i32 @archive_entry_atime(%struct.archive_entry* %490)
  %492 = call i32 @assertEqualInt(i32 0, i32 %491)
  %493 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %494 = call i32 @archive_entry_ctime(%struct.archive_entry* %493)
  %495 = call i32 @assertEqualInt(i32 0, i32 %494)
  %496 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %497 = call i32 @archive_entry_pathname(%struct.archive_entry* %496)
  %498 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %497)
  %499 = load i32, i32* @AE_IFREG, align 4
  %500 = or i32 %499, 292
  %501 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %502 = call i32 @archive_entry_mode(%struct.archive_entry* %501)
  %503 = call i32 @assertEqualInt(i32 %500, i32 %502)
  %504 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %505 = call i32 @archive_entry_size(%struct.archive_entry* %504)
  %506 = call i32 @assertEqualInt(i32 0, i32 %505)
  %507 = load %struct.archive*, %struct.archive** %5, align 8
  %508 = load i32, i32* @ARCHIVE_OK, align 4
  %509 = load %struct.archive*, %struct.archive** %5, align 8
  %510 = call i32 @archive_read_next_header(%struct.archive* %509, %struct.archive_entry** %4)
  %511 = call i32 @assertEqualIntA(%struct.archive* %507, i32 %508, i32 %510)
  %512 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %513 = call i32 @archive_entry_mtime(%struct.archive_entry* %512)
  %514 = call i32 @assertEqualInt(i32 11, i32 %513)
  %515 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %516 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %515)
  %517 = call i32 @assertEqualInt(i32 300, i32 %516)
  %518 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %519 = call i32 @archive_entry_atime(%struct.archive_entry* %518)
  %520 = call i32 @assertEqualInt(i32 0, i32 %519)
  %521 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %522 = call i32 @archive_entry_ctime(%struct.archive_entry* %521)
  %523 = call i32 @assertEqualInt(i32 0, i32 %522)
  %524 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %525 = call i32 @archive_entry_pathname(%struct.archive_entry* %524)
  %526 = call i32 @assertEqualString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %525)
  %527 = load i32, i32* @AE_IFDIR, align 4
  %528 = or i32 %527, 493
  %529 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %530 = call i32 @archive_entry_mode(%struct.archive_entry* %529)
  %531 = call i32 @assertEqualInt(i32 %528, i32 %530)
  %532 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %533 = call i32 @archive_entry_size(%struct.archive_entry* %532)
  %534 = call i32 @assertEqualInt(i32 0, i32 %533)
  %535 = load %struct.archive*, %struct.archive** %5, align 8
  %536 = load %struct.archive*, %struct.archive** %5, align 8
  %537 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %538 = call i32 @archive_read_data(%struct.archive* %536, i8* %537, i32 10)
  %539 = call i32 @assertEqualIntA(%struct.archive* %535, i32 0, i32 %538)
  %540 = load %struct.archive*, %struct.archive** %5, align 8
  %541 = load i32, i32* @ARCHIVE_OK, align 4
  %542 = load %struct.archive*, %struct.archive** %5, align 8
  %543 = call i32 @archive_read_next_header(%struct.archive* %542, %struct.archive_entry** %4)
  %544 = call i32 @assertEqualIntA(%struct.archive* %540, i32 %541, i32 %543)
  %545 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %546 = call i32 @archive_entry_mtime(%struct.archive_entry* %545)
  %547 = call i32 @assertEqualInt(i32 11, i32 %546)
  %548 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %549 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %548)
  %550 = call i32 @assertEqualInt(i32 200, i32 %549)
  %551 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %552 = call i32 @archive_entry_atime(%struct.archive_entry* %551)
  %553 = call i32 @assertEqualInt(i32 0, i32 %552)
  %554 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %555 = call i32 @archive_entry_ctime(%struct.archive_entry* %554)
  %556 = call i32 @assertEqualInt(i32 0, i32 %555)
  %557 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %558 = call i32 @archive_entry_pathname(%struct.archive_entry* %557)
  %559 = call i32 @assertEqualString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %558)
  %560 = load i32, i32* @AE_IFDIR, align 4
  %561 = or i32 %560, 493
  %562 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %563 = call i32 @archive_entry_mode(%struct.archive_entry* %562)
  %564 = call i32 @assertEqualInt(i32 %561, i32 %563)
  %565 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %566 = call i32 @archive_entry_size(%struct.archive_entry* %565)
  %567 = call i32 @assertEqualInt(i32 0, i32 %566)
  %568 = load %struct.archive*, %struct.archive** %5, align 8
  %569 = load %struct.archive*, %struct.archive** %5, align 8
  %570 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %571 = call i32 @archive_read_data(%struct.archive* %569, i8* %570, i32 10)
  %572 = call i32 @assertEqualIntA(%struct.archive* %568, i32 0, i32 %571)
  %573 = load %struct.archive*, %struct.archive** %5, align 8
  %574 = load i32, i32* @ARCHIVE_OK, align 4
  %575 = load %struct.archive*, %struct.archive** %5, align 8
  %576 = call i32 @archive_read_next_header(%struct.archive* %575, %struct.archive_entry** %4)
  %577 = call i32 @assertEqualIntA(%struct.archive* %573, i32 %574, i32 %576)
  %578 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %579 = call i32 @archive_entry_mtime(%struct.archive_entry* %578)
  %580 = call i32 @assertEqualInt(i32 11, i32 %579)
  %581 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %582 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %581)
  %583 = call i32 @assertEqualInt(i32 100, i32 %582)
  %584 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %585 = call i32 @archive_entry_atime(%struct.archive_entry* %584)
  %586 = call i32 @assertEqualInt(i32 0, i32 %585)
  %587 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %588 = call i32 @archive_entry_ctime(%struct.archive_entry* %587)
  %589 = call i32 @assertEqualInt(i32 0, i32 %588)
  %590 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %591 = call i32 @archive_entry_pathname(%struct.archive_entry* %590)
  %592 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 %591)
  %593 = load i32, i32* @AE_IFDIR, align 4
  %594 = or i32 %593, 493
  %595 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %596 = call i32 @archive_entry_mode(%struct.archive_entry* %595)
  %597 = call i32 @assertEqualInt(i32 %594, i32 %596)
  %598 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %599 = call i32 @archive_entry_size(%struct.archive_entry* %598)
  %600 = call i32 @assertEqualInt(i32 0, i32 %599)
  %601 = load %struct.archive*, %struct.archive** %5, align 8
  %602 = load %struct.archive*, %struct.archive** %5, align 8
  %603 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %604 = call i32 @archive_read_data(%struct.archive* %602, i8* %603, i32 10)
  %605 = call i32 @assertEqualIntA(%struct.archive* %601, i32 0, i32 %604)
  %606 = load %struct.archive*, %struct.archive** %5, align 8
  %607 = load i32, i32* @ARCHIVE_EOF, align 4
  %608 = load %struct.archive*, %struct.archive** %5, align 8
  %609 = call i32 @archive_read_next_header(%struct.archive* %608, %struct.archive_entry** %4)
  %610 = call i32 @assertEqualIntA(%struct.archive* %606, i32 %607, i32 %609)
  %611 = load %struct.archive*, %struct.archive** %5, align 8
  %612 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %613 = load %struct.archive*, %struct.archive** %5, align 8
  %614 = call i32 @archive_filter_code(%struct.archive* %613, i32 0)
  %615 = call i32 @assertEqualIntA(%struct.archive* %611, i32 %612, i32 %614)
  %616 = load %struct.archive*, %struct.archive** %5, align 8
  %617 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %618 = load %struct.archive*, %struct.archive** %5, align 8
  %619 = call i32 @archive_format(%struct.archive* %618)
  %620 = call i32 @assertEqualIntA(%struct.archive* %616, i32 %617, i32 %619)
  %621 = load i32, i32* @ARCHIVE_OK, align 4
  %622 = load %struct.archive*, %struct.archive** %5, align 8
  %623 = call i32 @archive_read_close(%struct.archive* %622)
  %624 = call i32 @assertEqualInt(i32 %621, i32 %623)
  %625 = load i32, i32* @ARCHIVE_OK, align 4
  %626 = load %struct.archive*, %struct.archive** %5, align 8
  %627 = call i32 @archive_read_free(%struct.archive* %626)
  %628 = call i32 @assertEqualInt(i32 %625, i32 %627)
  %629 = load i8*, i8** %8, align 8
  %630 = call i32 @free(i8* %629)
  br label %631

631:                                              ; preds = %37, %28
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_7zip(%struct.archive*) #1

declare dso_local i32 @archive_write_set_format_option(%struct.archive*, i8*, i8*, i8*) #1

declare dso_local i32 @skipping(i8*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_entry_copy_symlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @read_open_memory_seek(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

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
