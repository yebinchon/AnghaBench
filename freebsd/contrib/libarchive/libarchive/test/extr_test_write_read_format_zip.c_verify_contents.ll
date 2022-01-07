; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_read_format_zip.c_verify_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_read_format_zip.c_verify_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"file3\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"mnopq\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dir/\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"file_stored\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"file2_stored\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ACEG\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"file3_stored\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ijklm\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"symlink_stored\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"dir_stored/\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32, i32)* @verify_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_contents(%struct.archive* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.archive*, %struct.archive** %4, align 8
  %10 = load i32, i32* @ARCHIVE_OK, align 4
  %11 = load %struct.archive*, %struct.archive** %4, align 8
  %12 = call i32 @archive_read_next_header(%struct.archive* %11, %struct.archive_entry** %8)
  %13 = call i32 @assertEqualIntA(%struct.archive* %9, i32 %10, i32 %12)
  %14 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %15 = call i32 @archive_entry_mtime(%struct.archive_entry* %14)
  %16 = call i32 @assertEqualInt(i32 1, i32 %15)
  %17 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %18 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %17)
  %19 = call i32 @assertEqualInt(i32 0, i32 %18)
  %20 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %21 = call i32 @archive_entry_atime(%struct.archive_entry* %20)
  %22 = call i32 @assertEqualInt(i32 0, i32 %21)
  %23 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %24 = call i32 @archive_entry_ctime(%struct.archive_entry* %23)
  %25 = call i32 @assertEqualInt(i32 0, i32 %24)
  %26 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %27 = call i32 @archive_entry_pathname(%struct.archive_entry* %26)
  %28 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31, %3
  %35 = load i32, i32* @AE_IFREG, align 4
  %36 = or i32 %35, 493
  %37 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %38 = call i32 @archive_entry_mode(%struct.archive_entry* %37)
  %39 = call i32 @assertEqualInt(i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %42 = call i32 @archive_entry_size(%struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 8, i32 %42)
  %44 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %45 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %44)
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.archive*, %struct.archive** %4, align 8
  %48 = load %struct.archive*, %struct.archive** %4, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %50 = call i32 @archive_read_data(%struct.archive* %48, i8* %49, i32 64)
  %51 = call i32 @assertEqualIntA(%struct.archive* %47, i32 8, i32 %50)
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %53 = call i32 @assertEqualMem(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %54 = load %struct.archive*, %struct.archive** %4, align 8
  %55 = load i32, i32* @ARCHIVE_OK, align 4
  %56 = load %struct.archive*, %struct.archive** %4, align 8
  %57 = call i32 @archive_read_next_header(%struct.archive* %56, %struct.archive_entry** %8)
  %58 = call i32 @assertEqualIntA(%struct.archive* %54, i32 %55, i32 %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %60 = call i32 @archive_entry_mtime(%struct.archive_entry* %59)
  %61 = call i32 @assertEqualInt(i32 1, i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %63 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %62)
  %64 = call i32 @assertEqualInt(i32 0, i32 %63)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %66 = call i32 @archive_entry_atime(%struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 0, i32 %66)
  %68 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %69 = call i32 @archive_entry_ctime(%struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 0, i32 %69)
  %71 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %72 = call i32 @archive_entry_pathname(%struct.archive_entry* %71)
  %73 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %40
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76, %40
  %80 = load i32, i32* @AE_IFREG, align 4
  %81 = or i32 %80, 493
  %82 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %83 = call i32 @archive_entry_mode(%struct.archive_entry* %82)
  %84 = call i32 @assertEqualInt(i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %87 = call i32 @archive_entry_size(%struct.archive_entry* %86)
  %88 = call i32 @assertEqualInt(i32 4, i32 %87)
  %89 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %90 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %89)
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.archive*, %struct.archive** %4, align 8
  %93 = load %struct.archive*, %struct.archive** %4, align 8
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %95 = call i32 @archive_read_data(%struct.archive* %93, i8* %94, i32 64)
  %96 = call i32 @assertEqualIntA(%struct.archive* %92, i32 4, i32 %95)
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %98 = call i32 @assertEqualMem(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %99 = load %struct.archive*, %struct.archive** %4, align 8
  %100 = load i32, i32* @ARCHIVE_OK, align 4
  %101 = load %struct.archive*, %struct.archive** %4, align 8
  %102 = call i32 @archive_read_next_header(%struct.archive* %101, %struct.archive_entry** %8)
  %103 = call i32 @assertEqualIntA(%struct.archive* %99, i32 %100, i32 %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %105 = call i32 @archive_entry_mtime(%struct.archive_entry* %104)
  %106 = call i32 @assertEqualInt(i32 2, i32 %105)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %108 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %107)
  %109 = call i32 @assertEqualInt(i32 0, i32 %108)
  %110 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %111 = call i32 @archive_entry_atime(%struct.archive_entry* %110)
  %112 = call i32 @assertEqualInt(i32 0, i32 %111)
  %113 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %114 = call i32 @archive_entry_ctime(%struct.archive_entry* %113)
  %115 = call i32 @assertEqualInt(i32 0, i32 %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %117 = call i32 @archive_entry_pathname(%struct.archive_entry* %116)
  %118 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %85
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121, %85
  %125 = load i32, i32* @AE_IFREG, align 4
  %126 = or i32 %125, 401
  %127 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %128 = call i32 @archive_entry_mode(%struct.archive_entry* %127)
  %129 = call i32 @assertEqualInt(i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %135 = call i32 @archive_entry_size(%struct.archive_entry* %134)
  %136 = call i32 @assertEqualInt(i32 5, i32 %135)
  br label %141

137:                                              ; preds = %130
  %138 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %139 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %138)
  %140 = call i32 @assertEqualInt(i32 0, i32 %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.archive*, %struct.archive** %4, align 8
  %143 = load %struct.archive*, %struct.archive** %4, align 8
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %145 = call i32 @archive_read_data(%struct.archive* %143, i8* %144, i32 64)
  %146 = call i32 @assertEqualIntA(%struct.archive* %142, i32 5, i32 %145)
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %148 = call i32 @assertEqualMem(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %149 = load %struct.archive*, %struct.archive** %4, align 8
  %150 = load i32, i32* @ARCHIVE_OK, align 4
  %151 = load %struct.archive*, %struct.archive** %4, align 8
  %152 = call i32 @archive_read_next_header(%struct.archive* %151, %struct.archive_entry** %8)
  %153 = call i32 @assertEqualIntA(%struct.archive* %149, i32 %150, i32 %152)
  %154 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %155 = call i32 @archive_entry_mtime(%struct.archive_entry* %154)
  %156 = call i32 @assertEqualInt(i32 1, i32 %155)
  %157 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %158 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %157)
  %159 = call i32 @assertEqualInt(i32 0, i32 %158)
  %160 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %161 = call i32 @archive_entry_atime(%struct.archive_entry* %160)
  %162 = call i32 @assertEqualInt(i32 0, i32 %161)
  %163 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %164 = call i32 @archive_entry_ctime(%struct.archive_entry* %163)
  %165 = call i32 @assertEqualInt(i32 0, i32 %164)
  %166 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %167 = call i32 @archive_entry_pathname(%struct.archive_entry* %166)
  %168 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %141
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %171, %141
  %175 = load i32, i32* @AE_IFLNK, align 4
  %176 = or i32 %175, 493
  %177 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %178 = call i32 @archive_entry_mode(%struct.archive_entry* %177)
  %179 = call i32 @assertEqualInt(i32 %176, i32 %178)
  %180 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %181 = call i32 @archive_entry_size(%struct.archive_entry* %180)
  %182 = call i32 @assertEqualInt(i32 0, i32 %181)
  %183 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %184 = call i32 @archive_entry_symlink(%struct.archive_entry* %183)
  %185 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %184)
  br label %198

186:                                              ; preds = %171
  %187 = load i32, i32* @AE_IFREG, align 4
  %188 = or i32 %187, 436
  %189 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %190 = call i32 @archive_entry_mode(%struct.archive_entry* %189)
  %191 = call i32 @assertEqualInt(i32 %188, i32 %190)
  %192 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %193 = call i32 @archive_entry_size(%struct.archive_entry* %192)
  %194 = call i32 @assertEqualInt(i32 5, i32 %193)
  %195 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %196 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %195)
  %197 = call i32 @assert(i32 %196)
  br label %198

198:                                              ; preds = %186, %174
  %199 = load %struct.archive*, %struct.archive** %4, align 8
  %200 = load i32, i32* @ARCHIVE_OK, align 4
  %201 = load %struct.archive*, %struct.archive** %4, align 8
  %202 = call i32 @archive_read_next_header(%struct.archive* %201, %struct.archive_entry** %8)
  %203 = call i32 @assertEqualIntA(%struct.archive* %199, i32 %200, i32 %202)
  %204 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %205 = call i32 @archive_entry_mtime(%struct.archive_entry* %204)
  %206 = call i32 @assertEqualInt(i32 11, i32 %205)
  %207 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %208 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %207)
  %209 = call i32 @assertEqualInt(i32 0, i32 %208)
  %210 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %211 = call i32 @archive_entry_atime(%struct.archive_entry* %210)
  %212 = call i32 @assertEqualInt(i32 0, i32 %211)
  %213 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %214 = call i32 @archive_entry_ctime(%struct.archive_entry* %213)
  %215 = call i32 @assertEqualInt(i32 0, i32 %214)
  %216 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %217 = call i32 @archive_entry_pathname(%struct.archive_entry* %216)
  %218 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %5, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %198
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221, %198
  %225 = load i32, i32* @AE_IFDIR, align 4
  %226 = or i32 %225, 493
  %227 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %228 = call i32 @archive_entry_mode(%struct.archive_entry* %227)
  %229 = call i32 @assertEqualInt(i32 %226, i32 %228)
  br label %230

230:                                              ; preds = %224, %221
  %231 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %232 = call i32 @archive_entry_size(%struct.archive_entry* %231)
  %233 = call i32 @assertEqualInt(i32 0, i32 %232)
  %234 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %235 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %234)
  %236 = call i32 @assert(i32 %235)
  %237 = load %struct.archive*, %struct.archive** %4, align 8
  %238 = load %struct.archive*, %struct.archive** %4, align 8
  %239 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %240 = call i32 @archive_read_data(%struct.archive* %238, i8* %239, i32 10)
  %241 = call i32 @assertEqualIntA(%struct.archive* %237, i32 0, i32 %240)
  %242 = load %struct.archive*, %struct.archive** %4, align 8
  %243 = load i32, i32* @ARCHIVE_OK, align 4
  %244 = load %struct.archive*, %struct.archive** %4, align 8
  %245 = call i32 @archive_read_next_header(%struct.archive* %244, %struct.archive_entry** %8)
  %246 = call i32 @assertEqualIntA(%struct.archive* %242, i32 %243, i32 %245)
  %247 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %248 = call i32 @archive_entry_mtime(%struct.archive_entry* %247)
  %249 = call i32 @assertEqualInt(i32 1, i32 %248)
  %250 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %251 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %250)
  %252 = call i32 @assertEqualInt(i32 0, i32 %251)
  %253 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %254 = call i32 @archive_entry_atime(%struct.archive_entry* %253)
  %255 = call i32 @assertEqualInt(i32 0, i32 %254)
  %256 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %257 = call i32 @archive_entry_ctime(%struct.archive_entry* %256)
  %258 = call i32 @assertEqualInt(i32 0, i32 %257)
  %259 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %260 = call i32 @archive_entry_pathname(%struct.archive_entry* %259)
  %261 = call i32 @assertEqualString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* %5, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %230
  %265 = load i32, i32* %6, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %264, %230
  %268 = load i32, i32* @AE_IFREG, align 4
  %269 = or i32 %268, 493
  %270 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %271 = call i32 @archive_entry_mode(%struct.archive_entry* %270)
  %272 = call i32 @assertEqualInt(i32 %269, i32 %271)
  br label %273

