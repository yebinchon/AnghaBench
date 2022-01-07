; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_nodump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_nodump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Can't test nodump on this filesystem\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"nd\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nd/f1\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nd/f2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nd/fe\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Directory traversals should work as well\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"There should be no entry\00", align 1
@ARCHIVE_READDISK_RESTORE_ATIME = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_HONOR_NODUMP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"File 'nd/f2' should be exclueded\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Atime should be restored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nodump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nodump() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @canNodump()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @skipping(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %293

11:                                               ; preds = %0
  %12 = call i32 @assertMakeDir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %13 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %15 = call i32 @assertMakeFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 420, i8* null)
  %16 = call i32 @assertSetNodump(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0, i32 886600, i32 0)
  %18 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %19 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %20 = call i32 @assertUtimes(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0, i32 886622, i32 0)
  %21 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %21, %struct.archive_entry** %2, align 8
  %22 = icmp ne %struct.archive_entry* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call %struct.archive* (...) @archive_read_disk_new()
  store %struct.archive* %25, %struct.archive** %1, align 8
  %26 = icmp ne %struct.archive* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %30 = load %struct.archive*, %struct.archive** %1, align 8
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %1, align 8
  %33 = call i32 @archive_read_disk_open(%struct.archive* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @assertEqualIntA(%struct.archive* %30, i32 %31, i32 %33)
  store i32 4, i32* %6, align 4
  br label %35

35:                                               ; preds = %155, %11
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %156

39:                                               ; preds = %35
  %40 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %41 = call i32 @archive_entry_clear(%struct.archive_entry* %40)
  %42 = load %struct.archive*, %struct.archive** %1, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = load %struct.archive*, %struct.archive** %1, align 8
  %45 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %46 = call i32 @archive_read_next_header2(%struct.archive* %44, %struct.archive_entry* %45)
  %47 = call i32 @assertEqualIntA(%struct.archive* %42, i32 %43, i32 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %49 = call i32 @archive_entry_pathname(%struct.archive_entry* %48)
  %50 = call i64 @strcmp(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %54 = call i32 @archive_entry_filetype(%struct.archive_entry* %53)
  %55 = load i32, i32* @AE_IFDIR, align 4
  %56 = call i32 @assertEqualInt(i32 %54, i32 %55)
  br label %145

57:                                               ; preds = %39
  %58 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %59 = call i32 @archive_entry_pathname(%struct.archive_entry* %58)
  %60 = call i64 @strcmp(i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %57
  %63 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %64 = call i32 @archive_entry_filetype(%struct.archive_entry* %63)
  %65 = load i32, i32* @AE_IFREG, align 4
  %66 = call i32 @assertEqualInt(i32 %64, i32 %65)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %68 = call i32 @archive_entry_size(%struct.archive_entry* %67)
  %69 = call i32 @assertEqualInt(i32 %68, i32 10)
  %70 = load %struct.archive*, %struct.archive** %1, align 8
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  %72 = load %struct.archive*, %struct.archive** %1, align 8
  %73 = call i32 @archive_read_data_block(%struct.archive* %72, i8** %3, i64* %4, i64* %5)
  %74 = call i32 @assertEqualIntA(%struct.archive* %70, i32 %71, i32 %73)
  %75 = load i64, i64* %4, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @assertEqualInt(i32 %76, i32 10)
  %78 = load i64, i64* %5, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @assertEqualInt(i32 %79, i32 0)
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @assertEqualMem(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %83 = load i32, i32* @ARCHIVE_EOF, align 4
  %84 = load %struct.archive*, %struct.archive** %1, align 8
  %85 = call i32 @archive_read_data_block(%struct.archive* %84, i8** %3, i64* %4, i64* %5)
  %86 = call i32 @assertEqualInt(i32 %83, i32 %85)
  %87 = load i64, i64* %4, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @assertEqualInt(i32 %88, i32 0)
  %90 = load i64, i64* %5, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @assertEqualInt(i32 %91, i32 10)
  br label %144

93:                                               ; preds = %57
  %94 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %95 = call i32 @archive_entry_pathname(%struct.archive_entry* %94)
  %96 = call i64 @strcmp(i32 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %129

98:                                               ; preds = %93
  %99 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %100 = call i32 @archive_entry_filetype(%struct.archive_entry* %99)
  %101 = load i32, i32* @AE_IFREG, align 4
  %102 = call i32 @assertEqualInt(i32 %100, i32 %101)
  %103 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %104 = call i32 @archive_entry_size(%struct.archive_entry* %103)
  %105 = call i32 @assertEqualInt(i32 %104, i32 11)
  %106 = load %struct.archive*, %struct.archive** %1, align 8
  %107 = load i32, i32* @ARCHIVE_OK, align 4
  %108 = load %struct.archive*, %struct.archive** %1, align 8
  %109 = call i32 @archive_read_data_block(%struct.archive* %108, i8** %3, i64* %4, i64* %5)
  %110 = call i32 @assertEqualIntA(%struct.archive* %106, i32 %107, i32 %109)
  %111 = load i64, i64* %4, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @assertEqualInt(i32 %112, i32 11)
  %114 = load i64, i64* %5, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @assertEqualInt(i32 %115, i32 0)
  %117 = load i8*, i8** %3, align 8
  %118 = call i32 @assertEqualMem(i8* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %119 = load i32, i32* @ARCHIVE_EOF, align 4
  %120 = load %struct.archive*, %struct.archive** %1, align 8
  %121 = call i32 @archive_read_data_block(%struct.archive* %120, i8** %3, i64* %4, i64* %5)
  %122 = call i32 @assertEqualInt(i32 %119, i32 %121)
  %123 = load i64, i64* %4, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @assertEqualInt(i32 %124, i32 0)
  %126 = load i64, i64* %5, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @assertEqualInt(i32 %127, i32 11)
  br label %143

129:                                              ; preds = %93
  %130 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %131 = call i32 @archive_entry_pathname(%struct.archive_entry* %130)
  %132 = call i64 @strcmp(i32 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %136 = call i32 @archive_entry_filetype(%struct.archive_entry* %135)
  %137 = load i32, i32* @AE_IFREG, align 4
  %138 = call i32 @assertEqualInt(i32 %136, i32 %137)
  %139 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %140 = call i32 @archive_entry_size(%struct.archive_entry* %139)
  %141 = call i32 @assertEqualInt(i32 %140, i32 0)
  br label %142

142:                                              ; preds = %134, %129
  br label %143

143:                                              ; preds = %142, %98
  br label %144

144:                                              ; preds = %143, %62
  br label %145

145:                                              ; preds = %144, %52
  %146 = load %struct.archive*, %struct.archive** %1, align 8
  %147 = call i64 @archive_read_disk_can_descend(%struct.archive* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load %struct.archive*, %struct.archive** %1, align 8
  %151 = load i32, i32* @ARCHIVE_OK, align 4
  %152 = load %struct.archive*, %struct.archive** %1, align 8
  %153 = call i32 @archive_read_disk_descend(%struct.archive* %152)
  %154 = call i32 @assertEqualIntA(%struct.archive* %150, i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %149, %145
  br label %35

156:                                              ; preds = %35
  %157 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %158 = load %struct.archive*, %struct.archive** %1, align 8
  %159 = load i32, i32* @ARCHIVE_EOF, align 4
  %160 = load %struct.archive*, %struct.archive** %1, align 8
  %161 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %162 = call i32 @archive_read_next_header2(%struct.archive* %160, %struct.archive_entry* %161)
  %163 = call i32 @assertEqualIntA(%struct.archive* %158, i32 %159, i32 %162)
  %164 = load i32, i32* @ARCHIVE_OK, align 4
  %165 = load %struct.archive*, %struct.archive** %1, align 8
  %166 = call i32 @archive_read_close(%struct.archive* %165)
  %167 = call i32 @assertEqualInt(i32 %164, i32 %166)
  %168 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 886600, i32 0, i32 886600, i32 0)
  %169 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %170 = call i32 @assertUtimes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 886611, i32 0, i32 886611, i32 0)
  %171 = call i32 @assertUtimes(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 886622, i32 0, i32 886622, i32 0)
  %172 = load %struct.archive*, %struct.archive** %1, align 8
  %173 = load i32, i32* @ARCHIVE_OK, align 4
  %174 = load %struct.archive*, %struct.archive** %1, align 8
  %175 = load i32, i32* @ARCHIVE_READDISK_RESTORE_ATIME, align 4
  %176 = load i32, i32* @ARCHIVE_READDISK_HONOR_NODUMP, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @archive_read_disk_set_behavior(%struct.archive* %174, i32 %177)
  %179 = call i32 @assertEqualIntA(%struct.archive* %172, i32 %173, i32 %178)
  %180 = call i32 @failure(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %181 = load %struct.archive*, %struct.archive** %1, align 8
  %182 = load i32, i32* @ARCHIVE_OK, align 4
  %183 = load %struct.archive*, %struct.archive** %1, align 8
  %184 = call i32 @archive_read_disk_open(%struct.archive* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %185 = call i32 @assertEqualIntA(%struct.archive* %181, i32 %182, i32 %184)
  store i32 3, i32* %6, align 4
  br label %186

186:                                              ; preds = %276, %156
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %6, align 4
  %189 = icmp ne i32 %187, 0
  br i1 %189, label %190, label %277

190:                                              ; preds = %186
  %191 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %192 = call i32 @archive_entry_clear(%struct.archive_entry* %191)
  %193 = load %struct.archive*, %struct.archive** %1, align 8
  %194 = load i32, i32* @ARCHIVE_OK, align 4
  %195 = load %struct.archive*, %struct.archive** %1, align 8
  %196 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %197 = call i32 @archive_read_next_header2(%struct.archive* %195, %struct.archive_entry* %196)
  %198 = call i32 @assertEqualIntA(%struct.archive* %193, i32 %194, i32 %197)
  %199 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %200 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %201 = call i32 @archive_entry_pathname(%struct.archive_entry* %200)
  %202 = call i64 @strcmp(i32 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %207 = call i32 @archive_entry_pathname(%struct.archive_entry* %206)
  %208 = call i64 @strcmp(i32 %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %190
  %211 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %212 = call i32 @archive_entry_filetype(%struct.archive_entry* %211)
  %213 = load i32, i32* @AE_IFDIR, align 4
  %214 = call i32 @assertEqualInt(i32 %212, i32 %213)
  br label %266

215:                                              ; preds = %190
  %216 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %217 = call i32 @archive_entry_pathname(%struct.archive_entry* %216)
  %218 = call i64 @strcmp(i32 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %251

220:                                              ; preds = %215
  %221 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %222 = call i32 @archive_entry_filetype(%struct.archive_entry* %221)
  %223 = load i32, i32* @AE_IFREG, align 4
  %224 = call i32 @assertEqualInt(i32 %222, i32 %223)
  %225 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %226 = call i32 @archive_entry_size(%struct.archive_entry* %225)
  %227 = call i32 @assertEqualInt(i32 %226, i32 10)
  %228 = load %struct.archive*, %struct.archive** %1, align 8
  %229 = load i32, i32* @ARCHIVE_OK, align 4
  %230 = load %struct.archive*, %struct.archive** %1, align 8
  %231 = call i32 @archive_read_data_block(%struct.archive* %230, i8** %3, i64* %4, i64* %5)
  %232 = call i32 @assertEqualIntA(%struct.archive* %228, i32 %229, i32 %231)
  %233 = load i64, i64* %4, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @assertEqualInt(i32 %234, i32 10)
  %236 = load i64, i64* %5, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @assertEqualInt(i32 %237, i32 0)
  %239 = load i8*, i8** %3, align 8
  %240 = call i32 @assertEqualMem(i8* %239, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %241 = load i32, i32* @ARCHIVE_EOF, align 4
  %242 = load %struct.archive*, %struct.archive** %1, align 8
  %243 = call i32 @archive_read_data_block(%struct.archive* %242, i8** %3, i64* %4, i64* %5)
  %244 = call i32 @assertEqualInt(i32 %241, i32 %243)
  %245 = load i64, i64* %4, align 8
  %246 = trunc i64 %245 to i32
  %247 = call i32 @assertEqualInt(i32 %246, i32 0)
  %248 = load i64, i64* %5, align 8
  %249 = trunc i64 %248 to i32
  %250 = call i32 @assertEqualInt(i32 %249, i32 10)
  br label %265

251:                                              ; preds = %215
  %252 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %253 = call i32 @archive_entry_pathname(%struct.archive_entry* %252)
  %254 = call i64 @strcmp(i32 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %251
  %257 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %258 = call i32 @archive_entry_filetype(%struct.archive_entry* %257)
  %259 = load i32, i32* @AE_IFREG, align 4
  %260 = call i32 @assertEqualInt(i32 %258, i32 %259)
  %261 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %262 = call i32 @archive_entry_size(%struct.archive_entry* %261)
  %263 = call i32 @assertEqualInt(i32 %262, i32 0)
  br label %264

264:                                              ; preds = %256, %251
  br label %265

265:                                              ; preds = %264, %220
  br label %266

266:                                              ; preds = %265, %210
  %267 = load %struct.archive*, %struct.archive** %1, align 8
  %268 = call i64 @archive_read_disk_can_descend(%struct.archive* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %266
  %271 = load %struct.archive*, %struct.archive** %1, align 8
  %272 = load i32, i32* @ARCHIVE_OK, align 4
  %273 = load %struct.archive*, %struct.archive** %1, align 8
  %274 = call i32 @archive_read_disk_descend(%struct.archive* %273)
  %275 = call i32 @assertEqualIntA(%struct.archive* %271, i32 %272, i32 %274)
  br label %276

276:                                              ; preds = %270, %266
  br label %186

277:                                              ; preds = %186
  %278 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %279 = load %struct.archive*, %struct.archive** %1, align 8
  %280 = load i32, i32* @ARCHIVE_EOF, align 4
  %281 = load %struct.archive*, %struct.archive** %1, align 8
  %282 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %283 = call i32 @archive_read_next_header2(%struct.archive* %281, %struct.archive_entry* %282)
  %284 = call i32 @assertEqualIntA(%struct.archive* %279, i32 %280, i32 %283)
  %285 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %286 = call i32 @assertFileAtime(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 886611, i32 0)
  %287 = load i32, i32* @ARCHIVE_OK, align 4
  %288 = load %struct.archive*, %struct.archive** %1, align 8
  %289 = call i32 @archive_read_free(%struct.archive* %288)
  %290 = call i32 @assertEqualInt(i32 %287, i32 %289)
  %291 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %292 = call i32 @archive_entry_free(%struct.archive_entry* %291)
  br label %293

293:                                              ; preds = %277, %9
  ret void
}

declare dso_local i32 @canNodump(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assertSetNodump(i8*) #1

declare dso_local i32 @assertUtimes(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

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

declare dso_local i32 @archive_read_disk_set_behavior(%struct.archive*, i32) #1

declare dso_local i32 @assertFileAtime(i8*, i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
