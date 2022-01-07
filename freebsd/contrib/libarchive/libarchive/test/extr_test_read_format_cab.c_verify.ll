; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_cab.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_cab.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@STORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@MSZIP = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Skipping CAB format(MSZIP) check: %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dir1/file1\00", align 1
@file1_size = common dso_local global i32 0, align 4
@file1 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"dir2/file2\00", align 1
@file2_size = common dso_local global i32 0, align 4
@file2 = common dso_local global i8* null, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_CAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 128)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @extract_reference_file(i8* %13)
  %15 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %15, %struct.archive** %6, align 8
  %16 = icmp ne %struct.archive* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.archive*, %struct.archive** %6, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %6, align 8
  %22 = call i32 @archive_read_support_filter_all(%struct.archive* %21)
  %23 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %22)
  %24 = load %struct.archive*, %struct.archive** %6, align 8
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  %26 = load %struct.archive*, %struct.archive** %6, align 8
  %27 = call i32 @archive_read_support_format_all(%struct.archive* %26)
  %28 = call i32 @assertEqualIntA(%struct.archive* %24, i32 %25, i32 %27)
  %29 = load %struct.archive*, %struct.archive** %6, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = load %struct.archive*, %struct.archive** %6, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @archive_read_open_filename(%struct.archive* %31, i8* %32, i32 10240)
  %34 = call i32 @assertEqualIntA(%struct.archive* %29, i32 %30, i32 %33)
  %35 = load %struct.archive*, %struct.archive** %6, align 8
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  %37 = load %struct.archive*, %struct.archive** %6, align 8
  %38 = call i32 @archive_read_next_header(%struct.archive* %37, %struct.archive_entry** %5)
  %39 = call i32 @assertEqualIntA(%struct.archive* %35, i32 %36, i32 %38)
  %40 = load i32, i32* @AE_IFREG, align 4
  %41 = or i32 %40, 438
  %42 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %43 = call i64 @archive_entry_mode(%struct.archive_entry* %42)
  %44 = call i32 @assertEqualInt(i32 %41, i64 %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %46 = call i32 @archive_entry_pathname(%struct.archive_entry* %45)
  %47 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %49 = call i64 @archive_entry_uid(%struct.archive_entry* %48)
  %50 = call i32 @assertEqualInt(i32 0, i64 %49)
  %51 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %52 = call i64 @archive_entry_gid(%struct.archive_entry* %51)
  %53 = call i32 @assertEqualInt(i32 0, i64 %52)
  %54 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %55 = call i64 @archive_entry_size(%struct.archive_entry* %54)
  %56 = call i32 @assertEqualInt(i32 0, i64 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %58 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %57)
  %59 = call i32 @assertEqualInt(i32 %58, i64 0)
  %60 = load %struct.archive*, %struct.archive** %6, align 8
  %61 = load %struct.archive*, %struct.archive** %6, align 8
  %62 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %61)
  %63 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %64 = call i32 @assertEqualIntA(%struct.archive* %60, i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @STORE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %147

68:                                               ; preds = %2
  %69 = load %struct.archive*, %struct.archive** %6, align 8
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  %71 = load %struct.archive*, %struct.archive** %6, align 8
  %72 = call i32 @archive_read_next_header(%struct.archive* %71, %struct.archive_entry** %5)
  %73 = call i32 @assertEqualIntA(%struct.archive* %69, i32 %70, i32 %72)
  %74 = load i32, i32* @AE_IFREG, align 4
  %75 = or i32 %74, 438
  %76 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %77 = call i64 @archive_entry_mode(%struct.archive_entry* %76)
  %78 = call i32 @assertEqualInt(i32 %75, i64 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %80 = call i32 @archive_entry_pathname(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %83 = call i64 @archive_entry_uid(%struct.archive_entry* %82)
  %84 = call i32 @assertEqualInt(i32 0, i64 %83)
  %85 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %86 = call i64 @archive_entry_gid(%struct.archive_entry* %85)
  %87 = call i32 @assertEqualInt(i32 0, i64 %86)
  %88 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %89 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %88)
  %90 = call i32 @assertEqualInt(i32 %89, i64 0)
  %91 = load %struct.archive*, %struct.archive** %6, align 8
  %92 = load %struct.archive*, %struct.archive** %6, align 8
  %93 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %92)
  %94 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %95 = call i32 @assertEqualIntA(%struct.archive* %91, i32 %93, i32 %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %97 = call i64 @archive_entry_size(%struct.archive_entry* %96)
  %98 = call i32 @assertEqualInt(i32 33000, i64 %97)
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %127, %68
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 128
  %102 = icmp ult i64 %101, 33000
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load %struct.archive*, %struct.archive** %6, align 8
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %106 = call i64 @archive_read_data(%struct.archive* %104, i8* %105, i32 128)
  store i64 %106, i64* %10, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @MSZIP, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* @ARCHIVE_FATAL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = call i32* (...) @archive_zlib_version()
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.archive*, %struct.archive** %6, align 8
  %119 = call i32 @archive_error_string(%struct.archive* %118)
  %120 = call i32 @skipping(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %257

121:                                              ; preds = %114, %110, %103
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @assertEqualInt(i32 128, i64 %122)
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %126 = call i32 @assertEqualMem(i8* %124, i8* %125, i32 128)
  br label %127

127:                                              ; preds = %121
  %128 = load i64, i64* %9, align 8
  %129 = add i64 %128, 128
  store i64 %129, i64* %9, align 8
  br label %99

130:                                              ; preds = %99
  %131 = load i64, i64* %9, align 8
  %132 = sub i64 33000, %131
  %133 = trunc i64 %132 to i32
  %134 = load %struct.archive*, %struct.archive** %6, align 8
  %135 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %136 = load i64, i64* %9, align 8
  %137 = sub i64 33000, %136
  %138 = trunc i64 %137 to i32
  %139 = call i64 @archive_read_data(%struct.archive* %134, i8* %135, i32 %138)
  %140 = call i32 @assertEqualInt(i32 %133, i64 %139)
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %143 = load i64, i64* %9, align 8
  %144 = sub i64 33000, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @assertEqualMem(i8* %141, i8* %142, i32 %145)
  br label %147

147:                                              ; preds = %130, %2
  %148 = load %struct.archive*, %struct.archive** %6, align 8
  %149 = load i32, i32* @ARCHIVE_OK, align 4
  %150 = load %struct.archive*, %struct.archive** %6, align 8
  %151 = call i32 @archive_read_next_header(%struct.archive* %150, %struct.archive_entry** %5)
  %152 = call i32 @assertEqualIntA(%struct.archive* %148, i32 %149, i32 %151)
  %153 = load i32, i32* @AE_IFREG, align 4
  %154 = or i32 %153, 438
  %155 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %156 = call i64 @archive_entry_mode(%struct.archive_entry* %155)
  %157 = call i32 @assertEqualInt(i32 %154, i64 %156)
  %158 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %159 = call i32 @archive_entry_pathname(%struct.archive_entry* %158)
  %160 = call i32 @assertEqualString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  %161 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %162 = call i64 @archive_entry_uid(%struct.archive_entry* %161)
  %163 = call i32 @assertEqualInt(i32 0, i64 %162)
  %164 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %165 = call i64 @archive_entry_gid(%struct.archive_entry* %164)
  %166 = call i32 @assertEqualInt(i32 0, i64 %165)
  %167 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %168 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %167)
  %169 = call i32 @assertEqualInt(i32 %168, i64 0)
  %170 = load %struct.archive*, %struct.archive** %6, align 8
  %171 = load %struct.archive*, %struct.archive** %6, align 8
  %172 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %171)
  %173 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %174 = call i32 @assertEqualIntA(%struct.archive* %170, i32 %172, i32 %173)
  %175 = load i32, i32* @file1_size, align 4
  %176 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %177 = call i64 @archive_entry_size(%struct.archive_entry* %176)
  %178 = call i32 @assertEqualInt(i32 %175, i64 %177)
  %179 = load i32, i32* @file1_size, align 4
  %180 = load %struct.archive*, %struct.archive** %6, align 8
  %181 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %182 = load i32, i32* @file1_size, align 4
  %183 = call i64 @archive_read_data(%struct.archive* %180, i8* %181, i32 %182)
  %184 = call i32 @assertEqualInt(i32 %179, i64 %183)
  %185 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %186 = load i8*, i8** @file1, align 8
  %187 = load i32, i32* @file1_size, align 4
  %188 = call i32 @assertEqualMem(i8* %185, i8* %186, i32 %187)
  %189 = load %struct.archive*, %struct.archive** %6, align 8
  %190 = load i32, i32* @ARCHIVE_OK, align 4
  %191 = load %struct.archive*, %struct.archive** %6, align 8
  %192 = call i32 @archive_read_next_header(%struct.archive* %191, %struct.archive_entry** %5)
  %193 = call i32 @assertEqualIntA(%struct.archive* %189, i32 %190, i32 %192)
  %194 = load i32, i32* @AE_IFREG, align 4
  %195 = or i32 %194, 438
  %196 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %197 = call i64 @archive_entry_mode(%struct.archive_entry* %196)
  %198 = call i32 @assertEqualInt(i32 %195, i64 %197)
  %199 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %200 = call i32 @archive_entry_pathname(%struct.archive_entry* %199)
  %201 = call i32 @assertEqualString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %200)
  %202 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %203 = call i64 @archive_entry_uid(%struct.archive_entry* %202)
  %204 = call i32 @assertEqualInt(i32 0, i64 %203)
  %205 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %206 = call i64 @archive_entry_gid(%struct.archive_entry* %205)
  %207 = call i32 @assertEqualInt(i32 0, i64 %206)
  %208 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %209 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %208)
  %210 = call i32 @assertEqualInt(i32 %209, i64 0)
  %211 = load %struct.archive*, %struct.archive** %6, align 8
  %212 = load %struct.archive*, %struct.archive** %6, align 8
  %213 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %212)
  %214 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %215 = call i32 @assertEqualIntA(%struct.archive* %211, i32 %213, i32 %214)
  %216 = load i32, i32* @file2_size, align 4
  %217 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %218 = call i64 @archive_entry_size(%struct.archive_entry* %217)
  %219 = call i32 @assertEqualInt(i32 %216, i64 %218)
  %220 = load i32, i32* @file2_size, align 4
  %221 = load %struct.archive*, %struct.archive** %6, align 8
  %222 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %223 = load i32, i32* @file2_size, align 4
  %224 = call i64 @archive_read_data(%struct.archive* %221, i8* %222, i32 %223)
  %225 = call i32 @assertEqualInt(i32 %220, i64 %224)
  %226 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %227 = load i8*, i8** @file2, align 8
  %228 = load i32, i32* @file2_size, align 4
  %229 = call i32 @assertEqualMem(i8* %226, i8* %227, i32 %228)
  %230 = load %struct.archive*, %struct.archive** %6, align 8
  %231 = load i32, i32* @ARCHIVE_EOF, align 4
  %232 = load %struct.archive*, %struct.archive** %6, align 8
  %233 = call i32 @archive_read_next_header(%struct.archive* %232, %struct.archive_entry** %5)
  %234 = call i32 @assertEqualIntA(%struct.archive* %230, i32 %231, i32 %233)
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @STORE, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %147
  %239 = load %struct.archive*, %struct.archive** %6, align 8
  %240 = call i64 @archive_file_count(%struct.archive* %239)
  %241 = call i32 @assertEqualInt(i32 4, i64 %240)
  br label %246