273:                                              ; preds = %267, %264
  %274 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %275 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %274)
  %276 = call i32 @assert(i32 %275)
  %277 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %278 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %277)
  %279 = call i32 @assert(i32 %278)
  %280 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %281 = call i32 @archive_entry_size(%struct.archive_entry* %280)
  %282 = call i32 @assertEqualInt(i32 8, i32 %281)
  %283 = load %struct.archive*, %struct.archive** %4, align 8
  %284 = load %struct.archive*, %struct.archive** %4, align 8
  %285 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %286 = call i32 @archive_read_data(%struct.archive* %284, i8* %285, i32 64)
  %287 = call i32 @assertEqualIntA(%struct.archive* %283, i32 8, i32 %286)
  %288 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %289 = call i32 @assertEqualMem(i8* %288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %290 = load %struct.archive*, %struct.archive** %4, align 8
  %291 = load i32, i32* @ARCHIVE_OK, align 4
  %292 = load %struct.archive*, %struct.archive** %4, align 8
  %293 = call i32 @archive_read_next_header(%struct.archive* %292, %struct.archive_entry** %8)
  %294 = call i32 @assertEqualIntA(%struct.archive* %290, i32 %291, i32 %293)
  %295 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %296 = call i32 @archive_entry_mtime(%struct.archive_entry* %295)
  %297 = call i32 @assertEqualInt(i32 1, i32 %296)
  %298 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %299 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %298)
  %300 = call i32 @assertEqualInt(i32 0, i32 %299)
  %301 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %302 = call i32 @archive_entry_atime(%struct.archive_entry* %301)
  %303 = call i32 @assertEqualInt(i32 0, i32 %302)
  %304 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %305 = call i32 @archive_entry_ctime(%struct.archive_entry* %304)
  %306 = call i32 @assertEqualInt(i32 0, i32 %305)
  %307 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %308 = call i32 @archive_entry_pathname(%struct.archive_entry* %307)
  %309 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %308)
  %310 = load i32, i32* %5, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %273
  %313 = load i32, i32* %6, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %312, %273
  %316 = load i32, i32* @AE_IFREG, align 4
  %317 = or i32 %316, 493
  %318 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %319 = call i32 @archive_entry_mode(%struct.archive_entry* %318)
  %320 = call i32 @assertEqualInt(i32 %317, i32 %319)
  br label %321

