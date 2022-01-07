; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_format_filter_by_ext.c_test_format_filter_by_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_write_set_format_filter_by_ext.c_test_format_filter_by_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s format not fully supported on this platform\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"lzma compression not supported on this platform\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"xz compression not supported on this platform\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s filter not supported on this platform\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"./file\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_BASE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i8*)* @test_format_filter_by_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_format_filter_by_ext(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.archive_entry*, align 8
  %12 = alloca %struct.archive*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i64 1048576, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = call i8* @malloc(i64 %18)
  store i8* %19, i8** %15, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %15, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %253

26:                                               ; preds = %5
  %27 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %27, %struct.archive** %12, align 8
  %28 = icmp ne %struct.archive* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.archive*, %struct.archive** %12, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @archive_write_set_format_filter_by_ext(%struct.archive* %34, i8* %35)
  store i32 %36, i32* %16, align 4
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.archive*, %struct.archive** %12, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @archive_write_set_format_filter_by_ext_def(%struct.archive* %38, i8* %39, i8* %40)
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @ARCHIVE_WARN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.archive*, %struct.archive** %12, align 8
  %48 = call i8* @archive_format_name(%struct.archive* %47)
  %49 = call i32 @skipping(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %12, align 8
  %52 = call i32 @archive_write_free(%struct.archive* %51)
  %53 = call i32 @assertEqualInt(i32 %50, i32 %52)
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @free(i8* %54)
  br label %253

56:                                               ; preds = %42
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @ARCHIVE_FATAL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.archive*, %struct.archive** %12, align 8
  %62 = call i32 @archive_error_string(%struct.archive* %61)
  %63 = call i64 @strcmp(i32 %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.archive*, %struct.archive** %12, align 8
  %67 = call i32 @archive_error_string(%struct.archive* %66)
  %68 = call i64 @strcmp(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65, %60
  %71 = load %struct.archive*, %struct.archive** %12, align 8
  %72 = call i8* @archive_filter_name(%struct.archive* %71, i32 0)
  store i8* %72, i8** %17, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 @skipping(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @ARCHIVE_OK, align 4
  %76 = load %struct.archive*, %struct.archive** %12, align 8
  %77 = call i32 @archive_write_free(%struct.archive* %76)
  %78 = call i32 @assertEqualInt(i32 %75, i32 %77)
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @free(i8* %79)
  br label %253

81:                                               ; preds = %65, %56
  %82 = load %struct.archive*, %struct.archive** %12, align 8
  %83 = load i32, i32* @ARCHIVE_OK, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @assertEqualIntA(%struct.archive* %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  %89 = load %struct.archive*, %struct.archive** %12, align 8
  %90 = call i32 @archive_write_free(%struct.archive* %89)
  %91 = call i32 @assertEqualInt(i32 %88, i32 %90)
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 @free(i8* %92)
  br label %253

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.archive*, %struct.archive** %12, align 8
  %98 = load i32, i32* @ARCHIVE_OK, align 4
  %99 = load %struct.archive*, %struct.archive** %12, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @archive_write_open_memory(%struct.archive* %99, i8* %100, i64 %101, i64* %13)
  %103 = call i32 @assertEqualIntA(%struct.archive* %97, i32 %98, i32 %102)
  %104 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %104, %struct.archive_entry** %11, align 8
  %105 = icmp ne %struct.archive_entry* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %109 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %108, i32 1, i32 0)
  %110 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %111 = call i32 @archive_entry_mtime(%struct.archive_entry* %110)
  %112 = call i32 @assertEqualInt(i32 1, i32 %111)
  %113 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %114 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %113, i32 1, i32 0)
  %115 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %116 = call i32 @archive_entry_ctime(%struct.archive_entry* %115)
  %117 = call i32 @assertEqualInt(i32 1, i32 %116)
  %118 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %119 = call i32 @archive_entry_set_atime(%struct.archive_entry* %118, i32 1, i32 0)
  %120 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %121 = call i32 @archive_entry_atime(%struct.archive_entry* %120)
  %122 = call i32 @assertEqualInt(i32 1, i32 %121)
  %123 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %124 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %125 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %126 = call i32 @archive_entry_pathname(%struct.archive_entry* %125)
  %127 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %129 = load i32, i32* @AE_IFREG, align 4
  %130 = or i32 %129, 493
  %131 = call i32 @archive_entry_set_mode(%struct.archive_entry* %128, i32 %130)
  %132 = load i32, i32* @AE_IFREG, align 4
  %133 = or i32 %132, 493
  %134 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %135 = call i32 @archive_entry_mode(%struct.archive_entry* %134)
  %136 = call i32 @assertEqualInt(i32 %133, i32 %135)
  %137 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %138 = call i32 @archive_entry_set_size(%struct.archive_entry* %137, i32 8)
  %139 = load %struct.archive*, %struct.archive** %12, align 8
  %140 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %141 = call i32 @archive_write_header(%struct.archive* %139, %struct.archive_entry* %140)
  %142 = call i32 @assertEqualInt(i32 0, i32 %141)
  %143 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %144 = call i32 @archive_entry_free(%struct.archive_entry* %143)
  %145 = load %struct.archive*, %struct.archive** %12, align 8
  %146 = call i32 @archive_write_data(%struct.archive* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %147 = call i32 @assertEqualInt(i32 8, i32 %146)
  %148 = load %struct.archive*, %struct.archive** %12, align 8
  %149 = load i32, i32* @ARCHIVE_OK, align 4
  %150 = load %struct.archive*, %struct.archive** %12, align 8
  %151 = call i32 @archive_write_close(%struct.archive* %150)
  %152 = call i32 @assertEqualIntA(%struct.archive* %148, i32 %149, i32 %151)
  %153 = load i32, i32* @ARCHIVE_OK, align 4
  %154 = load %struct.archive*, %struct.archive** %12, align 8
  %155 = call i32 @archive_write_free(%struct.archive* %154)
  %156 = call i32 @assertEqualInt(i32 %153, i32 %155)
  %157 = load i32, i32* %7, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %250

159:                                              ; preds = %96
  %160 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %160, %struct.archive** %12, align 8
  %161 = icmp ne %struct.archive* %160, null
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.archive*, %struct.archive** %12, align 8
  %165 = load i32, i32* @ARCHIVE_OK, align 4
  %166 = load %struct.archive*, %struct.archive** %12, align 8
  %167 = call i32 @archive_read_support_format_all(%struct.archive* %166)
  %168 = call i32 @assertEqualIntA(%struct.archive* %164, i32 %165, i32 %167)
  %169 = load %struct.archive*, %struct.archive** %12, align 8
  %170 = load i32, i32* @ARCHIVE_OK, align 4
  %171 = load %struct.archive*, %struct.archive** %12, align 8
  %172 = call i32 @archive_read_support_filter_all(%struct.archive* %171)
  %173 = call i32 @assertEqualIntA(%struct.archive* %169, i32 %170, i32 %172)
  %174 = load %struct.archive*, %struct.archive** %12, align 8
  %175 = load i32, i32* @ARCHIVE_OK, align 4
  %176 = load %struct.archive*, %struct.archive** %12, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = load i64, i64* %13, align 8
  %179 = call i32 @read_open_memory_seek(%struct.archive* %176, i8* %177, i64 %178, i32 7)
  %180 = call i32 @assertEqualIntA(%struct.archive* %174, i32 %175, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = and i32 %181, 1
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %159
  %185 = load %struct.archive*, %struct.archive** %12, align 8
  %186 = load i32, i32* @ARCHIVE_OK, align 4
  %187 = load %struct.archive*, %struct.archive** %12, align 8
  %188 = call i32 @archive_read_next_header(%struct.archive* %187, %struct.archive_entry** %11)
  %189 = call i32 @assertEqualIntA(%struct.archive* %185, i32 %186, i32 %188)
  %190 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %191 = call i32 @archive_entry_pathname(%struct.archive_entry* %190)
  %192 = call i32 @assertEqualString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @AE_IFDIR, align 4
  %194 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %195 = call i32 @archive_entry_filetype(%struct.archive_entry* %194)
  %196 = call i32 @assertEqualInt(i32 %193, i32 %195)
  br label %197

197:                                              ; preds = %184, %159
  %198 = load %struct.archive*, %struct.archive** %12, align 8
  %199 = load i32, i32* @ARCHIVE_OK, align 4
  %200 = load %struct.archive*, %struct.archive** %12, align 8
  %201 = call i32 @archive_read_next_header(%struct.archive* %200, %struct.archive_entry** %11)
  %202 = call i32 @assertEqualIntA(%struct.archive* %198, i32 %199, i32 %201)
  %203 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %204 = call i32 @archive_entry_mtime(%struct.archive_entry* %203)
  %205 = call i32 @assertEqualInt(i32 1, i32 %204)
  %206 = load i32, i32* %9, align 4
  %207 = and i32 %206, 2
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %197
  %210 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %211 = call i32 @archive_entry_pathname(%struct.archive_entry* %210)
  %212 = call i32 @assertEqualString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  br label %217

213:                                              ; preds = %197
  %214 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %215 = call i32 @archive_entry_pathname(%struct.archive_entry* %214)
  %216 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %213, %209
  %218 = load i32, i32* @AE_IFREG, align 4
  %219 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %220 = call i32 @archive_entry_filetype(%struct.archive_entry* %219)
  %221 = call i32 @assertEqualInt(i32 %218, i32 %220)
  %222 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %223 = call i32 @archive_entry_size(%struct.archive_entry* %222)
  %224 = call i32 @assertEqualInt(i32 8, i32 %223)
  %225 = load %struct.archive*, %struct.archive** %12, align 8
  %226 = load i32, i32* @ARCHIVE_EOF, align 4
  %227 = load %struct.archive*, %struct.archive** %12, align 8
  %228 = call i32 @archive_read_next_header(%struct.archive* %227, %struct.archive_entry** %11)
  %229 = call i32 @assertEqualIntA(%struct.archive* %225, i32 %226, i32 %228)
  %230 = load %struct.archive*, %struct.archive** %12, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.archive*, %struct.archive** %12, align 8
  %233 = call i32 @archive_filter_code(%struct.archive* %232, i32 0)
  %234 = call i32 @assertEqualIntA(%struct.archive* %230, i32 %231, i32 %233)
  %235 = load %struct.archive*, %struct.archive** %12, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.archive*, %struct.archive** %12, align 8
  %238 = call i32 @archive_format(%struct.archive* %237)
  %239 = load i32, i32* @ARCHIVE_FORMAT_BASE_MASK, align 4
  %240 = and i32 %238, %239
  %241 = call i32 @assertEqualIntA(%struct.archive* %235, i32 %236, i32 %240)
  %242 = load i32, i32* @ARCHIVE_OK, align 4
  %243 = load %struct.archive*, %struct.archive** %12, align 8
  %244 = call i32 @archive_read_close(%struct.archive* %243)
  %245 = call i32 @assertEqualInt(i32 %242, i32 %244)
  %246 = load i32, i32* @ARCHIVE_OK, align 4
  %247 = load %struct.archive*, %struct.archive** %12, align 8
  %248 = call i32 @archive_read_free(%struct.archive* %247)
  %249 = call i32 @assertEqualInt(i32 %246, i32 %248)
  br label %250

250:                                              ; preds = %217, %96
  %251 = load i8*, i8** %15, align 8
  %252 = call i32 @free(i8* %251)
  br label %253

253:                                              ; preds = %250, %87, %70, %46, %25
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @archive_write_set_format_filter_by_ext(%struct.archive*, i8*) #1

declare dso_local i32 @archive_write_set_format_filter_by_ext_def(%struct.archive*, i8*, i8*) #1

declare dso_local i32 @skipping(i8*, i8*) #1

declare dso_local i8* @archive_format_name(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i8* @archive_filter_name(%struct.archive*, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @read_open_memory_seek(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

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
