; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_restore_atime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_restore_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Can't test restoring atime on this filesystem\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"at/f1\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"at/f2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"at/fe\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Directory traversals should work as well\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"There must be no entry\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Atime should be restored\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"The atime of a empty file should not be changed\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Can't test atime with nodump on this filesystem\00", align 1
@ARCHIVE_READDISK_RESTORE_ATIME = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_HONOR_NODUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_restore_atime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_restore_atime() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @atimeIsUpdated()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @skipping(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %535

11:                                               ; preds = %0
  %12 = call i32 @assertMakeDir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %13 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %15 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 420, i8* null)
  %16 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0, i32 886600, i32 0)
  %17 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %18 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %19 = call i32 @assertUtimes(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0, i32 886622, i32 0)
  store i32 4, i32* %6, align 4
  %20 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %20, %struct.archive_entry** %2, align 8
  %21 = icmp ne %struct.archive_entry* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call %struct.archive* (...) @archive_read_disk_new()
  store %struct.archive* %24, %struct.archive** %1, align 8
  %25 = icmp ne %struct.archive* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %29 = load %struct.archive*, %struct.archive** %1, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = load %struct.archive*, %struct.archive** %1, align 8
  %32 = call i32 @archive_read_disk_open(%struct.archive* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @assertEqualIntA(%struct.archive* %29, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %153, %11
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %154

38:                                               ; preds = %34
  %39 = load %struct.archive*, %struct.archive** %1, align 8
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = load %struct.archive*, %struct.archive** %1, align 8
  %42 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %43 = call i32 @archive_read_next_header2(%struct.archive* %41, %struct.archive_entry* %42)
  %44 = call i32 @assertEqualIntA(%struct.archive* %39, i32 %40, i32 %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %46 = call i32 @archive_entry_pathname(%struct.archive_entry* %45)
  %47 = call i64 @strcmp(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %51 = call i32 @archive_entry_filetype(%struct.archive_entry* %50)
  %52 = load i32, i32* @AE_IFDIR, align 4
  %53 = call i32 @assertEqualInt(i32 %51, i32 %52)
  br label %142

54:                                               ; preds = %38
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = call i32 @archive_entry_pathname(%struct.archive_entry* %55)
  %57 = call i64 @strcmp(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %54
  %60 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %61 = call i32 @archive_entry_filetype(%struct.archive_entry* %60)
  %62 = load i32, i32* @AE_IFREG, align 4
  %63 = call i32 @assertEqualInt(i32 %61, i32 %62)
  %64 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %65 = call i32 @archive_entry_size(%struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i32 %65, i32 10)
  %67 = load %struct.archive*, %struct.archive** %1, align 8
  %68 = load i32, i32* @ARCHIVE_OK, align 4
  %69 = load %struct.archive*, %struct.archive** %1, align 8
  %70 = call i32 @archive_read_data_block(%struct.archive* %69, i8** %3, i64* %4, i64* %5)
  %71 = call i32 @assertEqualIntA(%struct.archive* %67, i32 %68, i32 %70)
  %72 = load i64, i64* %4, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @assertEqualInt(i32 %73, i32 10)
  %75 = load i64, i64* %5, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @assertEqualInt(i32 %76, i32 0)
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @assertEqualMem(i8* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %80 = load i32, i32* @ARCHIVE_EOF, align 4
  %81 = load %struct.archive*, %struct.archive** %1, align 8
  %82 = call i32 @archive_read_data_block(%struct.archive* %81, i8** %3, i64* %4, i64* %5)
  %83 = call i32 @assertEqualInt(i32 %80, i32 %82)
  %84 = load i64, i64* %4, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @assertEqualInt(i32 %85, i32 0)
  %87 = load i64, i64* %5, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @assertEqualInt(i32 %88, i32 10)
  br label %141

90:                                               ; preds = %54
  %91 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %92 = call i32 @archive_entry_pathname(%struct.archive_entry* %91)
  %93 = call i64 @strcmp(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %90
  %96 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %97 = call i32 @archive_entry_filetype(%struct.archive_entry* %96)
  %98 = load i32, i32* @AE_IFREG, align 4
  %99 = call i32 @assertEqualInt(i32 %97, i32 %98)
  %100 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %101 = call i32 @archive_entry_size(%struct.archive_entry* %100)
  %102 = call i32 @assertEqualInt(i32 %101, i32 11)
  %103 = load %struct.archive*, %struct.archive** %1, align 8
  %104 = load i32, i32* @ARCHIVE_OK, align 4
  %105 = load %struct.archive*, %struct.archive** %1, align 8
  %106 = call i32 @archive_read_data_block(%struct.archive* %105, i8** %3, i64* %4, i64* %5)
  %107 = call i32 @assertEqualIntA(%struct.archive* %103, i32 %104, i32 %106)
  %108 = load i64, i64* %4, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @assertEqualInt(i32 %109, i32 11)
  %111 = load i64, i64* %5, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @assertEqualInt(i32 %112, i32 0)
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @assertEqualMem(i8* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %116 = load i32, i32* @ARCHIVE_EOF, align 4
  %117 = load %struct.archive*, %struct.archive** %1, align 8
  %118 = call i32 @archive_read_data_block(%struct.archive* %117, i8** %3, i64* %4, i64* %5)
  %119 = call i32 @assertEqualInt(i32 %116, i32 %118)
  %120 = load i64, i64* %4, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @assertEqualInt(i32 %121, i32 0)
  %123 = load i64, i64* %5, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @assertEqualInt(i32 %124, i32 11)
  br label %140

126:                                              ; preds = %90
  %127 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %128 = call i32 @archive_entry_pathname(%struct.archive_entry* %127)
  %129 = call i64 @strcmp(i32 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %133 = call i32 @archive_entry_filetype(%struct.archive_entry* %132)
  %134 = load i32, i32* @AE_IFREG, align 4
  %135 = call i32 @assertEqualInt(i32 %133, i32 %134)
  %136 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %137 = call i32 @archive_entry_size(%struct.archive_entry* %136)
  %138 = call i32 @assertEqualInt(i32 %137, i32 0)
  br label %139

139:                                              ; preds = %131, %126
  br label %140

140:                                              ; preds = %139, %95
  br label %141

141:                                              ; preds = %140, %59
  br label %142

142:                                              ; preds = %141, %49
  %143 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %144 = call i32 @archive_entry_filetype(%struct.archive_entry* %143)
  %145 = load i32, i32* @AE_IFDIR, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.archive*, %struct.archive** %1, align 8
  %149 = load i32, i32* @ARCHIVE_OK, align 4
  %150 = load %struct.archive*, %struct.archive** %1, align 8
  %151 = call i32 @archive_read_disk_descend(%struct.archive* %150)
  %152 = call i32 @assertEqualIntA(%struct.archive* %148, i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %147, %142
  br label %34

154:                                              ; preds = %34
  %155 = call i32 @failure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %156 = load %struct.archive*, %struct.archive** %1, align 8
  %157 = load i32, i32* @ARCHIVE_EOF, align 4
  %158 = load %struct.archive*, %struct.archive** %1, align 8
  %159 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %160 = call i32 @archive_read_next_header2(%struct.archive* %158, %struct.archive_entry* %159)
  %161 = call i32 @assertEqualIntA(%struct.archive* %156, i32 %157, i32 %160)
  %162 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %163 = call i32 @assertFileAtimeRecent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %164 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %165 = call i32 @assertFileAtimeRecent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %166 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %167 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0)
  %168 = load i32, i32* @ARCHIVE_OK, align 4
  %169 = load %struct.archive*, %struct.archive** %1, align 8
  %170 = call i32 @archive_read_close(%struct.archive* %169)
  %171 = call i32 @assertEqualInt(i32 %168, i32 %170)
  %172 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0, i32 886600, i32 0)
  %173 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %174 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %175 = call i32 @assertUtimes(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0, i32 886622, i32 0)
  store i32 4, i32* %6, align 4
  %176 = load %struct.archive*, %struct.archive** %1, align 8
  %177 = load i32, i32* @ARCHIVE_OK, align 4
  %178 = load %struct.archive*, %struct.archive** %1, align 8
  %179 = call i32 @archive_read_disk_set_atime_restored(%struct.archive* %178)
  %180 = call i32 @assertEqualIntA(%struct.archive* %176, i32 %177, i32 %179)
  %181 = load %struct.archive*, %struct.archive** %1, align 8
  %182 = load i32, i32* @ARCHIVE_OK, align 4
  %183 = load %struct.archive*, %struct.archive** %1, align 8
  %184 = call i32 @archive_read_disk_open(%struct.archive* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %185 = call i32 @assertEqualIntA(%struct.archive* %181, i32 %182, i32 %184)
  %186 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %187

187:                                              ; preds = %306, %154
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %6, align 4
  %190 = icmp ne i32 %188, 0
  br i1 %190, label %191, label %307

191:                                              ; preds = %187
  %192 = load %struct.archive*, %struct.archive** %1, align 8
  %193 = load i32, i32* @ARCHIVE_OK, align 4
  %194 = load %struct.archive*, %struct.archive** %1, align 8
  %195 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %196 = call i32 @archive_read_next_header2(%struct.archive* %194, %struct.archive_entry* %195)
  %197 = call i32 @assertEqualIntA(%struct.archive* %192, i32 %193, i32 %196)
  %198 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %199 = call i32 @archive_entry_pathname(%struct.archive_entry* %198)
  %200 = call i64 @strcmp(i32 %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %191
  %203 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %204 = call i32 @archive_entry_filetype(%struct.archive_entry* %203)
  %205 = load i32, i32* @AE_IFDIR, align 4
  %206 = call i32 @assertEqualInt(i32 %204, i32 %205)
  br label %295

207:                                              ; preds = %191
  %208 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %209 = call i32 @archive_entry_pathname(%struct.archive_entry* %208)
  %210 = call i64 @strcmp(i32 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %243

212:                                              ; preds = %207
  %213 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %214 = call i32 @archive_entry_filetype(%struct.archive_entry* %213)
  %215 = load i32, i32* @AE_IFREG, align 4
  %216 = call i32 @assertEqualInt(i32 %214, i32 %215)
  %217 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %218 = call i32 @archive_entry_size(%struct.archive_entry* %217)
  %219 = call i32 @assertEqualInt(i32 %218, i32 10)
  %220 = load %struct.archive*, %struct.archive** %1, align 8
  %221 = load i32, i32* @ARCHIVE_OK, align 4
  %222 = load %struct.archive*, %struct.archive** %1, align 8
  %223 = call i32 @archive_read_data_block(%struct.archive* %222, i8** %3, i64* %4, i64* %5)
  %224 = call i32 @assertEqualIntA(%struct.archive* %220, i32 %221, i32 %223)
  %225 = load i64, i64* %4, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 @assertEqualInt(i32 %226, i32 10)
  %228 = load i64, i64* %5, align 8
  %229 = trunc i64 %228 to i32
  %230 = call i32 @assertEqualInt(i32 %229, i32 0)
  %231 = load i8*, i8** %3, align 8
  %232 = call i32 @assertEqualMem(i8* %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %233 = load i32, i32* @ARCHIVE_EOF, align 4
  %234 = load %struct.archive*, %struct.archive** %1, align 8
  %235 = call i32 @archive_read_data_block(%struct.archive* %234, i8** %3, i64* %4, i64* %5)
  %236 = call i32 @assertEqualInt(i32 %233, i32 %235)
  %237 = load i64, i64* %4, align 8
  %238 = trunc i64 %237 to i32
  %239 = call i32 @assertEqualInt(i32 %238, i32 0)
  %240 = load i64, i64* %5, align 8
  %241 = trunc i64 %240 to i32
  %242 = call i32 @assertEqualInt(i32 %241, i32 10)
  br label %294

243:                                              ; preds = %207
  %244 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %245 = call i32 @archive_entry_pathname(%struct.archive_entry* %244)
  %246 = call i64 @strcmp(i32 %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %279

248:                                              ; preds = %243
  %249 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %250 = call i32 @archive_entry_filetype(%struct.archive_entry* %249)
  %251 = load i32, i32* @AE_IFREG, align 4
  %252 = call i32 @assertEqualInt(i32 %250, i32 %251)
  %253 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %254 = call i32 @archive_entry_size(%struct.archive_entry* %253)
  %255 = call i32 @assertEqualInt(i32 %254, i32 11)
  %256 = load %struct.archive*, %struct.archive** %1, align 8
  %257 = load i32, i32* @ARCHIVE_OK, align 4
  %258 = load %struct.archive*, %struct.archive** %1, align 8
  %259 = call i32 @archive_read_data_block(%struct.archive* %258, i8** %3, i64* %4, i64* %5)
  %260 = call i32 @assertEqualIntA(%struct.archive* %256, i32 %257, i32 %259)
  %261 = load i64, i64* %4, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i32 @assertEqualInt(i32 %262, i32 11)
  %264 = load i64, i64* %5, align 8
  %265 = trunc i64 %264 to i32
  %266 = call i32 @assertEqualInt(i32 %265, i32 0)
  %267 = load i8*, i8** %3, align 8
  %268 = call i32 @assertEqualMem(i8* %267, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %269 = load i32, i32* @ARCHIVE_EOF, align 4
  %270 = load %struct.archive*, %struct.archive** %1, align 8
  %271 = call i32 @archive_read_data_block(%struct.archive* %270, i8** %3, i64* %4, i64* %5)
  %272 = call i32 @assertEqualInt(i32 %269, i32 %271)
  %273 = load i64, i64* %4, align 8
  %274 = trunc i64 %273 to i32
  %275 = call i32 @assertEqualInt(i32 %274, i32 0)
  %276 = load i64, i64* %5, align 8
  %277 = trunc i64 %276 to i32
  %278 = call i32 @assertEqualInt(i32 %277, i32 11)
  br label %293

279:                                              ; preds = %243
  %280 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %281 = call i32 @archive_entry_pathname(%struct.archive_entry* %280)
  %282 = call i64 @strcmp(i32 %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %279
  %285 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %286 = call i32 @archive_entry_filetype(%struct.archive_entry* %285)
  %287 = load i32, i32* @AE_IFREG, align 4
  %288 = call i32 @assertEqualInt(i32 %286, i32 %287)
  %289 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %290 = call i32 @archive_entry_size(%struct.archive_entry* %289)
  %291 = call i32 @assertEqualInt(i32 %290, i32 0)
  br label %292

292:                                              ; preds = %284, %279
  br label %293

293:                                              ; preds = %292, %248
  br label %294

294:                                              ; preds = %293, %212
  br label %295

295:                                              ; preds = %294, %202
  %296 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %297 = call i32 @archive_entry_filetype(%struct.archive_entry* %296)
  %298 = load i32, i32* @AE_IFDIR, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %306

300:                                              ; preds = %295
  %301 = load %struct.archive*, %struct.archive** %1, align 8
  %302 = load i32, i32* @ARCHIVE_OK, align 4
  %303 = load %struct.archive*, %struct.archive** %1, align 8
  %304 = call i32 @archive_read_disk_descend(%struct.archive* %303)
  %305 = call i32 @assertEqualIntA(%struct.archive* %301, i32 %302, i32 %304)
  br label %306

306:                                              ; preds = %300, %295
  br label %187

307:                                              ; preds = %187
  %308 = call i32 @failure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %309 = load %struct.archive*, %struct.archive** %1, align 8
  %310 = load i32, i32* @ARCHIVE_EOF, align 4
  %311 = load %struct.archive*, %struct.archive** %1, align 8
  %312 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %313 = call i32 @archive_read_next_header2(%struct.archive* %311, %struct.archive_entry* %312)
  %314 = call i32 @assertEqualIntA(%struct.archive* %309, i32 %310, i32 %313)
  %315 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %316 = call i32 @assertFileAtime(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0)
  %317 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %318 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0)
  %319 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %320 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0)
  %321 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %322 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0)
  %323 = load i32, i32* @ARCHIVE_OK, align 4
  %324 = load %struct.archive*, %struct.archive** %1, align 8
  %325 = call i32 @archive_read_close(%struct.archive* %324)
  %326 = call i32 @assertEqualInt(i32 %323, i32 %325)
  %327 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0, i32 886600, i32 0)
  %328 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %329 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %330 = call i32 @assertUtimes(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0, i32 886622, i32 0)
  store i32 4, i32* %6, align 4
  %331 = load %struct.archive*, %struct.archive** %1, align 8
  %332 = load i32, i32* @ARCHIVE_OK, align 4
  %333 = load %struct.archive*, %struct.archive** %1, align 8
  %334 = call i32 @archive_read_disk_set_atime_restored(%struct.archive* %333)
  %335 = call i32 @assertEqualIntA(%struct.archive* %331, i32 %332, i32 %334)
  %336 = load %struct.archive*, %struct.archive** %1, align 8
  %337 = load i32, i32* @ARCHIVE_OK, align 4
  %338 = load %struct.archive*, %struct.archive** %1, align 8
  %339 = call i32 @archive_read_disk_open(%struct.archive* %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %340 = call i32 @assertEqualIntA(%struct.archive* %336, i32 %337, i32 %339)
  %341 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %342

342:                                              ; preds = %415, %307
  %343 = load i32, i32* %6, align 4
  %344 = add nsw i32 %343, -1
  store i32 %344, i32* %6, align 4
  %345 = icmp ne i32 %343, 0
  br i1 %345, label %346, label %416

346:                                              ; preds = %342
  %347 = load %struct.archive*, %struct.archive** %1, align 8
  %348 = load i32, i32* @ARCHIVE_OK, align 4
  %349 = load %struct.archive*, %struct.archive** %1, align 8
  %350 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %351 = call i32 @archive_read_next_header2(%struct.archive* %349, %struct.archive_entry* %350)
  %352 = call i32 @assertEqualIntA(%struct.archive* %347, i32 %348, i32 %351)
  %353 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %354 = call i32 @archive_entry_pathname(%struct.archive_entry* %353)
  %355 = call i64 @strcmp(i32 %354, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %346
  %358 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %359 = call i32 @archive_entry_filetype(%struct.archive_entry* %358)
  %360 = load i32, i32* @AE_IFDIR, align 4
  %361 = call i32 @assertEqualInt(i32 %359, i32 %360)
  br label %404

362:                                              ; preds = %346
  %363 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %364 = call i32 @archive_entry_pathname(%struct.archive_entry* %363)
  %365 = call i64 @strcmp(i32 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %362
  %368 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %369 = call i32 @archive_entry_filetype(%struct.archive_entry* %368)
  %370 = load i32, i32* @AE_IFREG, align 4
  %371 = call i32 @assertEqualInt(i32 %369, i32 %370)
  %372 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %373 = call i32 @archive_entry_size(%struct.archive_entry* %372)
  %374 = call i32 @assertEqualInt(i32 %373, i32 10)
  br label %403

375:                                              ; preds = %362
  %376 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %377 = call i32 @archive_entry_pathname(%struct.archive_entry* %376)
  %378 = call i64 @strcmp(i32 %377, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %375
  %381 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %382 = call i32 @archive_entry_filetype(%struct.archive_entry* %381)
  %383 = load i32, i32* @AE_IFREG, align 4
  %384 = call i32 @assertEqualInt(i32 %382, i32 %383)
  %385 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %386 = call i32 @archive_entry_size(%struct.archive_entry* %385)
  %387 = call i32 @assertEqualInt(i32 %386, i32 11)
  br label %402

388:                                              ; preds = %375
  %389 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %390 = call i32 @archive_entry_pathname(%struct.archive_entry* %389)
  %391 = call i64 @strcmp(i32 %390, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %401

393:                                              ; preds = %388
  %394 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %395 = call i32 @archive_entry_filetype(%struct.archive_entry* %394)
  %396 = load i32, i32* @AE_IFREG, align 4
  %397 = call i32 @assertEqualInt(i32 %395, i32 %396)
  %398 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %399 = call i32 @archive_entry_size(%struct.archive_entry* %398)
  %400 = call i32 @assertEqualInt(i32 %399, i32 0)
  br label %401

401:                                              ; preds = %393, %388
  br label %402

402:                                              ; preds = %401, %380
  br label %403

403:                                              ; preds = %402, %367
  br label %404

404:                                              ; preds = %403, %357
  %405 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %406 = call i32 @archive_entry_filetype(%struct.archive_entry* %405)
  %407 = load i32, i32* @AE_IFDIR, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %415

409:                                              ; preds = %404
  %410 = load %struct.archive*, %struct.archive** %1, align 8
  %411 = load i32, i32* @ARCHIVE_OK, align 4
  %412 = load %struct.archive*, %struct.archive** %1, align 8
  %413 = call i32 @archive_read_disk_descend(%struct.archive* %412)
  %414 = call i32 @assertEqualIntA(%struct.archive* %410, i32 %411, i32 %413)
  br label %415

415:                                              ; preds = %409, %404
  br label %342

416:                                              ; preds = %342
  %417 = call i32 @failure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %418 = load %struct.archive*, %struct.archive** %1, align 8
  %419 = load i32, i32* @ARCHIVE_EOF, align 4
  %420 = load %struct.archive*, %struct.archive** %1, align 8
  %421 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %422 = call i32 @archive_read_next_header2(%struct.archive* %420, %struct.archive_entry* %421)
  %423 = call i32 @assertEqualIntA(%struct.archive* %418, i32 %419, i32 %422)
  %424 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %425 = call i32 @assertFileAtime(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0)
  %426 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %427 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0)
  %428 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %429 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0)
  %430 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %431 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0)
  %432 = call i32 (...) @canNodump()
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %442, label %434

434:                                              ; preds = %416
  %435 = load i32, i32* @ARCHIVE_OK, align 4
  %436 = load %struct.archive*, %struct.archive** %1, align 8
  %437 = call i32 @archive_read_free(%struct.archive* %436)
  %438 = call i32 @assertEqualInt(i32 %435, i32 %437)
  %439 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %440 = call i32 @archive_entry_free(%struct.archive_entry* %439)
  %441 = call i32 @skipping(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  br label %535

442:                                              ; preds = %416
  %443 = load i32, i32* @ARCHIVE_OK, align 4
  %444 = load %struct.archive*, %struct.archive** %1, align 8
  %445 = call i32 @archive_read_close(%struct.archive* %444)
  %446 = call i32 @assertEqualInt(i32 %443, i32 %445)
  %447 = call i32 @assertSetNodump(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %448 = call i32 @assertSetNodump(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %449 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0, i32 886600, i32 0)
  %450 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %451 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %452 = call i32 @assertUtimes(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0, i32 886622, i32 0)
  store i32 2, i32* %6, align 4
  %453 = load %struct.archive*, %struct.archive** %1, align 8
  %454 = load i32, i32* @ARCHIVE_OK, align 4
  %455 = load %struct.archive*, %struct.archive** %1, align 8
  %456 = load i32, i32* @ARCHIVE_READDISK_RESTORE_ATIME, align 4
  %457 = load i32, i32* @ARCHIVE_READDISK_HONOR_NODUMP, align 4
  %458 = or i32 %456, %457
  %459 = call i32 @archive_read_disk_set_behavior(%struct.archive* %455, i32 %458)
  %460 = call i32 @assertEqualIntA(%struct.archive* %453, i32 %454, i32 %459)
  %461 = load %struct.archive*, %struct.archive** %1, align 8
  %462 = load i32, i32* @ARCHIVE_OK, align 4
  %463 = load %struct.archive*, %struct.archive** %1, align 8
  %464 = call i32 @archive_read_disk_open(%struct.archive* %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %465 = call i32 @assertEqualIntA(%struct.archive* %461, i32 %462, i32 %464)
  %466 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %467

467:                                              ; preds = %512, %442
  %468 = load i32, i32* %6, align 4
  %469 = add nsw i32 %468, -1
  store i32 %469, i32* %6, align 4
  %470 = icmp ne i32 %468, 0
  br i1 %470, label %471, label %513

471:                                              ; preds = %467
  %472 = load %struct.archive*, %struct.archive** %1, align 8
  %473 = load i32, i32* @ARCHIVE_OK, align 4
  %474 = load %struct.archive*, %struct.archive** %1, align 8
  %475 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %476 = call i32 @archive_read_next_header2(%struct.archive* %474, %struct.archive_entry* %475)
  %477 = call i32 @assertEqualIntA(%struct.archive* %472, i32 %473, i32 %476)
  %478 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %479 = call i32 @archive_entry_pathname(%struct.archive_entry* %478)
  %480 = call i64 @strcmp(i32 %479, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %471
  %483 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %484 = call i32 @archive_entry_filetype(%struct.archive_entry* %483)
  %485 = load i32, i32* @AE_IFDIR, align 4
  %486 = call i32 @assertEqualInt(i32 %484, i32 %485)
  br label %501

487:                                              ; preds = %471
  %488 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %489 = call i32 @archive_entry_pathname(%struct.archive_entry* %488)
  %490 = call i64 @strcmp(i32 %489, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %492, label %500

492:                                              ; preds = %487
  %493 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %494 = call i32 @archive_entry_filetype(%struct.archive_entry* %493)
  %495 = load i32, i32* @AE_IFREG, align 4
  %496 = call i32 @assertEqualInt(i32 %494, i32 %495)
  %497 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %498 = call i32 @archive_entry_size(%struct.archive_entry* %497)
  %499 = call i32 @assertEqualInt(i32 %498, i32 0)
  br label %500

500:                                              ; preds = %492, %487
  br label %501

501:                                              ; preds = %500, %482
  %502 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %503 = call i32 @archive_entry_filetype(%struct.archive_entry* %502)
  %504 = load i32, i32* @AE_IFDIR, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %512

506:                                              ; preds = %501
  %507 = load %struct.archive*, %struct.archive** %1, align 8
  %508 = load i32, i32* @ARCHIVE_OK, align 4
  %509 = load %struct.archive*, %struct.archive** %1, align 8
  %510 = call i32 @archive_read_disk_descend(%struct.archive* %509)
  %511 = call i32 @assertEqualIntA(%struct.archive* %507, i32 %508, i32 %510)
  br label %512

512:                                              ; preds = %506, %501
  br label %467

513:                                              ; preds = %467
  %514 = call i32 @failure(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %515 = load %struct.archive*, %struct.archive** %1, align 8
  %516 = load i32, i32* @ARCHIVE_EOF, align 4
  %517 = load %struct.archive*, %struct.archive** %1, align 8
  %518 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %519 = call i32 @archive_read_next_header2(%struct.archive* %517, %struct.archive_entry* %518)
  %520 = call i32 @assertEqualIntA(%struct.archive* %515, i32 %516, i32 %519)
  %521 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %522 = call i32 @assertFileAtime(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0)
  %523 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %524 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0)
  %525 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %526 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0)
  %527 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %528 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0)
  %529 = load i32, i32* @ARCHIVE_OK, align 4
  %530 = load %struct.archive*, %struct.archive** %1, align 8
  %531 = call i32 @archive_read_free(%struct.archive* %530)
  %532 = call i32 @assertEqualInt(i32 %529, i32 %531)
  %533 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %534 = call i32 @archive_entry_free(%struct.archive_entry* %533)
  br label %535

535:                                              ; preds = %513, %434, %9
  ret void
}

declare dso_local i32 @atimeIsUpdated(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assertUtimes(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_disk_descend(%struct.archive*) #1

declare dso_local i32 @assertFileAtimeRecent(i8*) #1

declare dso_local i32 @assertFileAtime(i8*, i32, i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_set_atime_restored(%struct.archive*) #1

declare dso_local i32 @canNodump(...) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @assertSetNodump(i8*) #1

declare dso_local i32 @archive_read_disk_set_behavior(%struct.archive*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
