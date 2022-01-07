; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lock/dir1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lock/dir1/f1\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"lock/lock2\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"lock/lock2/dir1\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"lock/lock2/dir1/f1\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Directory traversals should work as well\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"./f1\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Did not match expected filenames\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"There should be no entry and no error\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"../..\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"lock/dir1/.\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"lock/dir1/./f1\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"lock2/dir1\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"lock2/dir1/f1\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parent() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @assertMakeDir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 201)
  %10 = call i32 @assertMakeDir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %11 = call i32 @assertMakeFile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @assertMakeDir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 201)
  %13 = call i32 @assertMakeDir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 493)
  %14 = call i32 @assertMakeFile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %15 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %15, %struct.archive_entry** %2, align 8
  %16 = icmp ne %struct.archive_entry* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call %struct.archive* (...) @archive_read_disk_new()
  store %struct.archive* %19, %struct.archive** %1, align 8
  %20 = icmp ne %struct.archive* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 @assertChdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %25 = load %struct.archive*, %struct.archive** %1, align 8
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  %27 = load %struct.archive*, %struct.archive** %1, align 8
  %28 = call i32 @archive_read_disk_open(%struct.archive* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %29 = call i32 @assertEqualIntA(%struct.archive* %25, i32 %26, i32 %28)
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %103, %0
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %104

34:                                               ; preds = %30
  %35 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %36 = call i32 @archive_entry_clear(%struct.archive_entry* %35)
  %37 = load %struct.archive*, %struct.archive** %1, align 8
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  %39 = load %struct.archive*, %struct.archive** %1, align 8
  %40 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %41 = call i32 @archive_read_next_header2(%struct.archive* %39, %struct.archive_entry* %40)
  %42 = call i32 @assertEqualIntA(%struct.archive* %37, i32 %38, i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %44 = call i32 @archive_entry_pathname(%struct.archive_entry* %43)
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %49 = call i32 @archive_entry_filetype(%struct.archive_entry* %48)
  %50 = load i32, i32* @AE_IFDIR, align 4
  %51 = call i32 @assertEqualInt(i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %93

54:                                               ; preds = %34
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = call i32 @archive_entry_pathname(%struct.archive_entry* %55)
  %57 = call i64 @strcmp(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %92

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
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %59, %54
  br label %93

93:                                               ; preds = %92, %47
  %94 = load %struct.archive*, %struct.archive** %1, align 8
  %95 = call i64 @archive_read_disk_can_descend(%struct.archive* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.archive*, %struct.archive** %1, align 8
  %99 = load i32, i32* @ARCHIVE_OK, align 4
  %100 = load %struct.archive*, %struct.archive** %1, align 8
  %101 = call i32 @archive_read_disk_descend(%struct.archive* %100)
  %102 = call i32 @assertEqualIntA(%struct.archive* %98, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %97, %93
  br label %30

104:                                              ; preds = %30
  %105 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @assertEqualInt(i32 %106, i32 2)
  %108 = call i32 @failure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %109 = load %struct.archive*, %struct.archive** %1, align 8
  %110 = load i32, i32* @ARCHIVE_EOF, align 4
  %111 = load %struct.archive*, %struct.archive** %1, align 8
  %112 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %113 = call i32 @archive_read_next_header2(%struct.archive* %111, %struct.archive_entry* %112)
  %114 = call i32 @assertEqualIntA(%struct.archive* %109, i32 %110, i32 %113)
  %115 = load i32, i32* @ARCHIVE_OK, align 4
  %116 = load %struct.archive*, %struct.archive** %1, align 8
  %117 = call i32 @archive_read_close(%struct.archive* %116)
  %118 = call i32 @assertEqualInt(i32 %115, i32 %117)
  %119 = call i32 @assertChdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %120 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %121 = load %struct.archive*, %struct.archive** %1, align 8
  %122 = load i32, i32* @ARCHIVE_OK, align 4
  %123 = load %struct.archive*, %struct.archive** %1, align 8
  %124 = call i32 @archive_read_disk_open(%struct.archive* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %125 = call i32 @assertEqualIntA(%struct.archive* %121, i32 %122, i32 %124)
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %199, %104
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %6, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %200

130:                                              ; preds = %126
  %131 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %132 = call i32 @archive_entry_clear(%struct.archive_entry* %131)
  %133 = load %struct.archive*, %struct.archive** %1, align 8
  %134 = load i32, i32* @ARCHIVE_OK, align 4
  %135 = load %struct.archive*, %struct.archive** %1, align 8
  %136 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %137 = call i32 @archive_read_next_header2(%struct.archive* %135, %struct.archive_entry* %136)
  %138 = call i32 @assertEqualIntA(%struct.archive* %133, i32 %134, i32 %137)
  %139 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %140 = call i32 @archive_entry_pathname(%struct.archive_entry* %139)
  %141 = call i64 @strcmp(i32 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %130
  %144 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %145 = call i32 @archive_entry_filetype(%struct.archive_entry* %144)
  %146 = load i32, i32* @AE_IFDIR, align 4
  %147 = call i32 @assertEqualInt(i32 %145, i32 %146)
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %189

150:                                              ; preds = %130
  %151 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %152 = call i32 @archive_entry_pathname(%struct.archive_entry* %151)
  %153 = call i64 @strcmp(i32 %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %188

155:                                              ; preds = %150
  %156 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %157 = call i32 @archive_entry_filetype(%struct.archive_entry* %156)
  %158 = load i32, i32* @AE_IFREG, align 4
  %159 = call i32 @assertEqualInt(i32 %157, i32 %158)
  %160 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %161 = call i32 @archive_entry_size(%struct.archive_entry* %160)
  %162 = call i32 @assertEqualInt(i32 %161, i32 10)
  %163 = load %struct.archive*, %struct.archive** %1, align 8
  %164 = load i32, i32* @ARCHIVE_OK, align 4
  %165 = load %struct.archive*, %struct.archive** %1, align 8
  %166 = call i32 @archive_read_data_block(%struct.archive* %165, i8** %3, i64* %4, i64* %5)
  %167 = call i32 @assertEqualIntA(%struct.archive* %163, i32 %164, i32 %166)
  %168 = load i64, i64* %4, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @assertEqualInt(i32 %169, i32 10)
  %171 = load i64, i64* %5, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 @assertEqualInt(i32 %172, i32 0)
  %174 = load i8*, i8** %3, align 8
  %175 = call i32 @assertEqualMem(i8* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %176 = load i32, i32* @ARCHIVE_EOF, align 4
  %177 = load %struct.archive*, %struct.archive** %1, align 8
  %178 = call i32 @archive_read_data_block(%struct.archive* %177, i8** %3, i64* %4, i64* %5)
  %179 = call i32 @assertEqualInt(i32 %176, i32 %178)
  %180 = load i64, i64* %4, align 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @assertEqualInt(i32 %181, i32 0)
  %183 = load i64, i64* %5, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @assertEqualInt(i32 %184, i32 10)
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %155, %150
  br label %189

189:                                              ; preds = %188, %143
  %190 = load %struct.archive*, %struct.archive** %1, align 8
  %191 = call i64 @archive_read_disk_can_descend(%struct.archive* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.archive*, %struct.archive** %1, align 8
  %195 = load i32, i32* @ARCHIVE_OK, align 4
  %196 = load %struct.archive*, %struct.archive** %1, align 8
  %197 = call i32 @archive_read_disk_descend(%struct.archive* %196)
  %198 = call i32 @assertEqualIntA(%struct.archive* %194, i32 %195, i32 %197)
  br label %199

199:                                              ; preds = %193, %189
  br label %126

200:                                              ; preds = %126
  %201 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @assertEqualInt(i32 %202, i32 2)
  %204 = call i32 @failure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %205 = load %struct.archive*, %struct.archive** %1, align 8
  %206 = load i32, i32* @ARCHIVE_EOF, align 4
  %207 = load %struct.archive*, %struct.archive** %1, align 8
  %208 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %209 = call i32 @archive_read_next_header2(%struct.archive* %207, %struct.archive_entry* %208)
  %210 = call i32 @assertEqualIntA(%struct.archive* %205, i32 %206, i32 %209)
  %211 = load i32, i32* @ARCHIVE_OK, align 4
  %212 = load %struct.archive*, %struct.archive** %1, align 8
  %213 = call i32 @archive_read_close(%struct.archive* %212)
  %214 = call i32 @assertEqualInt(i32 %211, i32 %213)
  %215 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %216 = load %struct.archive*, %struct.archive** %1, align 8
  %217 = load i32, i32* @ARCHIVE_OK, align 4
  %218 = load %struct.archive*, %struct.archive** %1, align 8
  %219 = call i32 @archive_read_disk_open(%struct.archive* %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %220 = call i32 @assertEqualIntA(%struct.archive* %216, i32 %217, i32 %219)
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %294, %200
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %6, align 4
  %224 = icmp ne i32 %222, 0
  br i1 %224, label %225, label %295

225:                                              ; preds = %221
  %226 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %227 = call i32 @archive_entry_clear(%struct.archive_entry* %226)
  %228 = load %struct.archive*, %struct.archive** %1, align 8
  %229 = load i32, i32* @ARCHIVE_OK, align 4
  %230 = load %struct.archive*, %struct.archive** %1, align 8
  %231 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %232 = call i32 @archive_read_next_header2(%struct.archive* %230, %struct.archive_entry* %231)
  %233 = call i32 @assertEqualIntA(%struct.archive* %228, i32 %229, i32 %232)
  %234 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %235 = call i32 @archive_entry_pathname(%struct.archive_entry* %234)
  %236 = call i64 @strcmp(i32 %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %225
  %239 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %240 = call i32 @archive_entry_filetype(%struct.archive_entry* %239)
  %241 = load i32, i32* @AE_IFDIR, align 4
  %242 = call i32 @assertEqualInt(i32 %240, i32 %241)
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %7, align 4
  br label %284

245:                                              ; preds = %225
  %246 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %247 = call i32 @archive_entry_pathname(%struct.archive_entry* %246)
  %248 = call i64 @strcmp(i32 %247, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %283

250:                                              ; preds = %245
  %251 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %252 = call i32 @archive_entry_filetype(%struct.archive_entry* %251)
  %253 = load i32, i32* @AE_IFREG, align 4
  %254 = call i32 @assertEqualInt(i32 %252, i32 %253)
  %255 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %256 = call i32 @archive_entry_size(%struct.archive_entry* %255)
  %257 = call i32 @assertEqualInt(i32 %256, i32 10)
  %258 = load %struct.archive*, %struct.archive** %1, align 8
  %259 = load i32, i32* @ARCHIVE_OK, align 4
  %260 = load %struct.archive*, %struct.archive** %1, align 8
  %261 = call i32 @archive_read_data_block(%struct.archive* %260, i8** %3, i64* %4, i64* %5)
  %262 = call i32 @assertEqualIntA(%struct.archive* %258, i32 %259, i32 %261)
  %263 = load i64, i64* %4, align 8
  %264 = trunc i64 %263 to i32
  %265 = call i32 @assertEqualInt(i32 %264, i32 10)
  %266 = load i64, i64* %5, align 8
  %267 = trunc i64 %266 to i32
  %268 = call i32 @assertEqualInt(i32 %267, i32 0)
  %269 = load i8*, i8** %3, align 8
  %270 = call i32 @assertEqualMem(i8* %269, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %271 = load i32, i32* @ARCHIVE_EOF, align 4
  %272 = load %struct.archive*, %struct.archive** %1, align 8
  %273 = call i32 @archive_read_data_block(%struct.archive* %272, i8** %3, i64* %4, i64* %5)
  %274 = call i32 @assertEqualInt(i32 %271, i32 %273)
  %275 = load i64, i64* %4, align 8
  %276 = trunc i64 %275 to i32
  %277 = call i32 @assertEqualInt(i32 %276, i32 0)
  %278 = load i64, i64* %5, align 8
  %279 = trunc i64 %278 to i32
  %280 = call i32 @assertEqualInt(i32 %279, i32 10)
  %281 = load i32, i32* %7, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %7, align 4
  br label %283

283:                                              ; preds = %250, %245
  br label %284

284:                                              ; preds = %283, %238
  %285 = load %struct.archive*, %struct.archive** %1, align 8
  %286 = call i64 @archive_read_disk_can_descend(%struct.archive* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = load %struct.archive*, %struct.archive** %1, align 8
  %290 = load i32, i32* @ARCHIVE_OK, align 4
  %291 = load %struct.archive*, %struct.archive** %1, align 8
  %292 = call i32 @archive_read_disk_descend(%struct.archive* %291)
  %293 = call i32 @assertEqualIntA(%struct.archive* %289, i32 %290, i32 %292)
  br label %294

294:                                              ; preds = %288, %284
  br label %221

295:                                              ; preds = %221
  %296 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @assertEqualInt(i32 %297, i32 2)
  %299 = call i32 @failure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %300 = load %struct.archive*, %struct.archive** %1, align 8
  %301 = load i32, i32* @ARCHIVE_EOF, align 4
  %302 = load %struct.archive*, %struct.archive** %1, align 8
  %303 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %304 = call i32 @archive_read_next_header2(%struct.archive* %302, %struct.archive_entry* %303)
  %305 = call i32 @assertEqualIntA(%struct.archive* %300, i32 %301, i32 %304)
  %306 = load i32, i32* @ARCHIVE_OK, align 4
  %307 = load %struct.archive*, %struct.archive** %1, align 8
  %308 = call i32 @archive_read_close(%struct.archive* %307)
  %309 = call i32 @assertEqualInt(i32 %306, i32 %308)
  %310 = call i32 @assertChdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %311 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %312 = load %struct.archive*, %struct.archive** %1, align 8
  %313 = load i32, i32* @ARCHIVE_OK, align 4
  %314 = load %struct.archive*, %struct.archive** %1, align 8
  %315 = call i32 @archive_read_disk_open(%struct.archive* %314, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %316 = call i32 @assertEqualIntA(%struct.archive* %312, i32 %313, i32 %315)
  %317 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %318 = call i32 @archive_entry_clear(%struct.archive_entry* %317)
  %319 = load %struct.archive*, %struct.archive** %1, align 8
  %320 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %321 = call i32 @archive_read_next_header2(%struct.archive* %319, %struct.archive_entry* %320)
  store i32 %321, i32* %8, align 4
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @ARCHIVE_FAILED, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %295
  %326 = load %struct.archive*, %struct.archive** %1, align 8
  %327 = call i32 @archive_read_close(%struct.archive* %326)
  br label %420

328:                                              ; preds = %295
  store i32 2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %329

329:                                              ; preds = %404, %328
  %330 = load i32, i32* %6, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %6, align 4
  %332 = icmp ne i32 %330, 0
  br i1 %332, label %333, label %405

333:                                              ; preds = %329
  %334 = load i32, i32* %6, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %333
  %337 = load %struct.archive*, %struct.archive** %1, align 8
  %338 = load i32, i32* @ARCHIVE_OK, align 4
  %339 = load %struct.archive*, %struct.archive** %1, align 8
  %340 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %341 = call i32 @archive_read_next_header2(%struct.archive* %339, %struct.archive_entry* %340)
  %342 = call i32 @assertEqualIntA(%struct.archive* %337, i32 %338, i32 %341)
  br label %343

343:                                              ; preds = %336, %333
  %344 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %345 = call i32 @archive_entry_pathname(%struct.archive_entry* %344)
  %346 = call i64 @strcmp(i32 %345, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %343
  %349 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %350 = call i32 @archive_entry_filetype(%struct.archive_entry* %349)
  %351 = load i32, i32* @AE_IFDIR, align 4
  %352 = call i32 @assertEqualInt(i32 %350, i32 %351)
  %353 = load i32, i32* %7, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %7, align 4
  br label %394

355:                                              ; preds = %343
  %356 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %357 = call i32 @archive_entry_pathname(%struct.archive_entry* %356)
  %358 = call i64 @strcmp(i32 %357, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %393

360:                                              ; preds = %355
  %361 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %362 = call i32 @archive_entry_filetype(%struct.archive_entry* %361)
  %363 = load i32, i32* @AE_IFREG, align 4
  %364 = call i32 @assertEqualInt(i32 %362, i32 %363)
  %365 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %366 = call i32 @archive_entry_size(%struct.archive_entry* %365)
  %367 = call i32 @assertEqualInt(i32 %366, i32 10)
  %368 = load %struct.archive*, %struct.archive** %1, align 8
  %369 = load i32, i32* @ARCHIVE_OK, align 4
  %370 = load %struct.archive*, %struct.archive** %1, align 8
  %371 = call i32 @archive_read_data_block(%struct.archive* %370, i8** %3, i64* %4, i64* %5)
  %372 = call i32 @assertEqualIntA(%struct.archive* %368, i32 %369, i32 %371)
  %373 = load i64, i64* %4, align 8
  %374 = trunc i64 %373 to i32
  %375 = call i32 @assertEqualInt(i32 %374, i32 10)
  %376 = load i64, i64* %5, align 8
  %377 = trunc i64 %376 to i32
  %378 = call i32 @assertEqualInt(i32 %377, i32 0)
  %379 = load i8*, i8** %3, align 8
  %380 = call i32 @assertEqualMem(i8* %379, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %381 = load i32, i32* @ARCHIVE_EOF, align 4
  %382 = load %struct.archive*, %struct.archive** %1, align 8
  %383 = call i32 @archive_read_data_block(%struct.archive* %382, i8** %3, i64* %4, i64* %5)
  %384 = call i32 @assertEqualInt(i32 %381, i32 %383)
  %385 = load i64, i64* %4, align 8
  %386 = trunc i64 %385 to i32
  %387 = call i32 @assertEqualInt(i32 %386, i32 0)
  %388 = load i64, i64* %5, align 8
  %389 = trunc i64 %388 to i32
  %390 = call i32 @assertEqualInt(i32 %389, i32 10)
  %391 = load i32, i32* %7, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %7, align 4
  br label %393

393:                                              ; preds = %360, %355
  br label %394

394:                                              ; preds = %393, %348
  %395 = load %struct.archive*, %struct.archive** %1, align 8
  %396 = call i64 @archive_read_disk_can_descend(%struct.archive* %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %394
  %399 = load %struct.archive*, %struct.archive** %1, align 8
  %400 = load i32, i32* @ARCHIVE_OK, align 4
  %401 = load %struct.archive*, %struct.archive** %1, align 8
  %402 = call i32 @archive_read_disk_descend(%struct.archive* %401)
  %403 = call i32 @assertEqualIntA(%struct.archive* %399, i32 %400, i32 %402)
  br label %404

404:                                              ; preds = %398, %394
  br label %329

405:                                              ; preds = %329
  %406 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %407 = load i32, i32* %7, align 4
  %408 = call i32 @assertEqualInt(i32 %407, i32 2)
  %409 = call i32 @failure(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %410 = load %struct.archive*, %struct.archive** %1, align 8
  %411 = load i32, i32* @ARCHIVE_EOF, align 4
  %412 = load %struct.archive*, %struct.archive** %1, align 8
  %413 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %414 = call i32 @archive_read_next_header2(%struct.archive* %412, %struct.archive_entry* %413)
  %415 = call i32 @assertEqualIntA(%struct.archive* %410, i32 %411, i32 %414)
  %416 = load i32, i32* @ARCHIVE_OK, align 4
  %417 = load %struct.archive*, %struct.archive** %1, align 8
  %418 = call i32 @archive_read_close(%struct.archive* %417)
  %419 = call i32 @assertEqualInt(i32 %416, i32 %418)
  br label %420

420:                                              ; preds = %405, %325
  %421 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %422 = load i32, i32* @ARCHIVE_OK, align 4
  %423 = load %struct.archive*, %struct.archive** %1, align 8
  %424 = call i32 @archive_read_free(%struct.archive* %423)
  %425 = call i32 @assertEqualInt(i32 %422, i32 %424)
  %426 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %427 = call i32 @archive_entry_free(%struct.archive_entry* %426)
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @assertChdir(i8*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

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

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
