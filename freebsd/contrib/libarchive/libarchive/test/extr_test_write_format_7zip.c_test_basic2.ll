; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_7zip.c_test_basic2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_7zip.c_test_basic2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"7zip\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s writing not fully supported on this platform\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [59 x i8] c"size should be zero so that applications know not to write\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"dir/subdir\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"dir/subdir/subdir\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"7z\BC\AF'\1C\00\03\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"dir/subdir/subdir/\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"dir/subdir/\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dir/\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_basic2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic2(i8* %0) #0 {
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
  br label %443

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
  %55 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %54, i32 1, i32 100)
  %56 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %57 = call i32 @archive_entry_mtime(%struct.archive_entry* %56)
  %58 = call i32 @assertEqualInt(i32 1, i32 %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %60 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %59)
  %61 = call i32 @assertEqualInt(i32 100, i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %63 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %65 = call i32 @archive_entry_pathname(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %68 = load i32, i32* @AE_IFREG, align 4
  %69 = or i32 %68, 493
  %70 = call i32 @archive_entry_set_mode(%struct.archive_entry* %67, i32 %69)
  %71 = load i32, i32* @AE_IFREG, align 4
  %72 = or i32 %71, 493
  %73 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %74 = call i32 @archive_entry_mode(%struct.archive_entry* %73)
  %75 = call i32 @assertEqualInt(i32 %72, i32 %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %77 = call i32 @archive_entry_set_size(%struct.archive_entry* %76, i32 8)
  %78 = load %struct.archive*, %struct.archive** %5, align 8
  %79 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %80 = call i32 @archive_write_header(%struct.archive* %78, %struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 0, i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %83 = call i32 @archive_entry_free(%struct.archive_entry* %82)
  %84 = load %struct.archive*, %struct.archive** %5, align 8
  %85 = call i32 @archive_write_data(%struct.archive* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %86 = call i32 @assertEqualInt(i32 8, i32 %85)
  %87 = load %struct.archive*, %struct.archive** %5, align 8
  %88 = call i32 @archive_write_data(%struct.archive* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %89 = call i32 @assertEqualInt(i32 0, i32 %88)
  %90 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %90, %struct.archive_entry** %4, align 8
  %91 = icmp ne %struct.archive_entry* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %95 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %94, i32 1, i32 10)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %97 = call i32 @archive_entry_mtime(%struct.archive_entry* %96)
  %98 = call i32 @assertEqualInt(i32 1, i32 %97)
  %99 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %100 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %99)
  %101 = call i32 @assertEqualInt(i32 10, i32 %100)
  %102 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %103 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %104 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %105 = call i32 @archive_entry_pathname(%struct.archive_entry* %104)
  %106 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %108 = load i32, i32* @AE_IFREG, align 4
  %109 = or i32 %108, 493
  %110 = call i32 @archive_entry_set_mode(%struct.archive_entry* %107, i32 %109)
  %111 = load i32, i32* @AE_IFREG, align 4
  %112 = or i32 %111, 493
  %113 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %114 = call i32 @archive_entry_mode(%struct.archive_entry* %113)
  %115 = call i32 @assertEqualInt(i32 %112, i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %117 = call i32 @archive_entry_set_size(%struct.archive_entry* %116, i32 4)
  %118 = load i32, i32* @ARCHIVE_OK, align 4
  %119 = load %struct.archive*, %struct.archive** %5, align 8
  %120 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %121 = call i32 @archive_write_header(%struct.archive* %119, %struct.archive_entry* %120)
  %122 = call i32 @assertEqualInt(i32 %118, i32 %121)
  %123 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %124 = call i32 @archive_entry_free(%struct.archive_entry* %123)
  %125 = load %struct.archive*, %struct.archive** %5, align 8
  %126 = call i32 @archive_write_data(%struct.archive* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %127 = call i32 @assertEqualInt(i32 4, i32 %126)
  %128 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %128, %struct.archive_entry** %4, align 8
  %129 = icmp ne %struct.archive_entry* %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %133 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %132, i32 11, i32 100)
  %134 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %135 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %136 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %137 = load i32, i32* @AE_IFDIR, align 4
  %138 = or i32 %137, 493
  %139 = call i32 @archive_entry_set_mode(%struct.archive_entry* %136, i32 %138)
  %140 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %141 = call i32 @archive_entry_set_size(%struct.archive_entry* %140, i32 512)
  %142 = load %struct.archive*, %struct.archive** %5, align 8
  %143 = load i32, i32* @ARCHIVE_OK, align 4
  %144 = load %struct.archive*, %struct.archive** %5, align 8
  %145 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %146 = call i32 @archive_write_header(%struct.archive* %144, %struct.archive_entry* %145)
  %147 = call i32 @assertEqualIntA(%struct.archive* %142, i32 %143, i32 %146)
  %148 = call i32 @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %149 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %150 = call i32 @archive_entry_size(%struct.archive_entry* %149)
  %151 = call i32 @assertEqualInt(i32 0, i32 %150)
  %152 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %153 = call i32 @archive_entry_free(%struct.archive_entry* %152)
  %154 = load %struct.archive*, %struct.archive** %5, align 8
  %155 = load %struct.archive*, %struct.archive** %5, align 8
  %156 = call i32 @archive_write_data(%struct.archive* %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %157 = call i32 @assertEqualIntA(%struct.archive* %154, i32 0, i32 %156)
  %158 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %158, %struct.archive_entry** %4, align 8
  %159 = icmp ne %struct.archive_entry* %158, null
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %163 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %162, i32 11, i32 200)
  %164 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %165 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %166 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %167 = load i32, i32* @AE_IFDIR, align 4
  %168 = or i32 %167, 493
  %169 = call i32 @archive_entry_set_mode(%struct.archive_entry* %166, i32 %168)
  %170 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %171 = call i32 @archive_entry_set_size(%struct.archive_entry* %170, i32 512)
  %172 = load %struct.archive*, %struct.archive** %5, align 8
  %173 = load i32, i32* @ARCHIVE_OK, align 4
  %174 = load %struct.archive*, %struct.archive** %5, align 8
  %175 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %176 = call i32 @archive_write_header(%struct.archive* %174, %struct.archive_entry* %175)
  %177 = call i32 @assertEqualIntA(%struct.archive* %172, i32 %173, i32 %176)
  %178 = call i32 @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %179 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %180 = call i32 @archive_entry_size(%struct.archive_entry* %179)
  %181 = call i32 @assertEqualInt(i32 0, i32 %180)
  %182 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %183 = call i32 @archive_entry_free(%struct.archive_entry* %182)
  %184 = load %struct.archive*, %struct.archive** %5, align 8
  %185 = load %struct.archive*, %struct.archive** %5, align 8
  %186 = call i32 @archive_write_data(%struct.archive* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %187 = call i32 @assertEqualIntA(%struct.archive* %184, i32 0, i32 %186)
  %188 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %188, %struct.archive_entry** %4, align 8
  %189 = icmp ne %struct.archive_entry* %188, null
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %193 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %192, i32 11, i32 300)
  %194 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %195 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %196 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %197 = load i32, i32* @AE_IFDIR, align 4
  %198 = or i32 %197, 493
  %199 = call i32 @archive_entry_set_mode(%struct.archive_entry* %196, i32 %198)
  %200 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %201 = call i32 @archive_entry_set_size(%struct.archive_entry* %200, i32 512)
  %202 = load %struct.archive*, %struct.archive** %5, align 8
  %203 = load i32, i32* @ARCHIVE_OK, align 4
  %204 = load %struct.archive*, %struct.archive** %5, align 8
  %205 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %206 = call i32 @archive_write_header(%struct.archive* %204, %struct.archive_entry* %205)
  %207 = call i32 @assertEqualIntA(%struct.archive* %202, i32 %203, i32 %206)
  %208 = call i32 @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %209 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %210 = call i32 @archive_entry_size(%struct.archive_entry* %209)
  %211 = call i32 @assertEqualInt(i32 0, i32 %210)
  %212 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %213 = call i32 @archive_entry_free(%struct.archive_entry* %212)
  %214 = load %struct.archive*, %struct.archive** %5, align 8
  %215 = load %struct.archive*, %struct.archive** %5, align 8
  %216 = call i32 @archive_write_data(%struct.archive* %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %217 = call i32 @assertEqualIntA(%struct.archive* %214, i32 0, i32 %216)
  %218 = load i32, i32* @ARCHIVE_OK, align 4
  %219 = load %struct.archive*, %struct.archive** %5, align 8
  %220 = call i32 @archive_write_close(%struct.archive* %219)
  %221 = call i32 @assertEqualInt(i32 %218, i32 %220)
  %222 = load i32, i32* @ARCHIVE_OK, align 4
  %223 = load %struct.archive*, %struct.archive** %5, align 8
  %224 = call i32 @archive_write_free(%struct.archive* %223)
  %225 = call i32 @assertEqualInt(i32 %222, i32 %224)
  %226 = load i8*, i8** %8, align 8
  %227 = call i32 @assertEqualMem(i8* %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 8)
  %228 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %228, %struct.archive** %5, align 8
  %229 = icmp ne %struct.archive* %228, null
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  %232 = load %struct.archive*, %struct.archive** %5, align 8
  %233 = load i32, i32* @ARCHIVE_OK, align 4
  %234 = load %struct.archive*, %struct.archive** %5, align 8
  %235 = call i32 @archive_read_support_format_all(%struct.archive* %234)
  %236 = call i32 @assertEqualIntA(%struct.archive* %232, i32 %233, i32 %235)
  %237 = load %struct.archive*, %struct.archive** %5, align 8
  %238 = load i32, i32* @ARCHIVE_OK, align 4
  %239 = load %struct.archive*, %struct.archive** %5, align 8
  %240 = call i32 @archive_read_support_filter_all(%struct.archive* %239)
  %241 = call i32 @assertEqualIntA(%struct.archive* %237, i32 %238, i32 %240)
  %242 = load %struct.archive*, %struct.archive** %5, align 8
  %243 = load i32, i32* @ARCHIVE_OK, align 4
  %244 = load %struct.archive*, %struct.archive** %5, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = load i64, i64* %6, align 8
  %247 = call i32 @read_open_memory_seek(%struct.archive* %244, i8* %245, i64 %246, i32 7)
  %248 = call i32 @assertEqualIntA(%struct.archive* %242, i32 %243, i32 %247)
  %249 = load %struct.archive*, %struct.archive** %5, align 8
  %250 = load i32, i32* @ARCHIVE_OK, align 4
  %251 = load %struct.archive*, %struct.archive** %5, align 8
  %252 = call i32 @archive_read_next_header(%struct.archive* %251, %struct.archive_entry** %4)
  %253 = call i32 @assertEqualIntA(%struct.archive* %249, i32 %250, i32 %252)
  %254 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %255 = call i32 @archive_entry_mtime(%struct.archive_entry* %254)
  %256 = call i32 @assertEqualInt(i32 1, i32 %255)
  %257 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %258 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %257)
  %259 = call i32 @assertEqualInt(i32 100, i32 %258)
  %260 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %261 = call i32 @archive_entry_atime(%struct.archive_entry* %260)
  %262 = call i32 @assertEqualInt(i32 0, i32 %261)
  %263 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %264 = call i32 @archive_entry_ctime(%struct.archive_entry* %263)
  %265 = call i32 @assertEqualInt(i32 0, i32 %264)
  %266 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %267 = call i32 @archive_entry_pathname(%struct.archive_entry* %266)
  %268 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @AE_IFREG, align 4
  %270 = or i32 %269, 493
  %271 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %272 = call i32 @archive_entry_mode(%struct.archive_entry* %271)
  %273 = call i32 @assertEqualInt(i32 %270, i32 %272)
  %274 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %275 = call i32 @archive_entry_size(%struct.archive_entry* %274)
  %276 = call i32 @assertEqualInt(i32 8, i32 %275)
  %277 = load %struct.archive*, %struct.archive** %5, align 8
  %278 = load %struct.archive*, %struct.archive** %5, align 8
  %279 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %280 = call i32 @archive_read_data(%struct.archive* %278, i8* %279, i32 64)
  %281 = call i32 @assertEqualIntA(%struct.archive* %277, i32 8, i32 %280)
  %282 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %283 = call i32 @assertEqualMem(i8* %282, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %284 = load %struct.archive*, %struct.archive** %5, align 8
  %285 = load i32, i32* @ARCHIVE_OK, align 4
  %286 = load %struct.archive*, %struct.archive** %5, align 8
  %287 = call i32 @archive_read_next_header(%struct.archive* %286, %struct.archive_entry** %4)
  %288 = call i32 @assertEqualIntA(%struct.archive* %284, i32 %285, i32 %287)
  %289 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %290 = call i32 @archive_entry_mtime(%struct.archive_entry* %289)
  %291 = call i32 @assertEqualInt(i32 1, i32 %290)
  %292 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %293 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %292)
  %294 = call i32 @assertEqualInt(i32 0, i32 %293)
  %295 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %296 = call i32 @archive_entry_atime(%struct.archive_entry* %295)
  %297 = call i32 @assertEqualInt(i32 0, i32 %296)
  %298 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %299 = call i32 @archive_entry_ctime(%struct.archive_entry* %298)
  %300 = call i32 @assertEqualInt(i32 0, i32 %299)
  %301 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %302 = call i32 @archive_entry_pathname(%struct.archive_entry* %301)
  %303 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* @AE_IFREG, align 4
  %305 = or i32 %304, 493
  %306 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %307 = call i32 @archive_entry_mode(%struct.archive_entry* %306)
  %308 = call i32 @assertEqualInt(i32 %305, i32 %307)
  %309 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %310 = call i32 @archive_entry_size(%struct.archive_entry* %309)
  %311 = call i32 @assertEqualInt(i32 4, i32 %310)
  %312 = load %struct.archive*, %struct.archive** %5, align 8
  %313 = load %struct.archive*, %struct.archive** %5, align 8
  %314 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %315 = call i32 @archive_read_data(%struct.archive* %313, i8* %314, i32 64)
  %316 = call i32 @assertEqualIntA(%struct.archive* %312, i32 4, i32 %315)
  %317 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %318 = call i32 @assertEqualMem(i8* %317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %319 = load %struct.archive*, %struct.archive** %5, align 8
  %320 = load i32, i32* @ARCHIVE_OK, align 4
  %321 = load %struct.archive*, %struct.archive** %5, align 8
  %322 = call i32 @archive_read_next_header(%struct.archive* %321, %struct.archive_entry** %4)
  %323 = call i32 @assertEqualIntA(%struct.archive* %319, i32 %320, i32 %322)
  %324 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %325 = call i32 @archive_entry_mtime(%struct.archive_entry* %324)
  %326 = call i32 @assertEqualInt(i32 11, i32 %325)
  %327 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %328 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %327)
  %329 = call i32 @assertEqualInt(i32 300, i32 %328)
  %330 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %331 = call i32 @archive_entry_atime(%struct.archive_entry* %330)
  %332 = call i32 @assertEqualInt(i32 0, i32 %331)
  %333 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %334 = call i32 @archive_entry_ctime(%struct.archive_entry* %333)
  %335 = call i32 @assertEqualInt(i32 0, i32 %334)
  %336 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %337 = call i32 @archive_entry_pathname(%struct.archive_entry* %336)
  %338 = call i32 @assertEqualString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %337)
  %339 = load i32, i32* @AE_IFDIR, align 4
  %340 = or i32 %339, 493
  %341 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %342 = call i32 @archive_entry_mode(%struct.archive_entry* %341)
  %343 = call i32 @assertEqualInt(i32 %340, i32 %342)
  %344 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %345 = call i32 @archive_entry_size(%struct.archive_entry* %344)
  %346 = call i32 @assertEqualInt(i32 0, i32 %345)
  %347 = load %struct.archive*, %struct.archive** %5, align 8
  %348 = load %struct.archive*, %struct.archive** %5, align 8
  %349 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %350 = call i32 @archive_read_data(%struct.archive* %348, i8* %349, i32 10)
  %351 = call i32 @assertEqualIntA(%struct.archive* %347, i32 0, i32 %350)
  %352 = load %struct.archive*, %struct.archive** %5, align 8
  %353 = load i32, i32* @ARCHIVE_OK, align 4
  %354 = load %struct.archive*, %struct.archive** %5, align 8
  %355 = call i32 @archive_read_next_header(%struct.archive* %354, %struct.archive_entry** %4)
  %356 = call i32 @assertEqualIntA(%struct.archive* %352, i32 %353, i32 %355)
  %357 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %358 = call i32 @archive_entry_mtime(%struct.archive_entry* %357)
  %359 = call i32 @assertEqualInt(i32 11, i32 %358)
  %360 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %361 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %360)
  %362 = call i32 @assertEqualInt(i32 200, i32 %361)
  %363 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %364 = call i32 @archive_entry_atime(%struct.archive_entry* %363)
  %365 = call i32 @assertEqualInt(i32 0, i32 %364)
  %366 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %367 = call i32 @archive_entry_ctime(%struct.archive_entry* %366)
  %368 = call i32 @assertEqualInt(i32 0, i32 %367)
  %369 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %370 = call i32 @archive_entry_pathname(%struct.archive_entry* %369)
  %371 = call i32 @assertEqualString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* @AE_IFDIR, align 4
  %373 = or i32 %372, 493
  %374 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %375 = call i32 @archive_entry_mode(%struct.archive_entry* %374)
  %376 = call i32 @assertEqualInt(i32 %373, i32 %375)
  %377 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %378 = call i32 @archive_entry_size(%struct.archive_entry* %377)
  %379 = call i32 @assertEqualInt(i32 0, i32 %378)
  %380 = load %struct.archive*, %struct.archive** %5, align 8
  %381 = load %struct.archive*, %struct.archive** %5, align 8
  %382 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %383 = call i32 @archive_read_data(%struct.archive* %381, i8* %382, i32 10)
  %384 = call i32 @assertEqualIntA(%struct.archive* %380, i32 0, i32 %383)
  %385 = load %struct.archive*, %struct.archive** %5, align 8
  %386 = load i32, i32* @ARCHIVE_OK, align 4
  %387 = load %struct.archive*, %struct.archive** %5, align 8
  %388 = call i32 @archive_read_next_header(%struct.archive* %387, %struct.archive_entry** %4)
  %389 = call i32 @assertEqualIntA(%struct.archive* %385, i32 %386, i32 %388)
  %390 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %391 = call i32 @archive_entry_mtime(%struct.archive_entry* %390)
  %392 = call i32 @assertEqualInt(i32 11, i32 %391)
  %393 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %394 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %393)
  %395 = call i32 @assertEqualInt(i32 100, i32 %394)
  %396 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %397 = call i32 @archive_entry_atime(%struct.archive_entry* %396)
  %398 = call i32 @assertEqualInt(i32 0, i32 %397)
  %399 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %400 = call i32 @archive_entry_ctime(%struct.archive_entry* %399)
  %401 = call i32 @assertEqualInt(i32 0, i32 %400)
  %402 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %403 = call i32 @archive_entry_pathname(%struct.archive_entry* %402)
  %404 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %403)
  %405 = load i32, i32* @AE_IFDIR, align 4
  %406 = or i32 %405, 493
  %407 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %408 = call i32 @archive_entry_mode(%struct.archive_entry* %407)
  %409 = call i32 @assertEqualInt(i32 %406, i32 %408)
  %410 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %411 = call i32 @archive_entry_size(%struct.archive_entry* %410)
  %412 = call i32 @assertEqualInt(i32 0, i32 %411)
  %413 = load %struct.archive*, %struct.archive** %5, align 8
  %414 = load %struct.archive*, %struct.archive** %5, align 8
  %415 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %416 = call i32 @archive_read_data(%struct.archive* %414, i8* %415, i32 10)
  %417 = call i32 @assertEqualIntA(%struct.archive* %413, i32 0, i32 %416)
  %418 = load %struct.archive*, %struct.archive** %5, align 8
  %419 = load i32, i32* @ARCHIVE_EOF, align 4
  %420 = load %struct.archive*, %struct.archive** %5, align 8
  %421 = call i32 @archive_read_next_header(%struct.archive* %420, %struct.archive_entry** %4)
  %422 = call i32 @assertEqualIntA(%struct.archive* %418, i32 %419, i32 %421)
  %423 = load %struct.archive*, %struct.archive** %5, align 8
  %424 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %425 = load %struct.archive*, %struct.archive** %5, align 8
  %426 = call i32 @archive_filter_code(%struct.archive* %425, i32 0)
  %427 = call i32 @assertEqualIntA(%struct.archive* %423, i32 %424, i32 %426)
  %428 = load %struct.archive*, %struct.archive** %5, align 8
  %429 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %430 = load %struct.archive*, %struct.archive** %5, align 8
  %431 = call i32 @archive_format(%struct.archive* %430)
  %432 = call i32 @assertEqualIntA(%struct.archive* %428, i32 %429, i32 %431)
  %433 = load i32, i32* @ARCHIVE_OK, align 4
  %434 = load %struct.archive*, %struct.archive** %5, align 8
  %435 = call i32 @archive_read_close(%struct.archive* %434)
  %436 = call i32 @assertEqualInt(i32 %433, i32 %435)
  %437 = load i32, i32* @ARCHIVE_OK, align 4
  %438 = load %struct.archive*, %struct.archive** %5, align 8
  %439 = call i32 @archive_read_free(%struct.archive* %438)
  %440 = call i32 @assertEqualInt(i32 %437, i32 %439)
  %441 = load i8*, i8** %8, align 8
  %442 = call i32 @free(i8* %441)
  br label %443

443:                                              ; preds = %37, %28
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

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

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
