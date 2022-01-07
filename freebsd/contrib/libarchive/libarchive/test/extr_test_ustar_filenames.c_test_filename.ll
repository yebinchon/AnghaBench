; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_ustar_filenames.c_test_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_ustar_filenames.c_test_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dlen=%d, flen=%d\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [88 x i8] c"This fails if entries were written that should not have been written.  dlen=%d, flen=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @test_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filename(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8192 x i8], align 16
  %8 = alloca [400 x i8], align 16
  %9 = alloca [400 x i8], align 16
  %10 = alloca %struct.archive_entry*, align 8
  %11 = alloca %struct.archive*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcpy(i8* %18, i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %17, %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %36, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 %34
  store i8 97, i8* %35, align 1
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 %42
  store i8 47, i8* %43, align 1
  store i32 1, i32* %13, align 4
  br label %44

44:                                               ; preds = %39, %24
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 %55
  store i8 98, i8* %56, align 1
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 %62
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %65 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %66 = call i32 @strcpy(i8* %64, i8* %65)
  %67 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %67, %struct.archive** %11, align 8
  %68 = icmp ne %struct.archive* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.archive*, %struct.archive** %11, align 8
  %72 = call i64 @archive_write_set_format_ustar(%struct.archive* %71)
  %73 = icmp eq i64 0, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assertA(i32 %74)
  %76 = load %struct.archive*, %struct.archive** %11, align 8
  %77 = call i64 @archive_write_add_filter_none(%struct.archive* %76)
  %78 = icmp eq i64 0, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assertA(i32 %79)
  %81 = load %struct.archive*, %struct.archive** %11, align 8
  %82 = call i64 @archive_write_set_bytes_per_block(%struct.archive* %81, i32 0)
  %83 = icmp eq i64 0, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assertA(i32 %84)
  %86 = load %struct.archive*, %struct.archive** %11, align 8
  %87 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %88 = call i64 @archive_write_open_memory(%struct.archive* %86, i8* %87, i32 8192, i64* %12)
  %89 = icmp eq i64 0, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assertA(i32 %90)
  %92 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %92, %struct.archive_entry** %10, align 8
  %93 = icmp ne %struct.archive_entry* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %97 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %98 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %96, i8* %97)
  %99 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %100 = load i32, i32* @S_IFREG, align 4
  %101 = or i32 %100, 493
  %102 = call i32 @archive_entry_set_mode(%struct.archive_entry* %99, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = icmp sgt i32 %106, 100
  br i1 %107, label %108, label %115

108:                                              ; preds = %60
  %109 = load %struct.archive*, %struct.archive** %11, align 8
  %110 = load i32, i32* @ARCHIVE_FAILED, align 4
  %111 = load %struct.archive*, %struct.archive** %11, align 8
  %112 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %113 = call i32 @archive_write_header(%struct.archive* %111, %struct.archive_entry* %112)
  %114 = call i32 @assertEqualIntA(%struct.archive* %109, i32 %110, i32 %113)
  br label %121

115:                                              ; preds = %60
  %116 = load %struct.archive*, %struct.archive** %11, align 8
  %117 = load %struct.archive*, %struct.archive** %11, align 8
  %118 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %119 = call i32 @archive_write_header(%struct.archive* %117, %struct.archive_entry* %118)
  %120 = call i32 @assertEqualIntA(%struct.archive* %116, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %115, %108
  %122 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %123 = call i32 @archive_entry_free(%struct.archive_entry* %122)
  %124 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %124, %struct.archive_entry** %10, align 8
  %125 = icmp ne %struct.archive_entry* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %129 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %130 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %128, i8* %129)
  %131 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %132 = load i32, i32* @S_IFDIR, align 4
  %133 = or i32 %132, 493
  %134 = call i32 @archive_entry_set_mode(%struct.archive_entry* %131, i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = icmp sge i32 %138, 100
  br i1 %139, label %140, label %147

140:                                              ; preds = %121
  %141 = load %struct.archive*, %struct.archive** %11, align 8
  %142 = load i32, i32* @ARCHIVE_FAILED, align 4
  %143 = load %struct.archive*, %struct.archive** %11, align 8
  %144 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %145 = call i32 @archive_write_header(%struct.archive* %143, %struct.archive_entry* %144)
  %146 = call i32 @assertEqualIntA(%struct.archive* %141, i32 %142, i32 %145)
  br label %153

147:                                              ; preds = %121
  %148 = load %struct.archive*, %struct.archive** %11, align 8
  %149 = load %struct.archive*, %struct.archive** %11, align 8
  %150 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %151 = call i32 @archive_write_header(%struct.archive* %149, %struct.archive_entry* %150)
  %152 = call i32 @assertEqualIntA(%struct.archive* %148, i32 0, i32 %151)
  br label %153

153:                                              ; preds = %147, %140
  %154 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %155 = call i32 @archive_entry_free(%struct.archive_entry* %154)
  %156 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %157 = call i32 @strcat(i8* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %158 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %158, %struct.archive_entry** %10, align 8
  %159 = icmp ne %struct.archive_entry* %158, null
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %163 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %164 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %162, i8* %163)
  %165 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %166 = load i32, i32* @S_IFDIR, align 4
  %167 = or i32 %166, 493
  %168 = call i32 @archive_entry_set_mode(%struct.archive_entry* %165, i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = icmp sge i32 %172, 100
  br i1 %173, label %174, label %181

174:                                              ; preds = %153
  %175 = load %struct.archive*, %struct.archive** %11, align 8
  %176 = load i32, i32* @ARCHIVE_FAILED, align 4
  %177 = load %struct.archive*, %struct.archive** %11, align 8
  %178 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %179 = call i32 @archive_write_header(%struct.archive* %177, %struct.archive_entry* %178)
  %180 = call i32 @assertEqualIntA(%struct.archive* %175, i32 %176, i32 %179)
  br label %187

181:                                              ; preds = %153
  %182 = load %struct.archive*, %struct.archive** %11, align 8
  %183 = load %struct.archive*, %struct.archive** %11, align 8
  %184 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %185 = call i32 @archive_write_header(%struct.archive* %183, %struct.archive_entry* %184)
  %186 = call i32 @assertEqualIntA(%struct.archive* %182, i32 0, i32 %185)
  br label %187

187:                                              ; preds = %181, %174
  %188 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %189 = call i32 @archive_entry_free(%struct.archive_entry* %188)
  %190 = load %struct.archive*, %struct.archive** %11, align 8
  %191 = load i32, i32* @ARCHIVE_OK, align 4
  %192 = load %struct.archive*, %struct.archive** %11, align 8
  %193 = call i32 @archive_write_close(%struct.archive* %192)
  %194 = call i32 @assertEqualIntA(%struct.archive* %190, i32 %191, i32 %193)
  %195 = load i32, i32* @ARCHIVE_OK, align 4
  %196 = load %struct.archive*, %struct.archive** %11, align 8
  %197 = call i64 @archive_write_free(%struct.archive* %196)
  %198 = call i32 @assertEqualInt(i32 %195, i64 %197)
  %199 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %199, %struct.archive** %11, align 8
  %200 = icmp ne %struct.archive* %199, null
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load %struct.archive*, %struct.archive** %11, align 8
  %204 = call i64 @archive_read_support_format_all(%struct.archive* %203)
  %205 = icmp eq i64 0, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @assertA(i32 %206)
  %208 = load %struct.archive*, %struct.archive** %11, align 8
  %209 = call i64 @archive_read_support_filter_all(%struct.archive* %208)
  %210 = icmp eq i64 0, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @assertA(i32 %211)
  %213 = load %struct.archive*, %struct.archive** %11, align 8
  %214 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %215 = load i64, i64* %12, align 8
  %216 = call i64 @archive_read_open_memory(%struct.archive* %213, i8* %214, i64 %215)
  %217 = icmp eq i64 0, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @assertA(i32 %218)
  %220 = load i32, i32* %6, align 4
  %221 = icmp sle i32 %220, 100
  br i1 %221, label %222, label %241

222:                                              ; preds = %187
  %223 = load %struct.archive*, %struct.archive** %11, align 8
  %224 = call i64 @archive_read_next_header(%struct.archive* %223, %struct.archive_entry** %10)
  %225 = icmp eq i64 0, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @assertA(i32 %226)
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %228, i32 %229)
  %231 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %232 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %233 = call i32 @archive_entry_pathname(%struct.archive_entry* %232)
  %234 = call i32 @assertEqualString(i8* %231, i32 %233)
  %235 = load i32, i32* @S_IFREG, align 4
  %236 = or i32 %235, 493
  %237 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %238 = call i32 @archive_entry_mode(%struct.archive_entry* %237)
  %239 = sext i32 %238 to i64
  %240 = call i32 @assertEqualInt(i32 %236, i64 %239)
  br label %241

241:                                              ; preds = %222, %187
  %242 = load i32, i32* %6, align 4
  %243 = icmp sle i32 %242, 99
  br i1 %243, label %244, label %264

244:                                              ; preds = %241
  %245 = load %struct.archive*, %struct.archive** %11, align 8
  %246 = call i64 @archive_read_next_header(%struct.archive* %245, %struct.archive_entry** %10)
  %247 = icmp eq i64 0, %246
  %248 = zext i1 %247 to i32
  %249 = call i32 @assertA(i32 %248)
  %250 = load i32, i32* @S_IFDIR, align 4
  %251 = or i32 %250, 493
  %252 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %253 = call i32 @archive_entry_mode(%struct.archive_entry* %252)
  %254 = icmp eq i32 %251, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @assert(i32 %255)
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* %6, align 4
  %259 = call i32 @failure(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %257, i32 %258)
  %260 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %261 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %262 = call i32 @archive_entry_pathname(%struct.archive_entry* %261)
  %263 = call i32 @assertEqualString(i8* %260, i32 %262)
  br label %264

264:                                              ; preds = %244, %241
  %265 = load i32, i32* %6, align 4
  %266 = icmp sle i32 %265, 99
  br i1 %266, label %267, label %284

267:                                              ; preds = %264
  %268 = load %struct.archive*, %struct.archive** %11, align 8
  %269 = call i64 @archive_read_next_header(%struct.archive* %268, %struct.archive_entry** %10)
  %270 = icmp eq i64 0, %269
  %271 = zext i1 %270 to i32
  %272 = call i32 @assertA(i32 %271)
  %273 = load i32, i32* @S_IFDIR, align 4
  %274 = or i32 %273, 493
  %275 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %276 = call i32 @archive_entry_mode(%struct.archive_entry* %275)
  %277 = icmp eq i32 %274, %276
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %281 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %282 = call i32 @archive_entry_pathname(%struct.archive_entry* %281)
  %283 = call i32 @assertEqualString(i8* %280, i32 %282)
  br label %284

284:                                              ; preds = %267, %264
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @failure(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %285, i32 %286)
  %288 = load %struct.archive*, %struct.archive** %11, align 8
  %289 = call i64 @archive_read_next_header(%struct.archive* %288, %struct.archive_entry** %10)
  %290 = call i32 @assertEqualInt(i32 1, i64 %289)
  %291 = load %struct.archive*, %struct.archive** %11, align 8
  %292 = load i32, i32* @ARCHIVE_OK, align 4
  %293 = load %struct.archive*, %struct.archive** %11, align 8
  %294 = call i32 @archive_read_close(%struct.archive* %293)
  %295 = call i32 @assertEqualIntA(%struct.archive* %291, i32 %292, i32 %294)
  %296 = load i32, i32* @ARCHIVE_OK, align 4
  %297 = load %struct.archive*, %struct.archive** %11, align 8
  %298 = call i64 @archive_read_free(%struct.archive* %297)
  %299 = call i32 @assertEqualInt(i32 %296, i64 %298)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_write_set_format_ustar(%struct.archive*) #1

declare dso_local i64 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i64 @archive_write_set_bytes_per_block(%struct.archive*, i32) #1

declare dso_local i64 @archive_write_open_memory(%struct.archive*, i8*, i32, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @failure(i8*, i32, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i64) #1

declare dso_local i64 @archive_write_free(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i64 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i64 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i64 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
