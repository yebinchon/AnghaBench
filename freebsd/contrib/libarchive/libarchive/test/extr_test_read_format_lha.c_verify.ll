; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_lha.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_lha.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dir/\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dir2/\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"dir2/symlink1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"../file1\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"dir2/symlink2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"../file2\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@file1_size = common dso_local global i32 0, align 4
@file1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@file2_size = common dso_local global i32 0, align 4
@file2 = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_LHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1001, i32* %12, align 4
  store i32 1001, i32* %11, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @extract_reference_file(i8* %18)
  %20 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %20, %struct.archive** %6, align 8
  %21 = icmp ne %struct.archive* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.archive*, %struct.archive** %6, align 8
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive*, %struct.archive** %6, align 8
  %27 = call i32 @archive_read_support_filter_all(%struct.archive* %26)
  %28 = call i32 @assertEqualIntA(%struct.archive* %24, i32 %25, i32 %27)
  %29 = load %struct.archive*, %struct.archive** %6, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = load %struct.archive*, %struct.archive** %6, align 8
  %32 = call i32 @archive_read_support_format_all(%struct.archive* %31)
  %33 = call i32 @assertEqualIntA(%struct.archive* %29, i32 %30, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %6, align 8
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  %36 = load %struct.archive*, %struct.archive** %6, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @archive_read_open_filename(%struct.archive* %36, i8* %37, i32 10240)
  %39 = call i32 @assertEqualIntA(%struct.archive* %34, i32 %35, i32 %38)
  %40 = load %struct.archive*, %struct.archive** %6, align 8
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  %42 = load %struct.archive*, %struct.archive** %6, align 8
  %43 = call i32 @archive_read_next_header(%struct.archive* %42, %struct.archive_entry** %5)
  %44 = call i32 @assertEqualIntA(%struct.archive* %40, i32 %41, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %17
  %48 = load i32, i32* @AE_IFDIR, align 4
  %49 = or i32 %48, 488
  %50 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %51 = call i32 @archive_entry_mode(%struct.archive_entry* %50)
  %52 = call i32 @assertEqualInt(i32 %49, i32 %51)
  br label %59

53:                                               ; preds = %17
  %54 = load i32, i32* @AE_IFDIR, align 4
  %55 = or i32 %54, 493
  %56 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %57 = call i32 @archive_entry_mode(%struct.archive_entry* %56)
  %58 = call i32 @assertEqualInt(i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %61 = call i32 @archive_entry_pathname(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %64 = call i32 @archive_entry_mtime(%struct.archive_entry* %63)
  %65 = call i32 @assertEqualInt(i32 86401, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %68 = call i32 @archive_entry_uid(%struct.archive_entry* %67)
  %69 = call i32 @assertEqualInt(i32 %66, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %72 = call i32 @archive_entry_gid(%struct.archive_entry* %71)
  %73 = call i32 @assertEqualInt(i32 %70, i32 %72)
  %74 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %75 = call i32 @archive_entry_size(%struct.archive_entry* %74)
  %76 = call i32 @assertEqualInt(i32 0, i32 %75)
  %77 = load %struct.archive*, %struct.archive** %6, align 8
  %78 = load i32, i32* @ARCHIVE_EOF, align 4
  %79 = load %struct.archive*, %struct.archive** %6, align 8
  %80 = call i32 @archive_read_data_block(%struct.archive* %79, i8** %8, i64* %9, i32* %10)
  %81 = call i32 @assertEqualIntA(%struct.archive* %77, i32 %78, i32 %80)
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @assertEqualInt(i32 %83, i32 0)
  %85 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %86 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %85)
  %87 = call i32 @assertEqualInt(i32 %86, i32 0)
  %88 = load %struct.archive*, %struct.archive** %6, align 8
  %89 = load %struct.archive*, %struct.archive** %6, align 8
  %90 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %89)
  %91 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %92 = call i32 @assertEqualIntA(%struct.archive* %88, i32 %90, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %6, align 8
  %94 = load i32, i32* @ARCHIVE_OK, align 4
  %95 = load %struct.archive*, %struct.archive** %6, align 8
  %96 = call i32 @archive_read_next_header(%struct.archive* %95, %struct.archive_entry** %5)
  %97 = call i32 @assertEqualIntA(%struct.archive* %93, i32 %94, i32 %96)
  %98 = load i32, i32* @AE_IFDIR, align 4
  %99 = or i32 %98, 493
  %100 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %101 = call i32 @archive_entry_mode(%struct.archive_entry* %100)
  %102 = call i32 @assertEqualInt(i32 %99, i32 %101)
  %103 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %104 = call i32 @archive_entry_pathname(%struct.archive_entry* %103)
  %105 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %107 = call i32 @archive_entry_mtime(%struct.archive_entry* %106)
  %108 = call i32 @assertEqualInt(i32 86401, i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %111 = call i32 @archive_entry_uid(%struct.archive_entry* %110)
  %112 = call i32 @assertEqualInt(i32 %109, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %115 = call i32 @archive_entry_gid(%struct.archive_entry* %114)
  %116 = call i32 @assertEqualInt(i32 %113, i32 %115)
  %117 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %118 = call i32 @archive_entry_size(%struct.archive_entry* %117)
  %119 = call i32 @assertEqualInt(i32 0, i32 %118)
  %120 = load %struct.archive*, %struct.archive** %6, align 8
  %121 = load i32, i32* @ARCHIVE_EOF, align 4
  %122 = load %struct.archive*, %struct.archive** %6, align 8
  %123 = call i32 @archive_read_data_block(%struct.archive* %122, i8** %8, i64* %9, i32* %10)
  %124 = call i32 @assertEqualIntA(%struct.archive* %120, i32 %121, i32 %123)
  %125 = load i64, i64* %9, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @assertEqualInt(i32 %126, i32 0)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %129 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %128)
  %130 = call i32 @assertEqualInt(i32 %129, i32 0)
  %131 = load %struct.archive*, %struct.archive** %6, align 8
  %132 = load %struct.archive*, %struct.archive** %6, align 8
  %133 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %132)
  %134 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %135 = call i32 @assertEqualIntA(%struct.archive* %131, i32 %133, i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %215

138:                                              ; preds = %59
  %139 = load %struct.archive*, %struct.archive** %6, align 8
  %140 = load i32, i32* @ARCHIVE_OK, align 4
  %141 = load %struct.archive*, %struct.archive** %6, align 8
  %142 = call i32 @archive_read_next_header(%struct.archive* %141, %struct.archive_entry** %5)
  %143 = call i32 @assertEqualIntA(%struct.archive* %139, i32 %140, i32 %142)
  %144 = load i32, i32* @AE_IFLNK, align 4
  %145 = or i32 %144, 493
  %146 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %147 = call i32 @archive_entry_mode(%struct.archive_entry* %146)
  %148 = call i32 @assertEqualInt(i32 %145, i32 %147)
  %149 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %150 = call i32 @archive_entry_pathname(%struct.archive_entry* %149)
  %151 = call i32 @assertEqualString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %153 = call i32 @archive_entry_symlink(%struct.archive_entry* %152)
  %154 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %156 = call i32 @archive_entry_mtime(%struct.archive_entry* %155)
  %157 = call i32 @assertEqualInt(i32 172802, i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %160 = call i32 @archive_entry_uid(%struct.archive_entry* %159)
  %161 = call i32 @assertEqualInt(i32 %158, i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %164 = call i32 @archive_entry_gid(%struct.archive_entry* %163)
  %165 = call i32 @assertEqualInt(i32 %162, i32 %164)
  %166 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %167 = call i32 @archive_entry_size(%struct.archive_entry* %166)
  %168 = call i32 @assertEqualInt(i32 0, i32 %167)
  %169 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %170 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %169)
  %171 = call i32 @assertEqualInt(i32 %170, i32 0)
  %172 = load %struct.archive*, %struct.archive** %6, align 8
  %173 = load %struct.archive*, %struct.archive** %6, align 8
  %174 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %173)
  %175 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %176 = call i32 @assertEqualIntA(%struct.archive* %172, i32 %174, i32 %175)
  %177 = load %struct.archive*, %struct.archive** %6, align 8
  %178 = load i32, i32* @ARCHIVE_OK, align 4
  %179 = load %struct.archive*, %struct.archive** %6, align 8
  %180 = call i32 @archive_read_next_header(%struct.archive* %179, %struct.archive_entry** %5)
  %181 = call i32 @assertEqualIntA(%struct.archive* %177, i32 %178, i32 %180)
  %182 = load i32, i32* @AE_IFLNK, align 4
  %183 = or i32 %182, 493
  %184 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %185 = call i32 @archive_entry_mode(%struct.archive_entry* %184)
  %186 = call i32 @assertEqualInt(i32 %183, i32 %185)
  %187 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %188 = call i32 @archive_entry_pathname(%struct.archive_entry* %187)
  %189 = call i32 @assertEqualString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  %190 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %191 = call i32 @archive_entry_symlink(%struct.archive_entry* %190)
  %192 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %191)
  %193 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %194 = call i32 @archive_entry_mtime(%struct.archive_entry* %193)
  %195 = call i32 @assertEqualInt(i32 172802, i32 %194)
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %198 = call i32 @archive_entry_uid(%struct.archive_entry* %197)
  %199 = call i32 @assertEqualInt(i32 %196, i32 %198)
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %202 = call i32 @archive_entry_gid(%struct.archive_entry* %201)
  %203 = call i32 @assertEqualInt(i32 %200, i32 %202)
  %204 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %205 = call i32 @archive_entry_size(%struct.archive_entry* %204)
  %206 = call i32 @assertEqualInt(i32 0, i32 %205)
  %207 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %208 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %207)
  %209 = call i32 @assertEqualInt(i32 %208, i32 0)
  %210 = load %struct.archive*, %struct.archive** %6, align 8
  %211 = load %struct.archive*, %struct.archive** %6, align 8
  %212 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %211)
  %213 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %214 = call i32 @assertEqualIntA(%struct.archive* %210, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %138, %59
  %216 = load %struct.archive*, %struct.archive** %6, align 8
  %217 = load i32, i32* @ARCHIVE_OK, align 4
  %218 = load %struct.archive*, %struct.archive** %6, align 8
  %219 = call i32 @archive_read_next_header(%struct.archive* %218, %struct.archive_entry** %5)
  %220 = call i32 @assertEqualIntA(%struct.archive* %216, i32 %217, i32 %219)
  %221 = load i32, i32* @AE_IFREG, align 4
  %222 = or i32 %221, 420
  %223 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %224 = call i32 @archive_entry_mode(%struct.archive_entry* %223)
  %225 = call i32 @assertEqualInt(i32 %222, i32 %224)
  %226 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %227 = call i32 @archive_entry_pathname(%struct.archive_entry* %226)
  %228 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %230 = call i32 @archive_entry_mtime(%struct.archive_entry* %229)
  %231 = call i32 @assertEqualInt(i32 86401, i32 %230)
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %234 = call i32 @archive_entry_uid(%struct.archive_entry* %233)
  %235 = call i32 @assertEqualInt(i32 %232, i32 %234)
  %236 = load i32, i32* %12, align 4
  %237 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %238 = call i32 @archive_entry_gid(%struct.archive_entry* %237)
  %239 = call i32 @assertEqualInt(i32 %236, i32 %238)
  %240 = load i32, i32* @file1_size, align 4
  %241 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %242 = call i32 @archive_entry_size(%struct.archive_entry* %241)
  %243 = call i32 @assertEqualInt(i32 %240, i32 %242)
  %244 = load i32, i32* @file1_size, align 4
  %245 = load %struct.archive*, %struct.archive** %6, align 8
  %246 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %247 = load i32, i32* @file1_size, align 4
  %248 = call i32 @archive_read_data(%struct.archive* %245, i8* %246, i32 %247)
  %249 = call i32 @assertEqualInt(i32 %244, i32 %248)
  %250 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %251 = load i32, i32* @file1, align 4
  %252 = load i32, i32* @file1_size, align 4
  %253 = call i32 @assertEqualMem(i8* %250, i32 %251, i32 %252)
  %254 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %255 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %254)
  %256 = call i32 @assertEqualInt(i32 %255, i32 0)
  %257 = load %struct.archive*, %struct.archive** %6, align 8
  %258 = load %struct.archive*, %struct.archive** %6, align 8
  %259 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %258)
  %260 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %261 = call i32 @assertEqualIntA(%struct.archive* %257, i32 %259, i32 %260)
  %262 = load %struct.archive*, %struct.archive** %6, align 8
  %263 = load i32, i32* @ARCHIVE_OK, align 4
  %264 = load %struct.archive*, %struct.archive** %6, align 8
  %265 = call i32 @archive_read_next_header(%struct.archive* %264, %struct.archive_entry** %5)
  %266 = call i32 @assertEqualIntA(%struct.archive* %262, i32 %263, i32 %265)
  %267 = load i32, i32* %4, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %215
  %270 = load i32, i32* @AE_IFREG, align 4
  %271 = or i32 %270, 438
  %272 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %273 = call i32 @archive_entry_mode(%struct.archive_entry* %272)
  %274 = call i32 @assertEqualInt(i32 %271, i32 %273)
  br label %281

275:                                              ; preds = %215
  %276 = load i32, i32* @AE_IFREG, align 4
  %277 = or i32 %276, 420
  %278 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %279 = call i32 @archive_entry_mode(%struct.archive_entry* %278)
  %280 = call i32 @assertEqualInt(i32 %277, i32 %279)
  br label %281

281:                                              ; preds = %275, %269
  %282 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %283 = call i32 @archive_entry_pathname(%struct.archive_entry* %282)
  %284 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %283)
  %285 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %286 = call i32 @archive_entry_mtime(%struct.archive_entry* %285)
  %287 = call i32 @assertEqualInt(i32 86401, i32 %286)
  %288 = load i32, i32* %11, align 4
  %289 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %290 = call i32 @archive_entry_uid(%struct.archive_entry* %289)
  %291 = call i32 @assertEqualInt(i32 %288, i32 %290)
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %294 = call i32 @archive_entry_gid(%struct.archive_entry* %293)
  %295 = call i32 @assertEqualInt(i32 %292, i32 %294)
  %296 = load i32, i32* @file2_size, align 4
  %297 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %298 = call i32 @archive_entry_size(%struct.archive_entry* %297)
  %299 = call i32 @assertEqualInt(i32 %296, i32 %298)
  %300 = load i32, i32* @file2_size, align 4
  %301 = load %struct.archive*, %struct.archive** %6, align 8
  %302 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %303 = load i32, i32* @file2_size, align 4
  %304 = call i32 @archive_read_data(%struct.archive* %301, i8* %302, i32 %303)
  %305 = call i32 @assertEqualInt(i32 %300, i32 %304)
  %306 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %307 = load i32, i32* @file2, align 4
  %308 = load i32, i32* @file2_size, align 4
  %309 = call i32 @assertEqualMem(i8* %306, i32 %307, i32 %308)
  %310 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %311 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %310)
  %312 = call i32 @assertEqualInt(i32 %311, i32 0)
  %313 = load %struct.archive*, %struct.archive** %6, align 8
  %314 = load %struct.archive*, %struct.archive** %6, align 8
  %315 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %314)
  %316 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %317 = call i32 @assertEqualIntA(%struct.archive* %313, i32 %315, i32 %316)
  %318 = load i32, i32* %4, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %281
  %321 = load %struct.archive*, %struct.archive** %6, align 8
  %322 = call i32 @archive_file_count(%struct.archive* %321)
  %323 = call i32 @assertEqualInt(i32 6, i32 %322)
  br label %328