321:                                              ; preds = %315, %312
  %322 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %323 = call i32 @archive_entry_size(%struct.archive_entry* %322)
  %324 = call i32 @assertEqualInt(i32 4, i32 %323)
  %325 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %326 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %325)
  %327 = call i32 @assert(i32 %326)
  %328 = load %struct.archive*, %struct.archive** %4, align 8
  %329 = load %struct.archive*, %struct.archive** %4, align 8
  %330 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %331 = call i32 @archive_read_data(%struct.archive* %329, i8* %330, i32 64)
  %332 = call i32 @assertEqualIntA(%struct.archive* %328, i32 4, i32 %331)
  %333 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %334 = call i32 @assertEqualMem(i8* %333, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %335 = load %struct.archive*, %struct.archive** %4, align 8
  %336 = load i32, i32* @ARCHIVE_OK, align 4
  %337 = load %struct.archive*, %struct.archive** %4, align 8
  %338 = call i32 @archive_read_next_header(%struct.archive* %337, %struct.archive_entry** %8)
  %339 = call i32 @assertEqualIntA(%struct.archive* %335, i32 %336, i32 %338)
  %340 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %341 = call i32 @archive_entry_mtime(%struct.archive_entry* %340)
  %342 = call i32 @assertEqualInt(i32 2, i32 %341)
  %343 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %344 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %343)
  %345 = call i32 @assertEqualInt(i32 0, i32 %344)
  %346 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %347 = call i32 @archive_entry_atime(%struct.archive_entry* %346)
  %348 = call i32 @assertEqualInt(i32 0, i32 %347)
  %349 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %350 = call i32 @archive_entry_ctime(%struct.archive_entry* %349)
  %351 = call i32 @assertEqualInt(i32 0, i32 %350)
  %352 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %353 = call i32 @archive_entry_pathname(%struct.archive_entry* %352)
  %354 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %353)
  %355 = load i32, i32* %5, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %321
  %358 = load i32, i32* %6, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %357, %321
  %361 = load i32, i32* @AE_IFREG, align 4
  %362 = or i32 %361, 401
  %363 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %364 = call i32 @archive_entry_mode(%struct.archive_entry* %363)
  %365 = call i32 @assertEqualInt(i32 %362, i32 %364)
  br label %366

