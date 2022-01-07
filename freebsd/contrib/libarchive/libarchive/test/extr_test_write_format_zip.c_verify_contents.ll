; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip.c_verify_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_zip.c_verify_contents.c"
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
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i32, i32* @AE_IFREG, align 4
  %33 = or i32 %32, 493
  %34 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %35 = call i32 @archive_entry_mode(%struct.archive_entry* %34)
  %36 = call i32 @assertEqualInt(i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %31, %3
  %38 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %39 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %38)
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %42 = call i32 @archive_entry_size(%struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 8, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.archive*, %struct.archive** %4, align 8
  %48 = load %struct.archive*, %struct.archive** %4, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %50 = call i32 @archive_read_data(%struct.archive* %48, i8* %49, i32 64)
  %51 = call i32 @assertEqualIntA(%struct.archive* %47, i32 8, i32 %50)
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %53 = call i32 @assertEqualMem(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %54

54:                                               ; preds = %46, %37
  %55 = load %struct.archive*, %struct.archive** %4, align 8
  %56 = load i32, i32* @ARCHIVE_OK, align 4
  %57 = load %struct.archive*, %struct.archive** %4, align 8
  %58 = call i32 @archive_read_next_header(%struct.archive* %57, %struct.archive_entry** %8)
  %59 = call i32 @assertEqualIntA(%struct.archive* %55, i32 %56, i32 %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %61 = call i32 @archive_entry_mtime(%struct.archive_entry* %60)
  %62 = call i32 @assertEqualInt(i32 1, i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %64 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %63)
  %65 = call i32 @assertEqualInt(i32 0, i32 %64)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %67 = call i32 @archive_entry_atime(%struct.archive_entry* %66)
  %68 = call i32 @assertEqualInt(i32 0, i32 %67)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %70 = call i32 @archive_entry_ctime(%struct.archive_entry* %69)
  %71 = call i32 @assertEqualInt(i32 0, i32 %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %73 = call i32 @archive_entry_pathname(%struct.archive_entry* %72)
  %74 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %54
  %78 = load i32, i32* @AE_IFREG, align 4
  %79 = or i32 %78, 493
  %80 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %81 = call i32 @archive_entry_mode(%struct.archive_entry* %80)
  %82 = call i32 @assertEqualInt(i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %77, %54
  %84 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %85 = call i32 @archive_entry_size(%struct.archive_entry* %84)
  %86 = call i32 @assertEqualInt(i32 4, i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %88 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %87)
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.archive*, %struct.archive** %4, align 8
  %94 = load %struct.archive*, %struct.archive** %4, align 8
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %96 = call i32 @archive_read_data(%struct.archive* %94, i8* %95, i32 64)
  %97 = call i32 @assertEqualIntA(%struct.archive* %93, i32 4, i32 %96)
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %99 = call i32 @assertEqualMem(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %100

100:                                              ; preds = %92, %83
  %101 = load %struct.archive*, %struct.archive** %4, align 8
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  %103 = load %struct.archive*, %struct.archive** %4, align 8
  %104 = call i32 @archive_read_next_header(%struct.archive* %103, %struct.archive_entry** %8)
  %105 = call i32 @assertEqualIntA(%struct.archive* %101, i32 %102, i32 %104)
  %106 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %107 = call i32 @archive_entry_mtime(%struct.archive_entry* %106)
  %108 = call i32 @assertEqualInt(i32 2, i32 %107)
  %109 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %110 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %109)
  %111 = call i32 @assertEqualInt(i32 0, i32 %110)
  %112 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %113 = call i32 @archive_entry_atime(%struct.archive_entry* %112)
  %114 = call i32 @assertEqualInt(i32 0, i32 %113)
  %115 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %116 = call i32 @archive_entry_ctime(%struct.archive_entry* %115)
  %117 = call i32 @assertEqualInt(i32 0, i32 %116)
  %118 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %119 = call i32 @archive_entry_pathname(%struct.archive_entry* %118)
  %120 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %100
  %124 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %125 = call i32 @archive_entry_size(%struct.archive_entry* %124)
  %126 = call i32 @assertEqualInt(i32 5, i32 %125)
  %127 = load i32, i32* @AE_IFREG, align 4
  %128 = or i32 %127, 401
  %129 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %130 = call i32 @archive_entry_mode(%struct.archive_entry* %129)
  %131 = call i32 @assertEqualInt(i32 %128, i32 %130)
  br label %136

132:                                              ; preds = %100
  %133 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %134 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %133)
  %135 = call i32 @assertEqualInt(i32 0, i32 %134)
  br label %136

136:                                              ; preds = %132, %123
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load %struct.archive*, %struct.archive** %4, align 8
  %141 = load %struct.archive*, %struct.archive** %4, align 8
  %142 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %143 = call i32 @archive_read_data(%struct.archive* %141, i8* %142, i32 64)
  %144 = call i32 @assertEqualIntA(%struct.archive* %140, i32 5, i32 %143)
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %146 = call i32 @assertEqualMem(i8* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  br label %147

147:                                              ; preds = %139, %136
  %148 = load %struct.archive*, %struct.archive** %4, align 8
  %149 = load i32, i32* @ARCHIVE_OK, align 4
  %150 = load %struct.archive*, %struct.archive** %4, align 8
  %151 = call i32 @archive_read_next_header(%struct.archive* %150, %struct.archive_entry** %8)
  %152 = call i32 @assertEqualIntA(%struct.archive* %148, i32 %149, i32 %151)
  %153 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %154 = call i32 @archive_entry_mtime(%struct.archive_entry* %153)
  %155 = call i32 @assertEqualInt(i32 1, i32 %154)
  %156 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %157 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %156)
  %158 = call i32 @assertEqualInt(i32 0, i32 %157)
  %159 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %160 = call i32 @archive_entry_atime(%struct.archive_entry* %159)
  %161 = call i32 @assertEqualInt(i32 0, i32 %160)
  %162 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %163 = call i32 @archive_entry_ctime(%struct.archive_entry* %162)
  %164 = call i32 @assertEqualInt(i32 0, i32 %163)
  %165 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %166 = call i32 @archive_entry_pathname(%struct.archive_entry* %165)
  %167 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @AE_IFLNK, align 4
  %169 = or i32 %168, 493
  %170 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %171 = call i32 @archive_entry_mode(%struct.archive_entry* %170)
  %172 = call i32 @assertEqualInt(i32 %169, i32 %171)
  %173 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %174 = call i32 @archive_entry_size(%struct.archive_entry* %173)
  %175 = call i32 @assertEqualInt(i32 0, i32 %174)
  %176 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %177 = call i32 @archive_entry_symlink(%struct.archive_entry* %176)
  %178 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  %179 = load %struct.archive*, %struct.archive** %4, align 8
  %180 = load i32, i32* @ARCHIVE_OK, align 4
  %181 = load %struct.archive*, %struct.archive** %4, align 8
  %182 = call i32 @archive_read_next_header(%struct.archive* %181, %struct.archive_entry** %8)
  %183 = call i32 @assertEqualIntA(%struct.archive* %179, i32 %180, i32 %182)
  %184 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %185 = call i32 @archive_entry_mtime(%struct.archive_entry* %184)
  %186 = call i32 @assertEqualInt(i32 11, i32 %185)
  %187 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %188 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %187)
  %189 = call i32 @assertEqualInt(i32 0, i32 %188)
  %190 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %191 = call i32 @archive_entry_atime(%struct.archive_entry* %190)
  %192 = call i32 @assertEqualInt(i32 0, i32 %191)
  %193 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %194 = call i32 @archive_entry_ctime(%struct.archive_entry* %193)
  %195 = call i32 @assertEqualInt(i32 0, i32 %194)
  %196 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %197 = call i32 @archive_entry_pathname(%struct.archive_entry* %196)
  %198 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %5, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %147
  %202 = load i32, i32* @AE_IFDIR, align 4
  %203 = or i32 %202, 493
  %204 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %205 = call i32 @archive_entry_mode(%struct.archive_entry* %204)
  %206 = call i32 @assertEqualInt(i32 %203, i32 %205)
  br label %207

207:                                              ; preds = %201, %147
  %208 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %209 = call i32 @archive_entry_size(%struct.archive_entry* %208)
  %210 = call i32 @assertEqualInt(i32 0, i32 %209)
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load %struct.archive*, %struct.archive** %4, align 8
  %215 = load %struct.archive*, %struct.archive** %4, align 8
  %216 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %217 = call i32 @archive_read_data(%struct.archive* %215, i8* %216, i32 10)
  %218 = call i32 @assertEqualIntA(%struct.archive* %214, i32 0, i32 %217)
  br label %219

219:                                              ; preds = %213, %207
  %220 = load %struct.archive*, %struct.archive** %4, align 8
  %221 = load i32, i32* @ARCHIVE_OK, align 4
  %222 = load %struct.archive*, %struct.archive** %4, align 8
  %223 = call i32 @archive_read_next_header(%struct.archive* %222, %struct.archive_entry** %8)
  %224 = call i32 @assertEqualIntA(%struct.archive* %220, i32 %221, i32 %223)
  %225 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %226 = call i32 @archive_entry_mtime(%struct.archive_entry* %225)
  %227 = call i32 @assertEqualInt(i32 1, i32 %226)
  %228 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %229 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %228)
  %230 = call i32 @assertEqualInt(i32 0, i32 %229)
  %231 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %232 = call i32 @archive_entry_atime(%struct.archive_entry* %231)
  %233 = call i32 @assertEqualInt(i32 0, i32 %232)
  %234 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %235 = call i32 @archive_entry_ctime(%struct.archive_entry* %234)
  %236 = call i32 @assertEqualInt(i32 0, i32 %235)
  %237 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %238 = call i32 @archive_entry_pathname(%struct.archive_entry* %237)
  %239 = call i32 @assertEqualString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %5, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %219
  %243 = load i32, i32* @AE_IFREG, align 4
  %244 = or i32 %243, 493
  %245 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %246 = call i32 @archive_entry_mode(%struct.archive_entry* %245)
  %247 = call i32 @assertEqualInt(i32 %244, i32 %246)
  br label %248

248:                                              ; preds = %242, %219
  %249 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %250 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %249)
  %251 = call i32 @assert(i32 %250)
  %252 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %253 = call i32 @archive_entry_size(%struct.archive_entry* %252)
  %254 = call i32 @assertEqualInt(i32 8, i32 %253)
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %248
  %258 = load %struct.archive*, %struct.archive** %4, align 8
  %259 = load %struct.archive*, %struct.archive** %4, align 8
  %260 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %261 = call i32 @archive_read_data(%struct.archive* %259, i8* %260, i32 64)
  %262 = call i32 @assertEqualIntA(%struct.archive* %258, i32 8, i32 %261)
  %263 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %264 = call i32 @assertEqualMem(i8* %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %265

265:                                              ; preds = %257, %248
  %266 = load %struct.archive*, %struct.archive** %4, align 8
  %267 = load i32, i32* @ARCHIVE_OK, align 4
  %268 = load %struct.archive*, %struct.archive** %4, align 8
  %269 = call i32 @archive_read_next_header(%struct.archive* %268, %struct.archive_entry** %8)
  %270 = call i32 @assertEqualIntA(%struct.archive* %266, i32 %267, i32 %269)
  %271 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %272 = call i32 @archive_entry_mtime(%struct.archive_entry* %271)
  %273 = call i32 @assertEqualInt(i32 1, i32 %272)
  %274 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %275 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %274)
  %276 = call i32 @assertEqualInt(i32 0, i32 %275)
  %277 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %278 = call i32 @archive_entry_atime(%struct.archive_entry* %277)
  %279 = call i32 @assertEqualInt(i32 0, i32 %278)
  %280 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %281 = call i32 @archive_entry_ctime(%struct.archive_entry* %280)
  %282 = call i32 @assertEqualInt(i32 0, i32 %281)
  %283 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %284 = call i32 @archive_entry_pathname(%struct.archive_entry* %283)
  %285 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* %5, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %265
  %289 = load i32, i32* @AE_IFREG, align 4
  %290 = or i32 %289, 493
  %291 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %292 = call i32 @archive_entry_mode(%struct.archive_entry* %291)
  %293 = call i32 @assertEqualInt(i32 %290, i32 %292)
  br label %294

294:                                              ; preds = %288, %265
  %295 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %296 = call i32 @archive_entry_size(%struct.archive_entry* %295)
  %297 = call i32 @assertEqualInt(i32 4, i32 %296)
  %298 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %299 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %298)
  %300 = call i32 @assert(i32 %299)
  %301 = load i32, i32* %6, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %294
  %304 = load %struct.archive*, %struct.archive** %4, align 8
  %305 = load %struct.archive*, %struct.archive** %4, align 8
  %306 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %307 = call i32 @archive_read_data(%struct.archive* %305, i8* %306, i32 64)
  %308 = call i32 @assertEqualIntA(%struct.archive* %304, i32 4, i32 %307)
  %309 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %310 = call i32 @assertEqualMem(i8* %309, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  br label %311

311:                                              ; preds = %303, %294
  %312 = load %struct.archive*, %struct.archive** %4, align 8
  %313 = load i32, i32* @ARCHIVE_OK, align 4
  %314 = load %struct.archive*, %struct.archive** %4, align 8
  %315 = call i32 @archive_read_next_header(%struct.archive* %314, %struct.archive_entry** %8)
  %316 = call i32 @assertEqualIntA(%struct.archive* %312, i32 %313, i32 %315)
  %317 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %318 = call i32 @archive_entry_mtime(%struct.archive_entry* %317)
  %319 = call i32 @assertEqualInt(i32 2, i32 %318)
  %320 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %321 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %320)
  %322 = call i32 @assertEqualInt(i32 0, i32 %321)
  %323 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %324 = call i32 @archive_entry_atime(%struct.archive_entry* %323)
  %325 = call i32 @assertEqualInt(i32 0, i32 %324)
  %326 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %327 = call i32 @archive_entry_ctime(%struct.archive_entry* %326)
  %328 = call i32 @assertEqualInt(i32 0, i32 %327)
  %329 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %330 = call i32 @archive_entry_pathname(%struct.archive_entry* %329)
  %331 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %330)
  %332 = load i32, i32* %5, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %343