324:                                              ; preds = %281
  %325 = load %struct.archive*, %struct.archive** %6, align 8
  %326 = call i32 @archive_file_count(%struct.archive* %325)
  %327 = call i32 @assertEqualInt(i32 4, i32 %326)
  br label %328

328:                                              ; preds = %324, %320
  %329 = load %struct.archive*, %struct.archive** %6, align 8
  %330 = load i32, i32* @ARCHIVE_EOF, align 4
  %331 = load %struct.archive*, %struct.archive** %6, align 8
  %332 = call i32 @archive_read_next_header(%struct.archive* %331, %struct.archive_entry** %5)
  %333 = call i32 @assertEqualIntA(%struct.archive* %329, i32 %330, i32 %332)
  %334 = load i32, i32* %4, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %328
  %337 = load %struct.archive*, %struct.archive** %6, align 8
  %338 = call i32 @archive_file_count(%struct.archive* %337)
  %339 = call i32 @assertEqualInt(i32 6, i32 %338)
  br label %344

340:                                              ; preds = %328
  %341 = load %struct.archive*, %struct.archive** %6, align 8
  %342 = call i32 @archive_file_count(%struct.archive* %341)
  %343 = call i32 @assertEqualInt(i32 4, i32 %342)
  br label %344

344:                                              ; preds = %340, %336
  %345 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %346 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %345)
  %347 = call i32 @assertEqualInt(i32 %346, i32 0)
  %348 = load %struct.archive*, %struct.archive** %6, align 8
  %349 = load %struct.archive*, %struct.archive** %6, align 8
  %350 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %349)
  %351 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %352 = call i32 @assertEqualIntA(%struct.archive* %348, i32 %350, i32 %351)
  %353 = load %struct.archive*, %struct.archive** %6, align 8
  %354 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %355 = load %struct.archive*, %struct.archive** %6, align 8
  %356 = call i32 @archive_filter_code(%struct.archive* %355, i32 0)
  %357 = call i32 @assertEqualIntA(%struct.archive* %353, i32 %354, i32 %356)
  %358 = load %struct.archive*, %struct.archive** %6, align 8
  %359 = load i32, i32* @ARCHIVE_FORMAT_LHA, align 4
  %360 = load %struct.archive*, %struct.archive** %6, align 8
  %361 = call i32 @archive_format(%struct.archive* %360)
  %362 = call i32 @assertEqualIntA(%struct.archive* %358, i32 %359, i32 %361)
  %363 = load i32, i32* @ARCHIVE_OK, align 4
  %364 = load %struct.archive*, %struct.archive** %6, align 8
  %365 = call i32 @archive_read_close(%struct.archive* %364)
  %366 = call i32 @assertEqualInt(i32 %363, i32 %365)
  %367 = load i32, i32* @ARCHIVE_OK, align 4
  %368 = load %struct.archive*, %struct.archive** %6, align 8
  %369 = call i32 @archive_read_free(%struct.archive* %368)
  %370 = call i32 @assertEqualInt(i32 %367, i32 %369)
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

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i32*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i32, i32) #1

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
