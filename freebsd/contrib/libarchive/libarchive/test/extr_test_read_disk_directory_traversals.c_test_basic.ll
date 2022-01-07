; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dir1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dir1/file1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dir1/file2\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dir1/sub1\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dir1/sub1/file1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dir1/sub2\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"dir1/sub2/file1\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"dir1/sub2/file2\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"dir1/sub2/sub1\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"dir1/sub2/sub2\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"dir1/sub2/sub3\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"dir1/sub2/sub3/file\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i32] [i32 100, i32 105, i32 114, i32 49, i32 0], align 4
@.str.16 = private unnamed_addr constant [11 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 102, i32 105, i32 108, i32 101, i32 49, i32 0], align 4
@.str.17 = private unnamed_addr constant [11 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 102, i32 105, i32 108, i32 101, i32 50, i32 0], align 4
@.str.18 = private unnamed_addr constant [10 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 49, i32 0], align 4
@.str.19 = private unnamed_addr constant [16 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 49, i32 47, i32 102, i32 105, i32 108, i32 101, i32 49, i32 0], align 4
@.str.20 = private unnamed_addr constant [10 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 50, i32 0], align 4
@.str.21 = private unnamed_addr constant [16 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 50, i32 47, i32 102, i32 105, i32 108, i32 101, i32 49, i32 0], align 4
@.str.22 = private unnamed_addr constant [16 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 50, i32 47, i32 102, i32 105, i32 108, i32 101, i32 50, i32 0], align 4
@.str.23 = private unnamed_addr constant [15 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 50, i32 47, i32 115, i32 117, i32 98, i32 49, i32 0], align 4
@.str.24 = private unnamed_addr constant [15 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 50, i32 47, i32 115, i32 117, i32 98, i32 50, i32 0], align 4
@.str.25 = private unnamed_addr constant [15 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 50, i32 47, i32 115, i32 117, i32 98, i32 51, i32 0], align 4
@.str.26 = private unnamed_addr constant [20 x i32] [i32 100, i32 105, i32 114, i32 49, i32 47, i32 115, i32 117, i32 98, i32 50, i32 47, i32 115, i32 117, i32 98, i32 51, i32 47, i32 102, i32 105, i32 108, i32 101, i32 0], align 4
@.str.27 = private unnamed_addr constant [66 x i8] c"Current working directory does not return to the initialdirectory\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = call i32 @assertMakeDir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 493)
  %10 = call i32 @assertMakeFile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @assertMakeFile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @assertMakeDir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 493)
  %13 = call i32 @assertMakeFile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @assertMakeDir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 493)
  %15 = call i32 @assertMakeFile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @assertMakeFile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @assertMakeDir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 493)
  %18 = call i32 @assertMakeDir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 493)
  %19 = call i32 @assertMakeDir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 493)
  %20 = call i32 @assertMakeFile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store i32 12, i32* %8, align 4
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
  %29 = load %struct.archive*, %struct.archive** %1, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = load %struct.archive*, %struct.archive** %1, align 8
  %32 = call i32 @archive_read_disk_open(%struct.archive* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @assertEqualIntA(%struct.archive* %29, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %378, %0
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %379

38:                                               ; preds = %34
  %39 = load %struct.archive*, %struct.archive** %1, align 8
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = load %struct.archive*, %struct.archive** %1, align 8
  %42 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %43 = call i32 @archive_read_next_header2(%struct.archive* %41, %struct.archive_entry* %42)
  %44 = call i32 @assertEqualIntA(%struct.archive* %39, i32 %40, i32 %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %46 = call i8* @archive_entry_pathname(%struct.archive_entry* %45)
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %51 = call i32 @archive_entry_filetype(%struct.archive_entry* %50)
  %52 = load i32, i32* @AE_IFDIR, align 4
  %53 = call i32 @assertEqualInt(i32 %51, i32 %52)
  %54 = load %struct.archive*, %struct.archive** %1, align 8
  %55 = call i32 @archive_read_disk_can_descend(%struct.archive* %54)
  %56 = call i32 @assertEqualInt(i32 1, i32 %55)
  br label %367

57:                                               ; preds = %38
  %58 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %59 = call i8* @archive_entry_pathname(%struct.archive_entry* %58)
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %96

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
  %73 = call i32 @archive_read_data_block(%struct.archive* %72, i8** %3, i64* %6, i64* %7)
  %74 = call i32 @assertEqualIntA(%struct.archive* %70, i32 %71, i32 %73)
  %75 = load i64, i64* %6, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @assertEqualInt(i32 %76, i32 10)
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @assertEqualInt(i32 %79, i32 0)
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @assertEqualMem(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %83 = load i32, i32* @ARCHIVE_EOF, align 4
  %84 = load %struct.archive*, %struct.archive** %1, align 8
  %85 = call i32 @archive_read_data_block(%struct.archive* %84, i8** %3, i64* %6, i64* %7)
  %86 = call i32 @assertEqualInt(i32 %83, i32 %85)
  %87 = load i64, i64* %6, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @assertEqualInt(i32 %88, i32 0)
  %90 = load i64, i64* %7, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @assertEqualInt(i32 %91, i32 10)
  %93 = load %struct.archive*, %struct.archive** %1, align 8
  %94 = call i32 @archive_read_disk_can_descend(%struct.archive* %93)
  %95 = call i32 @assertEqualInt(i32 0, i32 %94)
  br label %366

96:                                               ; preds = %57
  %97 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %98 = call i8* @archive_entry_pathname(%struct.archive_entry* %97)
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %135

101:                                              ; preds = %96
  %102 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %103 = call i32 @archive_entry_filetype(%struct.archive_entry* %102)
  %104 = load i32, i32* @AE_IFREG, align 4
  %105 = call i32 @assertEqualInt(i32 %103, i32 %104)
  %106 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %107 = call i32 @archive_entry_size(%struct.archive_entry* %106)
  %108 = call i32 @assertEqualInt(i32 %107, i32 11)
  %109 = load %struct.archive*, %struct.archive** %1, align 8
  %110 = load i32, i32* @ARCHIVE_OK, align 4
  %111 = load %struct.archive*, %struct.archive** %1, align 8
  %112 = call i32 @archive_read_data_block(%struct.archive* %111, i8** %3, i64* %6, i64* %7)
  %113 = call i32 @assertEqualIntA(%struct.archive* %109, i32 %110, i32 %112)
  %114 = load i64, i64* %6, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @assertEqualInt(i32 %115, i32 11)
  %117 = load i64, i64* %7, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @assertEqualInt(i32 %118, i32 0)
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @assertEqualMem(i8* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %122 = load i32, i32* @ARCHIVE_EOF, align 4
  %123 = load %struct.archive*, %struct.archive** %1, align 8
  %124 = call i32 @archive_read_data_block(%struct.archive* %123, i8** %3, i64* %6, i64* %7)
  %125 = call i32 @assertEqualInt(i32 %122, i32 %124)
  %126 = load i64, i64* %6, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @assertEqualInt(i32 %127, i32 0)
  %129 = load i64, i64* %7, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @assertEqualInt(i32 %130, i32 11)
  %132 = load %struct.archive*, %struct.archive** %1, align 8
  %133 = call i32 @archive_read_disk_can_descend(%struct.archive* %132)
  %134 = call i32 @assertEqualInt(i32 0, i32 %133)
  br label %365

135:                                              ; preds = %96
  %136 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %137 = call i8* @archive_entry_pathname(%struct.archive_entry* %136)
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %142 = call i32 @archive_entry_filetype(%struct.archive_entry* %141)
  %143 = load i32, i32* @AE_IFDIR, align 4
  %144 = call i32 @assertEqualInt(i32 %142, i32 %143)
  %145 = load %struct.archive*, %struct.archive** %1, align 8
  %146 = call i32 @archive_read_disk_can_descend(%struct.archive* %145)
  %147 = call i32 @assertEqualInt(i32 1, i32 %146)
  br label %364

148:                                              ; preds = %135
  %149 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %150 = call i8* @archive_entry_pathname(%struct.archive_entry* %149)
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %187

153:                                              ; preds = %148
  %154 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %155 = call i32 @archive_entry_filetype(%struct.archive_entry* %154)
  %156 = load i32, i32* @AE_IFREG, align 4
  %157 = call i32 @assertEqualInt(i32 %155, i32 %156)
  %158 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %159 = call i32 @archive_entry_size(%struct.archive_entry* %158)
  %160 = call i32 @assertEqualInt(i32 %159, i32 10)
  %161 = load %struct.archive*, %struct.archive** %1, align 8
  %162 = load i32, i32* @ARCHIVE_OK, align 4
  %163 = load %struct.archive*, %struct.archive** %1, align 8
  %164 = call i32 @archive_read_data_block(%struct.archive* %163, i8** %3, i64* %6, i64* %7)
  %165 = call i32 @assertEqualIntA(%struct.archive* %161, i32 %162, i32 %164)
  %166 = load i64, i64* %6, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @assertEqualInt(i32 %167, i32 10)
  %169 = load i64, i64* %7, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @assertEqualInt(i32 %170, i32 0)
  %172 = load i8*, i8** %3, align 8
  %173 = call i32 @assertEqualMem(i8* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %174 = load i32, i32* @ARCHIVE_EOF, align 4
  %175 = load %struct.archive*, %struct.archive** %1, align 8
  %176 = call i32 @archive_read_data_block(%struct.archive* %175, i8** %3, i64* %6, i64* %7)
  %177 = call i32 @assertEqualInt(i32 %174, i32 %176)
  %178 = load i64, i64* %6, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 @assertEqualInt(i32 %179, i32 0)
  %181 = load i64, i64* %7, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @assertEqualInt(i32 %182, i32 10)
  %184 = load %struct.archive*, %struct.archive** %1, align 8
  %185 = call i32 @archive_read_disk_can_descend(%struct.archive* %184)
  %186 = call i32 @assertEqualInt(i32 0, i32 %185)
  br label %363

187:                                              ; preds = %148
  %188 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %189 = call i8* @archive_entry_pathname(%struct.archive_entry* %188)
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %194 = call i32 @archive_entry_filetype(%struct.archive_entry* %193)
  %195 = load i32, i32* @AE_IFDIR, align 4
  %196 = call i32 @assertEqualInt(i32 %194, i32 %195)
  %197 = load %struct.archive*, %struct.archive** %1, align 8
  %198 = call i32 @archive_read_disk_can_descend(%struct.archive* %197)
  %199 = call i32 @assertEqualInt(i32 1, i32 %198)
  br label %362

200:                                              ; preds = %187
  %201 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %202 = call i8* @archive_entry_pathname(%struct.archive_entry* %201)
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %239

205:                                              ; preds = %200
  %206 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %207 = call i32 @archive_entry_filetype(%struct.archive_entry* %206)
  %208 = load i32, i32* @AE_IFREG, align 4
  %209 = call i32 @assertEqualInt(i32 %207, i32 %208)
  %210 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %211 = call i32 @archive_entry_size(%struct.archive_entry* %210)
  %212 = call i32 @assertEqualInt(i32 %211, i32 10)
  %213 = load %struct.archive*, %struct.archive** %1, align 8
  %214 = load i32, i32* @ARCHIVE_OK, align 4
  %215 = load %struct.archive*, %struct.archive** %1, align 8
  %216 = call i32 @archive_read_data_block(%struct.archive* %215, i8** %3, i64* %6, i64* %7)
  %217 = call i32 @assertEqualIntA(%struct.archive* %213, i32 %214, i32 %216)
  %218 = load i64, i64* %6, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i32 @assertEqualInt(i32 %219, i32 10)
  %221 = load i64, i64* %7, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 @assertEqualInt(i32 %222, i32 0)
  %224 = load i8*, i8** %3, align 8
  %225 = call i32 @assertEqualMem(i8* %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %226 = load i32, i32* @ARCHIVE_EOF, align 4
  %227 = load %struct.archive*, %struct.archive** %1, align 8
  %228 = call i32 @archive_read_data_block(%struct.archive* %227, i8** %3, i64* %6, i64* %7)
  %229 = call i32 @assertEqualInt(i32 %226, i32 %228)
  %230 = load i64, i64* %6, align 8
  %231 = trunc i64 %230 to i32
  %232 = call i32 @assertEqualInt(i32 %231, i32 0)
  %233 = load i64, i64* %7, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @assertEqualInt(i32 %234, i32 10)
  %236 = load %struct.archive*, %struct.archive** %1, align 8
  %237 = call i32 @archive_read_disk_can_descend(%struct.archive* %236)
  %238 = call i32 @assertEqualInt(i32 0, i32 %237)
  br label %361

239:                                              ; preds = %200
  %240 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %241 = call i8* @archive_entry_pathname(%struct.archive_entry* %240)
  %242 = call i64 @strcmp(i8* %241, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %278

244:                                              ; preds = %239
  %245 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %246 = call i32 @archive_entry_filetype(%struct.archive_entry* %245)
  %247 = load i32, i32* @AE_IFREG, align 4
  %248 = call i32 @assertEqualInt(i32 %246, i32 %247)
  %249 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %250 = call i32 @archive_entry_size(%struct.archive_entry* %249)
  %251 = call i32 @assertEqualInt(i32 %250, i32 10)
  %252 = load %struct.archive*, %struct.archive** %1, align 8
  %253 = load i32, i32* @ARCHIVE_OK, align 4
  %254 = load %struct.archive*, %struct.archive** %1, align 8
  %255 = call i32 @archive_read_data_block(%struct.archive* %254, i8** %3, i64* %6, i64* %7)
  %256 = call i32 @assertEqualIntA(%struct.archive* %252, i32 %253, i32 %255)
  %257 = load i64, i64* %6, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i32 @assertEqualInt(i32 %258, i32 10)
  %260 = load i64, i64* %7, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i32 @assertEqualInt(i32 %261, i32 0)
  %263 = load i8*, i8** %3, align 8
  %264 = call i32 @assertEqualMem(i8* %263, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %265 = load i32, i32* @ARCHIVE_EOF, align 4
  %266 = load %struct.archive*, %struct.archive** %1, align 8
  %267 = call i32 @archive_read_data_block(%struct.archive* %266, i8** %3, i64* %6, i64* %7)
  %268 = call i32 @assertEqualInt(i32 %265, i32 %267)
  %269 = load i64, i64* %6, align 8
  %270 = trunc i64 %269 to i32
  %271 = call i32 @assertEqualInt(i32 %270, i32 0)
  %272 = load i64, i64* %7, align 8
  %273 = trunc i64 %272 to i32
  %274 = call i32 @assertEqualInt(i32 %273, i32 10)
  %275 = load %struct.archive*, %struct.archive** %1, align 8
  %276 = call i32 @archive_read_disk_can_descend(%struct.archive* %275)
  %277 = call i32 @assertEqualInt(i32 0, i32 %276)
  br label %360

278:                                              ; preds = %239
  %279 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %280 = call i8* @archive_entry_pathname(%struct.archive_entry* %279)
  %281 = call i64 @strcmp(i8* %280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %278
  %284 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %285 = call i32 @archive_entry_filetype(%struct.archive_entry* %284)
  %286 = load i32, i32* @AE_IFDIR, align 4
  %287 = call i32 @assertEqualInt(i32 %285, i32 %286)
  %288 = load %struct.archive*, %struct.archive** %1, align 8
  %289 = call i32 @archive_read_disk_can_descend(%struct.archive* %288)
  %290 = call i32 @assertEqualInt(i32 1, i32 %289)
  br label %359

291:                                              ; preds = %278
  %292 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %293 = call i8* @archive_entry_pathname(%struct.archive_entry* %292)
  %294 = call i64 @strcmp(i8* %293, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %295 = icmp eq i64 %294, 0
  br i1 %295, label %296, label %304

296:                                              ; preds = %291
  %297 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %298 = call i32 @archive_entry_filetype(%struct.archive_entry* %297)
  %299 = load i32, i32* @AE_IFDIR, align 4
  %300 = call i32 @assertEqualInt(i32 %298, i32 %299)
  %301 = load %struct.archive*, %struct.archive** %1, align 8
  %302 = call i32 @archive_read_disk_can_descend(%struct.archive* %301)
  %303 = call i32 @assertEqualInt(i32 1, i32 %302)
  br label %358

304:                                              ; preds = %291
  %305 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %306 = call i8* @archive_entry_pathname(%struct.archive_entry* %305)
  %307 = call i64 @strcmp(i8* %306, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %311 = call i32 @archive_entry_filetype(%struct.archive_entry* %310)
  %312 = load i32, i32* @AE_IFDIR, align 4
  %313 = call i32 @assertEqualInt(i32 %311, i32 %312)
  %314 = load %struct.archive*, %struct.archive** %1, align 8
  %315 = call i32 @archive_read_disk_can_descend(%struct.archive* %314)
  %316 = call i32 @assertEqualInt(i32 1, i32 %315)
  br label %357

317:                                              ; preds = %304
  %318 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %319 = call i8* @archive_entry_pathname(%struct.archive_entry* %318)
  %320 = call i64 @strcmp(i8* %319, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %356

322:                                              ; preds = %317
  %323 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %324 = call i32 @archive_entry_filetype(%struct.archive_entry* %323)
  %325 = load i32, i32* @AE_IFREG, align 4
  %326 = call i32 @assertEqualInt(i32 %324, i32 %325)
  %327 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %328 = call i32 @archive_entry_size(%struct.archive_entry* %327)
  %329 = call i32 @assertEqualInt(i32 %328, i32 3)
  %330 = load %struct.archive*, %struct.archive** %1, align 8
  %331 = load i32, i32* @ARCHIVE_OK, align 4
  %332 = load %struct.archive*, %struct.archive** %1, align 8
  %333 = call i32 @archive_read_data_block(%struct.archive* %332, i8** %3, i64* %6, i64* %7)
  %334 = call i32 @assertEqualIntA(%struct.archive* %330, i32 %331, i32 %333)
  %335 = load i64, i64* %6, align 8
  %336 = trunc i64 %335 to i32
  %337 = call i32 @assertEqualInt(i32 %336, i32 3)
  %338 = load i64, i64* %7, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @assertEqualInt(i32 %339, i32 0)
  %341 = load i8*, i8** %3, align 8
  %342 = call i32 @assertEqualMem(i8* %341, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 3)
  %343 = load i32, i32* @ARCHIVE_EOF, align 4
  %344 = load %struct.archive*, %struct.archive** %1, align 8
  %345 = call i32 @archive_read_data_block(%struct.archive* %344, i8** %3, i64* %6, i64* %7)
  %346 = call i32 @assertEqualInt(i32 %343, i32 %345)
  %347 = load i64, i64* %6, align 8
  %348 = trunc i64 %347 to i32
  %349 = call i32 @assertEqualInt(i32 %348, i32 0)
  %350 = load i64, i64* %7, align 8
  %351 = trunc i64 %350 to i32
  %352 = call i32 @assertEqualInt(i32 %351, i32 3)
  %353 = load %struct.archive*, %struct.archive** %1, align 8
  %354 = call i32 @archive_read_disk_can_descend(%struct.archive* %353)
  %355 = call i32 @assertEqualInt(i32 0, i32 %354)
  br label %356

356:                                              ; preds = %322, %317
  br label %357

357:                                              ; preds = %356, %309
  br label %358

358:                                              ; preds = %357, %296
  br label %359

359:                                              ; preds = %358, %283
  br label %360

360:                                              ; preds = %359, %244
  br label %361

361:                                              ; preds = %360, %205
  br label %362

362:                                              ; preds = %361, %192
  br label %363

363:                                              ; preds = %362, %153
  br label %364

364:                                              ; preds = %363, %140
  br label %365

365:                                              ; preds = %364, %101
  br label %366

366:                                              ; preds = %365, %62
  br label %367

367:                                              ; preds = %366, %49
  %368 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %369 = call i32 @archive_entry_filetype(%struct.archive_entry* %368)
  %370 = load i32, i32* @AE_IFDIR, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %378

372:                                              ; preds = %367
  %373 = load %struct.archive*, %struct.archive** %1, align 8
  %374 = load i32, i32* @ARCHIVE_OK, align 4
  %375 = load %struct.archive*, %struct.archive** %1, align 8
  %376 = call i32 @archive_read_disk_descend(%struct.archive* %375)
  %377 = call i32 @assertEqualIntA(%struct.archive* %373, i32 %374, i32 %376)
  br label %378

378:                                              ; preds = %372, %367
  br label %34

379:                                              ; preds = %34
  %380 = load %struct.archive*, %struct.archive** %1, align 8
  %381 = load i32, i32* @ARCHIVE_EOF, align 4
  %382 = load %struct.archive*, %struct.archive** %1, align 8
  %383 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %384 = call i32 @archive_read_next_header2(%struct.archive* %382, %struct.archive_entry* %383)
  %385 = call i32 @assertEqualIntA(%struct.archive* %380, i32 %381, i32 %384)
  %386 = load i32, i32* @ARCHIVE_OK, align 4
  %387 = load %struct.archive*, %struct.archive** %1, align 8
  %388 = call i32 @archive_read_close(%struct.archive* %387)
  %389 = call i32 @assertEqualInt(i32 %386, i32 %388)
  %390 = load %struct.archive*, %struct.archive** %1, align 8
  %391 = load i32, i32* @ARCHIVE_OK, align 4
  %392 = load %struct.archive*, %struct.archive** %1, align 8
  %393 = call i32 @archive_read_disk_open_w(%struct.archive* %392, i8* bitcast ([5 x i32]* @.str.15 to i8*))
  %394 = call i32 @assertEqualIntA(%struct.archive* %390, i32 %391, i32 %393)
  store i32 12, i32* %8, align 4
  br label %395

395:                                              ; preds = %739, %379
  %396 = load i32, i32* %8, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %8, align 4
  %398 = icmp ne i32 %396, 0
  br i1 %398, label %399, label %740

399:                                              ; preds = %395
  %400 = load %struct.archive*, %struct.archive** %1, align 8
  %401 = load i32, i32* @ARCHIVE_OK, align 4
  %402 = load %struct.archive*, %struct.archive** %1, align 8
  %403 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %404 = call i32 @archive_read_next_header2(%struct.archive* %402, %struct.archive_entry* %403)
  %405 = call i32 @assertEqualIntA(%struct.archive* %400, i32 %401, i32 %404)
  %406 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %407 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %406)
  %408 = call i64 @wcscmp(i32 %407, i8* bitcast ([5 x i32]* @.str.15 to i8*))
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %418

410:                                              ; preds = %399
  %411 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %412 = call i32 @archive_entry_filetype(%struct.archive_entry* %411)
  %413 = load i32, i32* @AE_IFDIR, align 4
  %414 = call i32 @assertEqualInt(i32 %412, i32 %413)
  %415 = load %struct.archive*, %struct.archive** %1, align 8
  %416 = call i32 @archive_read_disk_can_descend(%struct.archive* %415)
  %417 = call i32 @assertEqualInt(i32 1, i32 %416)
  br label %728

418:                                              ; preds = %399
  %419 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %420 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %419)
  %421 = call i64 @wcscmp(i32 %420, i8* bitcast ([11 x i32]* @.str.16 to i8*))
  %422 = icmp eq i64 %421, 0
  br i1 %422, label %423, label %457

423:                                              ; preds = %418
  %424 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %425 = call i32 @archive_entry_filetype(%struct.archive_entry* %424)
  %426 = load i32, i32* @AE_IFREG, align 4
  %427 = call i32 @assertEqualInt(i32 %425, i32 %426)
  %428 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %429 = call i32 @archive_entry_size(%struct.archive_entry* %428)
  %430 = call i32 @assertEqualInt(i32 %429, i32 10)
  %431 = load %struct.archive*, %struct.archive** %1, align 8
  %432 = load i32, i32* @ARCHIVE_OK, align 4
  %433 = load %struct.archive*, %struct.archive** %1, align 8
  %434 = call i32 @archive_read_data_block(%struct.archive* %433, i8** %3, i64* %6, i64* %7)
  %435 = call i32 @assertEqualIntA(%struct.archive* %431, i32 %432, i32 %434)
  %436 = load i64, i64* %6, align 8
  %437 = trunc i64 %436 to i32
  %438 = call i32 @assertEqualInt(i32 %437, i32 10)
  %439 = load i64, i64* %7, align 8
  %440 = trunc i64 %439 to i32
  %441 = call i32 @assertEqualInt(i32 %440, i32 0)
  %442 = load i8*, i8** %3, align 8
  %443 = call i32 @assertEqualMem(i8* %442, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %444 = load i32, i32* @ARCHIVE_EOF, align 4
  %445 = load %struct.archive*, %struct.archive** %1, align 8
  %446 = call i32 @archive_read_data_block(%struct.archive* %445, i8** %3, i64* %6, i64* %7)
  %447 = call i32 @assertEqualInt(i32 %444, i32 %446)
  %448 = load i64, i64* %6, align 8
  %449 = trunc i64 %448 to i32
  %450 = call i32 @assertEqualInt(i32 %449, i32 0)
  %451 = load i64, i64* %7, align 8
  %452 = trunc i64 %451 to i32
  %453 = call i32 @assertEqualInt(i32 %452, i32 10)
  %454 = load %struct.archive*, %struct.archive** %1, align 8
  %455 = call i32 @archive_read_disk_can_descend(%struct.archive* %454)
  %456 = call i32 @assertEqualInt(i32 0, i32 %455)
  br label %727

457:                                              ; preds = %418
  %458 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %459 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %458)
  %460 = call i64 @wcscmp(i32 %459, i8* bitcast ([11 x i32]* @.str.17 to i8*))
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %496

462:                                              ; preds = %457
  %463 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %464 = call i32 @archive_entry_filetype(%struct.archive_entry* %463)
  %465 = load i32, i32* @AE_IFREG, align 4
  %466 = call i32 @assertEqualInt(i32 %464, i32 %465)
  %467 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %468 = call i32 @archive_entry_size(%struct.archive_entry* %467)
  %469 = call i32 @assertEqualInt(i32 %468, i32 11)
  %470 = load %struct.archive*, %struct.archive** %1, align 8
  %471 = load i32, i32* @ARCHIVE_OK, align 4
  %472 = load %struct.archive*, %struct.archive** %1, align 8
  %473 = call i32 @archive_read_data_block(%struct.archive* %472, i8** %3, i64* %6, i64* %7)
  %474 = call i32 @assertEqualIntA(%struct.archive* %470, i32 %471, i32 %473)
  %475 = load i64, i64* %6, align 8
  %476 = trunc i64 %475 to i32
  %477 = call i32 @assertEqualInt(i32 %476, i32 11)
  %478 = load i64, i64* %7, align 8
  %479 = trunc i64 %478 to i32
  %480 = call i32 @assertEqualInt(i32 %479, i32 0)
  %481 = load i8*, i8** %3, align 8
  %482 = call i32 @assertEqualMem(i8* %481, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %483 = load i32, i32* @ARCHIVE_EOF, align 4
  %484 = load %struct.archive*, %struct.archive** %1, align 8
  %485 = call i32 @archive_read_data_block(%struct.archive* %484, i8** %3, i64* %6, i64* %7)
  %486 = call i32 @assertEqualInt(i32 %483, i32 %485)
  %487 = load i64, i64* %6, align 8
  %488 = trunc i64 %487 to i32
  %489 = call i32 @assertEqualInt(i32 %488, i32 0)
  %490 = load i64, i64* %7, align 8
  %491 = trunc i64 %490 to i32
  %492 = call i32 @assertEqualInt(i32 %491, i32 11)
  %493 = load %struct.archive*, %struct.archive** %1, align 8
  %494 = call i32 @archive_read_disk_can_descend(%struct.archive* %493)
  %495 = call i32 @assertEqualInt(i32 0, i32 %494)
  br label %726

496:                                              ; preds = %457
  %497 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %498 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %497)
  %499 = call i64 @wcscmp(i32 %498, i8* bitcast ([10 x i32]* @.str.18 to i8*))
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %501, label %509

501:                                              ; preds = %496
  %502 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %503 = call i32 @archive_entry_filetype(%struct.archive_entry* %502)
  %504 = load i32, i32* @AE_IFDIR, align 4
  %505 = call i32 @assertEqualInt(i32 %503, i32 %504)
  %506 = load %struct.archive*, %struct.archive** %1, align 8
  %507 = call i32 @archive_read_disk_can_descend(%struct.archive* %506)
  %508 = call i32 @assertEqualInt(i32 1, i32 %507)
  br label %725

509:                                              ; preds = %496
  %510 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %511 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %510)
  %512 = call i64 @wcscmp(i32 %511, i8* bitcast ([16 x i32]* @.str.19 to i8*))
  %513 = icmp eq i64 %512, 0
  br i1 %513, label %514, label %548

514:                                              ; preds = %509
  %515 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %516 = call i32 @archive_entry_filetype(%struct.archive_entry* %515)
  %517 = load i32, i32* @AE_IFREG, align 4
  %518 = call i32 @assertEqualInt(i32 %516, i32 %517)
  %519 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %520 = call i32 @archive_entry_size(%struct.archive_entry* %519)
  %521 = call i32 @assertEqualInt(i32 %520, i32 10)
  %522 = load %struct.archive*, %struct.archive** %1, align 8
  %523 = load i32, i32* @ARCHIVE_OK, align 4
  %524 = load %struct.archive*, %struct.archive** %1, align 8
  %525 = call i32 @archive_read_data_block(%struct.archive* %524, i8** %3, i64* %6, i64* %7)
  %526 = call i32 @assertEqualIntA(%struct.archive* %522, i32 %523, i32 %525)
  %527 = load i64, i64* %6, align 8
  %528 = trunc i64 %527 to i32
  %529 = call i32 @assertEqualInt(i32 %528, i32 10)
  %530 = load i64, i64* %7, align 8
  %531 = trunc i64 %530 to i32
  %532 = call i32 @assertEqualInt(i32 %531, i32 0)
  %533 = load i8*, i8** %3, align 8
  %534 = call i32 @assertEqualMem(i8* %533, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %535 = load i32, i32* @ARCHIVE_EOF, align 4
  %536 = load %struct.archive*, %struct.archive** %1, align 8
  %537 = call i32 @archive_read_data_block(%struct.archive* %536, i8** %3, i64* %6, i64* %7)
  %538 = call i32 @assertEqualInt(i32 %535, i32 %537)
  %539 = load i64, i64* %6, align 8
  %540 = trunc i64 %539 to i32
  %541 = call i32 @assertEqualInt(i32 %540, i32 0)
  %542 = load i64, i64* %7, align 8
  %543 = trunc i64 %542 to i32
  %544 = call i32 @assertEqualInt(i32 %543, i32 10)
  %545 = load %struct.archive*, %struct.archive** %1, align 8
  %546 = call i32 @archive_read_disk_can_descend(%struct.archive* %545)
  %547 = call i32 @assertEqualInt(i32 0, i32 %546)
  br label %724

548:                                              ; preds = %509
  %549 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %550 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %549)
  %551 = call i64 @wcscmp(i32 %550, i8* bitcast ([10 x i32]* @.str.20 to i8*))
  %552 = icmp eq i64 %551, 0
  br i1 %552, label %553, label %561

553:                                              ; preds = %548
  %554 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %555 = call i32 @archive_entry_filetype(%struct.archive_entry* %554)
  %556 = load i32, i32* @AE_IFDIR, align 4
  %557 = call i32 @assertEqualInt(i32 %555, i32 %556)
  %558 = load %struct.archive*, %struct.archive** %1, align 8
  %559 = call i32 @archive_read_disk_can_descend(%struct.archive* %558)
  %560 = call i32 @assertEqualInt(i32 1, i32 %559)
  br label %723

561:                                              ; preds = %548
  %562 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %563 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %562)
  %564 = call i64 @wcscmp(i32 %563, i8* bitcast ([16 x i32]* @.str.21 to i8*))
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %566, label %600

566:                                              ; preds = %561
  %567 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %568 = call i32 @archive_entry_filetype(%struct.archive_entry* %567)
  %569 = load i32, i32* @AE_IFREG, align 4
  %570 = call i32 @assertEqualInt(i32 %568, i32 %569)
  %571 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %572 = call i32 @archive_entry_size(%struct.archive_entry* %571)
  %573 = call i32 @assertEqualInt(i32 %572, i32 10)
  %574 = load %struct.archive*, %struct.archive** %1, align 8
  %575 = load i32, i32* @ARCHIVE_OK, align 4
  %576 = load %struct.archive*, %struct.archive** %1, align 8
  %577 = call i32 @archive_read_data_block(%struct.archive* %576, i8** %3, i64* %6, i64* %7)
  %578 = call i32 @assertEqualIntA(%struct.archive* %574, i32 %575, i32 %577)
  %579 = load i64, i64* %6, align 8
  %580 = trunc i64 %579 to i32
  %581 = call i32 @assertEqualInt(i32 %580, i32 10)
  %582 = load i64, i64* %7, align 8
  %583 = trunc i64 %582 to i32
  %584 = call i32 @assertEqualInt(i32 %583, i32 0)
  %585 = load i8*, i8** %3, align 8
  %586 = call i32 @assertEqualMem(i8* %585, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %587 = load i32, i32* @ARCHIVE_EOF, align 4
  %588 = load %struct.archive*, %struct.archive** %1, align 8
  %589 = call i32 @archive_read_data_block(%struct.archive* %588, i8** %3, i64* %6, i64* %7)
  %590 = call i32 @assertEqualInt(i32 %587, i32 %589)
  %591 = load i64, i64* %6, align 8
  %592 = trunc i64 %591 to i32
  %593 = call i32 @assertEqualInt(i32 %592, i32 0)
  %594 = load i64, i64* %7, align 8
  %595 = trunc i64 %594 to i32
  %596 = call i32 @assertEqualInt(i32 %595, i32 10)
  %597 = load %struct.archive*, %struct.archive** %1, align 8
  %598 = call i32 @archive_read_disk_can_descend(%struct.archive* %597)
  %599 = call i32 @assertEqualInt(i32 0, i32 %598)
  br label %722

600:                                              ; preds = %561
  %601 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %602 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %601)
  %603 = call i64 @wcscmp(i32 %602, i8* bitcast ([16 x i32]* @.str.22 to i8*))
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %605, label %639

605:                                              ; preds = %600
  %606 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %607 = call i32 @archive_entry_filetype(%struct.archive_entry* %606)
  %608 = load i32, i32* @AE_IFREG, align 4
  %609 = call i32 @assertEqualInt(i32 %607, i32 %608)
  %610 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %611 = call i32 @archive_entry_size(%struct.archive_entry* %610)
  %612 = call i32 @assertEqualInt(i32 %611, i32 10)
  %613 = load %struct.archive*, %struct.archive** %1, align 8
  %614 = load i32, i32* @ARCHIVE_OK, align 4
  %615 = load %struct.archive*, %struct.archive** %1, align 8
  %616 = call i32 @archive_read_data_block(%struct.archive* %615, i8** %3, i64* %6, i64* %7)
  %617 = call i32 @assertEqualIntA(%struct.archive* %613, i32 %614, i32 %616)
  %618 = load i64, i64* %6, align 8
  %619 = trunc i64 %618 to i32
  %620 = call i32 @assertEqualInt(i32 %619, i32 10)
  %621 = load i64, i64* %7, align 8
  %622 = trunc i64 %621 to i32
  %623 = call i32 @assertEqualInt(i32 %622, i32 0)
  %624 = load i8*, i8** %3, align 8
  %625 = call i32 @assertEqualMem(i8* %624, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %626 = load i32, i32* @ARCHIVE_EOF, align 4
  %627 = load %struct.archive*, %struct.archive** %1, align 8
  %628 = call i32 @archive_read_data_block(%struct.archive* %627, i8** %3, i64* %6, i64* %7)
  %629 = call i32 @assertEqualInt(i32 %626, i32 %628)
  %630 = load i64, i64* %6, align 8
  %631 = trunc i64 %630 to i32
  %632 = call i32 @assertEqualInt(i32 %631, i32 0)
  %633 = load i64, i64* %7, align 8
  %634 = trunc i64 %633 to i32
  %635 = call i32 @assertEqualInt(i32 %634, i32 10)
  %636 = load %struct.archive*, %struct.archive** %1, align 8
  %637 = call i32 @archive_read_disk_can_descend(%struct.archive* %636)
  %638 = call i32 @assertEqualInt(i32 0, i32 %637)
  br label %721

639:                                              ; preds = %600
  %640 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %641 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %640)
  %642 = call i64 @wcscmp(i32 %641, i8* bitcast ([15 x i32]* @.str.23 to i8*))
  %643 = icmp eq i64 %642, 0
  br i1 %643, label %644, label %652

644:                                              ; preds = %639
  %645 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %646 = call i32 @archive_entry_filetype(%struct.archive_entry* %645)
  %647 = load i32, i32* @AE_IFDIR, align 4
  %648 = call i32 @assertEqualInt(i32 %646, i32 %647)
  %649 = load %struct.archive*, %struct.archive** %1, align 8
  %650 = call i32 @archive_read_disk_can_descend(%struct.archive* %649)
  %651 = call i32 @assertEqualInt(i32 1, i32 %650)
  br label %720

652:                                              ; preds = %639
  %653 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %654 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %653)
  %655 = call i64 @wcscmp(i32 %654, i8* bitcast ([15 x i32]* @.str.24 to i8*))
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %657, label %665

657:                                              ; preds = %652
  %658 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %659 = call i32 @archive_entry_filetype(%struct.archive_entry* %658)
  %660 = load i32, i32* @AE_IFDIR, align 4
  %661 = call i32 @assertEqualInt(i32 %659, i32 %660)
  %662 = load %struct.archive*, %struct.archive** %1, align 8
  %663 = call i32 @archive_read_disk_can_descend(%struct.archive* %662)
  %664 = call i32 @assertEqualInt(i32 1, i32 %663)
  br label %719

665:                                              ; preds = %652
  %666 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %667 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %666)
  %668 = call i64 @wcscmp(i32 %667, i8* bitcast ([15 x i32]* @.str.25 to i8*))
  %669 = icmp eq i64 %668, 0
  br i1 %669, label %670, label %678

670:                                              ; preds = %665
  %671 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %672 = call i32 @archive_entry_filetype(%struct.archive_entry* %671)
  %673 = load i32, i32* @AE_IFDIR, align 4
  %674 = call i32 @assertEqualInt(i32 %672, i32 %673)
  %675 = load %struct.archive*, %struct.archive** %1, align 8
  %676 = call i32 @archive_read_disk_can_descend(%struct.archive* %675)
  %677 = call i32 @assertEqualInt(i32 1, i32 %676)
  br label %718

678:                                              ; preds = %665
  %679 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %680 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %679)
  %681 = call i64 @wcscmp(i32 %680, i8* bitcast ([20 x i32]* @.str.26 to i8*))
  %682 = icmp eq i64 %681, 0
  br i1 %682, label %683, label %717

683:                                              ; preds = %678
  %684 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %685 = call i32 @archive_entry_filetype(%struct.archive_entry* %684)
  %686 = load i32, i32* @AE_IFREG, align 4
  %687 = call i32 @assertEqualInt(i32 %685, i32 %686)
  %688 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %689 = call i32 @archive_entry_size(%struct.archive_entry* %688)
  %690 = call i32 @assertEqualInt(i32 %689, i32 3)
  %691 = load %struct.archive*, %struct.archive** %1, align 8
  %692 = load i32, i32* @ARCHIVE_OK, align 4
  %693 = load %struct.archive*, %struct.archive** %1, align 8
  %694 = call i32 @archive_read_data_block(%struct.archive* %693, i8** %3, i64* %6, i64* %7)
  %695 = call i32 @assertEqualIntA(%struct.archive* %691, i32 %692, i32 %694)
  %696 = load i64, i64* %6, align 8
  %697 = trunc i64 %696 to i32
  %698 = call i32 @assertEqualInt(i32 %697, i32 3)
  %699 = load i64, i64* %7, align 8
  %700 = trunc i64 %699 to i32
  %701 = call i32 @assertEqualInt(i32 %700, i32 0)
  %702 = load i8*, i8** %3, align 8
  %703 = call i32 @assertEqualMem(i8* %702, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 3)
  %704 = load i32, i32* @ARCHIVE_EOF, align 4
  %705 = load %struct.archive*, %struct.archive** %1, align 8
  %706 = call i32 @archive_read_data_block(%struct.archive* %705, i8** %3, i64* %6, i64* %7)
  %707 = call i32 @assertEqualInt(i32 %704, i32 %706)
  %708 = load i64, i64* %6, align 8
  %709 = trunc i64 %708 to i32
  %710 = call i32 @assertEqualInt(i32 %709, i32 0)
  %711 = load i64, i64* %7, align 8
  %712 = trunc i64 %711 to i32
  %713 = call i32 @assertEqualInt(i32 %712, i32 3)
  %714 = load %struct.archive*, %struct.archive** %1, align 8
  %715 = call i32 @archive_read_disk_can_descend(%struct.archive* %714)
  %716 = call i32 @assertEqualInt(i32 0, i32 %715)
  br label %717

717:                                              ; preds = %683, %678
  br label %718

718:                                              ; preds = %717, %670
  br label %719

719:                                              ; preds = %718, %657
  br label %720

720:                                              ; preds = %719, %644
  br label %721

721:                                              ; preds = %720, %605
  br label %722

722:                                              ; preds = %721, %566
  br label %723

723:                                              ; preds = %722, %553
  br label %724

724:                                              ; preds = %723, %514
  br label %725

725:                                              ; preds = %724, %501
  br label %726

726:                                              ; preds = %725, %462
  br label %727

727:                                              ; preds = %726, %423
  br label %728

728:                                              ; preds = %727, %410
  %729 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %730 = call i32 @archive_entry_filetype(%struct.archive_entry* %729)
  %731 = load i32, i32* @AE_IFDIR, align 4
  %732 = icmp eq i32 %730, %731
  br i1 %732, label %733, label %739

733:                                              ; preds = %728
  %734 = load %struct.archive*, %struct.archive** %1, align 8
  %735 = load i32, i32* @ARCHIVE_OK, align 4
  %736 = load %struct.archive*, %struct.archive** %1, align 8
  %737 = call i32 @archive_read_disk_descend(%struct.archive* %736)
  %738 = call i32 @assertEqualIntA(%struct.archive* %734, i32 %735, i32 %737)
  br label %739

739:                                              ; preds = %733, %728
  br label %395

740:                                              ; preds = %395
  %741 = load %struct.archive*, %struct.archive** %1, align 8
  %742 = load i32, i32* @ARCHIVE_EOF, align 4
  %743 = load %struct.archive*, %struct.archive** %1, align 8
  %744 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %745 = call i32 @archive_read_next_header2(%struct.archive* %743, %struct.archive_entry* %744)
  %746 = call i32 @assertEqualIntA(%struct.archive* %741, i32 %742, i32 %745)
  %747 = load i32, i32* @ARCHIVE_OK, align 4
  %748 = load %struct.archive*, %struct.archive** %1, align 8
  %749 = call i32 @archive_read_close(%struct.archive* %748)
  %750 = call i32 @assertEqualInt(i32 %747, i32 %749)
  %751 = load %struct.archive*, %struct.archive** %1, align 8
  %752 = load i32, i32* @ARCHIVE_OK, align 4
  %753 = load %struct.archive*, %struct.archive** %1, align 8
  %754 = call i32 @archive_read_disk_open(%struct.archive* %753, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %755 = call i32 @assertEqualIntA(%struct.archive* %751, i32 %752, i32 %754)
  %756 = load %struct.archive*, %struct.archive** %1, align 8
  %757 = load i32, i32* @ARCHIVE_OK, align 4
  %758 = load %struct.archive*, %struct.archive** %1, align 8
  %759 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %760 = call i32 @archive_read_next_header2(%struct.archive* %758, %struct.archive_entry* %759)
  %761 = call i32 @assertEqualIntA(%struct.archive* %756, i32 %757, i32 %760)
  %762 = load %struct.archive*, %struct.archive** %1, align 8
  %763 = call i32 @archive_read_disk_can_descend(%struct.archive* %762)
  %764 = call i32 @assertEqualInt(i32 0, i32 %763)
  %765 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %766 = call i8* @archive_entry_pathname(%struct.archive_entry* %765)
  %767 = call i32 @assertEqualString(i8* %766, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %768 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %769 = call i32 @archive_entry_filetype(%struct.archive_entry* %768)
  %770 = load i32, i32* @AE_IFREG, align 4
  %771 = call i32 @assertEqualInt(i32 %769, i32 %770)
  %772 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %773 = call i32 @archive_entry_size(%struct.archive_entry* %772)
  %774 = call i32 @assertEqualInt(i32 %773, i32 10)
  %775 = load %struct.archive*, %struct.archive** %1, align 8
  %776 = load i32, i32* @ARCHIVE_OK, align 4
  %777 = load %struct.archive*, %struct.archive** %1, align 8
  %778 = call i32 @archive_read_data_block(%struct.archive* %777, i8** %3, i64* %6, i64* %7)
  %779 = call i32 @assertEqualIntA(%struct.archive* %775, i32 %776, i32 %778)
  %780 = load i64, i64* %6, align 8
  %781 = trunc i64 %780 to i32
  %782 = call i32 @assertEqualInt(i32 %781, i32 10)
  %783 = load i64, i64* %7, align 8
  %784 = trunc i64 %783 to i32
  %785 = call i32 @assertEqualInt(i32 %784, i32 0)
  %786 = load i8*, i8** %3, align 8
  %787 = call i32 @assertEqualMem(i8* %786, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %788 = load %struct.archive*, %struct.archive** %1, align 8
  %789 = load i32, i32* @ARCHIVE_EOF, align 4
  %790 = load %struct.archive*, %struct.archive** %1, align 8
  %791 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %792 = call i32 @archive_read_next_header2(%struct.archive* %790, %struct.archive_entry* %791)
  %793 = call i32 @assertEqualIntA(%struct.archive* %788, i32 %789, i32 %792)
  %794 = load i32, i32* @ARCHIVE_OK, align 4
  %795 = load %struct.archive*, %struct.archive** %1, align 8
  %796 = call i32 @archive_read_close(%struct.archive* %795)
  %797 = call i32 @assertEqualInt(i32 %794, i32 %796)
  %798 = call i8* @getcwd(i32* null, i32 0)
  store i8* %798, i8** %4, align 8
  %799 = load %struct.archive*, %struct.archive** %1, align 8
  %800 = load i32, i32* @ARCHIVE_OK, align 4
  %801 = load %struct.archive*, %struct.archive** %1, align 8
  %802 = call i32 @archive_read_disk_open(%struct.archive* %801, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %803 = call i32 @assertEqualIntA(%struct.archive* %799, i32 %800, i32 %802)
  store i32 12, i32* %8, align 4
  br label %804

804:                                              ; preds = %831, %740
  %805 = load i32, i32* %8, align 4
  %806 = add nsw i32 %805, -1
  store i32 %806, i32* %8, align 4
  %807 = icmp ne i32 %805, 0
  br i1 %807, label %808, label %832

808:                                              ; preds = %804
  %809 = load %struct.archive*, %struct.archive** %1, align 8
  %810 = load i32, i32* @ARCHIVE_OK, align 4
  %811 = load %struct.archive*, %struct.archive** %1, align 8
  %812 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %813 = call i32 @archive_read_next_header2(%struct.archive* %811, %struct.archive_entry* %812)
  %814 = call i32 @assertEqualIntA(%struct.archive* %809, i32 %810, i32 %813)
  %815 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %816 = call i8* @archive_entry_pathname(%struct.archive_entry* %815)
  %817 = call i64 @strcmp(i8* %816, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %818 = icmp eq i64 %817, 0
  br i1 %818, label %819, label %820

819:                                              ; preds = %808
  br label %832

820:                                              ; preds = %808
  %821 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %822 = call i32 @archive_entry_filetype(%struct.archive_entry* %821)
  %823 = load i32, i32* @AE_IFDIR, align 4
  %824 = icmp eq i32 %822, %823
  br i1 %824, label %825, label %831

825:                                              ; preds = %820
  %826 = load %struct.archive*, %struct.archive** %1, align 8
  %827 = load i32, i32* @ARCHIVE_OK, align 4
  %828 = load %struct.archive*, %struct.archive** %1, align 8
  %829 = call i32 @archive_read_disk_descend(%struct.archive* %828)
  %830 = call i32 @assertEqualIntA(%struct.archive* %826, i32 %827, i32 %829)
  br label %831

831:                                              ; preds = %825, %820
  br label %804

832:                                              ; preds = %819, %804
  %833 = load i32, i32* @ARCHIVE_OK, align 4
  %834 = load %struct.archive*, %struct.archive** %1, align 8
  %835 = call i32 @archive_read_free(%struct.archive* %834)
  %836 = call i32 @assertEqualInt(i32 %833, i32 %835)
  %837 = call i32 @failure(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.27, i64 0, i64 0))
  %838 = call i8* @getcwd(i32* null, i32 0)
  store i8* %838, i8** %5, align 8
  %839 = load i8*, i8** %4, align 8
  %840 = load i8*, i8** %5, align 8
  %841 = call i32 @assertEqualString(i8* %839, i8* %840)
  %842 = load i8*, i8** %4, align 8
  %843 = call i32 @free(i8* %842)
  %844 = load i8*, i8** %5, align 8
  %845 = call i32 @free(i8* %844)
  %846 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %847 = call i32 @archive_entry_free(%struct.archive_entry* %846)
  ret void
}

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_disk_can_descend(%struct.archive*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_disk_descend(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_open_w(%struct.archive*, i8*) #1

declare dso_local i64 @wcscmp(i32, i8*) #1

declare dso_local i32 @archive_entry_pathname_w(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i8* @getcwd(i32*, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
