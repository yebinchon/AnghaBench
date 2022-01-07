; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_cpio.c_test_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_cpio.c_test_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type opaque
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"XXXX\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"07070\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Unable to locate the second header for damage-recovery test.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.archive*)*)* @test_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_format(i32 (%struct.archive*)* %0) #0 {
  %2 = alloca i32 (%struct.archive*)*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 (%struct.archive*)* %0, i32 (%struct.archive*)** %2, align 8
  store i64 1000000, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %9, align 8
  %14 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %14, %struct.archive** %5, align 8
  %15 = icmp ne %struct.archive* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %2, align 8
  %19 = load %struct.archive*, %struct.archive** %5, align 8
  %20 = call i32 %18(%struct.archive* %19)
  %21 = icmp eq i32 0, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assertA(i32 %22)
  %24 = load %struct.archive*, %struct.archive** %5, align 8
  %25 = call i64 @archive_write_add_filter_none(%struct.archive* %24)
  %26 = icmp eq i64 0, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assertA(i32 %27)
  %29 = load %struct.archive*, %struct.archive** %5, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @archive_write_open_memory(%struct.archive* %29, i8* %30, i64 %31, i64* %7)
  %33 = icmp eq i64 0, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assertA(i32 %34)
  %36 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %36, %struct.archive_entry** %4, align 8
  %37 = icmp ne %struct.archive_entry* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %41 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %40, i32 1, i32 10)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %43 = call i64 @archive_entry_mtime(%struct.archive_entry* %42)
  %44 = icmp eq i64 1, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %48 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %47)
  %49 = icmp eq i32 10, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %6, align 8
  %53 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %53, i8* %54)
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %61 = call i32 @archive_entry_pathname(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %64 = load i32, i32* @S_IFREG, align 4
  %65 = or i32 %64, 493
  %66 = call i32 @archive_entry_set_mode(%struct.archive_entry* %63, i32 %65)
  %67 = load i32, i32* @S_IFREG, align 4
  %68 = or i32 %67, 493
  %69 = sext i32 %68 to i64
  %70 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %71 = call i64 @archive_entry_mode(%struct.archive_entry* %70)
  %72 = icmp eq i64 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %76 = call i32 @archive_entry_set_size(%struct.archive_entry* %75, i32 8)
  %77 = load %struct.archive*, %struct.archive** %5, align 8
  %78 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %79 = call i64 @archive_write_header(%struct.archive* %77, %struct.archive_entry* %78)
  %80 = icmp eq i64 0, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assertA(i32 %81)
  %83 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %84 = call i32 @archive_entry_free(%struct.archive_entry* %83)
  %85 = load %struct.archive*, %struct.archive** %5, align 8
  %86 = call i32 @archive_write_data(%struct.archive* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %87 = icmp eq i32 8, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assertA(i32 %88)
  %90 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %90, %struct.archive_entry** %4, align 8
  %91 = icmp ne %struct.archive_entry* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %95 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %94, i32 1, i32 10)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %97 = call i64 @archive_entry_mtime(%struct.archive_entry* %96)
  %98 = icmp eq i64 1, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %102 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %101)
  %103 = icmp eq i32 10, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %106, i8** %6, align 8
  %107 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %107, i8* %108)
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @strcpy(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %115 = call i32 @archive_entry_pathname(%struct.archive_entry* %114)
  %116 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %118 = load i32, i32* @S_IFREG, align 4
  %119 = or i32 %118, 493
  %120 = call i32 @archive_entry_set_mode(%struct.archive_entry* %117, i32 %119)
  %121 = load i32, i32* @S_IFREG, align 4
  %122 = or i32 %121, 493
  %123 = sext i32 %122 to i64
  %124 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %125 = call i64 @archive_entry_mode(%struct.archive_entry* %124)
  %126 = icmp eq i64 %123, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %130 = call i32 @archive_entry_set_size(%struct.archive_entry* %129, i32 4)
  %131 = load %struct.archive*, %struct.archive** %5, align 8
  %132 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %133 = call i64 @archive_write_header(%struct.archive* %131, %struct.archive_entry* %132)
  %134 = icmp eq i64 0, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assertA(i32 %135)
  %137 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %138 = call i32 @archive_entry_free(%struct.archive_entry* %137)
  %139 = load %struct.archive*, %struct.archive** %5, align 8
  %140 = call i32 @archive_write_data(%struct.archive* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %141 = icmp eq i32 4, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assertA(i32 %142)
  %144 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %144, %struct.archive_entry** %4, align 8
  %145 = icmp ne %struct.archive_entry* %144, null
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %149 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %150 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %151 = call i32 @archive_entry_set_size(%struct.archive_entry* %150, i32 0)
  %152 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %153 = load i32, i32* @AE_IFREG, align 4
  %154 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %152, i32 %153)
  %155 = load i32, i32* @ARCHIVE_OK, align 4
  %156 = load %struct.archive*, %struct.archive** %5, align 8
  %157 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %158 = call i64 @archive_write_header(%struct.archive* %156, %struct.archive_entry* %157)
  %159 = call i32 @assertEqualInt(i32 %155, i64 %158)
  %160 = load %struct.archive*, %struct.archive** %5, align 8
  %161 = call i32* @archive_error_string(%struct.archive* %160)
  %162 = icmp eq i32* %161, null
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %166 = call i32 @archive_entry_free(%struct.archive_entry* %165)
  %167 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %167, %struct.archive_entry** %4, align 8
  %168 = icmp ne %struct.archive_entry* %167, null
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %172 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %173 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %174 = call i32 @archive_entry_unset_size(%struct.archive_entry* %173)
  %175 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %176 = load i32, i32* @AE_IFREG, align 4
  %177 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %175, i32 %176)
  %178 = load i32, i32* @ARCHIVE_FAILED, align 4
  %179 = load %struct.archive*, %struct.archive** %5, align 8
  %180 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %181 = call i64 @archive_write_header(%struct.archive* %179, %struct.archive_entry* %180)
  %182 = call i32 @assertEqualInt(i32 %178, i64 %181)
  %183 = load %struct.archive*, %struct.archive** %5, align 8
  %184 = call i32* @archive_error_string(%struct.archive* %183)
  %185 = icmp ne i32* %184, null
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %189 = call i32 @archive_entry_free(%struct.archive_entry* %188)
  %190 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %190, %struct.archive_entry** %4, align 8
  %191 = icmp ne %struct.archive_entry* %190, null
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %195 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %196 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %197 = call i32 @archive_entry_set_size(%struct.archive_entry* %196, i32 0)
  %198 = load i32, i32* @ARCHIVE_FAILED, align 4
  %199 = load %struct.archive*, %struct.archive** %5, align 8
  %200 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %201 = call i64 @archive_write_header(%struct.archive* %199, %struct.archive_entry* %200)
  %202 = call i32 @assertEqualInt(i32 %198, i64 %201)
  %203 = load %struct.archive*, %struct.archive** %5, align 8
  %204 = call i32* @archive_error_string(%struct.archive* %203)
  %205 = icmp ne i32* %204, null
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %209 = call i32 @archive_entry_free(%struct.archive_entry* %208)
  %210 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %210, %struct.archive_entry** %4, align 8
  %211 = icmp ne %struct.archive_entry* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %215 = call i32 @archive_entry_set_size(%struct.archive_entry* %214, i32 0)
  %216 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %217 = load i32, i32* @AE_IFREG, align 4
  %218 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %216, i32 %217)
  %219 = load i32, i32* @ARCHIVE_FAILED, align 4
  %220 = load %struct.archive*, %struct.archive** %5, align 8
  %221 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %222 = call i64 @archive_write_header(%struct.archive* %220, %struct.archive_entry* %221)
  %223 = call i32 @assertEqualInt(i32 %219, i64 %222)
  %224 = load %struct.archive*, %struct.archive** %5, align 8
  %225 = call i32* @archive_error_string(%struct.archive* %224)
  %226 = icmp ne i32* %225, null
  %227 = zext i1 %226 to i32
  %228 = call i32 @assert(i32 %227)
  %229 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %230 = call i32 @archive_entry_free(%struct.archive_entry* %229)
  %231 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %231, %struct.archive_entry** %4, align 8
  %232 = icmp ne %struct.archive_entry* %231, null
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %236 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %235, i32 11, i32 110)
  %237 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %238 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %239 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %240 = load i32, i32* @S_IFDIR, align 4
  %241 = or i32 %240, 493
  %242 = call i32 @archive_entry_set_mode(%struct.archive_entry* %239, i32 %241)
  %243 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %244 = call i32 @archive_entry_set_size(%struct.archive_entry* %243, i32 512)
  %245 = load %struct.archive*, %struct.archive** %5, align 8
  %246 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %247 = call i64 @archive_write_header(%struct.archive* %245, %struct.archive_entry* %246)
  %248 = icmp eq i64 0, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @assertA(i32 %249)
  %251 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %252 = call i64 @archive_entry_size(%struct.archive_entry* %251)
  %253 = call i32 @assertEqualInt(i32 0, i64 %252)
  %254 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %255 = call i32 @archive_entry_free(%struct.archive_entry* %254)
  %256 = load %struct.archive*, %struct.archive** %5, align 8
  %257 = load %struct.archive*, %struct.archive** %5, align 8
  %258 = call i32 @archive_write_data(%struct.archive* %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %259 = call i32 @assertEqualIntA(%struct.archive* %256, i32 0, i32 %258)
  %260 = load %struct.archive*, %struct.archive** %5, align 8
  %261 = load i32, i32* @ARCHIVE_OK, align 4
  %262 = load %struct.archive*, %struct.archive** %5, align 8
  %263 = call i32 @archive_write_close(%struct.archive* %262)
  %264 = call i32 @assertEqualIntA(%struct.archive* %260, i32 %261, i32 %263)
  %265 = load i32, i32* @ARCHIVE_OK, align 4
  %266 = load %struct.archive*, %struct.archive** %5, align 8
  %267 = call i64 @archive_write_free(%struct.archive* %266)
  %268 = call i32 @assertEqualInt(i32 %265, i64 %267)
  store i32 80, i32* %11, align 4
  br label %269

269:                                              ; preds = %285, %1
  %270 = load i32, i32* %11, align 4
  %271 = icmp slt i32 %270, 150
  br i1 %271, label %272, label %288

272:                                              ; preds = %269
  %273 = load i8*, i8** %9, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = call i64 @memcmp(i8* %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %272
  store i32 1, i32* %10, align 4
  %280 = load i8*, i8** %9, align 8
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  store i8 88, i8* %283, align 1
  br label %288

284:                                              ; preds = %272
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %11, align 4
  br label %269

288:                                              ; preds = %279, %269
  %289 = call i32 @failure(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  %290 = load i32, i32* %10, align 4
  %291 = icmp eq i32 %290, 1
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %294, %struct.archive** %5, align 8
  %295 = icmp ne %struct.archive* %294, null
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  %298 = load %struct.archive*, %struct.archive** %5, align 8
  %299 = call i64 @archive_read_support_format_all(%struct.archive* %298)
  %300 = icmp eq i64 0, %299
  %301 = zext i1 %300 to i32
  %302 = call i32 @assertA(i32 %301)
  %303 = load %struct.archive*, %struct.archive** %5, align 8
  %304 = call i64 @archive_read_support_filter_all(%struct.archive* %303)
  %305 = icmp eq i64 0, %304
  %306 = zext i1 %305 to i32
  %307 = call i32 @assertA(i32 %306)
  %308 = load %struct.archive*, %struct.archive** %5, align 8
  %309 = load i8*, i8** %9, align 8
  %310 = load i64, i64* %7, align 8
  %311 = call i64 @archive_read_open_memory(%struct.archive* %308, i8* %309, i64 %310)
  %312 = icmp eq i64 0, %311
  %313 = zext i1 %312 to i32
  %314 = call i32 @assertA(i32 %313)
  %315 = load %struct.archive*, %struct.archive** %5, align 8
  %316 = load %struct.archive*, %struct.archive** %5, align 8
  %317 = call i32 @archive_read_next_header(%struct.archive* %316, %struct.archive_entry** %4)
  %318 = call i32 @assertEqualIntA(%struct.archive* %315, i32 0, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %288
  %321 = load %struct.archive*, %struct.archive** %5, align 8
  %322 = call i64 @archive_read_free(%struct.archive* %321)
  br label %423

323:                                              ; preds = %288
  %324 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %325 = call i64 @archive_entry_mtime(%struct.archive_entry* %324)
  %326 = call i32 @assertEqualInt(i32 1, i64 %325)
  %327 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %328 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %327)
  %329 = icmp eq i32 0, %328
  %330 = zext i1 %329 to i32
  %331 = call i32 @assert(i32 %330)
  %332 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %333 = call i64 @archive_entry_atime(%struct.archive_entry* %332)
  %334 = icmp eq i64 0, %333
  %335 = zext i1 %334 to i32
  %336 = call i32 @assert(i32 %335)
  %337 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %338 = call i64 @archive_entry_ctime(%struct.archive_entry* %337)
  %339 = icmp eq i64 0, %338
  %340 = zext i1 %339 to i32
  %341 = call i32 @assert(i32 %340)
  %342 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %343 = call i32 @archive_entry_pathname(%struct.archive_entry* %342)
  %344 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* @S_IFREG, align 4
  %346 = or i32 %345, 493
  %347 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %348 = call i64 @archive_entry_mode(%struct.archive_entry* %347)
  %349 = call i32 @assertEqualInt(i32 %346, i64 %348)
  %350 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %351 = call i64 @archive_entry_size(%struct.archive_entry* %350)
  %352 = call i32 @assertEqualInt(i32 8, i64 %351)
  %353 = load %struct.archive*, %struct.archive** %5, align 8
  %354 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %355 = call i32 @archive_read_data(%struct.archive* %353, i8* %354, i32 10)
  %356 = icmp eq i32 8, %355
  %357 = zext i1 %356 to i32
  %358 = call i32 @assertA(i32 %357)
  %359 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %360 = call i32 @assertEqualMem(i8* %359, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %361 = load %struct.archive*, %struct.archive** %5, align 8
  %362 = load i32, i32* @ARCHIVE_WARN, align 4
  %363 = load %struct.archive*, %struct.archive** %5, align 8
  %364 = call i32 @archive_read_next_header(%struct.archive* %363, %struct.archive_entry** %4)
  %365 = call i32 @assertEqualIntA(%struct.archive* %361, i32 %362, i32 %364)
  %366 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %367 = call i32 @archive_entry_pathname(%struct.archive_entry* %366)
  %368 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %367)
  %369 = load %struct.archive*, %struct.archive** %5, align 8
  %370 = load i32, i32* @ARCHIVE_OK, align 4
  %371 = load %struct.archive*, %struct.archive** %5, align 8
  %372 = call i32 @archive_read_next_header(%struct.archive* %371, %struct.archive_entry** %4)
  %373 = call i32 @assertEqualIntA(%struct.archive* %369, i32 %370, i32 %372)
  %374 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %375 = call i64 @archive_entry_mtime(%struct.archive_entry* %374)
  %376 = call i32 @assertEqualInt(i32 11, i64 %375)
  %377 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %378 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %377)
  %379 = icmp eq i32 0, %378
  %380 = zext i1 %379 to i32
  %381 = call i32 @assert(i32 %380)
  %382 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %383 = call i64 @archive_entry_atime(%struct.archive_entry* %382)
  %384 = icmp eq i64 0, %383
  %385 = zext i1 %384 to i32
  %386 = call i32 @assert(i32 %385)
  %387 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %388 = call i64 @archive_entry_ctime(%struct.archive_entry* %387)
  %389 = icmp eq i64 0, %388
  %390 = zext i1 %389 to i32
  %391 = call i32 @assert(i32 %390)
  %392 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %393 = call i32 @archive_entry_pathname(%struct.archive_entry* %392)
  %394 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %393)
  %395 = load i32, i32* @S_IFDIR, align 4
  %396 = or i32 %395, 493
  %397 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %398 = call i64 @archive_entry_mode(%struct.archive_entry* %397)
  %399 = call i32 @assertEqualInt(i32 %396, i64 %398)
  %400 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %401 = call i64 @archive_entry_size(%struct.archive_entry* %400)
  %402 = call i32 @assertEqualInt(i32 0, i64 %401)
  %403 = load %struct.archive*, %struct.archive** %5, align 8
  %404 = load %struct.archive*, %struct.archive** %5, align 8
  %405 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %406 = call i32 @archive_read_data(%struct.archive* %404, i8* %405, i32 10)
  %407 = call i32 @assertEqualIntA(%struct.archive* %403, i32 0, i32 %406)
  %408 = load %struct.archive*, %struct.archive** %5, align 8
  %409 = load %struct.archive*, %struct.archive** %5, align 8
  %410 = call i32 @archive_read_next_header(%struct.archive* %409, %struct.archive_entry** %4)
  %411 = call i32 @assertEqualIntA(%struct.archive* %408, i32 1, i32 %410)
  %412 = load %struct.archive*, %struct.archive** %5, align 8
  %413 = load i32, i32* @ARCHIVE_OK, align 4
  %414 = load %struct.archive*, %struct.archive** %5, align 8
  %415 = call i32 @archive_read_close(%struct.archive* %414)
  %416 = call i32 @assertEqualIntA(%struct.archive* %412, i32 %413, i32 %415)
  %417 = load i32, i32* @ARCHIVE_OK, align 4
  %418 = load %struct.archive*, %struct.archive** %5, align 8
  %419 = call i64 @archive_read_free(%struct.archive* %418)
  %420 = call i32 @assertEqualInt(i32 %417, i64 %419)
  %421 = load i8*, i8** %9, align 8
  %422 = call i32 @free(i8* %421)
  br label %423

423:                                              ; preds = %323, %320
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i64 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i64 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i64 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @assertEqualInt(i32, i64) #1

declare dso_local i32* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_entry_unset_size(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i64 @archive_write_free(%struct.archive*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i64 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i64 @archive_read_free(%struct.archive*) #1

declare dso_local i64 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
