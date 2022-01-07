; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_7zip_empty.c_test_only_empty_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_7zip_empty.c_test_only_empty_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"empty2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"empty3\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"7z\BC\AF'\1C\00\03\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_only_empty_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_only_empty_files() #0 {
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
  %36 = call i32 @archive_entry_mtime(%struct.archive_entry* %35)
  %37 = call i32 @assertEqualInt(i32 1, i32 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %39 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %38)
  %40 = call i32 @assertEqualInt(i32 10, i32 %39)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %42 = call i32 @archive_entry_set_atime(%struct.archive_entry* %41, i32 2, i32 20)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %44 = call i32 @archive_entry_atime(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 2, i32 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %47 = call i32 @archive_entry_atime_nsec(%struct.archive_entry* %46)
  %48 = call i32 @assertEqualInt(i32 20, i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %50 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %52 = call i32 @archive_entry_pathname(%struct.archive_entry* %51)
  %53 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %55 = load i32, i32* @AE_IFREG, align 4
  %56 = or i32 %55, 493
  %57 = call i32 @archive_entry_set_mode(%struct.archive_entry* %54, i32 %56)
  %58 = load i32, i32* @AE_IFREG, align 4
  %59 = or i32 %58, 493
  %60 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %61 = call i32 @archive_entry_mode(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualInt(i32 %59, i32 %61)
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  %64 = load %struct.archive*, %struct.archive** %1, align 8
  %65 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %66 = call i32 @archive_write_header(%struct.archive* %64, %struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 %63, i32 %66)
  %68 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %69 = call i32 @archive_entry_free(%struct.archive_entry* %68)
  %70 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %70, %struct.archive_entry** %2, align 8
  %71 = icmp ne %struct.archive_entry* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %75 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %74, i32 2, i32 10)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %77 = call i32 @archive_entry_mtime(%struct.archive_entry* %76)
  %78 = call i32 @assertEqualInt(i32 2, i32 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %80 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 10, i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %83 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %82, i32 2, i32 10)
  %84 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %85 = call i32 @archive_entry_ctime(%struct.archive_entry* %84)
  %86 = call i32 @assertEqualInt(i32 2, i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %88 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %87)
  %89 = call i32 @assertEqualInt(i32 10, i32 %88)
  %90 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %91 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %93 = call i32 @archive_entry_pathname(%struct.archive_entry* %92)
  %94 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %96 = load i32, i32* @AE_IFREG, align 4
  %97 = or i32 %96, 420
  %98 = call i32 @archive_entry_set_mode(%struct.archive_entry* %95, i32 %97)
  %99 = load i32, i32* @AE_IFREG, align 4
  %100 = or i32 %99, 420
  %101 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %102 = call i32 @archive_entry_mode(%struct.archive_entry* %101)
  %103 = call i32 @assertEqualInt(i32 %100, i32 %102)
  %104 = load i32, i32* @ARCHIVE_OK, align 4
  %105 = load %struct.archive*, %struct.archive** %1, align 8
  %106 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %107 = call i32 @archive_write_header(%struct.archive* %105, %struct.archive_entry* %106)
  %108 = call i32 @assertEqualInt(i32 %104, i32 %107)
  %109 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %110 = call i32 @archive_entry_free(%struct.archive_entry* %109)
  %111 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %111, %struct.archive_entry** %2, align 8
  %112 = icmp ne %struct.archive_entry* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %116 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %115, i32 3, i32 10)
  %117 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %118 = call i32 @archive_entry_mtime(%struct.archive_entry* %117)
  %119 = call i32 @assertEqualInt(i32 3, i32 %118)
  %120 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %121 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %120)
  %122 = call i32 @assertEqualInt(i32 10, i32 %121)
  %123 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %124 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %125 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %126 = call i32 @archive_entry_pathname(%struct.archive_entry* %125)
  %127 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %129 = load i32, i32* @AE_IFREG, align 4
  %130 = or i32 %129, 420
  %131 = call i32 @archive_entry_set_mode(%struct.archive_entry* %128, i32 %130)
  %132 = load i32, i32* @AE_IFREG, align 4
  %133 = or i32 %132, 420
  %134 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %135 = call i32 @archive_entry_mode(%struct.archive_entry* %134)
  %136 = call i32 @assertEqualInt(i32 %133, i32 %135)
  %137 = load i32, i32* @ARCHIVE_OK, align 4
  %138 = load %struct.archive*, %struct.archive** %1, align 8
  %139 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %140 = call i32 @archive_write_header(%struct.archive* %138, %struct.archive_entry* %139)
  %141 = call i32 @assertEqualInt(i32 %137, i32 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %143 = call i32 @archive_entry_free(%struct.archive_entry* %142)
  %144 = load i32, i32* @ARCHIVE_OK, align 4
  %145 = load %struct.archive*, %struct.archive** %1, align 8
  %146 = call i32 @archive_write_close(%struct.archive* %145)
  %147 = call i32 @assertEqualInt(i32 %144, i32 %146)
  %148 = load i32, i32* @ARCHIVE_OK, align 4
  %149 = load %struct.archive*, %struct.archive** %1, align 8
  %150 = call i32 @archive_write_free(%struct.archive* %149)
  %151 = call i32 @assertEqualInt(i32 %148, i32 %150)
  %152 = load i8*, i8** %4, align 8
  %153 = call i32 @assertEqualMem(i8* %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %154 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %154, %struct.archive** %1, align 8
  %155 = icmp ne %struct.archive* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.archive*, %struct.archive** %1, align 8
  %159 = load i32, i32* @ARCHIVE_OK, align 4
  %160 = load %struct.archive*, %struct.archive** %1, align 8
  %161 = call i32 @archive_read_support_format_all(%struct.archive* %160)
  %162 = call i32 @assertEqualIntA(%struct.archive* %158, i32 %159, i32 %161)
  %163 = load %struct.archive*, %struct.archive** %1, align 8
  %164 = load i32, i32* @ARCHIVE_OK, align 4
  %165 = load %struct.archive*, %struct.archive** %1, align 8
  %166 = call i32 @archive_read_support_filter_all(%struct.archive* %165)
  %167 = call i32 @assertEqualIntA(%struct.archive* %163, i32 %164, i32 %166)
  %168 = load %struct.archive*, %struct.archive** %1, align 8
  %169 = load i32, i32* @ARCHIVE_OK, align 4
  %170 = load %struct.archive*, %struct.archive** %1, align 8
  %171 = load i8*, i8** %4, align 8
  %172 = load i64, i64* %5, align 8
  %173 = call i32 @read_open_memory_seek(%struct.archive* %170, i8* %171, i64 %172, i32 7)
  %174 = call i32 @assertEqualIntA(%struct.archive* %168, i32 %169, i32 %173)
  %175 = load %struct.archive*, %struct.archive** %1, align 8
  %176 = load i32, i32* @ARCHIVE_OK, align 4
  %177 = load %struct.archive*, %struct.archive** %1, align 8
  %178 = call i32 @archive_read_next_header(%struct.archive* %177, %struct.archive_entry** %2)
  %179 = call i32 @assertEqualIntA(%struct.archive* %175, i32 %176, i32 %178)
  %180 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %181 = call i32 @archive_entry_mtime(%struct.archive_entry* %180)
  %182 = call i32 @assertEqualInt(i32 1, i32 %181)
  %183 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %184 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %183)
  %185 = call i32 @assertEqualInt(i32 0, i32 %184)
  %186 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %187 = call i32 @archive_entry_atime(%struct.archive_entry* %186)
  %188 = call i32 @assertEqualInt(i32 2, i32 %187)
  %189 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %190 = call i32 @archive_entry_atime_nsec(%struct.archive_entry* %189)
  %191 = call i32 @assertEqualInt(i32 0, i32 %190)
  %192 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %193 = call i32 @archive_entry_ctime(%struct.archive_entry* %192)
  %194 = call i32 @assertEqualInt(i32 0, i32 %193)
  %195 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %196 = call i32 @archive_entry_pathname(%struct.archive_entry* %195)
  %197 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @AE_IFREG, align 4
  %199 = or i32 %198, 493
  %200 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %201 = call i32 @archive_entry_mode(%struct.archive_entry* %200)
  %202 = call i32 @assertEqualInt(i32 %199, i32 %201)
  %203 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %204 = call i32 @archive_entry_size(%struct.archive_entry* %203)
  %205 = call i32 @assertEqualInt(i32 0, i32 %204)
  %206 = load %struct.archive*, %struct.archive** %1, align 8
  %207 = load i32, i32* @ARCHIVE_OK, align 4
  %208 = load %struct.archive*, %struct.archive** %1, align 8
  %209 = call i32 @archive_read_next_header(%struct.archive* %208, %struct.archive_entry** %2)
  %210 = call i32 @assertEqualIntA(%struct.archive* %206, i32 %207, i32 %209)
  %211 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %212 = call i32 @archive_entry_mtime(%struct.archive_entry* %211)
  %213 = call i32 @assertEqualInt(i32 2, i32 %212)
  %214 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %215 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %214)
  %216 = call i32 @assertEqualInt(i32 0, i32 %215)
  %217 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %218 = call i32 @archive_entry_atime(%struct.archive_entry* %217)
  %219 = call i32 @assertEqualInt(i32 0, i32 %218)
  %220 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %221 = call i32 @archive_entry_ctime(%struct.archive_entry* %220)
  %222 = call i32 @assertEqualInt(i32 2, i32 %221)
  %223 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %224 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %223)
  %225 = call i32 @assertEqualInt(i32 0, i32 %224)
  %226 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %227 = call i32 @archive_entry_pathname(%struct.archive_entry* %226)
  %228 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @AE_IFREG, align 4
  %230 = or i32 %229, 420
  %231 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %232 = call i32 @archive_entry_mode(%struct.archive_entry* %231)
  %233 = call i32 @assertEqualInt(i32 %230, i32 %232)
  %234 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %235 = call i32 @archive_entry_size(%struct.archive_entry* %234)
  %236 = call i32 @assertEqualInt(i32 0, i32 %235)
  %237 = load %struct.archive*, %struct.archive** %1, align 8
  %238 = load i32, i32* @ARCHIVE_OK, align 4
  %239 = load %struct.archive*, %struct.archive** %1, align 8
  %240 = call i32 @archive_read_next_header(%struct.archive* %239, %struct.archive_entry** %2)
  %241 = call i32 @assertEqualIntA(%struct.archive* %237, i32 %238, i32 %240)
  %242 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %243 = call i32 @archive_entry_mtime(%struct.archive_entry* %242)
  %244 = call i32 @assertEqualInt(i32 3, i32 %243)
  %245 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %246 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %245)
  %247 = call i32 @assertEqualInt(i32 0, i32 %246)
  %248 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %249 = call i32 @archive_entry_atime(%struct.archive_entry* %248)
  %250 = call i32 @assertEqualInt(i32 0, i32 %249)
  %251 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %252 = call i32 @archive_entry_ctime(%struct.archive_entry* %251)
  %253 = call i32 @assertEqualInt(i32 0, i32 %252)
  %254 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %255 = call i32 @archive_entry_pathname(%struct.archive_entry* %254)
  %256 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @AE_IFREG, align 4
  %258 = or i32 %257, 420
  %259 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %260 = call i32 @archive_entry_mode(%struct.archive_entry* %259)
  %261 = call i32 @assertEqualInt(i32 %258, i32 %260)
  %262 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %263 = call i32 @archive_entry_size(%struct.archive_entry* %262)
  %264 = call i32 @assertEqualInt(i32 0, i32 %263)
  %265 = load %struct.archive*, %struct.archive** %1, align 8
  %266 = load i32, i32* @ARCHIVE_EOF, align 4
  %267 = load %struct.archive*, %struct.archive** %1, align 8
  %268 = call i32 @archive_read_next_header(%struct.archive* %267, %struct.archive_entry** %2)
  %269 = call i32 @assertEqualIntA(%struct.archive* %265, i32 %266, i32 %268)
  %270 = load %struct.archive*, %struct.archive** %1, align 8
  %271 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %272 = load %struct.archive*, %struct.archive** %1, align 8
  %273 = call i32 @archive_filter_code(%struct.archive* %272, i32 0)
  %274 = call i32 @assertEqualIntA(%struct.archive* %270, i32 %271, i32 %273)
  %275 = load %struct.archive*, %struct.archive** %1, align 8
  %276 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %277 = load %struct.archive*, %struct.archive** %1, align 8
  %278 = call i32 @archive_format(%struct.archive* %277)
  %279 = call i32 @assertEqualIntA(%struct.archive* %275, i32 %276, i32 %278)
  %280 = load i32, i32* @ARCHIVE_OK, align 4
  %281 = load %struct.archive*, %struct.archive** %1, align 8
  %282 = call i32 @archive_read_close(%struct.archive* %281)
  %283 = call i32 @assertEqualInt(i32 %280, i32 %282)
  %284 = load i32, i32* @ARCHIVE_OK, align 4
  %285 = load %struct.archive*, %struct.archive** %1, align 8
  %286 = call i32 @archive_read_free(%struct.archive* %285)
  %287 = call i32 @assertEqualInt(i32 %284, i32 %286)
  %288 = load i8*, i8** %4, align 8
  %289 = call i32 @free(i8* %288)
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

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_atime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @read_open_memory_seek(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
