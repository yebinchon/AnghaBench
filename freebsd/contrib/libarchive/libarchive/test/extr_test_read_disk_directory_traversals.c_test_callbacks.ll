; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cb/f1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cb/f2\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cb/fe\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Directory traversals should work as well\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"File 'cb/f2' should be exclueded\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"There should be no entry\00", align 1
@metadata_filter = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"File 'cb/f1' should be excluded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_callbacks() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = call i32 @assertMakeDir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 493)
  %9 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 420, i8* null)
  %12 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 886600, i32 0, i32 886600, i32 0)
  %13 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %14 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %15 = call i32 @assertUtimes(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 886622, i32 0, i32 886622, i32 0)
  %16 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %16, %struct.archive_entry** %3, align 8
  %17 = icmp ne %struct.archive_entry* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call %struct.archive* (...) @archive_read_disk_new()
  store %struct.archive* %20, %struct.archive** %1, align 8
  %21 = icmp ne %struct.archive* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.archive*, %struct.archive** %1, align 8
  %25 = icmp eq %struct.archive* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %28 = call i32 @archive_entry_free(%struct.archive_entry* %27)
  br label %284

29:                                               ; preds = %0
  %30 = call %struct.archive* (...) @archive_match_new()
  store %struct.archive* %30, %struct.archive** %2, align 8
  %31 = icmp ne %struct.archive* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.archive*, %struct.archive** %2, align 8
  %35 = icmp eq %struct.archive* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %38 = call i32 @archive_entry_free(%struct.archive_entry* %37)
  %39 = load %struct.archive*, %struct.archive** %1, align 8
  %40 = call i32 @archive_read_free(%struct.archive* %39)
  %41 = load %struct.archive*, %struct.archive** %2, align 8
  %42 = call i32 @archive_match_free(%struct.archive* %41)
  br label %284