366:                                              ; preds = %360, %357
  %367 = load i32, i32* %5, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  %370 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %371 = call i32 @archive_entry_size(%struct.archive_entry* %370)
  %372 = call i32 @assertEqualInt(i32 5, i32 %371)
  br label %377

373:                                              ; preds = %366
  %374 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %375 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %374)
  %376 = call i32 @assertEqualInt(i32 0, i32 %375)
  br label %377

377:                                              ; preds = %373, %369
  %378 = load %struct.archive*, %struct.archive** %4, align 8
  %379 = load %struct.archive*, %struct.archive** %4, align 8
  %380 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %381 = call i32 @archive_read_data(%struct.archive* %379, i8* %380, i32 64)
  %382 = call i32 @assertEqualIntA(%struct.archive* %378, i32 5, i32 %381)
  %383 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %384 = call i32 @assertEqualMem(i8* %383, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %385 = load %struct.archive*, %struct.archive** %4, align 8
  %386 = load i32, i32* @ARCHIVE_OK, align 4
  %387 = load %struct.archive*, %struct.archive** %4, align 8
  %388 = call i32 @archive_read_next_header(%struct.archive* %387, %struct.archive_entry** %8)
  %389 = call i32 @assertEqualIntA(%struct.archive* %385, i32 %386, i32 %388)
  %390 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %391 = call i32 @archive_entry_mtime(%struct.archive_entry* %390)
  %392 = call i32 @assertEqualInt(i32 1, i32 %391)
  %393 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %394 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %393)
  %395 = call i32 @assertEqualInt(i32 0, i32 %394)
  %396 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %397 = call i32 @archive_entry_atime(%struct.archive_entry* %396)
  %398 = call i32 @assertEqualInt(i32 0, i32 %397)
  %399 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %400 = call i32 @archive_entry_ctime(%struct.archive_entry* %399)
  %401 = call i32 @assertEqualInt(i32 0, i32 %400)
  %402 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %403 = call i32 @archive_entry_pathname(%struct.archive_entry* %402)
  %404 = call i32 @assertEqualString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %403)
  %405 = load i32, i32* %5, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %377
  %408 = load i32, i32* %6, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %422

