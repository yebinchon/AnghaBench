; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_test_customized_multiple_data_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_test_customized_multiple_data_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }
%struct.mydata = type { i8*, i32 }

@test_customized_multiple_data_objects.reffiles = internal global [5 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [26 x i8] c"test_read_splitted_rar_aa\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"test_read_splitted_rar_ab\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"test_read_splitted_rar_ac\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"test_read_splitted_rar_ad\00", align 1
@__const.test_customized_multiple_data_objects.test_txt = private unnamed_addr constant [21 x i8] c"test text document\0D\0A\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@file_open = common dso_local global i32 0, align 4
@file_read = common dso_local global i32 0, align 4
@file_skip = common dso_local global i32 0, align 4
@file_close = common dso_local global i32 0, align 4
@file_switch = common dso_local global i32 0, align 4
@file_seek = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"testlink\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"testdir/test.txt\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"testdir\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"testemptydir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_customized_multiple_data_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_customized_multiple_data_objects() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [21 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.mydata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast [21 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([21 x i8], [21 x i8]* @__const.test_customized_multiple_data_objects.test_txt, i32 0, i32 0), i64 21, i1 false)
  store i32 20, i32* %3, align 4
  %10 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @test_customized_multiple_data_objects.reffiles, i64 0, i64 0), align 16
  store i8* %10, i8** %7, align 8
  %11 = call i32 @extract_reference_files(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @test_customized_multiple_data_objects.reffiles, i64 0, i64 0))
  %12 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %12, %struct.archive** %5, align 8
  %13 = icmp ne %struct.archive* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.archive*, %struct.archive** %5, align 8
  %17 = call i64 @archive_read_support_filter_all(%struct.archive* %16)
  %18 = icmp eq i64 0, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assertA(i32 %19)
  %21 = load %struct.archive*, %struct.archive** %5, align 8
  %22 = call i64 @archive_read_support_format_all(%struct.archive* %21)
  %23 = icmp eq i64 0, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assertA(i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %64, %0
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %83

29:                                               ; preds = %26
  %30 = call i64 @calloc(i32 1, i32 16)
  %31 = inttoptr i64 %30 to %struct.mydata*
  store %struct.mydata* %31, %struct.mydata** %6, align 8
  %32 = icmp ne %struct.mydata* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.mydata*, %struct.mydata** %6, align 8
  %36 = icmp eq %struct.mydata* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  %39 = load %struct.archive*, %struct.archive** %5, align 8
  %40 = call i32 @archive_read_free(%struct.archive* %39)
  %41 = call i32 @assertEqualInt(i32 %38, i32 %40)
  br label %304

42:                                               ; preds = %29
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = add nsw i32 %44, 1
  %46 = call i64 @calloc(i32 1, i32 %45)
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.mydata*, %struct.mydata** %6, align 8
  %49 = getelementptr inbounds %struct.mydata, %struct.mydata* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = icmp ne i8* %47, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.mydata*, %struct.mydata** %6, align 8
  %54 = getelementptr inbounds %struct.mydata, %struct.mydata* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load %struct.mydata*, %struct.mydata** %6, align 8
  %59 = call i32 @free(%struct.mydata* %58)
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  %61 = load %struct.archive*, %struct.archive** %5, align 8
  %62 = call i32 @archive_read_free(%struct.archive* %61)
  %63 = call i32 @assertEqualInt(i32 %60, i32 %62)
  br label %304

64:                                               ; preds = %42
  %65 = load %struct.mydata*, %struct.mydata** %6, align 8
  %66 = getelementptr inbounds %struct.mydata, %struct.mydata* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcpy(i8* %67, i8* %68)
  %70 = load %struct.mydata*, %struct.mydata** %6, align 8
  %71 = getelementptr inbounds %struct.mydata, %struct.mydata* %70, i32 0, i32 1
  store i32 -1, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x i8*], [5 x i8*]* @test_customized_multiple_data_objects.reffiles, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %7, align 8
  %77 = load %struct.archive*, %struct.archive** %5, align 8
  %78 = load %struct.mydata*, %struct.mydata** %6, align 8
  %79 = call i64 @archive_read_append_callback_data(%struct.archive* %77, %struct.mydata* %78)
  %80 = icmp eq i64 0, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assertA(i32 %81)
  br label %26

