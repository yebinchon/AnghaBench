; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip.c_write_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip.c_write_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"file3\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"mnopq\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"size should be zero so that applications know not to write\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"file_stored\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"file2_stored\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ACEG\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"file3_stored\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ijklm\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"symlink_stored\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"dir_stored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*)* @write_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_contents(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %4 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %4, %struct.archive_entry** %3, align 8
  %5 = icmp ne %struct.archive_entry* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %9 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %8, i32 1, i32 10)
  %10 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %11 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %13 = load i32, i32* @AE_IFREG, align 4
  %14 = or i32 %13, 493
  %15 = call i32 @archive_entry_set_mode(%struct.archive_entry* %12, i32 %14)
  %16 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %17 = call i32 @archive_entry_set_size(%struct.archive_entry* %16, i32 8)
  %18 = load %struct.archive*, %struct.archive** %2, align 8
  %19 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %20 = call i32 @archive_write_header(%struct.archive* %18, %struct.archive_entry* %19)
  %21 = call i32 @assertEqualInt(i32 0, i32 %20)
  %22 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %23 = call i32 @archive_entry_free(%struct.archive_entry* %22)
  %24 = load %struct.archive*, %struct.archive** %2, align 8
  %25 = call i32 @archive_write_data(%struct.archive* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %26 = call i32 @assertEqualInt(i32 8, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %2, align 8
  %28 = call i32 @archive_write_data(%struct.archive* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %29 = call i32 @assertEqualInt(i32 0, i32 %28)
  %30 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %30, %struct.archive_entry** %3, align 8
  %31 = icmp ne %struct.archive_entry* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %35 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %34, i32 1, i32 10)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %37 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %39 = load i32, i32* @AE_IFREG, align 4
  %40 = or i32 %39, 493
  %41 = call i32 @archive_entry_set_mode(%struct.archive_entry* %38, i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %43 = call i32 @archive_entry_set_size(%struct.archive_entry* %42, i32 4)
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = load %struct.archive*, %struct.archive** %2, align 8
  %46 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %47 = call i32 @archive_write_header(%struct.archive* %45, %struct.archive_entry* %46)
  %48 = call i32 @assertEqualInt(i32 %44, i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %50 = call i32 @archive_entry_free(%struct.archive_entry* %49)
  %51 = load %struct.archive*, %struct.archive** %2, align 8
  %52 = call i32 @archive_write_data(%struct.archive* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %53 = call i32 @assertEqualInt(i32 4, i32 %52)
  %54 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %54, %struct.archive_entry** %3, align 8
  %55 = icmp ne %struct.archive_entry* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %59 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %58, i32 2, i32 15)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %61 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %62 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %63 = load i32, i32* @AE_IFREG, align 4
  %64 = or i32 %63, 401
  %65 = call i32 @archive_entry_set_mode(%struct.archive_entry* %62, i32 %64)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %67 = call i32 @archive_entry_unset_size(%struct.archive_entry* %66)
  %68 = load i32, i32* @ARCHIVE_OK, align 4
  %69 = load %struct.archive*, %struct.archive** %2, align 8
  %70 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %71 = call i32 @archive_write_header(%struct.archive* %69, %struct.archive_entry* %70)
  %72 = call i32 @assertEqualInt(i32 %68, i32 %71)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %74 = call i32 @archive_entry_free(%struct.archive_entry* %73)
  %75 = load %struct.archive*, %struct.archive** %2, align 8
  %76 = call i32 @archive_write_data(%struct.archive* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %77 = call i32 @assertEqualInt(i32 5, i32 %76)
  %78 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %78, %struct.archive_entry** %3, align 8
  %79 = icmp ne %struct.archive_entry* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %83 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %82, i32 1, i32 10)
  %84 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %85 = call i32 @archive_entry_mtime(%struct.archive_entry* %84)
  %86 = call i32 @assertEqualInt(i32 1, i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %88 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %87)
  %89 = call i32 @assertEqualInt(i32 10, i32 %88)
  %90 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %91 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %92 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %93 = call i32 @archive_entry_pathname(%struct.archive_entry* %92)
  %94 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  %95 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %96 = call i32 @archive_entry_copy_symlink(%struct.archive_entry* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %98 = call i32 @archive_entry_symlink(%struct.archive_entry* %97)
  %99 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %101 = load i32, i32* @AE_IFLNK, align 4
  %102 = or i32 %101, 493
  %103 = call i32 @archive_entry_set_mode(%struct.archive_entry* %100, i32 %102)
  %104 = load i32, i32* @AE_IFLNK, align 4
  %105 = or i32 %104, 493
  %106 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %107 = call i32 @archive_entry_mode(%struct.archive_entry* %106)
  %108 = call i32 @assertEqualInt(i32 %105, i32 %107)
  %109 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %110 = call i32 @archive_entry_set_size(%struct.archive_entry* %109, i32 4)
  %111 = load i32, i32* @ARCHIVE_OK, align 4
  %112 = load %struct.archive*, %struct.archive** %2, align 8
  %113 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %114 = call i32 @archive_write_header(%struct.archive* %112, %struct.archive_entry* %113)
  %115 = call i32 @assertEqualInt(i32 %111, i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %117 = call i32 @archive_entry_free(%struct.archive_entry* %116)
  %118 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %118, %struct.archive_entry** %3, align 8
  %119 = icmp ne %struct.archive_entry* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %123 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %122, i32 11, i32 110)
  %124 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %125 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %126 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %127 = load i32, i32* @S_IFDIR, align 4
  %128 = or i32 %127, 493
  %129 = call i32 @archive_entry_set_mode(%struct.archive_entry* %126, i32 %128)
  %130 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %131 = call i32 @archive_entry_set_size(%struct.archive_entry* %130, i32 512)
  %132 = load %struct.archive*, %struct.archive** %2, align 8
  %133 = load i32, i32* @ARCHIVE_OK, align 4
  %134 = load %struct.archive*, %struct.archive** %2, align 8
  %135 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %136 = call i32 @archive_write_header(%struct.archive* %134, %struct.archive_entry* %135)
  %137 = call i32 @assertEqualIntA(%struct.archive* %132, i32 %133, i32 %136)
  %138 = call i32 @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %139 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %140 = call i32 @archive_entry_size(%struct.archive_entry* %139)
  %141 = call i32 @assertEqualInt(i32 0, i32 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %143 = call i32 @archive_entry_free(%struct.archive_entry* %142)
  %144 = load %struct.archive*, %struct.archive** %2, align 8
  %145 = load %struct.archive*, %struct.archive** %2, align 8
  %146 = call i32 @archive_write_data(%struct.archive* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %147 = call i32 @assertEqualIntA(%struct.archive* %144, i32 0, i32 %146)
  %148 = load %struct.archive*, %struct.archive** %2, align 8
  %149 = load i32, i32* @ARCHIVE_OK, align 4
  %150 = load %struct.archive*, %struct.archive** %2, align 8
  %151 = call i32 @archive_write_zip_set_compression_store(%struct.archive* %150)
  %152 = call i32 @assertEqualIntA(%struct.archive* %148, i32 %149, i32 %151)
  %153 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %153, %struct.archive_entry** %3, align 8
  %154 = icmp ne %struct.archive_entry* %153, null
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %158 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %157, i32 1, i32 10)
  %159 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %160 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %161 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %162 = load i32, i32* @AE_IFREG, align 4
  %163 = or i32 %162, 493
  %164 = call i32 @archive_entry_set_mode(%struct.archive_entry* %161, i32 %163)
  %165 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %166 = call i32 @archive_entry_set_size(%struct.archive_entry* %165, i32 8)
  %167 = load %struct.archive*, %struct.archive** %2, align 8
  %168 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %169 = call i32 @archive_write_header(%struct.archive* %167, %struct.archive_entry* %168)
  %170 = call i32 @assertEqualInt(i32 0, i32 %169)
  %171 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %172 = call i32 @archive_entry_free(%struct.archive_entry* %171)
  %173 = load %struct.archive*, %struct.archive** %2, align 8
  %174 = call i32 @archive_write_data(%struct.archive* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %175 = call i32 @assertEqualInt(i32 8, i32 %174)
  %176 = load %struct.archive*, %struct.archive** %2, align 8
  %177 = call i32 @archive_write_data(%struct.archive* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %178 = call i32 @assertEqualInt(i32 0, i32 %177)
  %179 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %179, %struct.archive_entry** %3, align 8
  %180 = icmp ne %struct.archive_entry* %179, null
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %184 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %183, i32 1, i32 10)
  %185 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %186 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %187 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %188 = load i32, i32* @AE_IFREG, align 4
  %189 = or i32 %188, 493
  %190 = call i32 @archive_entry_set_mode(%struct.archive_entry* %187, i32 %189)
  %191 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %192 = call i32 @archive_entry_set_size(%struct.archive_entry* %191, i32 4)
  %193 = load i32, i32* @ARCHIVE_OK, align 4
  %194 = load %struct.archive*, %struct.archive** %2, align 8
  %195 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %196 = call i32 @archive_write_header(%struct.archive* %194, %struct.archive_entry* %195)
  %197 = call i32 @assertEqualInt(i32 %193, i32 %196)
  %198 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %199 = call i32 @archive_entry_free(%struct.archive_entry* %198)
  %200 = load %struct.archive*, %struct.archive** %2, align 8
  %201 = call i32 @archive_write_data(%struct.archive* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %202 = call i32 @assertEqualInt(i32 4, i32 %201)
  %203 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %203, %struct.archive_entry** %3, align 8
  %204 = icmp ne %struct.archive_entry* %203, null
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %208 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %207, i32 2, i32 15)
  %209 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %210 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %209, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %211 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %212 = load i32, i32* @AE_IFREG, align 4
  %213 = or i32 %212, 401
  %214 = call i32 @archive_entry_set_mode(%struct.archive_entry* %211, i32 %213)
  %215 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %216 = call i32 @archive_entry_unset_size(%struct.archive_entry* %215)
  %217 = load i32, i32* @ARCHIVE_OK, align 4
  %218 = load %struct.archive*, %struct.archive** %2, align 8
  %219 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %220 = call i32 @archive_write_header(%struct.archive* %218, %struct.archive_entry* %219)
  %221 = call i32 @assertEqualInt(i32 %217, i32 %220)
  %222 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %223 = call i32 @archive_entry_free(%struct.archive_entry* %222)
  %224 = load %struct.archive*, %struct.archive** %2, align 8
  %225 = call i32 @archive_write_data(%struct.archive* %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 5)
  %226 = call i32 @assertEqualInt(i32 5, i32 %225)
  %227 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %227, %struct.archive_entry** %3, align 8
  %228 = icmp ne %struct.archive_entry* %227, null
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %232 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %231, i32 1, i32 10)
  %233 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %234 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %233, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %235 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %236 = call i32 @archive_entry_copy_symlink(%struct.archive_entry* %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %237 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %238 = load i32, i32* @AE_IFLNK, align 4
  %239 = or i32 %238, 493
  %240 = call i32 @archive_entry_set_mode(%struct.archive_entry* %237, i32 %239)
  %241 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %242 = call i32 @archive_entry_set_size(%struct.archive_entry* %241, i32 4)
  %243 = load i32, i32* @ARCHIVE_OK, align 4
  %244 = load %struct.archive*, %struct.archive** %2, align 8
  %245 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %246 = call i32 @archive_write_header(%struct.archive* %244, %struct.archive_entry* %245)
  %247 = call i32 @assertEqualInt(i32 %243, i32 %246)
  %248 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %249 = call i32 @archive_entry_free(%struct.archive_entry* %248)
  %250 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %250, %struct.archive_entry** %3, align 8
  %251 = icmp ne %struct.archive_entry* %250, null
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %255 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %254, i32 11, i32 110)
  %256 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %257 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %258 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %259 = load i32, i32* @S_IFDIR, align 4
  %260 = or i32 %259, 493
  %261 = call i32 @archive_entry_set_mode(%struct.archive_entry* %258, i32 %260)
  %262 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %263 = call i32 @archive_entry_set_size(%struct.archive_entry* %262, i32 512)
  %264 = load %struct.archive*, %struct.archive** %2, align 8
  %265 = load i32, i32* @ARCHIVE_OK, align 4
  %266 = load %struct.archive*, %struct.archive** %2, align 8
  %267 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %268 = call i32 @archive_write_header(%struct.archive* %266, %struct.archive_entry* %267)
  %269 = call i32 @assertEqualIntA(%struct.archive* %264, i32 %265, i32 %268)
  %270 = call i32 @failure(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %271 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %272 = call i32 @archive_entry_size(%struct.archive_entry* %271)
  %273 = call i32 @assertEqualInt(i32 0, i32 %272)
  %274 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %275 = call i32 @archive_entry_free(%struct.archive_entry* %274)
  %276 = load %struct.archive*, %struct.archive** %2, align 8
  %277 = load %struct.archive*, %struct.archive** %2, align 8
  %278 = call i32 @archive_write_data(%struct.archive* %277, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %279 = call i32 @assertEqualIntA(%struct.archive* %276, i32 0, i32 %278)
  %280 = load i32, i32* @ARCHIVE_OK, align 4
  %281 = load %struct.archive*, %struct.archive** %2, align 8
  %282 = call i32 @archive_write_close(%struct.archive* %281)
  %283 = call i32 @assertEqualInt(i32 %280, i32 %282)
  %284 = load i32, i32* @ARCHIVE_OK, align 4
  %285 = load %struct.archive*, %struct.archive** %2, align 8
  %286 = call i32 @archive_write_free(%struct.archive* %285)
  %287 = call i32 @assertEqualInt(i32 %284, i32 %286)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_entry_unset_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_symlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_zip_set_compression_store(%struct.archive*) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