410:                                              ; preds = %407, %377
  %411 = load i32, i32* @AE_IFLNK, align 4
  %412 = or i32 %411, 493
  %413 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %414 = call i32 @archive_entry_mode(%struct.archive_entry* %413)
  %415 = call i32 @assertEqualInt(i32 %412, i32 %414)
  %416 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %417 = call i32 @archive_entry_size(%struct.archive_entry* %416)
  %418 = call i32 @assertEqualInt(i32 0, i32 %417)
  %419 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %420 = call i32 @archive_entry_symlink(%struct.archive_entry* %419)
  %421 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %420)
  br label %438

422:                                              ; preds = %407
  %423 = load i32, i32* @AE_IFREG, align 4
  %424 = or i32 %423, 436
  %425 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %426 = call i32 @archive_entry_mode(%struct.archive_entry* %425)
  %427 = call i32 @assertEqualInt(i32 %424, i32 %426)
  %428 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %429 = call i32 @archive_entry_size(%struct.archive_entry* %428)
  %430 = call i32 @assertEqualInt(i32 5, i32 %429)
  %431 = load %struct.archive*, %struct.archive** %4, align 8
  %432 = load %struct.archive*, %struct.archive** %4, align 8
  %433 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %434 = call i32 @archive_read_data(%struct.archive* %432, i8* %433, i32 10)
  %435 = call i32 @assertEqualIntA(%struct.archive* %431, i32 5, i32 %434)
  %436 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %437 = call i32 @assertEqualMem(i8* %436, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  br label %438

438:                                              ; preds = %422, %410
  %439 = load %struct.archive*, %struct.archive** %4, align 8
  %440 = load i32, i32* @ARCHIVE_OK, align 4
  %441 = load %struct.archive*, %struct.archive** %4, align 8
  %442 = call i32 @archive_read_next_header(%struct.archive* %441, %struct.archive_entry** %8)
  %443 = call i32 @assertEqualIntA(%struct.archive* %439, i32 %440, i32 %442)
  %444 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %445 = call i32 @archive_entry_mtime(%struct.archive_entry* %444)
  %446 = call i32 @assertEqualInt(i32 11, i32 %445)
  %447 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %448 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %447)
  %449 = call i32 @assertEqualInt(i32 0, i32 %448)
  %450 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %451 = call i32 @archive_entry_atime(%struct.archive_entry* %450)
  %452 = call i32 @assertEqualInt(i32 0, i32 %451)
  %453 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %454 = call i32 @archive_entry_ctime(%struct.archive_entry* %453)
  %455 = call i32 @assertEqualInt(i32 0, i32 %454)
  %456 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %457 = call i32 @archive_entry_pathname(%struct.archive_entry* %456)
  %458 = call i32 @assertEqualString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %457)
  %459 = load i32, i32* %5, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %464, label %461