43:                                               ; preds = %29
  store i32 3, i32* %7, align 4
  %44 = load %struct.archive*, %struct.archive** %2, align 8
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive*, %struct.archive** %2, align 8
  %47 = call i32 @archive_match_exclude_pattern(%struct.archive* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @assertEqualIntA(%struct.archive* %44, i32 %45, i32 %47)
  %49 = load %struct.archive*, %struct.archive** %1, align 8
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %1, align 8
  %52 = load %struct.archive*, %struct.archive** %2, align 8
  %53 = call i32 @archive_read_disk_set_matching(%struct.archive* %51, %struct.archive* %52, i32* null, i32* null)
  %54 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %50, i32 %53)
  %55 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %56 = load %struct.archive*, %struct.archive** %1, align 8
  %57 = load i32, i32* @ARCHIVE_OK, align 4
  %58 = load %struct.archive*, %struct.archive** %1, align 8
  %59 = call i32 @archive_read_disk_open(%struct.archive* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @assertEqualIntA(%struct.archive* %56, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %151, %43
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %152

65:                                               ; preds = %61
  %66 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %67 = call i32 @archive_entry_clear(%struct.archive_entry* %66)
  %68 = load %struct.archive*, %struct.archive** %1, align 8
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  %70 = load %struct.archive*, %struct.archive** %1, align 8
  %71 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %72 = call i32 @archive_read_next_header2(%struct.archive* %70, %struct.archive_entry* %71)
  %73 = call i32 @assertEqualIntA(%struct.archive* %68, i32 %69, i32 %72)
  %74 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %75 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %76 = call i32 @archive_entry_pathname(%struct.archive_entry* %75)
  %77 = call i64 @strcmp(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %82 = call i32 @archive_entry_pathname(%struct.archive_entry* %81)
  %83 = call i64 @strcmp(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %65
  %86 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %87 = call i32 @archive_entry_filetype(%struct.archive_entry* %86)
  %88 = load i32, i32* @AE_IFDIR, align 4
  %89 = call i32 @assertEqualInt(i32 %87, i32 %88)
  br label %141

90:                                               ; preds = %65
  %91 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %92 = call i32 @archive_entry_pathname(%struct.archive_entry* %91)
  %93 = call i64 @strcmp(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %90
  %96 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %97 = call i32 @archive_entry_filetype(%struct.archive_entry* %96)
  %98 = load i32, i32* @AE_IFREG, align 4
  %99 = call i32 @assertEqualInt(i32 %97, i32 %98)
  %100 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %101 = call i32 @archive_entry_size(%struct.archive_entry* %100)
  %102 = call i32 @assertEqualInt(i32 %101, i32 10)
  %103 = load %struct.archive*, %struct.archive** %1, align 8
  %104 = load i32, i32* @ARCHIVE_OK, align 4
  %105 = load %struct.archive*, %struct.archive** %1, align 8
  %106 = call i32 @archive_read_data_block(%struct.archive* %105, i8** %4, i64* %5, i64* %6)
  %107 = call i32 @assertEqualIntA(%struct.archive* %103, i32 %104, i32 %106)
  %108 = load i64, i64* %5, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @assertEqualInt(i32 %109, i32 10)
  %111 = load i64, i64* %6, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @assertEqualInt(i32 %112, i32 0)
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @assertEqualMem(i8* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %116 = load i32, i32* @ARCHIVE_EOF, align 4
  %117 = load %struct.archive*, %struct.archive** %1, align 8
  %118 = call i32 @archive_read_data_block(%struct.archive* %117, i8** %4, i64* %5, i64* %6)
  %119 = call i32 @assertEqualInt(i32 %116, i32 %118)
  %120 = load i64, i64* %5, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @assertEqualInt(i32 %121, i32 0)
  %123 = load i64, i64* %6, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @assertEqualInt(i32 %124, i32 10)
  br label %140

126:                                              ; preds = %90
  %127 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %128 = call i32 @archive_entry_pathname(%struct.archive_entry* %127)
  %129 = call i64 @strcmp(i32 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %133 = call i32 @archive_entry_filetype(%struct.archive_entry* %132)
  %134 = load i32, i32* @AE_IFREG, align 4
  %135 = call i32 @assertEqualInt(i32 %133, i32 %134)
  %136 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %137 = call i32 @archive_entry_size(%struct.archive_entry* %136)
  %138 = call i32 @assertEqualInt(i32 %137, i32 0)
  br label %139

139:                                              ; preds = %131, %126
  br label %140

140:                                              ; preds = %139, %95
  br label %141

141:                                              ; preds = %140, %85
  %142 = load %struct.archive*, %struct.archive** %1, align 8
  %143 = call i64 @archive_read_disk_can_descend(%struct.archive* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.archive*, %struct.archive** %1, align 8
  %147 = load i32, i32* @ARCHIVE_OK, align 4
  %148 = load %struct.archive*, %struct.archive** %1, align 8
  %149 = call i32 @archive_read_disk_descend(%struct.archive* %148)
  %150 = call i32 @assertEqualIntA(%struct.archive* %146, i32 %147, i32 %149)
  br label %151

151:                                              ; preds = %145, %141
  br label %61

152:                                              ; preds = %61
  %153 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %154 = load %struct.archive*, %struct.archive** %1, align 8
  %155 = load i32, i32* @ARCHIVE_EOF, align 4
  %156 = load %struct.archive*, %struct.archive** %1, align 8
  %157 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %158 = call i32 @archive_read_next_header2(%struct.archive* %156, %struct.archive_entry* %157)
  %159 = call i32 @assertEqualIntA(%struct.archive* %154, i32 %155, i32 %158)
  %160 = load i32, i32* @ARCHIVE_OK, align 4
  %161 = load %struct.archive*, %struct.archive** %1, align 8
  %162 = call i32 @archive_read_close(%struct.archive* %161)
  %163 = call i32 @assertEqualInt(i32 %160, i32 %162)
  %164 = load %struct.archive*, %struct.archive** %1, align 8
  %165 = load i32, i32* @ARCHIVE_OK, align 4
  %166 = load %struct.archive*, %struct.archive** %1, align 8
  %167 = call i32 @archive_read_disk_set_matching(%struct.archive* %166, %struct.archive* null, i32* null, i32* null)
  %168 = call i32 @assertEqualIntA(%struct.archive* %164, i32 %165, i32 %167)
  %169 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 886600, i32 0, i32 886600, i32 0)
  %170 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %171 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %172 = call i32 @assertUtimes(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 886622, i32 0, i32 886622, i32 0)
  store i32 3, i32* %7, align 4
  %173 = load %struct.archive*, %struct.archive** %1, align 8
  %174 = load i32, i32* @ARCHIVE_OK, align 4
  %175 = load %struct.archive*, %struct.archive** %1, align 8
  %176 = load i32, i32* @metadata_filter, align 4
  %177 = call i32 @archive_read_disk_set_metadata_filter_callback(%struct.archive* %175, i32 %176, i32* null)
  %178 = call i32 @assertEqualIntA(%struct.archive* %173, i32 %174, i32 %177)
  %179 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %180 = load %struct.archive*, %struct.archive** %1, align 8
  %181 = load i32, i32* @ARCHIVE_OK, align 4
  %182 = load %struct.archive*, %struct.archive** %1, align 8
  %183 = call i32 @archive_read_disk_open(%struct.archive* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %184 = call i32 @assertEqualIntA(%struct.archive* %180, i32 %181, i32 %183)
  br label %185

185:                                              ; preds = %265, %152
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %7, align 4
  %188 = icmp ne i32 %186, 0
  br i1 %188, label %189, label %266

189:                                              ; preds = %185
  %190 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %191 = call i32 @archive_entry_clear(%struct.archive_entry* %190)
  %192 = load %struct.archive*, %struct.archive** %1, align 8
  %193 = load i32, i32* @ARCHIVE_OK, align 4
  %194 = load %struct.archive*, %struct.archive** %1, align 8
  %195 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %196 = call i32 @archive_read_next_header2(%struct.archive* %194, %struct.archive_entry* %195)
  %197 = call i32 @assertEqualIntA(%struct.archive* %192, i32 %193, i32 %196)
  %198 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %199 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %200 = call i32 @archive_entry_pathname(%struct.archive_entry* %199)
  %201 = call i64 @strcmp(i32 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %202 = icmp ne i64 %201, 0
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %206 = call i32 @archive_entry_pathname(%struct.archive_entry* %205)
  %207 = call i64 @strcmp(i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %189
  %210 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %211 = call i32 @archive_entry_filetype(%struct.archive_entry* %210)
  %212 = load i32, i32* @AE_IFDIR, align 4
  %213 = call i32 @assertEqualInt(i32 %211, i32 %212)
  br label %265

214:                                              ; preds = %189
  %215 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %216 = call i32 @archive_entry_pathname(%struct.archive_entry* %215)
  %217 = call i64 @strcmp(i32 %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %250

219:                                              ; preds = %214
  %220 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %221 = call i32 @archive_entry_filetype(%struct.archive_entry* %220)
  %222 = load i32, i32* @AE_IFREG, align 4
  %223 = call i32 @assertEqualInt(i32 %221, i32 %222)
  %224 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %225 = call i32 @archive_entry_size(%struct.archive_entry* %224)
  %226 = call i32 @assertEqualInt(i32 %225, i32 11)
  %227 = load %struct.archive*, %struct.archive** %1, align 8
  %228 = load i32, i32* @ARCHIVE_OK, align 4
  %229 = load %struct.archive*, %struct.archive** %1, align 8
  %230 = call i32 @archive_read_data_block(%struct.archive* %229, i8** %4, i64* %5, i64* %6)
  %231 = call i32 @assertEqualIntA(%struct.archive* %227, i32 %228, i32 %230)
  %232 = load i64, i64* %5, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @assertEqualInt(i32 %233, i32 11)
  %235 = load i64, i64* %6, align 8
  %236 = trunc i64 %235 to i32
  %237 = call i32 @assertEqualInt(i32 %236, i32 0)
  %238 = load i8*, i8** %4, align 8
  %239 = call i32 @assertEqualMem(i8* %238, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %240 = load i32, i32* @ARCHIVE_EOF, align 4
  %241 = load %struct.archive*, %struct.archive** %1, align 8
  %242 = call i32 @archive_read_data_block(%struct.archive* %241, i8** %4, i64* %5, i64* %6)
  %243 = call i32 @assertEqualInt(i32 %240, i32 %242)
  %244 = load i64, i64* %5, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @assertEqualInt(i32 %245, i32 0)
  %247 = load i64, i64* %6, align 8
  %248 = trunc i64 %247 to i32
  %249 = call i32 @assertEqualInt(i32 %248, i32 11)
  br label %264

250:                                              ; preds = %214
  %251 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %252 = call i32 @archive_entry_pathname(%struct.archive_entry* %251)
  %253 = call i64 @strcmp(i32 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %250
  %256 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %257 = call i32 @archive_entry_filetype(%struct.archive_entry* %256)
  %258 = load i32, i32* @AE_IFREG, align 4
  %259 = call i32 @assertEqualInt(i32 %257, i32 %258)
  %260 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %261 = call i32 @archive_entry_size(%struct.archive_entry* %260)
  %262 = call i32 @assertEqualInt(i32 %261, i32 0)
  br label %263

263:                                              ; preds = %255, %250
  br label %264

264:                                              ; preds = %263, %219
  br label %265

265:                                              ; preds = %264, %209
  br label %185

266:                                              ; preds = %185
  %267 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %268 = load %struct.archive*, %struct.archive** %1, align 8
  %269 = load i32, i32* @ARCHIVE_EOF, align 4
  %270 = load %struct.archive*, %struct.archive** %1, align 8
  %271 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %272 = call i32 @archive_read_next_header2(%struct.archive* %270, %struct.archive_entry* %271)
  %273 = call i32 @assertEqualIntA(%struct.archive* %268, i32 %269, i32 %272)
  %274 = load i32, i32* @ARCHIVE_OK, align 4
  %275 = load %struct.archive*, %struct.archive** %1, align 8
  %276 = call i32 @archive_read_free(%struct.archive* %275)
  %277 = call i32 @assertEqualInt(i32 %274, i32 %276)
  %278 = load i32, i32* @ARCHIVE_OK, align 4
  %279 = load %struct.archive*, %struct.archive** %2, align 8
  %280 = call i32 @archive_match_free(%struct.archive* %279)
  %281 = call i32 @assertEqualInt(i32 %278, i32 %280)
  %282 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %283 = call i32 @archive_entry_free(%struct.archive_entry* %282)
  br label %284

284:                                              ; preds = %266, %36, %26
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assertUtimes(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_exclude_pattern(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_disk_set_matching(%struct.archive*, %struct.archive*, i32*, i32*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i8*) #1

declare dso_local i32 @archive_entry_clear(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i64 @archive_read_disk_can_descend(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_descend(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_set_metadata_filter_callback(%struct.archive*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