334:                                              ; preds = %311
  %335 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %336 = call i32 @archive_entry_size(%struct.archive_entry* %335)
  %337 = call i32 @assertEqualInt(i32 5, i32 %336)
  %338 = load i32, i32* @AE_IFREG, align 4
  %339 = or i32 %338, 401
  %340 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %341 = call i32 @archive_entry_mode(%struct.archive_entry* %340)
  %342 = call i32 @assertEqualInt(i32 %339, i32 %341)
  br label %347

343:                                              ; preds = %311
  %344 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %345 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %344)
  %346 = call i32 @assertEqualInt(i32 0, i32 %345)
  br label %347

347:                                              ; preds = %343, %334
  %348 = load i32, i32* %6, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %347
  %351 = load %struct.archive*, %struct.archive** %4, align 8
  %352 = load %struct.archive*, %struct.archive** %4, align 8
  %353 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %354 = call i32 @archive_read_data(%struct.archive* %352, i8* %353, i32 64)
  %355 = call i32 @assertEqualIntA(%struct.archive* %351, i32 5, i32 %354)
  %356 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %357 = call i32 @assertEqualMem(i8* %356, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 4)
  br label %358

358:                                              ; preds = %350, %347
  %359 = load %struct.archive*, %struct.archive** %4, align 8
  %360 = load i32, i32* @ARCHIVE_OK, align 4
  %361 = load %struct.archive*, %struct.archive** %4, align 8
  %362 = call i32 @archive_read_next_header(%struct.archive* %361, %struct.archive_entry** %8)
  %363 = call i32 @assertEqualIntA(%struct.archive* %359, i32 %360, i32 %362)
  %364 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %365 = call i32 @archive_entry_mtime(%struct.archive_entry* %364)
  %366 = call i32 @assertEqualInt(i32 1, i32 %365)
  %367 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %368 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %367)
  %369 = call i32 @assertEqualInt(i32 0, i32 %368)
  %370 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %371 = call i32 @archive_entry_atime(%struct.archive_entry* %370)
  %372 = call i32 @assertEqualInt(i32 0, i32 %371)
  %373 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %374 = call i32 @archive_entry_ctime(%struct.archive_entry* %373)
  %375 = call i32 @assertEqualInt(i32 0, i32 %374)
  %376 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %377 = call i32 @archive_entry_pathname(%struct.archive_entry* %376)
  %378 = call i32 @assertEqualString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %377)
  %379 = load i32, i32* @AE_IFLNK, align 4
  %380 = or i32 %379, 493
  %381 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %382 = call i32 @archive_entry_mode(%struct.archive_entry* %381)
  %383 = call i32 @assertEqualInt(i32 %380, i32 %382)
  %384 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %385 = call i32 @archive_entry_size(%struct.archive_entry* %384)
  %386 = call i32 @assertEqualInt(i32 0, i32 %385)
  %387 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %388 = call i32 @archive_entry_symlink(%struct.archive_entry* %387)
  %389 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %388)
  %390 = load %struct.archive*, %struct.archive** %4, align 8
  %391 = load i32, i32* @ARCHIVE_OK, align 4
  %392 = load %struct.archive*, %struct.archive** %4, align 8
  %393 = call i32 @archive_read_next_header(%struct.archive* %392, %struct.archive_entry** %8)
  %394 = call i32 @assertEqualIntA(%struct.archive* %390, i32 %391, i32 %393)
  %395 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %396 = call i32 @archive_entry_mtime(%struct.archive_entry* %395)
  %397 = call i32 @assertEqualInt(i32 11, i32 %396)
  %398 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %399 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %398)
  %400 = call i32 @assertEqualInt(i32 0, i32 %399)
  %401 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %402 = call i32 @archive_entry_atime(%struct.archive_entry* %401)
  %403 = call i32 @assertEqualInt(i32 0, i32 %402)
  %404 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %405 = call i32 @archive_entry_ctime(%struct.archive_entry* %404)
  %406 = call i32 @assertEqualInt(i32 0, i32 %405)
  %407 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %408 = call i32 @archive_entry_pathname(%struct.archive_entry* %407)
  %409 = call i32 @assertEqualString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %408)
  %410 = load i32, i32* %5, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %418