461:                                              ; preds = %438
  %462 = load i32, i32* %6, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %461, %438
  %465 = load i32, i32* @AE_IFDIR, align 4
  %466 = or i32 %465, 493
  %467 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %468 = call i32 @archive_entry_mode(%struct.archive_entry* %467)
  %469 = call i32 @assertEqualInt(i32 %466, i32 %468)
  br label %470

470:                                              ; preds = %464, %461
  %471 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %472 = call i32 @archive_entry_size(%struct.archive_entry* %471)
  %473 = call i32 @assertEqualInt(i32 0, i32 %472)
  %474 = load %struct.archive*, %struct.archive** %4, align 8
  %475 = load %struct.archive*, %struct.archive** %4, align 8
  %476 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %477 = call i32 @archive_read_data(%struct.archive* %475, i8* %476, i32 10)
  %478 = call i32 @assertEqualIntA(%struct.archive* %474, i32 0, i32 %477)
  %479 = load %struct.archive*, %struct.archive** %4, align 8
  %480 = load i32, i32* @ARCHIVE_EOF, align 4
  %481 = load %struct.archive*, %struct.archive** %4, align 8
  %482 = call i32 @archive_read_next_header(%struct.archive* %481, %struct.archive_entry** %8)
  %483 = call i32 @assertEqualIntA(%struct.archive* %479, i32 %480, i32 %482)
  %484 = load i32, i32* @ARCHIVE_OK, align 4
  %485 = load %struct.archive*, %struct.archive** %4, align 8
  %486 = call i32 @archive_read_close(%struct.archive* %485)
  %487 = call i32 @assertEqualInt(i32 %484, i32 %486)
  %488 = load i32, i32* @ARCHIVE_OK, align 4
  %489 = load %struct.archive*, %struct.archive** %4, align 8
  %490 = call i32 @archive_read_free(%struct.archive* %489)
  %491 = call i32 @assertEqualInt(i32 %488, i32 %490)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