83:                                               ; preds = %26
  %84 = load %struct.archive*, %struct.archive** %5, align 8
  %85 = load i32, i32* @file_open, align 4
  %86 = call i64 @archive_read_set_open_callback(%struct.archive* %84, i32 %85)
  %87 = icmp eq i64 0, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assertA(i32 %88)
  %90 = load %struct.archive*, %struct.archive** %5, align 8
  %91 = load i32, i32* @file_read, align 4
  %92 = call i64 @archive_read_set_read_callback(%struct.archive* %90, i32 %91)
  %93 = icmp eq i64 0, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assertA(i32 %94)
  %96 = load %struct.archive*, %struct.archive** %5, align 8
  %97 = load i32, i32* @file_skip, align 4
  %98 = call i64 @archive_read_set_skip_callback(%struct.archive* %96, i32 %97)
  %99 = icmp eq i64 0, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assertA(i32 %100)
  %102 = load %struct.archive*, %struct.archive** %5, align 8
  %103 = load i32, i32* @file_close, align 4
  %104 = call i64 @archive_read_set_close_callback(%struct.archive* %102, i32 %103)
  %105 = icmp eq i64 0, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assertA(i32 %106)
  %108 = load %struct.archive*, %struct.archive** %5, align 8
  %109 = load i32, i32* @file_switch, align 4
  %110 = call i64 @archive_read_set_switch_callback(%struct.archive* %108, i32 %109)
  %111 = icmp eq i64 0, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assertA(i32 %112)
  %114 = load %struct.archive*, %struct.archive** %5, align 8
  %115 = load i32, i32* @file_seek, align 4
  %116 = call i64 @archive_read_set_seek_callback(%struct.archive* %114, i32 %115)
  %117 = icmp eq i64 0, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assertA(i32 %118)
  %120 = load %struct.archive*, %struct.archive** %5, align 8
  %121 = call i64 @archive_read_open1(%struct.archive* %120)
  %122 = icmp eq i64 0, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assertA(i32 %123)
  %125 = load %struct.archive*, %struct.archive** %5, align 8
  %126 = call i32 @archive_read_next_header(%struct.archive* %125, %struct.archive_entry** %4)
  %127 = icmp eq i32 0, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assertA(i32 %128)
  %130 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %131 = call i32 @archive_entry_pathname(%struct.archive_entry* %130)
  %132 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %134 = call i64 @archive_entry_mtime(%struct.archive_entry* %133)
  %135 = trunc i64 %134 to i32
  %136 = call i32 @assertA(i32 %135)
  %137 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %138 = call i64 @archive_entry_ctime(%struct.archive_entry* %137)
  %139 = trunc i64 %138 to i32
  %140 = call i32 @assertA(i32 %139)
  %141 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %142 = call i64 @archive_entry_atime(%struct.archive_entry* %141)
  %143 = trunc i64 %142 to i32
  %144 = call i32 @assertA(i32 %143)
  %145 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %146 = call i32 @archive_entry_size(%struct.archive_entry* %145)
  %147 = call i32 @assertEqualInt(i32 20, i32 %146)
  %148 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %149 = call i32 @archive_entry_mode(%struct.archive_entry* %148)
  %150 = call i32 @assertEqualInt(i32 33188, i32 %149)
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.archive*, %struct.archive** %5, align 8
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @archive_read_data(%struct.archive* %152, i8* %153, i32 %154)
  %156 = icmp eq i32 %151, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assertA(i32 %157)
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %160 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @assertEqualMem(i8* %159, i8* %160, i32 %161)
  %163 = load %struct.archive*, %struct.archive** %5, align 8
  %164 = call i32 @archive_read_next_header(%struct.archive* %163, %struct.archive_entry** %4)
  %165 = icmp eq i32 0, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assertA(i32 %166)
  %168 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %169 = call i32 @archive_entry_pathname(%struct.archive_entry* %168)
  %170 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  %171 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %172 = call i64 @archive_entry_mtime(%struct.archive_entry* %171)
  %173 = trunc i64 %172 to i32
  %174 = call i32 @assertA(i32 %173)
  %175 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %176 = call i64 @archive_entry_ctime(%struct.archive_entry* %175)
  %177 = trunc i64 %176 to i32
  %178 = call i32 @assertA(i32 %177)
  %179 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %180 = call i64 @archive_entry_atime(%struct.archive_entry* %179)
  %181 = trunc i64 %180 to i32
  %182 = call i32 @assertA(i32 %181)
  %183 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %184 = call i32 @archive_entry_size(%struct.archive_entry* %183)
  %185 = call i32 @assertEqualInt(i32 0, i32 %184)
  %186 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %187 = call i32 @archive_entry_mode(%struct.archive_entry* %186)
  %188 = call i32 @assertEqualInt(i32 41471, i32 %187)
  %189 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %190 = call i32 @archive_entry_symlink(%struct.archive_entry* %189)
  %191 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  %192 = load %struct.archive*, %struct.archive** %5, align 8
  %193 = load %struct.archive*, %struct.archive** %5, align 8
  %194 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %195 = call i32 @archive_read_data(%struct.archive* %193, i8* %194, i32 64)
  %196 = call i32 @assertEqualIntA(%struct.archive* %192, i32 0, i32 %195)
  %197 = load %struct.archive*, %struct.archive** %5, align 8
  %198 = call i32 @archive_read_next_header(%struct.archive* %197, %struct.archive_entry** %4)
  %199 = icmp eq i32 0, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assertA(i32 %200)
  %202 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %203 = call i32 @archive_entry_pathname(%struct.archive_entry* %202)
  %204 = call i32 @assertEqualString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %203)
  %205 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %206 = call i64 @archive_entry_mtime(%struct.archive_entry* %205)
  %207 = trunc i64 %206 to i32
  %208 = call i32 @assertA(i32 %207)
  %209 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %210 = call i64 @archive_entry_ctime(%struct.archive_entry* %209)
  %211 = trunc i64 %210 to i32
  %212 = call i32 @assertA(i32 %211)
  %213 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %214 = call i64 @archive_entry_atime(%struct.archive_entry* %213)
  %215 = trunc i64 %214 to i32
  %216 = call i32 @assertA(i32 %215)
  %217 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %218 = call i32 @archive_entry_size(%struct.archive_entry* %217)
  %219 = call i32 @assertEqualInt(i32 20, i32 %218)
  %220 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %221 = call i32 @archive_entry_mode(%struct.archive_entry* %220)
  %222 = call i32 @assertEqualInt(i32 33188, i32 %221)
  %223 = load i32, i32* %3, align 4
  %224 = load %struct.archive*, %struct.archive** %5, align 8
  %225 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %226 = load i32, i32* %3, align 4
  %227 = call i32 @archive_read_data(%struct.archive* %224, i8* %225, i32 %226)
  %228 = icmp eq i32 %223, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @assertA(i32 %229)
  %231 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %232 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  %233 = load i32, i32* %3, align 4
  %234 = call i32 @assertEqualMem(i8* %231, i8* %232, i32 %233)
  %235 = load %struct.archive*, %struct.archive** %5, align 8
  %236 = call i32 @archive_read_next_header(%struct.archive* %235, %struct.archive_entry** %4)
  %237 = icmp eq i32 0, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @assertA(i32 %238)
  %240 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %241 = call i32 @archive_entry_pathname(%struct.archive_entry* %240)
  %242 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %241)
  %243 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %244 = call i64 @archive_entry_mtime(%struct.archive_entry* %243)
  %245 = trunc i64 %244 to i32
  %246 = call i32 @assertA(i32 %245)
  %247 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %248 = call i64 @archive_entry_ctime(%struct.archive_entry* %247)
  %249 = trunc i64 %248 to i32
  %250 = call i32 @assertA(i32 %249)
  %251 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %252 = call i64 @archive_entry_atime(%struct.archive_entry* %251)
  %253 = trunc i64 %252 to i32
  %254 = call i32 @assertA(i32 %253)
  %255 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %256 = call i32 @archive_entry_size(%struct.archive_entry* %255)
  %257 = call i32 @assertEqualInt(i32 0, i32 %256)
  %258 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %259 = call i32 @archive_entry_mode(%struct.archive_entry* %258)
  %260 = call i32 @assertEqualInt(i32 16877, i32 %259)
  %261 = load %struct.archive*, %struct.archive** %5, align 8
  %262 = call i32 @archive_read_next_header(%struct.archive* %261, %struct.archive_entry** %4)
  %263 = icmp eq i32 0, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @assertA(i32 %264)
  %266 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %267 = call i32 @archive_entry_pathname(%struct.archive_entry* %266)
  %268 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %267)
  %269 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %270 = call i64 @archive_entry_mtime(%struct.archive_entry* %269)
  %271 = trunc i64 %270 to i32
  %272 = call i32 @assertA(i32 %271)
  %273 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %274 = call i64 @archive_entry_ctime(%struct.archive_entry* %273)
  %275 = trunc i64 %274 to i32
  %276 = call i32 @assertA(i32 %275)
  %277 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %278 = call i64 @archive_entry_atime(%struct.archive_entry* %277)
  %279 = trunc i64 %278 to i32
  %280 = call i32 @assertA(i32 %279)
  %281 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %282 = call i32 @archive_entry_size(%struct.archive_entry* %281)
  %283 = call i32 @assertEqualInt(i32 0, i32 %282)
  %284 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %285 = call i32 @archive_entry_mode(%struct.archive_entry* %284)
  %286 = call i32 @assertEqualInt(i32 16877, i32 %285)
  %287 = load %struct.archive*, %struct.archive** %5, align 8
  %288 = call i32 @archive_read_next_header(%struct.archive* %287, %struct.archive_entry** %4)
  %289 = icmp eq i32 1, %288
  %290 = zext i1 %289 to i32
  %291 = call i32 @assertA(i32 %290)
  %292 = load %struct.archive*, %struct.archive** %5, align 8
  %293 = call i32 @archive_file_count(%struct.archive* %292)
  %294 = call i32 @assertEqualInt(i32 5, i32 %293)
  %295 = load %struct.archive*, %struct.archive** %5, align 8
  %296 = load i32, i32* @ARCHIVE_OK, align 4
  %297 = load %struct.archive*, %struct.archive** %5, align 8
  %298 = call i32 @archive_read_close(%struct.archive* %297)
  %299 = call i32 @assertEqualIntA(%struct.archive* %295, i32 %296, i32 %298)
  %300 = load i32, i32* @ARCHIVE_OK, align 4
  %301 = load %struct.archive*, %struct.archive** %5, align 8
  %302 = call i32 @archive_read_free(%struct.archive* %301)
  %303 = call i32 @assertEqualInt(i32 %300, i32 %302)
  br label %304

304:                                              ; preds = %83, %57, %37
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @extract_reference_files(i8**) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @assertA(i32) #2

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #2

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_read_free(%struct.archive*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @free(%struct.mydata*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @archive_read_append_callback_data(%struct.archive*, %struct.mydata*) #2

declare dso_local i64 @archive_read_set_open_callback(%struct.archive*, i32) #2

declare dso_local i64 @archive_read_set_read_callback(%struct.archive*, i32) #2

declare dso_local i64 @archive_read_set_skip_callback(%struct.archive*, i32) #2

declare dso_local i64 @archive_read_set_close_callback(%struct.archive*, i32) #2

declare dso_local i64 @archive_read_set_switch_callback(%struct.archive*, i32) #2

declare dso_local i64 @archive_read_set_seek_callback(%struct.archive*, i32) #2

declare dso_local i64 @archive_read_open1(%struct.archive*) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i32 @assertEqualString(i8*, i32) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_ctime(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_atime(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #2

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #2

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_file_count(%struct.archive*) #2

declare dso_local i32 @archive_read_close(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