412:                                              ; preds = %358
  %413 = load i32, i32* @AE_IFDIR, align 4
  %414 = or i32 %413, 493
  %415 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %416 = call i32 @archive_entry_mode(%struct.archive_entry* %415)
  %417 = call i32 @assertEqualInt(i32 %414, i32 %416)
  br label %418

418:                                              ; preds = %412, %358
  %419 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %420 = call i32 @archive_entry_size(%struct.archive_entry* %419)
  %421 = call i32 @assertEqualInt(i32 0, i32 %420)
  %422 = load i32, i32* %6, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %418
  %425 = load %struct.archive*, %struct.archive** %4, align 8
  %426 = load %struct.archive*, %struct.archive** %4, align 8
  %427 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %428 = call i32 @archive_read_data(%struct.archive* %426, i8* %427, i32 10)
  %429 = call i32 @assertEqualIntA(%struct.archive* %425, i32 0, i32 %428)
  br label %430

430:                                              ; preds = %424, %418
  %431 = load %struct.archive*, %struct.archive** %4, align 8
  %432 = load i32, i32* @ARCHIVE_EOF, align 4
  %433 = load %struct.archive*, %struct.archive** %4, align 8
  %434 = call i32 @archive_read_next_header(%struct.archive* %433, %struct.archive_entry** %8)
  %435 = call i32 @assertEqualIntA(%struct.archive* %431, i32 %432, i32 %434)
  %436 = load i32, i32* @ARCHIVE_OK, align 4
  %437 = load %struct.archive*, %struct.archive** %4, align 8
  %438 = call i32 @archive_read_close(%struct.archive* %437)
  %439 = call i32 @assertEqualInt(i32 %436, i32 %438)
  %440 = load i32, i32* @ARCHIVE_OK, align 4
  %441 = load %struct.archive*, %struct.archive** %4, align 8
  %442 = call i32 @archive_read_free(%struct.archive* %441)
  %443 = call i32 @assertEqualInt(i32 %440, i32 %442)
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

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

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
