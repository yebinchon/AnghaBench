; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_truncated_filter.c_test_truncation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_truncated_filter.c_test_truncation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type opaque
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s writing not supported on this platform\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Should have non-NULL error message for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (%struct.archive*)*, i32)* @test_truncation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_truncation(i8* %0, i32 (%struct.archive*)* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32 (%struct.archive*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.archive*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 (%struct.archive*)* %1, i32 (%struct.archive*)** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 2000000, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i64 @malloc(i64 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %10, align 8
  %22 = icmp ne i8* null, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %277

28:                                               ; preds = %3
  store i64 10000, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @malloc(i64 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %11, align 8
  %32 = icmp ne i8* null, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %11, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @free(i8* %38)
  br label %277

40:                                               ; preds = %28
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @memset(i8* %41, i32 0, i64 %42)
  %44 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %44, %struct.archive** %8, align 8
  %45 = icmp ne %struct.archive* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.archive*, %struct.archive** %8, align 8
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  %50 = load %struct.archive*, %struct.archive** %8, align 8
  %51 = call i32 @archive_write_set_format_ustar(%struct.archive* %50)
  %52 = call i32 @assertEqualIntA(%struct.archive* %48, i32 %49, i32 %51)
  %53 = load %struct.archive*, %struct.archive** %8, align 8
  %54 = load i32, i32* @ARCHIVE_OK, align 4
  %55 = load %struct.archive*, %struct.archive** %8, align 8
  %56 = call i32 @archive_write_add_filter_compress(%struct.archive* %55)
  %57 = call i32 @assertEqualIntA(%struct.archive* %53, i32 %54, i32 %56)
  %58 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %5, align 8
  %59 = load %struct.archive*, %struct.archive** %8, align 8
  %60 = call i32 %58(%struct.archive* %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %40
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @skipping(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  %71 = load %struct.archive*, %struct.archive** %8, align 8
  %72 = call i32 @archive_write_free(%struct.archive* %71)
  %73 = call i32 @assertEqualInt(i32 %70, i32 %72)
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @free(i8* %76)
  br label %277

78:                                               ; preds = %64, %40
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @ARCHIVE_WARN, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i1 [ false, %78 ], [ %84, %82 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %18, align 4
  %88 = load %struct.archive*, %struct.archive** %8, align 8
  %89 = load i32, i32* @ARCHIVE_OK, align 4
  %90 = load %struct.archive*, %struct.archive** %8, align 8
  %91 = call i32 @archive_write_set_bytes_per_block(%struct.archive* %90, i32 10)
  %92 = call i32 @assertEqualIntA(%struct.archive* %88, i32 %89, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %8, align 8
  %94 = load i32, i32* @ARCHIVE_OK, align 4
  %95 = load %struct.archive*, %struct.archive** %8, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @archive_write_open_memory(%struct.archive* %95, i8* %96, i64 %97, i64* %14)
  %99 = call i32 @assertEqualIntA(%struct.archive* %93, i32 %94, i32 %98)
  %100 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %100, %struct.archive_entry** %7, align 8
  %101 = icmp ne %struct.archive_entry* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %105 = load i32, i32* @AE_IFREG, align 4
  %106 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %104, i32 %105)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @archive_entry_set_size(%struct.archive_entry* %107, i64 %108)
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %174, %85
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 100
  br i1 %112, label %113, label %177

113:                                              ; preds = %110
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @sprintf(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %115, i32 %116)
  %118 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %120 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %118, i8* %119)
  %121 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %122 = call i32 (i8*, ...) @failure(i8* %121)
  %123 = load %struct.archive*, %struct.archive** %8, align 8
  %124 = load i32, i32* @ARCHIVE_OK, align 4
  %125 = load %struct.archive*, %struct.archive** %8, align 8
  %126 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %127 = call i32 @archive_write_header(%struct.archive* %125, %struct.archive_entry* %126)
  %128 = call i32 @assertEqualIntA(%struct.archive* %123, i32 %124, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %113
  %131 = load %struct.archive*, %struct.archive** %8, align 8
  %132 = call i32 @archive_write_free(%struct.archive* %131)
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @free(i8* %135)
  br label %277

137:                                              ; preds = %113
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i32, i32* %16, align 4
  %140 = load i64, i64* %13, align 8
  %141 = trunc i64 %140 to i32
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = call i32 (...) @rand()
  %145 = srem i32 %144, 256
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %11, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  store i8 %146, i8* %150, align 1
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %138

154:                                              ; preds = %138
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %156 = call i32 (i8*, ...) @failure(i8* %155)
  %157 = load %struct.archive*, %struct.archive** %8, align 8
  %158 = load i64, i64* %13, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.archive*, %struct.archive** %8, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = load i64, i64* %13, align 8
  %163 = call i32 @archive_write_data(%struct.archive* %160, i8* %161, i64 %162)
  %164 = call i32 @assertEqualIntA(%struct.archive* %157, i32 %159, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %154
  %167 = load %struct.archive*, %struct.archive** %8, align 8
  %168 = call i32 @archive_write_free(%struct.archive* %167)
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i8*, i8** %10, align 8
  %172 = call i32 @free(i8* %171)
  br label %277

173:                                              ; preds = %154
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %110

177:                                              ; preds = %110
  %178 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %179 = call i32 @archive_entry_free(%struct.archive_entry* %178)
  %180 = load %struct.archive*, %struct.archive** %8, align 8
  %181 = load i32, i32* @ARCHIVE_OK, align 4
  %182 = load %struct.archive*, %struct.archive** %8, align 8
  %183 = call i32 @archive_write_close(%struct.archive* %182)
  %184 = call i32 @assertEqualIntA(%struct.archive* %180, i32 %181, i32 %183)
  %185 = load i32, i32* @ARCHIVE_OK, align 4
  %186 = load %struct.archive*, %struct.archive** %8, align 8
  %187 = call i32 @archive_write_free(%struct.archive* %186)
  %188 = call i32 @assertEqualInt(i32 %185, i32 %187)
  %189 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %189, %struct.archive** %8, align 8
  %190 = icmp ne %struct.archive* %189, null
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load %struct.archive*, %struct.archive** %8, align 8
  %194 = load i32, i32* @ARCHIVE_OK, align 4
  %195 = load %struct.archive*, %struct.archive** %8, align 8
  %196 = call i32 @archive_read_support_format_all(%struct.archive* %195)
  %197 = call i32 @assertEqualIntA(%struct.archive* %193, i32 %194, i32 %196)
  %198 = load %struct.archive*, %struct.archive** %8, align 8
  %199 = load i32, i32* @ARCHIVE_OK, align 4
  %200 = load %struct.archive*, %struct.archive** %8, align 8
  %201 = call i32 @archive_read_support_filter_all(%struct.archive* %200)
  %202 = call i32 @assertEqualIntA(%struct.archive* %198, i32 %199, i32 %201)
  %203 = load %struct.archive*, %struct.archive** %8, align 8
  %204 = load i32, i32* @ARCHIVE_OK, align 4
  %205 = load %struct.archive*, %struct.archive** %8, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* %14, align 8
  %209 = udiv i64 %208, 64
  %210 = sub i64 %207, %209
  %211 = call i32 @archive_read_open_memory(%struct.archive* %205, i8* %206, i64 %210)
  %212 = call i32 @assertEqualIntA(%struct.archive* %203, i32 %204, i32 %211)
  store i32 0, i32* %15, align 4
  br label %213

213:                                              ; preds = %253, %177
  %214 = load i32, i32* %15, align 4
  %215 = icmp slt i32 %214, 100
  br i1 %215, label %216, label %256

216:                                              ; preds = %213
  %217 = load i32, i32* @ARCHIVE_OK, align 4
  %218 = load %struct.archive*, %struct.archive** %8, align 8
  %219 = call i32 @archive_read_next_header(%struct.archive* %218, %struct.archive_entry** %7)
  %220 = icmp ne i32 %217, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = load i8*, i8** %4, align 8
  %223 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %222)
  %224 = load %struct.archive*, %struct.archive** %8, align 8
  %225 = call i32* @archive_error_string(%struct.archive* %224)
  %226 = icmp ne i32* null, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @assert(i32 %227)
  br label %256

229:                                              ; preds = %216
  %230 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %231 = load i8*, i8** %4, align 8
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @sprintf(i8* %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %231, i32 %232)
  %234 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %235 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %236 = call i32 @archive_entry_pathname(%struct.archive_entry* %235)
  %237 = call i32 @assertEqualString(i8* %234, i32 %236)
  %238 = load i64, i64* %13, align 8
  %239 = load %struct.archive*, %struct.archive** %8, align 8
  %240 = load i8*, i8** %11, align 8
  %241 = load i64, i64* %13, align 8
  %242 = call i64 @archive_read_data(%struct.archive* %239, i8* %240, i64 %241)
  %243 = icmp ne i64 %238, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %229
  %245 = load i8*, i8** %4, align 8
  %246 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %245)
  %247 = load %struct.archive*, %struct.archive** %8, align 8
  %248 = call i32* @archive_error_string(%struct.archive* %247)
  %249 = icmp ne i32* null, %248
  %250 = zext i1 %249 to i32
  %251 = call i32 @assert(i32 %250)
  br label %256

252:                                              ; preds = %229
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %15, align 4
  br label %213

256:                                              ; preds = %244, %221, %213
  %257 = load %struct.archive*, %struct.archive** %8, align 8
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load i32, i32* @ARCHIVE_WARN, align 4
  br label %264

262:                                              ; preds = %256
  %263 = load i32, i32* @ARCHIVE_OK, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %266 = load %struct.archive*, %struct.archive** %8, align 8
  %267 = call i32 @archive_read_close(%struct.archive* %266)
  %268 = call i32 @assertEqualIntA(%struct.archive* %257, i32 %265, i32 %267)
  %269 = load i32, i32* @ARCHIVE_OK, align 4
  %270 = load %struct.archive*, %struct.archive** %8, align 8
  %271 = call i32 @archive_read_free(%struct.archive* %270)
  %272 = call i32 @assertEqualInt(i32 %269, i32 %271)
  %273 = load i8*, i8** %11, align 8
  %274 = call i32 @free(i8* %273)
  %275 = load i8*, i8** %10, align 8
  %276 = call i32 @free(i8* %275)
  br label %277

277:                                              ; preds = %264, %166, %130, %67, %37, %27
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_ustar(%struct.archive*) #1

declare dso_local i32 @archive_write_add_filter_compress(%struct.archive*) #1

declare dso_local i32 @skipping(i8*, i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @archive_write_set_bytes_per_block(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @failure(i8*, ...) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
