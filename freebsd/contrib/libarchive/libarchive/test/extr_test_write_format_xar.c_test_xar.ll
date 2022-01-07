; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_xar.c_test_xar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_xar.c_test_xar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"xar is not supported on this platform\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"option `%s` is not supported on this platform\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"user.data1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ABCDEFG\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"user.data2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"dir/file\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"abcdefgh\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"dir/dir2/file4\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"dir/dir3\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"dir/dir2/file4/wrong\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_xar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_xar(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.archive*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 1500, i64* %4, align 8
  %12 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %12, %struct.archive** %7, align 8
  %13 = icmp ne %struct.archive* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.archive*, %struct.archive** %7, align 8
  %17 = call i32 @archive_write_set_format_xar(%struct.archive* %16)
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @skipping(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.archive*, %struct.archive** %7, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %7, align 8
  %25 = call i32 @archive_write_free(%struct.archive* %24)
  %26 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %25)
  br label %530

27:                                               ; preds = %1
  %28 = load %struct.archive*, %struct.archive** %7, align 8
  %29 = call i64 @archive_write_add_filter_none(%struct.archive* %28)
  %30 = icmp eq i64 0, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assertA(i32 %31)
  %33 = load i8*, i8** %2, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.archive*, %struct.archive** %7, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @archive_write_set_options(%struct.archive* %36, i8* %37)
  %39 = load i32, i32* @ARCHIVE_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 (i8*, ...) @skipping(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.archive*, %struct.archive** %7, align 8
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive*, %struct.archive** %7, align 8
  %47 = call i32 @archive_write_free(%struct.archive* %46)
  %48 = call i32 @assertEqualIntA(%struct.archive* %44, i32 %45, i32 %47)
  br label %530

49:                                               ; preds = %35, %27
  %50 = load i64, i64* %4, align 8
  %51 = call i8* @malloc(i64 %50)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.archive*, %struct.archive** %7, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @archive_write_open_memory(%struct.archive* %56, i8* %57, i64 %58, i64* %8)
  %60 = icmp eq i64 0, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assertA(i32 %61)
  %63 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %63, %struct.archive_entry** %6, align 8
  %64 = icmp ne %struct.archive_entry* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %68 = call i32 @archive_entry_set_atime(%struct.archive_entry* %67, i32 2, i32 20)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %70 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %69, i32 4, i32 40)
  %71 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %72 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %71, i32 5, i32 50)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %74 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %76 = load i32, i32* @AE_IFREG, align 4
  %77 = or i32 %76, 493
  %78 = call i32 @archive_entry_set_mode(%struct.archive_entry* %75, i32 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %80 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %79, i32 2)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %82 = call i32 @archive_entry_set_size(%struct.archive_entry* %81, i32 8)
  %83 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %84 = call i32 @archive_entry_xattr_add_entry(%struct.archive_entry* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %85 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %86 = call i32 @archive_entry_xattr_add_entry(%struct.archive_entry* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %87 = load %struct.archive*, %struct.archive** %7, align 8
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  %89 = load %struct.archive*, %struct.archive** %7, align 8
  %90 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %91 = call i32 @archive_write_header(%struct.archive* %89, %struct.archive_entry* %90)
  %92 = call i32 @assertEqualIntA(%struct.archive* %87, i32 %88, i32 %91)
  %93 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %94 = call i32 @archive_entry_free(%struct.archive_entry* %93)
  %95 = load %struct.archive*, %struct.archive** %7, align 8
  %96 = load %struct.archive*, %struct.archive** %7, align 8
  %97 = call i32 @archive_write_data(%struct.archive* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %98 = call i32 @assertEqualIntA(%struct.archive* %95, i32 8, i32 %97)
  %99 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %99, %struct.archive_entry** %6, align 8
  %100 = icmp ne %struct.archive_entry* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %104 = call i32 @archive_entry_set_atime(%struct.archive_entry* %103, i32 2, i32 20)
  %105 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %106 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %105, i32 4, i32 40)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %108 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %107, i32 5, i32 50)
  %109 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %110 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %111 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %112 = call i32 @archive_entry_copy_symlink(%struct.archive_entry* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %114 = load i32, i32* @AE_IFLNK, align 4
  %115 = or i32 %114, 493
  %116 = call i32 @archive_entry_set_mode(%struct.archive_entry* %113, i32 %115)
  %117 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %118 = call i32 @archive_entry_set_size(%struct.archive_entry* %117, i32 0)
  %119 = load %struct.archive*, %struct.archive** %7, align 8
  %120 = load i32, i32* @ARCHIVE_OK, align 4
  %121 = load %struct.archive*, %struct.archive** %7, align 8
  %122 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %123 = call i32 @archive_write_header(%struct.archive* %121, %struct.archive_entry* %122)
  %124 = call i32 @assertEqualIntA(%struct.archive* %119, i32 %120, i32 %123)
  %125 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %126 = call i32 @archive_entry_free(%struct.archive_entry* %125)
  %127 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %127, %struct.archive_entry** %6, align 8
  %128 = icmp ne %struct.archive_entry* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %132 = call i32 @archive_entry_set_atime(%struct.archive_entry* %131, i32 2, i32 20)
  %133 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %134 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %133, i32 4, i32 40)
  %135 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %136 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %135, i32 5, i32 50)
  %137 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %138 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %139 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %140 = load i32, i32* @AE_IFREG, align 4
  %141 = or i32 %140, 493
  %142 = call i32 @archive_entry_set_mode(%struct.archive_entry* %139, i32 %141)
  %143 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %144 = call i32 @archive_entry_set_size(%struct.archive_entry* %143, i32 8)
  %145 = load %struct.archive*, %struct.archive** %7, align 8
  %146 = load i32, i32* @ARCHIVE_OK, align 4
  %147 = load %struct.archive*, %struct.archive** %7, align 8
  %148 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %149 = call i32 @archive_write_header(%struct.archive* %147, %struct.archive_entry* %148)
  %150 = call i32 @assertEqualIntA(%struct.archive* %145, i32 %146, i32 %149)
  %151 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %152 = call i32 @archive_entry_free(%struct.archive_entry* %151)
  %153 = load %struct.archive*, %struct.archive** %7, align 8
  %154 = load %struct.archive*, %struct.archive** %7, align 8
  %155 = call i32 @archive_write_data(%struct.archive* %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %156 = call i32 @assertEqualIntA(%struct.archive* %153, i32 8, i32 %155)
  %157 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %157, %struct.archive_entry** %6, align 8
  %158 = icmp ne %struct.archive_entry* %157, null
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %162 = call i32 @archive_entry_set_atime(%struct.archive_entry* %161, i32 2, i32 20)
  %163 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %164 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %163, i32 4, i32 40)
  %165 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %166 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %165, i32 5, i32 50)
  %167 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %168 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %169 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %170 = call i32 @archive_entry_copy_hardlink(%struct.archive_entry* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %171 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %172 = load i32, i32* @AE_IFREG, align 4
  %173 = or i32 %172, 493
  %174 = call i32 @archive_entry_set_mode(%struct.archive_entry* %171, i32 %173)
  %175 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %176 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %175, i32 2)
  %177 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %178 = call i32 @archive_entry_set_size(%struct.archive_entry* %177, i32 0)
  %179 = load %struct.archive*, %struct.archive** %7, align 8
  %180 = load i32, i32* @ARCHIVE_OK, align 4
  %181 = load %struct.archive*, %struct.archive** %7, align 8
  %182 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %183 = call i32 @archive_write_header(%struct.archive* %181, %struct.archive_entry* %182)
  %184 = call i32 @assertEqualIntA(%struct.archive* %179, i32 %180, i32 %183)
  %185 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %186 = call i32 @archive_entry_free(%struct.archive_entry* %185)
  %187 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %187, %struct.archive_entry** %6, align 8
  %188 = icmp ne %struct.archive_entry* %187, null
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %192 = call i32 @archive_entry_set_atime(%struct.archive_entry* %191, i32 2, i32 20)
  %193 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %194 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %193, i32 4, i32 40)
  %195 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %196 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %195, i32 5, i32 50)
  %197 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %198 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %199 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %200 = load i32, i32* @AE_IFDIR, align 4
  %201 = or i32 %200, 493
  %202 = call i32 @archive_entry_set_mode(%struct.archive_entry* %199, i32 %201)
  %203 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %204 = call i32 @archive_entry_unset_size(%struct.archive_entry* %203)
  %205 = load %struct.archive*, %struct.archive** %7, align 8
  %206 = load i32, i32* @ARCHIVE_OK, align 4
  %207 = load %struct.archive*, %struct.archive** %7, align 8
  %208 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %209 = call i32 @archive_write_header(%struct.archive* %207, %struct.archive_entry* %208)
  %210 = call i32 @assertEqualIntA(%struct.archive* %205, i32 %206, i32 %209)
  %211 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %212 = call i32 @archive_entry_free(%struct.archive_entry* %211)
  %213 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %213, %struct.archive_entry** %6, align 8
  %214 = icmp ne %struct.archive_entry* %213, null
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %218 = call i32 @archive_entry_set_atime(%struct.archive_entry* %217, i32 2, i32 20)
  %219 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %220 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %219, i32 4, i32 40)
  %221 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %222 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %221, i32 5, i32 50)
  %223 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %224 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %223, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %225 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %226 = load i32, i32* @AE_IFREG, align 4
  %227 = or i32 %226, 493
  %228 = call i32 @archive_entry_set_mode(%struct.archive_entry* %225, i32 %227)
  %229 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %230 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %229, i32 1)
  %231 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %232 = call i32 @archive_entry_set_size(%struct.archive_entry* %231, i32 0)
  %233 = load %struct.archive*, %struct.archive** %7, align 8
  %234 = load i32, i32* @ARCHIVE_FAILED, align 4
  %235 = load %struct.archive*, %struct.archive** %7, align 8
  %236 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %237 = call i32 @archive_write_header(%struct.archive* %235, %struct.archive_entry* %236)
  %238 = call i32 @assertEqualIntA(%struct.archive* %233, i32 %234, i32 %237)
  %239 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %240 = call i32 @archive_entry_free(%struct.archive_entry* %239)
  %241 = load %struct.archive*, %struct.archive** %7, align 8
  %242 = load i32, i32* @ARCHIVE_OK, align 4
  %243 = load %struct.archive*, %struct.archive** %7, align 8
  %244 = call i32 @archive_write_close(%struct.archive* %243)
  %245 = call i32 @assertEqualIntA(%struct.archive* %241, i32 %242, i32 %244)
  %246 = load %struct.archive*, %struct.archive** %7, align 8
  %247 = load i32, i32* @ARCHIVE_OK, align 4
  %248 = load %struct.archive*, %struct.archive** %7, align 8
  %249 = call i32 @archive_write_free(%struct.archive* %248)
  %250 = call i32 @assertEqualIntA(%struct.archive* %246, i32 %247, i32 %249)
  %251 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %251, %struct.archive** %7, align 8
  %252 = icmp ne %struct.archive* %251, null
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = load %struct.archive*, %struct.archive** %7, align 8
  %256 = load %struct.archive*, %struct.archive** %7, align 8
  %257 = call i32 @archive_read_support_format_all(%struct.archive* %256)
  %258 = call i32 @assertEqualIntA(%struct.archive* %255, i32 0, i32 %257)
  %259 = load %struct.archive*, %struct.archive** %7, align 8
  %260 = load %struct.archive*, %struct.archive** %7, align 8
  %261 = call i32 @archive_read_support_filter_all(%struct.archive* %260)
  %262 = call i32 @assertEqualIntA(%struct.archive* %259, i32 0, i32 %261)
  %263 = load %struct.archive*, %struct.archive** %7, align 8
  %264 = load %struct.archive*, %struct.archive** %7, align 8
  %265 = load i8*, i8** %5, align 8
  %266 = load i64, i64* %8, align 8
  %267 = call i32 @archive_read_open_memory(%struct.archive* %264, i8* %265, i64 %266)
  %268 = call i32 @assertEqualIntA(%struct.archive* %263, i32 0, i32 %267)
  %269 = load %struct.archive*, %struct.archive** %7, align 8
  %270 = load %struct.archive*, %struct.archive** %7, align 8
  %271 = call i32 @archive_read_next_header(%struct.archive* %270, %struct.archive_entry** %6)
  %272 = call i32 @assertEqualIntA(%struct.archive* %269, i32 0, i32 %271)
  %273 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %274 = call i32 @archive_entry_atime(%struct.archive_entry* %273)
  %275 = call i32 @assertEqualInt(i32 2, i32 %274)
  %276 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %277 = call i32 @archive_entry_atime_nsec(%struct.archive_entry* %276)
  %278 = call i32 @assertEqualInt(i32 0, i32 %277)
  %279 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %280 = call i32 @archive_entry_ctime(%struct.archive_entry* %279)
  %281 = call i32 @assertEqualInt(i32 4, i32 %280)
  %282 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %283 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %282)
  %284 = call i32 @assertEqualInt(i32 0, i32 %283)
  %285 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %286 = call i32 @archive_entry_mtime(%struct.archive_entry* %285)
  %287 = call i32 @assertEqualInt(i32 5, i32 %286)
  %288 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %289 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %288)
  %290 = call i32 @assertEqualInt(i32 0, i32 %289)
  %291 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %292 = call i8* @archive_entry_pathname(%struct.archive_entry* %291)
  %293 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %292)
  %294 = load i32, i32* @AE_IFREG, align 4
  %295 = or i32 %294, 493
  %296 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %297 = call i32 @archive_entry_mode(%struct.archive_entry* %296)
  %298 = icmp eq i32 %295, %297
  %299 = zext i1 %298 to i32
  %300 = call i32 @assert(i32 %299)
  %301 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %302 = call i32 @archive_entry_nlink(%struct.archive_entry* %301)
  %303 = call i32 @assertEqualInt(i32 2, i32 %302)
  %304 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %305 = call i32 @archive_entry_size(%struct.archive_entry* %304)
  %306 = call i32 @assertEqualInt(i32 8, i32 %305)
  %307 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %308 = call i32 @archive_entry_xattr_reset(%struct.archive_entry* %307)
  %309 = call i32 @assertEqualInt(i32 2, i32 %308)
  %310 = load i32, i32* @ARCHIVE_OK, align 4
  %311 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %312 = call i32 @archive_entry_xattr_next(%struct.archive_entry* %311, i8** %9, i8** %10, i64* %11)
  %313 = call i32 @assertEqualInt(i32 %310, i32 %312)
  %314 = load i8*, i8** %9, align 8
  %315 = call i32 @assertEqualString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %314)
  %316 = load i8*, i8** %10, align 8
  %317 = call i32 @assertEqualMem(i8* %316, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %318 = load i32, i32* @ARCHIVE_OK, align 4
  %319 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %320 = call i32 @archive_entry_xattr_next(%struct.archive_entry* %319, i8** %9, i8** %10, i64* %11)
  %321 = call i32 @assertEqualInt(i32 %318, i32 %320)
  %322 = load i8*, i8** %9, align 8
  %323 = call i32 @assertEqualString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %322)
  %324 = load i8*, i8** %10, align 8
  %325 = call i32 @assertEqualMem(i8* %324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %326 = load %struct.archive*, %struct.archive** %7, align 8
  %327 = load %struct.archive*, %struct.archive** %7, align 8
  %328 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %329 = call i32 @archive_read_data(%struct.archive* %327, i8* %328, i32 10)
  %330 = call i32 @assertEqualIntA(%struct.archive* %326, i32 8, i32 %329)
  %331 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %332 = call i32 @assertEqualMem(i8* %331, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %333 = load %struct.archive*, %struct.archive** %7, align 8
  %334 = load %struct.archive*, %struct.archive** %7, align 8
  %335 = call i32 @archive_read_next_header(%struct.archive* %334, %struct.archive_entry** %6)
  %336 = call i32 @assertEqualIntA(%struct.archive* %333, i32 0, i32 %335)
  %337 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %338 = call i32 @archive_entry_atime_is_set(%struct.archive_entry* %337)
  %339 = call i32 @assert(i32 %338)
  %340 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %341 = call i32 @archive_entry_atime(%struct.archive_entry* %340)
  %342 = call i32 @assertEqualInt(i32 2, i32 %341)
  %343 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %344 = call i32 @archive_entry_atime_nsec(%struct.archive_entry* %343)
  %345 = call i32 @assertEqualInt(i32 0, i32 %344)
  %346 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %347 = call i32 @archive_entry_ctime_is_set(%struct.archive_entry* %346)
  %348 = call i32 @assert(i32 %347)
  %349 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %350 = call i32 @archive_entry_ctime(%struct.archive_entry* %349)
  %351 = call i32 @assertEqualInt(i32 4, i32 %350)
  %352 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %353 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %352)
  %354 = call i32 @assertEqualInt(i32 0, i32 %353)
  %355 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %356 = call i32 @archive_entry_mtime_is_set(%struct.archive_entry* %355)
  %357 = call i32 @assert(i32 %356)
  %358 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %359 = call i32 @archive_entry_mtime(%struct.archive_entry* %358)
  %360 = call i32 @assertEqualInt(i32 5, i32 %359)
  %361 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %362 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %361)
  %363 = call i32 @assertEqualInt(i32 0, i32 %362)
  %364 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %365 = call i8* @archive_entry_pathname(%struct.archive_entry* %364)
  %366 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %365)
  %367 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %368 = call i8* @archive_entry_symlink(%struct.archive_entry* %367)
  %369 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %368)
  %370 = load i32, i32* @AE_IFLNK, align 4
  %371 = or i32 %370, 493
  %372 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %373 = call i32 @archive_entry_mode(%struct.archive_entry* %372)
  %374 = icmp eq i32 %371, %373
  %375 = zext i1 %374 to i32
  %376 = call i32 @assert(i32 %375)
  %377 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %378 = call i32 @archive_entry_size(%struct.archive_entry* %377)
  %379 = call i32 @assertEqualInt(i32 0, i32 %378)
  %380 = load %struct.archive*, %struct.archive** %7, align 8
  %381 = load %struct.archive*, %struct.archive** %7, align 8
  %382 = call i32 @archive_read_next_header(%struct.archive* %381, %struct.archive_entry** %6)
  %383 = call i32 @assertEqualIntA(%struct.archive* %380, i32 0, i32 %382)
  %384 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %385 = call i32 @archive_entry_atime(%struct.archive_entry* %384)
  %386 = call i32 @assertEqualInt(i32 2, i32 %385)
  %387 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %388 = call i32 @archive_entry_atime_nsec(%struct.archive_entry* %387)
  %389 = call i32 @assertEqualInt(i32 0, i32 %388)
  %390 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %391 = call i32 @archive_entry_ctime(%struct.archive_entry* %390)
  %392 = call i32 @assertEqualInt(i32 4, i32 %391)
  %393 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %394 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %393)
  %395 = call i32 @assertEqualInt(i32 0, i32 %394)
  %396 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %397 = call i32 @archive_entry_mtime(%struct.archive_entry* %396)
  %398 = call i32 @assertEqualInt(i32 5, i32 %397)
  %399 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %400 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %399)
  %401 = call i32 @assertEqualInt(i32 0, i32 %400)
  %402 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %403 = call i8* @archive_entry_pathname(%struct.archive_entry* %402)
  %404 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %403)
  %405 = load i32, i32* @AE_IFREG, align 4
  %406 = or i32 %405, 493
  %407 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %408 = call i32 @archive_entry_mode(%struct.archive_entry* %407)
  %409 = icmp eq i32 %406, %408
  %410 = zext i1 %409 to i32
  %411 = call i32 @assert(i32 %410)
  %412 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %413 = call i32 @archive_entry_size(%struct.archive_entry* %412)
  %414 = call i32 @assertEqualInt(i32 8, i32 %413)
  %415 = load %struct.archive*, %struct.archive** %7, align 8
  %416 = load %struct.archive*, %struct.archive** %7, align 8
  %417 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %418 = call i32 @archive_read_data(%struct.archive* %416, i8* %417, i32 10)
  %419 = call i32 @assertEqualIntA(%struct.archive* %415, i32 8, i32 %418)
  %420 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %421 = call i32 @assertEqualMem(i8* %420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 8)
  %422 = load %struct.archive*, %struct.archive** %7, align 8
  %423 = load %struct.archive*, %struct.archive** %7, align 8
  %424 = call i32 @archive_read_next_header(%struct.archive* %423, %struct.archive_entry** %6)
  %425 = call i32 @assertEqualIntA(%struct.archive* %422, i32 0, i32 %424)
  %426 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %427 = call i32 @archive_entry_atime_is_set(%struct.archive_entry* %426)
  %428 = call i32 @assert(i32 %427)
  %429 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %430 = call i32 @archive_entry_atime(%struct.archive_entry* %429)
  %431 = call i32 @assertEqualInt(i32 2, i32 %430)
  %432 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %433 = call i32 @archive_entry_atime_nsec(%struct.archive_entry* %432)
  %434 = call i32 @assertEqualInt(i32 0, i32 %433)
  %435 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %436 = call i32 @archive_entry_ctime_is_set(%struct.archive_entry* %435)
  %437 = call i32 @assert(i32 %436)
  %438 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %439 = call i32 @archive_entry_ctime(%struct.archive_entry* %438)
  %440 = call i32 @assertEqualInt(i32 4, i32 %439)
  %441 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %442 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %441)
  %443 = call i32 @assertEqualInt(i32 0, i32 %442)
  %444 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %445 = call i32 @archive_entry_mtime_is_set(%struct.archive_entry* %444)
  %446 = call i32 @assert(i32 %445)
  %447 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %448 = call i32 @archive_entry_mtime(%struct.archive_entry* %447)
  %449 = call i32 @assertEqualInt(i32 5, i32 %448)
  %450 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %451 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %450)
  %452 = call i32 @assertEqualInt(i32 0, i32 %451)
  %453 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %454 = call i8* @archive_entry_pathname(%struct.archive_entry* %453)
  %455 = call i32 @assertEqualString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %454)
  %456 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %457 = call i8* @archive_entry_hardlink(%struct.archive_entry* %456)
  %458 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %457)
  %459 = load i32, i32* @AE_IFREG, align 4
  %460 = or i32 %459, 493
  %461 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %462 = call i32 @archive_entry_mode(%struct.archive_entry* %461)
  %463 = icmp eq i32 %460, %462
  %464 = zext i1 %463 to i32
  %465 = call i32 @assert(i32 %464)
  %466 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %467 = call i32 @archive_entry_nlink(%struct.archive_entry* %466)
  %468 = call i32 @assertEqualInt(i32 2, i32 %467)
  %469 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %470 = call i32 @archive_entry_size(%struct.archive_entry* %469)
  %471 = call i32 @assertEqualInt(i32 0, i32 %470)
  %472 = load %struct.archive*, %struct.archive** %7, align 8
  %473 = load %struct.archive*, %struct.archive** %7, align 8
  %474 = call i32 @archive_read_next_header(%struct.archive* %473, %struct.archive_entry** %6)
  %475 = call i32 @assertEqualIntA(%struct.archive* %472, i32 0, i32 %474)
  %476 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %477 = call i32 @archive_entry_atime_is_set(%struct.archive_entry* %476)
  %478 = call i32 @assert(i32 %477)
  %479 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %480 = call i32 @archive_entry_atime(%struct.archive_entry* %479)
  %481 = call i32 @assertEqualInt(i32 2, i32 %480)
  %482 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %483 = call i32 @archive_entry_atime_nsec(%struct.archive_entry* %482)
  %484 = call i32 @assertEqualInt(i32 0, i32 %483)
  %485 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %486 = call i32 @archive_entry_ctime_is_set(%struct.archive_entry* %485)
  %487 = call i32 @assert(i32 %486)
  %488 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %489 = call i32 @archive_entry_ctime(%struct.archive_entry* %488)
  %490 = call i32 @assertEqualInt(i32 4, i32 %489)
  %491 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %492 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %491)
  %493 = call i32 @assertEqualInt(i32 0, i32 %492)
  %494 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %495 = call i32 @archive_entry_mtime_is_set(%struct.archive_entry* %494)
  %496 = call i32 @assert(i32 %495)
  %497 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %498 = call i32 @archive_entry_mtime(%struct.archive_entry* %497)
  %499 = call i32 @assertEqualInt(i32 5, i32 %498)
  %500 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %501 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %500)
  %502 = call i32 @assertEqualInt(i32 0, i32 %501)
  %503 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %504 = call i8* @archive_entry_pathname(%struct.archive_entry* %503)
  %505 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %504)
  %506 = load i32, i32* @AE_IFDIR, align 4
  %507 = or i32 %506, 493
  %508 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %509 = call i32 @archive_entry_mode(%struct.archive_entry* %508)
  %510 = icmp eq i32 %507, %509
  %511 = zext i1 %510 to i32
  %512 = call i32 @assert(i32 %511)
  %513 = load %struct.archive*, %struct.archive** %7, align 8
  %514 = load i32, i32* @ARCHIVE_EOF, align 4
  %515 = load %struct.archive*, %struct.archive** %7, align 8
  %516 = call i32 @archive_read_next_header(%struct.archive* %515, %struct.archive_entry** %6)
  %517 = call i32 @assertEqualIntA(%struct.archive* %513, i32 %514, i32 %516)
  %518 = load %struct.archive*, %struct.archive** %7, align 8
  %519 = load i32, i32* @ARCHIVE_OK, align 4
  %520 = load %struct.archive*, %struct.archive** %7, align 8
  %521 = call i32 @archive_read_close(%struct.archive* %520)
  %522 = call i32 @assertEqualIntA(%struct.archive* %518, i32 %519, i32 %521)
  %523 = load %struct.archive*, %struct.archive** %7, align 8
  %524 = load i32, i32* @ARCHIVE_OK, align 4
  %525 = load %struct.archive*, %struct.archive** %7, align 8
  %526 = call i32 @archive_read_free(%struct.archive* %525)
  %527 = call i32 @assertEqualIntA(%struct.archive* %523, i32 %524, i32 %526)
  %528 = load i8*, i8** %5, align 8
  %529 = call i32 @free(i8* %528)
  br label %530

530:                                              ; preds = %49, %41, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @archive_write_set_format_xar(%struct.archive*) #1

declare dso_local i32 @skipping(i8*, ...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_write_set_options(%struct.archive*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_xattr_add_entry(%struct.archive_entry*, i8*, i8*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_entry_copy_symlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_copy_hardlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_unset_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_atime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_xattr_reset(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_xattr_next(%struct.archive_entry*, i8**, i8**, i64*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_entry_atime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_is_set(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