242:                                              ; preds = %147
  %243 = load %struct.archive*, %struct.archive** %6, align 8
  %244 = call i64 @archive_file_count(%struct.archive* %243)
  %245 = call i32 @assertEqualInt(i32 3, i64 %244)
  br label %246

246:                                              ; preds = %242, %238
  %247 = load %struct.archive*, %struct.archive** %6, align 8
  %248 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %249 = load %struct.archive*, %struct.archive** %6, align 8
  %250 = call i32 @archive_filter_code(%struct.archive* %249, i32 0)
  %251 = call i32 @assertEqualIntA(%struct.archive* %247, i32 %248, i32 %250)
  %252 = load %struct.archive*, %struct.archive** %6, align 8
  %253 = load i32, i32* @ARCHIVE_FORMAT_CAB, align 4
  %254 = load %struct.archive*, %struct.archive** %6, align 8
  %255 = call i32 @archive_format(%struct.archive* %254)
  %256 = call i32 @assertEqualIntA(%struct.archive* %252, i32 %253, i32 %255)
  br label %257

257:                                              ; preds = %246, %117
  %258 = load i32, i32* @ARCHIVE_OK, align 4
  %259 = load %struct.archive*, %struct.archive** %6, align 8
  %260 = call i64 @archive_read_close(%struct.archive* %259)
  %261 = call i32 @assertEqualInt(i32 %258, i64 %260)
  %262 = load i32, i32* @ARCHIVE_OK, align 4
  %263 = load %struct.archive*, %struct.archive** %6, align 8
  %264 = call i64 @archive_read_free(%struct.archive* %263)
  %265 = call i32 @assertEqualInt(i32 %262, i64 %264)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i64) #1

declare dso_local i64 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32* @archive_zlib_version(...) #1

declare dso_local i32 @skipping(i8*, i32) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i64 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i64 @archive_read_close(%struct.archive*) #1

declare dso_local i64 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
