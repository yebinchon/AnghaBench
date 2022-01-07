; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_symlink_logical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_symlink_logical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Can't test symlinks on this filesystem\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ld1\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"d1/file1\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"d1/file2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"d1/link1\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"d1/linkX\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fileX\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"link2\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"linkY\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"d1/fileY\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"l/ld1\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"l/ld1/file1\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"l/ld1/file2\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"l/ld1/link1\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"l/ld1/linkX\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"l/d1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"l/d1/file1\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"l/d1/file2\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"l/d1/link1\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"l/d1/linkX\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"l/link2\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"l/linkY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_symlink_logical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_symlink_logical() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @canSymlink()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @skipping(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %568

11:                                               ; preds = %0
  %12 = call i32 @assertMakeDir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %13 = call i32 @assertChdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @assertMakeDir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 493)
  %15 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %16 = call i32 @assertMakeFile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @assertMakeFile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %19 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %20 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %21 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %22 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %23 = call %struct.archive* (...) @archive_read_disk_new()
  store %struct.archive* %23, %struct.archive** %1, align 8
  %24 = icmp ne %struct.archive* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.archive*, %struct.archive** %1, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive*, %struct.archive** %1, align 8
  %30 = call i32 @archive_read_disk_set_symlink_logical(%struct.archive* %29)
  %31 = call i32 @assertEqualIntA(%struct.archive* %27, i32 %28, i32 %30)
  %32 = load %struct.archive*, %struct.archive** %1, align 8
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = load %struct.archive*, %struct.archive** %1, align 8
  %35 = call i32 @archive_read_disk_open(%struct.archive* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %36 = call i32 @assertEqualIntA(%struct.archive* %32, i32 %33, i32 %35)
  store i32 5, i32* %6, align 4
  br label %37

37:                                               ; preds = %193, %11
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %194

41:                                               ; preds = %37
  %42 = load %struct.archive*, %struct.archive** %1, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = load %struct.archive*, %struct.archive** %1, align 8
  %45 = call i32 @archive_read_next_header(%struct.archive* %44, %struct.archive_entry** %2)
  %46 = call i32 @assertEqualIntA(%struct.archive* %42, i32 %43, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %48 = call i32 @archive_entry_pathname(%struct.archive_entry* %47)
  %49 = call i64 @strcmp(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %53 = call i32 @archive_entry_filetype(%struct.archive_entry* %52)
  %54 = load i32, i32* @AE_IFDIR, align 4
  %55 = call i32 @assertEqualInt(i32 %53, i32 %54)
  br label %182

56:                                               ; preds = %41
  %57 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %58 = call i32 @archive_entry_pathname(%struct.archive_entry* %57)
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  %62 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %63 = call i32 @archive_entry_filetype(%struct.archive_entry* %62)
  %64 = load i32, i32* @AE_IFREG, align 4
  %65 = call i32 @assertEqualInt(i32 %63, i32 %64)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %67 = call i32 @archive_entry_size(%struct.archive_entry* %66)
  %68 = call i32 @assertEqualInt(i32 %67, i32 8)
  %69 = load %struct.archive*, %struct.archive** %1, align 8
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  %71 = load %struct.archive*, %struct.archive** %1, align 8
  %72 = call i32 @archive_read_data_block(%struct.archive* %71, i8** %3, i64* %4, i64* %5)
  %73 = call i32 @assertEqualIntA(%struct.archive* %69, i32 %70, i32 %72)
  %74 = load i64, i64* %4, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @assertEqualInt(i32 %75, i32 8)
  %77 = load i64, i64* %5, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @assertEqualInt(i32 %78, i32 0)
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @assertEqualMem(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %82 = load i32, i32* @ARCHIVE_EOF, align 4
  %83 = load %struct.archive*, %struct.archive** %1, align 8
  %84 = call i32 @archive_read_data_block(%struct.archive* %83, i8** %3, i64* %4, i64* %5)
  %85 = call i32 @assertEqualInt(i32 %82, i32 %84)
  %86 = load i64, i64* %4, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @assertEqualInt(i32 %87, i32 0)
  %89 = load i64, i64* %5, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @assertEqualInt(i32 %90, i32 8)
  br label %181

92:                                               ; preds = %56
  %93 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %94 = call i32 @archive_entry_pathname(%struct.archive_entry* %93)
  %95 = call i64 @strcmp(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %92
  %98 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %99 = call i32 @archive_entry_filetype(%struct.archive_entry* %98)
  %100 = load i32, i32* @AE_IFREG, align 4
  %101 = call i32 @assertEqualInt(i32 %99, i32 %100)
  %102 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %103 = call i32 @archive_entry_size(%struct.archive_entry* %102)
  %104 = call i32 @assertEqualInt(i32 %103, i32 8)
  %105 = load %struct.archive*, %struct.archive** %1, align 8
  %106 = load i32, i32* @ARCHIVE_OK, align 4
  %107 = load %struct.archive*, %struct.archive** %1, align 8
  %108 = call i32 @archive_read_data_block(%struct.archive* %107, i8** %3, i64* %4, i64* %5)
  %109 = call i32 @assertEqualIntA(%struct.archive* %105, i32 %106, i32 %108)
  %110 = load i64, i64* %4, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @assertEqualInt(i32 %111, i32 8)
  %113 = load i64, i64* %5, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @assertEqualInt(i32 %114, i32 0)
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 @assertEqualMem(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %118 = load i32, i32* @ARCHIVE_EOF, align 4
  %119 = load %struct.archive*, %struct.archive** %1, align 8
  %120 = call i32 @archive_read_data_block(%struct.archive* %119, i8** %3, i64* %4, i64* %5)
  %121 = call i32 @assertEqualInt(i32 %118, i32 %120)
  %122 = load i64, i64* %4, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @assertEqualInt(i32 %123, i32 0)
  %125 = load i64, i64* %5, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @assertEqualInt(i32 %126, i32 8)
  br label %180

128:                                              ; preds = %92
  %129 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %130 = call i32 @archive_entry_pathname(%struct.archive_entry* %129)
  %131 = call i64 @strcmp(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %168

133:                                              ; preds = %128
  %134 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %135 = call i32 @archive_entry_filetype(%struct.archive_entry* %134)
  %136 = load i32, i32* @AE_IFREG, align 4
  %137 = call i32 @assertEqualInt(i32 %135, i32 %136)
  %138 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %139 = call i32 @archive_entry_filetype(%struct.archive_entry* %138)
  %140 = load i32, i32* @AE_IFREG, align 4
  %141 = call i32 @assertEqualInt(i32 %139, i32 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %143 = call i32 @archive_entry_size(%struct.archive_entry* %142)
  %144 = call i32 @assertEqualInt(i32 %143, i32 8)
  %145 = load %struct.archive*, %struct.archive** %1, align 8
  %146 = load i32, i32* @ARCHIVE_OK, align 4
  %147 = load %struct.archive*, %struct.archive** %1, align 8
  %148 = call i32 @archive_read_data_block(%struct.archive* %147, i8** %3, i64* %4, i64* %5)
  %149 = call i32 @assertEqualIntA(%struct.archive* %145, i32 %146, i32 %148)
  %150 = load i64, i64* %4, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @assertEqualInt(i32 %151, i32 8)
  %153 = load i64, i64* %5, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @assertEqualInt(i32 %154, i32 0)
  %156 = load i8*, i8** %3, align 8
  %157 = call i32 @assertEqualMem(i8* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %158 = load i32, i32* @ARCHIVE_EOF, align 4
  %159 = load %struct.archive*, %struct.archive** %1, align 8
  %160 = call i32 @archive_read_data_block(%struct.archive* %159, i8** %3, i64* %4, i64* %5)
  %161 = call i32 @assertEqualInt(i32 %158, i32 %160)
  %162 = load i64, i64* %4, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @assertEqualInt(i32 %163, i32 0)
  %165 = load i64, i64* %5, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @assertEqualInt(i32 %166, i32 8)
  br label %179

168:                                              ; preds = %128
  %169 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %170 = call i32 @archive_entry_pathname(%struct.archive_entry* %169)
  %171 = call i64 @strcmp(i32 %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %175 = call i32 @archive_entry_filetype(%struct.archive_entry* %174)
  %176 = load i32, i32* @AE_IFLNK, align 4
  %177 = call i32 @assertEqualInt(i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %168
  br label %179

179:                                              ; preds = %178, %133
  br label %180

180:                                              ; preds = %179, %97
  br label %181

181:                                              ; preds = %180, %61
  br label %182

182:                                              ; preds = %181, %51
  %183 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %184 = call i32 @archive_entry_filetype(%struct.archive_entry* %183)
  %185 = load i32, i32* @AE_IFDIR, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.archive*, %struct.archive** %1, align 8
  %189 = load i32, i32* @ARCHIVE_OK, align 4
  %190 = load %struct.archive*, %struct.archive** %1, align 8
  %191 = call i32 @archive_read_disk_descend(%struct.archive* %190)
  %192 = call i32 @assertEqualIntA(%struct.archive* %188, i32 %189, i32 %191)
  br label %193

193:                                              ; preds = %187, %182
  br label %37

194:                                              ; preds = %37
  %195 = load %struct.archive*, %struct.archive** %1, align 8
  %196 = load i32, i32* @ARCHIVE_EOF, align 4
  %197 = load %struct.archive*, %struct.archive** %1, align 8
  %198 = call i32 @archive_read_next_header(%struct.archive* %197, %struct.archive_entry** %2)
  %199 = call i32 @assertEqualIntA(%struct.archive* %195, i32 %196, i32 %198)
  %200 = load i32, i32* @ARCHIVE_OK, align 4
  %201 = load %struct.archive*, %struct.archive** %1, align 8
  %202 = call i32 @archive_read_close(%struct.archive* %201)
  %203 = call i32 @assertEqualInt(i32 %200, i32 %202)
  %204 = load %struct.archive*, %struct.archive** %1, align 8
  %205 = load i32, i32* @ARCHIVE_OK, align 4
  %206 = load %struct.archive*, %struct.archive** %1, align 8
  %207 = call i32 @archive_read_disk_open(%struct.archive* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %208 = call i32 @assertEqualIntA(%struct.archive* %204, i32 %205, i32 %207)
  store i32 13, i32* %6, align 4
  br label %209

209:                                              ; preds = %553, %194
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %6, align 4
  %212 = icmp ne i32 %210, 0
  br i1 %212, label %213, label %554

213:                                              ; preds = %209
  %214 = load %struct.archive*, %struct.archive** %1, align 8
  %215 = load i32, i32* @ARCHIVE_OK, align 4
  %216 = load %struct.archive*, %struct.archive** %1, align 8
  %217 = call i32 @archive_read_next_header(%struct.archive* %216, %struct.archive_entry** %2)
  %218 = call i32 @assertEqualIntA(%struct.archive* %214, i32 %215, i32 %217)
  %219 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %220 = call i32 @archive_entry_pathname(%struct.archive_entry* %219)
  %221 = call i64 @strcmp(i32 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %213
  %224 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %225 = call i32 @archive_entry_filetype(%struct.archive_entry* %224)
  %226 = load i32, i32* @AE_IFDIR, align 4
  %227 = call i32 @assertEqualInt(i32 %225, i32 %226)
  br label %542

228:                                              ; preds = %213
  %229 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %230 = call i32 @archive_entry_pathname(%struct.archive_entry* %229)
  %231 = call i64 @strcmp(i32 %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %235 = call i32 @archive_entry_filetype(%struct.archive_entry* %234)
  %236 = load i32, i32* @AE_IFDIR, align 4
  %237 = call i32 @assertEqualInt(i32 %235, i32 %236)
  br label %541

238:                                              ; preds = %228
  %239 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %240 = call i32 @archive_entry_pathname(%struct.archive_entry* %239)
  %241 = call i64 @strcmp(i32 %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %274

243:                                              ; preds = %238
  %244 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %245 = call i32 @archive_entry_filetype(%struct.archive_entry* %244)
  %246 = load i32, i32* @AE_IFREG, align 4
  %247 = call i32 @assertEqualInt(i32 %245, i32 %246)
  %248 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %249 = call i32 @archive_entry_size(%struct.archive_entry* %248)
  %250 = call i32 @assertEqualInt(i32 %249, i32 8)
  %251 = load %struct.archive*, %struct.archive** %1, align 8
  %252 = load i32, i32* @ARCHIVE_OK, align 4
  %253 = load %struct.archive*, %struct.archive** %1, align 8
  %254 = call i32 @archive_read_data_block(%struct.archive* %253, i8** %3, i64* %4, i64* %5)
  %255 = call i32 @assertEqualIntA(%struct.archive* %251, i32 %252, i32 %254)
  %256 = load i64, i64* %4, align 8
  %257 = trunc i64 %256 to i32
  %258 = call i32 @assertEqualInt(i32 %257, i32 8)
  %259 = load i64, i64* %5, align 8
  %260 = trunc i64 %259 to i32
  %261 = call i32 @assertEqualInt(i32 %260, i32 0)
  %262 = load i8*, i8** %3, align 8
  %263 = call i32 @assertEqualMem(i8* %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %264 = load i32, i32* @ARCHIVE_EOF, align 4
  %265 = load %struct.archive*, %struct.archive** %1, align 8
  %266 = call i32 @archive_read_data_block(%struct.archive* %265, i8** %3, i64* %4, i64* %5)
  %267 = call i32 @assertEqualInt(i32 %264, i32 %266)
  %268 = load i64, i64* %4, align 8
  %269 = trunc i64 %268 to i32
  %270 = call i32 @assertEqualInt(i32 %269, i32 0)
  %271 = load i64, i64* %5, align 8
  %272 = trunc i64 %271 to i32
  %273 = call i32 @assertEqualInt(i32 %272, i32 8)
  br label %540

274:                                              ; preds = %238
  %275 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %276 = call i32 @archive_entry_pathname(%struct.archive_entry* %275)
  %277 = call i64 @strcmp(i32 %276, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %310

279:                                              ; preds = %274
  %280 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %281 = call i32 @archive_entry_filetype(%struct.archive_entry* %280)
  %282 = load i32, i32* @AE_IFREG, align 4
  %283 = call i32 @assertEqualInt(i32 %281, i32 %282)
  %284 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %285 = call i32 @archive_entry_size(%struct.archive_entry* %284)
  %286 = call i32 @assertEqualInt(i32 %285, i32 8)
  %287 = load %struct.archive*, %struct.archive** %1, align 8
  %288 = load i32, i32* @ARCHIVE_OK, align 4
  %289 = load %struct.archive*, %struct.archive** %1, align 8
  %290 = call i32 @archive_read_data_block(%struct.archive* %289, i8** %3, i64* %4, i64* %5)
  %291 = call i32 @assertEqualIntA(%struct.archive* %287, i32 %288, i32 %290)
  %292 = load i64, i64* %4, align 8
  %293 = trunc i64 %292 to i32
  %294 = call i32 @assertEqualInt(i32 %293, i32 8)
  %295 = load i64, i64* %5, align 8
  %296 = trunc i64 %295 to i32
  %297 = call i32 @assertEqualInt(i32 %296, i32 0)
  %298 = load i8*, i8** %3, align 8
  %299 = call i32 @assertEqualMem(i8* %298, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %300 = load i32, i32* @ARCHIVE_EOF, align 4
  %301 = load %struct.archive*, %struct.archive** %1, align 8
  %302 = call i32 @archive_read_data_block(%struct.archive* %301, i8** %3, i64* %4, i64* %5)
  %303 = call i32 @assertEqualInt(i32 %300, i32 %302)
  %304 = load i64, i64* %4, align 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 @assertEqualInt(i32 %305, i32 0)
  %307 = load i64, i64* %5, align 8
  %308 = trunc i64 %307 to i32
  %309 = call i32 @assertEqualInt(i32 %308, i32 8)
  br label %539

310:                                              ; preds = %274
  %311 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %312 = call i32 @archive_entry_pathname(%struct.archive_entry* %311)
  %313 = call i64 @strcmp(i32 %312, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %346

315:                                              ; preds = %310
  %316 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %317 = call i32 @archive_entry_filetype(%struct.archive_entry* %316)
  %318 = load i32, i32* @AE_IFREG, align 4
  %319 = call i32 @assertEqualInt(i32 %317, i32 %318)
  %320 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %321 = call i32 @archive_entry_size(%struct.archive_entry* %320)
  %322 = call i32 @assertEqualInt(i32 %321, i32 8)
  %323 = load %struct.archive*, %struct.archive** %1, align 8
  %324 = load i32, i32* @ARCHIVE_OK, align 4
  %325 = load %struct.archive*, %struct.archive** %1, align 8
  %326 = call i32 @archive_read_data_block(%struct.archive* %325, i8** %3, i64* %4, i64* %5)
  %327 = call i32 @assertEqualIntA(%struct.archive* %323, i32 %324, i32 %326)
  %328 = load i64, i64* %4, align 8
  %329 = trunc i64 %328 to i32
  %330 = call i32 @assertEqualInt(i32 %329, i32 8)
  %331 = load i64, i64* %5, align 8
  %332 = trunc i64 %331 to i32
  %333 = call i32 @assertEqualInt(i32 %332, i32 0)
  %334 = load i8*, i8** %3, align 8
  %335 = call i32 @assertEqualMem(i8* %334, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %336 = load i32, i32* @ARCHIVE_EOF, align 4
  %337 = load %struct.archive*, %struct.archive** %1, align 8
  %338 = call i32 @archive_read_data_block(%struct.archive* %337, i8** %3, i64* %4, i64* %5)
  %339 = call i32 @assertEqualInt(i32 %336, i32 %338)
  %340 = load i64, i64* %4, align 8
  %341 = trunc i64 %340 to i32
  %342 = call i32 @assertEqualInt(i32 %341, i32 0)
  %343 = load i64, i64* %5, align 8
  %344 = trunc i64 %343 to i32
  %345 = call i32 @assertEqualInt(i32 %344, i32 8)
  br label %538

346:                                              ; preds = %310
  %347 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %348 = call i32 @archive_entry_pathname(%struct.archive_entry* %347)
  %349 = call i64 @strcmp(i32 %348, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %346
  %352 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %353 = call i32 @archive_entry_filetype(%struct.archive_entry* %352)
  %354 = load i32, i32* @AE_IFLNK, align 4
  %355 = call i32 @assertEqualInt(i32 %353, i32 %354)
  br label %537

356:                                              ; preds = %346
  %357 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %358 = call i32 @archive_entry_pathname(%struct.archive_entry* %357)
  %359 = call i64 @strcmp(i32 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %356
  %362 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %363 = call i32 @archive_entry_filetype(%struct.archive_entry* %362)
  %364 = load i32, i32* @AE_IFDIR, align 4
  %365 = call i32 @assertEqualInt(i32 %363, i32 %364)
  br label %536

366:                                              ; preds = %356
  %367 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %368 = call i32 @archive_entry_pathname(%struct.archive_entry* %367)
  %369 = call i64 @strcmp(i32 %368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %402

371:                                              ; preds = %366
  %372 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %373 = call i32 @archive_entry_filetype(%struct.archive_entry* %372)
  %374 = load i32, i32* @AE_IFREG, align 4
  %375 = call i32 @assertEqualInt(i32 %373, i32 %374)
  %376 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %377 = call i32 @archive_entry_size(%struct.archive_entry* %376)
  %378 = call i32 @assertEqualInt(i32 %377, i32 8)
  %379 = load %struct.archive*, %struct.archive** %1, align 8
  %380 = load i32, i32* @ARCHIVE_OK, align 4
  %381 = load %struct.archive*, %struct.archive** %1, align 8
  %382 = call i32 @archive_read_data_block(%struct.archive* %381, i8** %3, i64* %4, i64* %5)
  %383 = call i32 @assertEqualIntA(%struct.archive* %379, i32 %380, i32 %382)
  %384 = load i64, i64* %4, align 8
  %385 = trunc i64 %384 to i32
  %386 = call i32 @assertEqualInt(i32 %385, i32 8)
  %387 = load i64, i64* %5, align 8
  %388 = trunc i64 %387 to i32
  %389 = call i32 @assertEqualInt(i32 %388, i32 0)
  %390 = load i8*, i8** %3, align 8
  %391 = call i32 @assertEqualMem(i8* %390, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %392 = load i32, i32* @ARCHIVE_EOF, align 4
  %393 = load %struct.archive*, %struct.archive** %1, align 8
  %394 = call i32 @archive_read_data_block(%struct.archive* %393, i8** %3, i64* %4, i64* %5)
  %395 = call i32 @assertEqualInt(i32 %392, i32 %394)
  %396 = load i64, i64* %4, align 8
  %397 = trunc i64 %396 to i32
  %398 = call i32 @assertEqualInt(i32 %397, i32 0)
  %399 = load i64, i64* %5, align 8
  %400 = trunc i64 %399 to i32
  %401 = call i32 @assertEqualInt(i32 %400, i32 8)
  br label %535

402:                                              ; preds = %366
  %403 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %404 = call i32 @archive_entry_pathname(%struct.archive_entry* %403)
  %405 = call i64 @strcmp(i32 %404, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %438

407:                                              ; preds = %402
  %408 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %409 = call i32 @archive_entry_filetype(%struct.archive_entry* %408)
  %410 = load i32, i32* @AE_IFREG, align 4
  %411 = call i32 @assertEqualInt(i32 %409, i32 %410)
  %412 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %413 = call i32 @archive_entry_size(%struct.archive_entry* %412)
  %414 = call i32 @assertEqualInt(i32 %413, i32 8)
  %415 = load %struct.archive*, %struct.archive** %1, align 8
  %416 = load i32, i32* @ARCHIVE_OK, align 4
  %417 = load %struct.archive*, %struct.archive** %1, align 8
  %418 = call i32 @archive_read_data_block(%struct.archive* %417, i8** %3, i64* %4, i64* %5)
  %419 = call i32 @assertEqualIntA(%struct.archive* %415, i32 %416, i32 %418)
  %420 = load i64, i64* %4, align 8
  %421 = trunc i64 %420 to i32
  %422 = call i32 @assertEqualInt(i32 %421, i32 8)
  %423 = load i64, i64* %5, align 8
  %424 = trunc i64 %423 to i32
  %425 = call i32 @assertEqualInt(i32 %424, i32 0)
  %426 = load i8*, i8** %3, align 8
  %427 = call i32 @assertEqualMem(i8* %426, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %428 = load i32, i32* @ARCHIVE_EOF, align 4
  %429 = load %struct.archive*, %struct.archive** %1, align 8
  %430 = call i32 @archive_read_data_block(%struct.archive* %429, i8** %3, i64* %4, i64* %5)
  %431 = call i32 @assertEqualInt(i32 %428, i32 %430)
  %432 = load i64, i64* %4, align 8
  %433 = trunc i64 %432 to i32
  %434 = call i32 @assertEqualInt(i32 %433, i32 0)
  %435 = load i64, i64* %5, align 8
  %436 = trunc i64 %435 to i32
  %437 = call i32 @assertEqualInt(i32 %436, i32 8)
  br label %534

438:                                              ; preds = %402
  %439 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %440 = call i32 @archive_entry_pathname(%struct.archive_entry* %439)
  %441 = call i64 @strcmp(i32 %440, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %474

443:                                              ; preds = %438
  %444 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %445 = call i32 @archive_entry_filetype(%struct.archive_entry* %444)
  %446 = load i32, i32* @AE_IFREG, align 4
  %447 = call i32 @assertEqualInt(i32 %445, i32 %446)
  %448 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %449 = call i32 @archive_entry_size(%struct.archive_entry* %448)
  %450 = call i32 @assertEqualInt(i32 %449, i32 8)
  %451 = load %struct.archive*, %struct.archive** %1, align 8
  %452 = load i32, i32* @ARCHIVE_OK, align 4
  %453 = load %struct.archive*, %struct.archive** %1, align 8
  %454 = call i32 @archive_read_data_block(%struct.archive* %453, i8** %3, i64* %4, i64* %5)
  %455 = call i32 @assertEqualIntA(%struct.archive* %451, i32 %452, i32 %454)
  %456 = load i64, i64* %4, align 8
  %457 = trunc i64 %456 to i32
  %458 = call i32 @assertEqualInt(i32 %457, i32 8)
  %459 = load i64, i64* %5, align 8
  %460 = trunc i64 %459 to i32
  %461 = call i32 @assertEqualInt(i32 %460, i32 0)
  %462 = load i8*, i8** %3, align 8
  %463 = call i32 @assertEqualMem(i8* %462, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %464 = load i32, i32* @ARCHIVE_EOF, align 4
  %465 = load %struct.archive*, %struct.archive** %1, align 8
  %466 = call i32 @archive_read_data_block(%struct.archive* %465, i8** %3, i64* %4, i64* %5)
  %467 = call i32 @assertEqualInt(i32 %464, i32 %466)
  %468 = load i64, i64* %4, align 8
  %469 = trunc i64 %468 to i32
  %470 = call i32 @assertEqualInt(i32 %469, i32 0)
  %471 = load i64, i64* %5, align 8
  %472 = trunc i64 %471 to i32
  %473 = call i32 @assertEqualInt(i32 %472, i32 8)
  br label %533

474:                                              ; preds = %438
  %475 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %476 = call i32 @archive_entry_pathname(%struct.archive_entry* %475)
  %477 = call i64 @strcmp(i32 %476, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %484

479:                                              ; preds = %474
  %480 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %481 = call i32 @archive_entry_filetype(%struct.archive_entry* %480)
  %482 = load i32, i32* @AE_IFLNK, align 4
  %483 = call i32 @assertEqualInt(i32 %481, i32 %482)
  br label %532

484:                                              ; preds = %474
  %485 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %486 = call i32 @archive_entry_pathname(%struct.archive_entry* %485)
  %487 = call i64 @strcmp(i32 %486, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %489, label %520

489:                                              ; preds = %484
  %490 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %491 = call i32 @archive_entry_filetype(%struct.archive_entry* %490)
  %492 = load i32, i32* @AE_IFREG, align 4
  %493 = call i32 @assertEqualInt(i32 %491, i32 %492)
  %494 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %495 = call i32 @archive_entry_size(%struct.archive_entry* %494)
  %496 = call i32 @assertEqualInt(i32 %495, i32 8)
  %497 = load %struct.archive*, %struct.archive** %1, align 8
  %498 = load i32, i32* @ARCHIVE_OK, align 4
  %499 = load %struct.archive*, %struct.archive** %1, align 8
  %500 = call i32 @archive_read_data_block(%struct.archive* %499, i8** %3, i64* %4, i64* %5)
  %501 = call i32 @assertEqualIntA(%struct.archive* %497, i32 %498, i32 %500)
  %502 = load i64, i64* %4, align 8
  %503 = trunc i64 %502 to i32
  %504 = call i32 @assertEqualInt(i32 %503, i32 8)
  %505 = load i64, i64* %5, align 8
  %506 = trunc i64 %505 to i32
  %507 = call i32 @assertEqualInt(i32 %506, i32 0)
  %508 = load i8*, i8** %3, align 8
  %509 = call i32 @assertEqualMem(i8* %508, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %510 = load i32, i32* @ARCHIVE_EOF, align 4
  %511 = load %struct.archive*, %struct.archive** %1, align 8
  %512 = call i32 @archive_read_data_block(%struct.archive* %511, i8** %3, i64* %4, i64* %5)
  %513 = call i32 @assertEqualInt(i32 %510, i32 %512)
  %514 = load i64, i64* %4, align 8
  %515 = trunc i64 %514 to i32
  %516 = call i32 @assertEqualInt(i32 %515, i32 0)
  %517 = load i64, i64* %5, align 8
  %518 = trunc i64 %517 to i32
  %519 = call i32 @assertEqualInt(i32 %518, i32 8)
  br label %531

520:                                              ; preds = %484
  %521 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %522 = call i32 @archive_entry_pathname(%struct.archive_entry* %521)
  %523 = call i64 @strcmp(i32 %522, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %525, label %530

525:                                              ; preds = %520
  %526 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %527 = call i32 @archive_entry_filetype(%struct.archive_entry* %526)
  %528 = load i32, i32* @AE_IFLNK, align 4
  %529 = call i32 @assertEqualInt(i32 %527, i32 %528)
  br label %530

530:                                              ; preds = %525, %520
  br label %531

531:                                              ; preds = %530, %489
  br label %532

532:                                              ; preds = %531, %479
  br label %533

533:                                              ; preds = %532, %443
  br label %534

534:                                              ; preds = %533, %407
  br label %535

535:                                              ; preds = %534, %371
  br label %536

536:                                              ; preds = %535, %361
  br label %537

537:                                              ; preds = %536, %351
  br label %538

538:                                              ; preds = %537, %315
  br label %539

539:                                              ; preds = %538, %279
  br label %540

540:                                              ; preds = %539, %243
  br label %541

541:                                              ; preds = %540, %233
  br label %542

542:                                              ; preds = %541, %223
  %543 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %544 = call i32 @archive_entry_filetype(%struct.archive_entry* %543)
  %545 = load i32, i32* @AE_IFDIR, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %553

547:                                              ; preds = %542
  %548 = load %struct.archive*, %struct.archive** %1, align 8
  %549 = load i32, i32* @ARCHIVE_OK, align 4
  %550 = load %struct.archive*, %struct.archive** %1, align 8
  %551 = call i32 @archive_read_disk_descend(%struct.archive* %550)
  %552 = call i32 @assertEqualIntA(%struct.archive* %548, i32 %549, i32 %551)
  br label %553

553:                                              ; preds = %547, %542
  br label %209

554:                                              ; preds = %209
  %555 = load %struct.archive*, %struct.archive** %1, align 8
  %556 = load i32, i32* @ARCHIVE_EOF, align 4
  %557 = load %struct.archive*, %struct.archive** %1, align 8
  %558 = call i32 @archive_read_next_header(%struct.archive* %557, %struct.archive_entry** %2)
  %559 = call i32 @assertEqualIntA(%struct.archive* %555, i32 %556, i32 %558)
  %560 = load i32, i32* @ARCHIVE_OK, align 4
  %561 = load %struct.archive*, %struct.archive** %1, align 8
  %562 = call i32 @archive_read_close(%struct.archive* %561)
  %563 = call i32 @assertEqualInt(i32 %560, i32 %562)
  %564 = load i32, i32* @ARCHIVE_OK, align 4
  %565 = load %struct.archive*, %struct.archive** %1, align 8
  %566 = call i32 @archive_read_free(%struct.archive* %565)
  %567 = call i32 @assertEqualInt(i32 %564, i32 %566)
  br label %568

568:                                              ; preds = %554, %9
  ret void
}

declare dso_local i32 @canSymlink(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertChdir(i8*) #1

declare dso_local i32 @assertMakeSymlink(i8*, i8*, i32) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_disk_set_symlink_logical(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_disk_descend(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
