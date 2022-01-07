; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_zisofs.c_test_write_format_iso9660_zisofs_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_zisofs.c_test_write_format_iso9660_zisofs_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"zisofs\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"zisofs option not supported on this platform\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"file3\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"file4\00", align 1
@zisofs_data = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"The ISO image size should be 71680 bytes.\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"System Area should be all nulls.\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"Primary Volume Descriptor should be in 16 Logical Sector.\00", align 1
@primary_id = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"CDROM                           \00", align 1
@volumesize = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [72 x i8] c"Supplementary Volume(Joliet) Descriptor should be in 17 Logical Sector.\00", align 1
@supplementary_id = common dso_local global i8* null, align 8
@volumeidu16 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [92 x i8] c"Date and Time of Primary Volume and Date and Time of Supplementary Volume must be the same.\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"Volume Descriptor Set Terminator should be in 18 Logical Sector.\00", align 1
@terminator_id = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [62 x i8] c"Body of Volume Descriptor Set Terminator should be all nulls.\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"file1 image should be zisofs'ed.\00", align 1
@zisofs_magic = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [37 x i8] c"file2 image should not be zisofs'ed.\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"file3 image should be zisofs'ed.\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"file4 image should be zisofs'ed.\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c".\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_write_format_iso9660_zisofs_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_write_format_iso9660_zisofs_1() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 73728, i64* %6, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 1024)
  %12 = load i64, i64* %6, align 8
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %497

21:                                               ; preds = %0
  %22 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %22, %struct.archive** %3, align 8
  %23 = icmp ne %struct.archive* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = load %struct.archive*, %struct.archive** %3, align 8
  %28 = call i32 @archive_write_set_format_iso9660(%struct.archive* %27)
  %29 = call i32 @assertEqualIntA(%struct.archive* %26, i32 0, i32 %28)
  %30 = load %struct.archive*, %struct.archive** %3, align 8
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = call i32 @archive_write_add_filter_none(%struct.archive* %31)
  %33 = call i32 @assertEqualIntA(%struct.archive* %30, i32 0, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %3, align 8
  %35 = call i32 @archive_write_set_option(%struct.archive* %34, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ARCHIVE_FATAL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %21
  %40 = call i32 @skipping(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  %42 = load %struct.archive*, %struct.archive** %3, align 8
  %43 = call i32 @archive_write_free(%struct.archive* %42)
  %44 = call i32 @assertEqualInt(i32 %41, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  br label %497

47:                                               ; preds = %21
  %48 = load %struct.archive*, %struct.archive** %3, align 8
  %49 = load %struct.archive*, %struct.archive** %3, align 8
  %50 = call i32 @archive_write_set_option(%struct.archive* %49, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %51 = call i32 @assertEqualIntA(%struct.archive* %48, i32 0, i32 %50)
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = load %struct.archive*, %struct.archive** %3, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @archive_write_open_memory(%struct.archive* %53, i8* %54, i64 %55, i64* %7)
  %57 = call i32 @assertEqualIntA(%struct.archive* %52, i32 0, i32 %56)
  %58 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %58, %struct.archive_entry** %4, align 8
  %59 = icmp ne %struct.archive_entry* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %63 = call i32 @archive_entry_set_atime(%struct.archive_entry* %62, i32 2, i32 20)
  %64 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %65 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %64, i32 3, i32 30)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %67 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %66, i32 4, i32 40)
  %68 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %69 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %68, i32 5, i32 50)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %71 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %73 = load i32, i32* @S_IFREG, align 4
  %74 = or i32 %73, 493
  %75 = call i32 @archive_entry_set_mode(%struct.archive_entry* %72, i32 %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %77 = call i32 @archive_entry_set_size(%struct.archive_entry* %76, i32 262144)
  %78 = load %struct.archive*, %struct.archive** %3, align 8
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  %80 = load %struct.archive*, %struct.archive** %3, align 8
  %81 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %82 = call i32 @archive_write_header(%struct.archive* %80, %struct.archive_entry* %81)
  %83 = call i32 @assertEqualIntA(%struct.archive* %78, i32 %79, i32 %82)
  %84 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %85 = call i32 @archive_entry_free(%struct.archive_entry* %84)
  %86 = load %struct.archive*, %struct.archive** %3, align 8
  %87 = load %struct.archive*, %struct.archive** %3, align 8
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %89 = call i32 @archive_write_data(%struct.archive* %87, i8* %88, i32 1024)
  %90 = call i32 @assertEqualIntA(%struct.archive* %86, i32 1024, i32 %89)
  %91 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %91, %struct.archive_entry** %4, align 8
  %92 = icmp ne %struct.archive_entry* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %96 = call i32 @archive_entry_set_atime(%struct.archive_entry* %95, i32 2, i32 20)
  %97 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %98 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %97, i32 3, i32 30)
  %99 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %100 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %99, i32 4, i32 40)
  %101 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %102 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %101, i32 5, i32 50)
  %103 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %104 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %106 = load i32, i32* @S_IFREG, align 4
  %107 = or i32 %106, 493
  %108 = call i32 @archive_entry_set_mode(%struct.archive_entry* %105, i32 %107)
  %109 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %110 = call i32 @archive_entry_set_size(%struct.archive_entry* %109, i32 2048)
  %111 = load %struct.archive*, %struct.archive** %3, align 8
  %112 = load i32, i32* @ARCHIVE_OK, align 4
  %113 = load %struct.archive*, %struct.archive** %3, align 8
  %114 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %115 = call i32 @archive_write_header(%struct.archive* %113, %struct.archive_entry* %114)
  %116 = call i32 @assertEqualIntA(%struct.archive* %111, i32 %112, i32 %115)
  %117 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %118 = call i32 @archive_entry_free(%struct.archive_entry* %117)
  %119 = load %struct.archive*, %struct.archive** %3, align 8
  %120 = load %struct.archive*, %struct.archive** %3, align 8
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %122 = call i32 @archive_write_data(%struct.archive* %120, i8* %121, i32 1024)
  %123 = call i32 @assertEqualIntA(%struct.archive* %119, i32 1024, i32 %122)
  %124 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %124, %struct.archive_entry** %4, align 8
  %125 = icmp ne %struct.archive_entry* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %129 = call i32 @archive_entry_set_atime(%struct.archive_entry* %128, i32 2, i32 20)
  %130 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %131 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %130, i32 3, i32 30)
  %132 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %133 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %132, i32 4, i32 40)
  %134 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %135 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %134, i32 5, i32 50)
  %136 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %137 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %138 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %139 = load i32, i32* @S_IFREG, align 4
  %140 = or i32 %139, 493
  %141 = call i32 @archive_entry_set_mode(%struct.archive_entry* %138, i32 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %143 = call i32 @archive_entry_set_size(%struct.archive_entry* %142, i32 2049)
  %144 = load %struct.archive*, %struct.archive** %3, align 8
  %145 = load i32, i32* @ARCHIVE_OK, align 4
  %146 = load %struct.archive*, %struct.archive** %3, align 8
  %147 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %148 = call i32 @archive_write_header(%struct.archive* %146, %struct.archive_entry* %147)
  %149 = call i32 @assertEqualIntA(%struct.archive* %144, i32 %145, i32 %148)
  %150 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %151 = call i32 @archive_entry_free(%struct.archive_entry* %150)
  %152 = load %struct.archive*, %struct.archive** %3, align 8
  %153 = load %struct.archive*, %struct.archive** %3, align 8
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %155 = call i32 @archive_write_data(%struct.archive* %153, i8* %154, i32 1024)
  %156 = call i32 @assertEqualIntA(%struct.archive* %152, i32 1024, i32 %155)
  %157 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %157, %struct.archive_entry** %4, align 8
  %158 = icmp ne %struct.archive_entry* %157, null
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %162 = call i32 @archive_entry_set_atime(%struct.archive_entry* %161, i32 2, i32 20)
  %163 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %164 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %163, i32 3, i32 30)
  %165 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %166 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %165, i32 4, i32 40)
  %167 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %168 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %167, i32 5, i32 50)
  %169 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %170 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %171 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %172 = load i32, i32* @S_IFREG, align 4
  %173 = or i32 %172, 493
  %174 = call i32 @archive_entry_set_mode(%struct.archive_entry* %171, i32 %173)
  %175 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %176 = call i32 @archive_entry_set_size(%struct.archive_entry* %175, i32 24)
  %177 = load %struct.archive*, %struct.archive** %3, align 8
  %178 = load i32, i32* @ARCHIVE_OK, align 4
  %179 = load %struct.archive*, %struct.archive** %3, align 8
  %180 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %181 = call i32 @archive_write_header(%struct.archive* %179, %struct.archive_entry* %180)
  %182 = call i32 @assertEqualIntA(%struct.archive* %177, i32 %178, i32 %181)
  %183 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %184 = call i32 @archive_entry_free(%struct.archive_entry* %183)
  %185 = load %struct.archive*, %struct.archive** %3, align 8
  %186 = load %struct.archive*, %struct.archive** %3, align 8
  %187 = load i8*, i8** @zisofs_data, align 8
  %188 = call i32 @archive_write_data(%struct.archive* %186, i8* %187, i32 24)
  %189 = call i32 @assertEqualIntA(%struct.archive* %185, i32 24, i32 %188)
  %190 = load %struct.archive*, %struct.archive** %3, align 8
  %191 = load i32, i32* @ARCHIVE_OK, align 4
  %192 = load %struct.archive*, %struct.archive** %3, align 8
  %193 = call i32 @archive_write_close(%struct.archive* %192)
  %194 = call i32 @assertEqualIntA(%struct.archive* %190, i32 %191, i32 %193)
  %195 = load %struct.archive*, %struct.archive** %3, align 8
  %196 = load i32, i32* @ARCHIVE_OK, align 4
  %197 = load %struct.archive*, %struct.archive** %3, align 8
  %198 = call i32 @archive_write_free(%struct.archive* %197)
  %199 = call i32 @assertEqualIntA(%struct.archive* %195, i32 %196, i32 %198)
  %200 = call i32 @failure(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %201 = load i64, i64* %7, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @assertEqualInt(i32 %202, i32 71680)
  store i32 0, i32* %8, align 4
  br label %204

204:                                              ; preds = %216, %47
  %205 = load i32, i32* %8, align 4
  %206 = icmp ult i32 %205, 32768
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %209 = load i8*, i8** %5, align 8
  %210 = load i32, i32* %8, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = call i32 @assertEqualInt(i32 %214, i32 0)
  br label %216

216:                                              ; preds = %207
  %217 = load i32, i32* %8, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %204

219:                                              ; preds = %204
  %220 = call i32 @failure(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 32768
  %223 = load i8*, i8** @primary_id, align 8
  %224 = call i32 (i8*, ...) @assertEqualMem(i8* %222, i8* %223, i32 8)
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 32768
  %227 = getelementptr inbounds i8, i8* %226, i64 40
  %228 = call i32 (i8*, ...) @assertEqualMem(i8* %227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 32)
  %229 = load i8*, i8** %5, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 32768
  %231 = getelementptr inbounds i8, i8* %230, i64 80
  %232 = load i8*, i8** @volumesize, align 8
  %233 = call i32 (i8*, ...) @assertEqualMem(i8* %231, i8* %232, i32 8)
  %234 = call i32 @failure(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  %235 = load i8*, i8** %5, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 34816
  %237 = load i8*, i8** @supplementary_id, align 8
  %238 = call i32 (i8*, ...) @assertEqualMem(i8* %236, i8* %237, i32 8)
  %239 = load i8*, i8** %5, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 34816
  %241 = getelementptr inbounds i8, i8* %240, i64 40
  %242 = load i8*, i8** @volumeidu16, align 8
  %243 = call i32 (i8*, ...) @assertEqualMem(i8* %241, i8* %242, i32 32)
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 34816
  %246 = getelementptr inbounds i8, i8* %245, i64 80
  %247 = load i8*, i8** @volumesize, align 8
  %248 = call i32 (i8*, ...) @assertEqualMem(i8* %246, i8* %247, i32 8)
  %249 = call i32 @failure(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.13, i64 0, i64 0))
  %250 = load i8*, i8** %5, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 32768
  %252 = getelementptr inbounds i8, i8* %251, i64 813
  %253 = load i8*, i8** %5, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 34816
  %255 = getelementptr inbounds i8, i8* %254, i64 813
  %256 = call i32 (i8*, ...) @assertEqualMem(i8* %252, i8* %255, i32 68)
  %257 = call i32 @failure(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i64 0, i64 0))
  %258 = load i8*, i8** %5, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 36864
  %260 = load i8*, i8** @terminator_id, align 8
  %261 = call i32 (i8*, ...) @assertEqualMem(i8* %259, i8* %260, i32 8)
  store i32 8, i32* %8, align 4
  br label %262

262:                                              ; preds = %275, %219
  %263 = load i32, i32* %8, align 4
  %264 = icmp ult i32 %263, 2048
  br i1 %264, label %265, label %278

265:                                              ; preds = %262
  %266 = call i32 @failure(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0))
  %267 = load i8*, i8** %5, align 8
  %268 = load i32, i32* %8, align 4
  %269 = add i32 36864, %268
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %267, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = call i32 @assertEqualInt(i32 %273, i32 0)
  br label %275

275:                                              ; preds = %265
  %276 = load i32, i32* %8, align 4
  %277 = add i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %262

278:                                              ; preds = %262
  %279 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %280 = load i8*, i8** %5, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 63488
  %282 = load i8*, i8** @zisofs_magic, align 8
  %283 = call i32 (i8*, ...) @assertEqualMem(i8* %281, i8* %282, i32 8)
  %284 = call i32 @failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %285 = load i8*, i8** %5, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 65536
  %287 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %288 = call i32 (i8*, ...) @assertEqualMem(i8* %286, i8* %287, i32 8)
  %289 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %290 = load i8*, i8** %5, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 67584
  %292 = load i8*, i8** @zisofs_magic, align 8
  %293 = call i32 (i8*, ...) @assertEqualMem(i8* %291, i8* %292, i32 8)
  %294 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %295 = load i8*, i8** %5, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 69632
  %297 = load i8*, i8** @zisofs_magic, align 8
  %298 = call i32 (i8*, ...) @assertEqualMem(i8* %296, i8* %297, i32 8)
  %299 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %299, %struct.archive** %3, align 8
  %300 = icmp ne %struct.archive* %299, null
  %301 = zext i1 %300 to i32
  %302 = call i32 @assert(i32 %301)
  %303 = load %struct.archive*, %struct.archive** %3, align 8
  %304 = load %struct.archive*, %struct.archive** %3, align 8
  %305 = call i32 @archive_read_support_format_all(%struct.archive* %304)
  %306 = call i32 @assertEqualIntA(%struct.archive* %303, i32 0, i32 %305)
  %307 = load %struct.archive*, %struct.archive** %3, align 8
  %308 = load %struct.archive*, %struct.archive** %3, align 8
  %309 = call i32 @archive_read_support_filter_all(%struct.archive* %308)
  %310 = call i32 @assertEqualIntA(%struct.archive* %307, i32 0, i32 %309)
  %311 = load %struct.archive*, %struct.archive** %3, align 8
  %312 = load %struct.archive*, %struct.archive** %3, align 8
  %313 = load i8*, i8** %5, align 8
  %314 = load i64, i64* %7, align 8
  %315 = call i32 @archive_read_open_memory(%struct.archive* %312, i8* %313, i64 %314)
  %316 = call i32 @assertEqualIntA(%struct.archive* %311, i32 0, i32 %315)
  %317 = load %struct.archive*, %struct.archive** %3, align 8
  %318 = load %struct.archive*, %struct.archive** %3, align 8
  %319 = call i32 @archive_read_next_header(%struct.archive* %318, %struct.archive_entry** %4)
  %320 = call i32 @assertEqualIntA(%struct.archive* %317, i32 0, i32 %319)
  %321 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %322 = call i32 @archive_entry_atime(%struct.archive_entry* %321)
  %323 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %324 = call i32 @archive_entry_ctime(%struct.archive_entry* %323)
  %325 = call i32 @assertEqualInt(i32 %322, i32 %324)
  %326 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %327 = call i32 @archive_entry_atime(%struct.archive_entry* %326)
  %328 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %329 = call i32 @archive_entry_mtime(%struct.archive_entry* %328)
  %330 = call i32 @assertEqualInt(i32 %327, i32 %329)
  %331 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %332 = call i32 @archive_entry_pathname(%struct.archive_entry* %331)
  %333 = call i32 @assertEqualString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 %332)
  %334 = load i32, i32* @S_IFDIR, align 4
  %335 = or i32 %334, 365
  %336 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %337 = call i32 @archive_entry_mode(%struct.archive_entry* %336)
  %338 = icmp eq i32 %335, %337
  %339 = zext i1 %338 to i32
  %340 = call i32 @assert(i32 %339)
  %341 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %342 = call i32 @archive_entry_size(%struct.archive_entry* %341)
  %343 = call i32 @assertEqualInt(i32 2048, i32 %342)
  %344 = load %struct.archive*, %struct.archive** %3, align 8
  %345 = load %struct.archive*, %struct.archive** %3, align 8
  %346 = call i32 @archive_read_next_header(%struct.archive* %345, %struct.archive_entry** %4)
  %347 = call i32 @assertEqualIntA(%struct.archive* %344, i32 0, i32 %346)
  %348 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %349 = call i32 @archive_entry_atime(%struct.archive_entry* %348)
  %350 = call i32 @assertEqualInt(i32 2, i32 %349)
  %351 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %352 = call i32 @archive_entry_ctime(%struct.archive_entry* %351)
  %353 = call i32 @assertEqualInt(i32 4, i32 %352)
  %354 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %355 = call i32 @archive_entry_mtime(%struct.archive_entry* %354)
  %356 = call i32 @assertEqualInt(i32 5, i32 %355)
  %357 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %358 = call i32 @archive_entry_pathname(%struct.archive_entry* %357)
  %359 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %358)
  %360 = load i32, i32* @S_IFREG, align 4
  %361 = or i32 %360, 365
  %362 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %363 = call i32 @archive_entry_mode(%struct.archive_entry* %362)
  %364 = icmp eq i32 %361, %363
  %365 = zext i1 %364 to i32
  %366 = call i32 @assert(i32 %365)
  %367 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %368 = call i32 @archive_entry_size(%struct.archive_entry* %367)
  %369 = call i32 @assertEqualInt(i32 262144, i32 %368)
  %370 = load %struct.archive*, %struct.archive** %3, align 8
  %371 = load %struct.archive*, %struct.archive** %3, align 8
  %372 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %373 = call i32 @archive_read_data(%struct.archive* %371, i8* %372, i32 1024)
  %374 = call i32 @assertEqualIntA(%struct.archive* %370, i32 1024, i32 %373)
  %375 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %376 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %377 = call i32 (i8*, ...) @assertEqualMem(i8* %375, i8* %376, i32 1024)
  %378 = load %struct.archive*, %struct.archive** %3, align 8
  %379 = load %struct.archive*, %struct.archive** %3, align 8
  %380 = call i32 @archive_read_next_header(%struct.archive* %379, %struct.archive_entry** %4)
  %381 = call i32 @assertEqualIntA(%struct.archive* %378, i32 0, i32 %380)
  %382 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %383 = call i32 @archive_entry_atime(%struct.archive_entry* %382)
  %384 = call i32 @assertEqualInt(i32 2, i32 %383)
  %385 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %386 = call i32 @archive_entry_ctime(%struct.archive_entry* %385)
  %387 = call i32 @assertEqualInt(i32 4, i32 %386)
  %388 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %389 = call i32 @archive_entry_mtime(%struct.archive_entry* %388)
  %390 = call i32 @assertEqualInt(i32 5, i32 %389)
  %391 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %392 = call i32 @archive_entry_pathname(%struct.archive_entry* %391)
  %393 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %392)
  %394 = load i32, i32* @S_IFREG, align 4
  %395 = or i32 %394, 365
  %396 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %397 = call i32 @archive_entry_mode(%struct.archive_entry* %396)
  %398 = icmp eq i32 %395, %397
  %399 = zext i1 %398 to i32
  %400 = call i32 @assert(i32 %399)
  %401 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %402 = call i32 @archive_entry_size(%struct.archive_entry* %401)
  %403 = call i32 @assertEqualInt(i32 2048, i32 %402)
  %404 = load %struct.archive*, %struct.archive** %3, align 8
  %405 = load %struct.archive*, %struct.archive** %3, align 8
  %406 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %407 = call i32 @archive_read_data(%struct.archive* %405, i8* %406, i32 1024)
  %408 = call i32 @assertEqualIntA(%struct.archive* %404, i32 1024, i32 %407)
  %409 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %410 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %411 = call i32 (i8*, ...) @assertEqualMem(i8* %409, i8* %410, i32 1024)
  %412 = load %struct.archive*, %struct.archive** %3, align 8
  %413 = load %struct.archive*, %struct.archive** %3, align 8
  %414 = call i32 @archive_read_next_header(%struct.archive* %413, %struct.archive_entry** %4)
  %415 = call i32 @assertEqualIntA(%struct.archive* %412, i32 0, i32 %414)
  %416 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %417 = call i32 @archive_entry_atime(%struct.archive_entry* %416)
  %418 = call i32 @assertEqualInt(i32 2, i32 %417)
  %419 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %420 = call i32 @archive_entry_ctime(%struct.archive_entry* %419)
  %421 = call i32 @assertEqualInt(i32 4, i32 %420)
  %422 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %423 = call i32 @archive_entry_mtime(%struct.archive_entry* %422)
  %424 = call i32 @assertEqualInt(i32 5, i32 %423)
  %425 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %426 = call i32 @archive_entry_pathname(%struct.archive_entry* %425)
  %427 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %426)
  %428 = load i32, i32* @S_IFREG, align 4
  %429 = or i32 %428, 365
  %430 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %431 = call i32 @archive_entry_mode(%struct.archive_entry* %430)
  %432 = icmp eq i32 %429, %431
  %433 = zext i1 %432 to i32
  %434 = call i32 @assert(i32 %433)
  %435 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %436 = call i32 @archive_entry_size(%struct.archive_entry* %435)
  %437 = call i32 @assertEqualInt(i32 2049, i32 %436)
  %438 = load %struct.archive*, %struct.archive** %3, align 8
  %439 = load %struct.archive*, %struct.archive** %3, align 8
  %440 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %441 = call i32 @archive_read_data(%struct.archive* %439, i8* %440, i32 1024)
  %442 = call i32 @assertEqualIntA(%struct.archive* %438, i32 1024, i32 %441)
  %443 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %444 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %445 = call i32 (i8*, ...) @assertEqualMem(i8* %443, i8* %444, i32 1024)
  %446 = load %struct.archive*, %struct.archive** %3, align 8
  %447 = load %struct.archive*, %struct.archive** %3, align 8
  %448 = call i32 @archive_read_next_header(%struct.archive* %447, %struct.archive_entry** %4)
  %449 = call i32 @assertEqualIntA(%struct.archive* %446, i32 0, i32 %448)
  %450 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %451 = call i32 @archive_entry_atime(%struct.archive_entry* %450)
  %452 = call i32 @assertEqualInt(i32 2, i32 %451)
  %453 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %454 = call i32 @archive_entry_ctime(%struct.archive_entry* %453)
  %455 = call i32 @assertEqualInt(i32 4, i32 %454)
  %456 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %457 = call i32 @archive_entry_mtime(%struct.archive_entry* %456)
  %458 = call i32 @assertEqualInt(i32 5, i32 %457)
  %459 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %460 = call i32 @archive_entry_pathname(%struct.archive_entry* %459)
  %461 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %460)
  %462 = load i32, i32* @S_IFREG, align 4
  %463 = or i32 %462, 365
  %464 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %465 = call i32 @archive_entry_mode(%struct.archive_entry* %464)
  %466 = icmp eq i32 %463, %465
  %467 = zext i1 %466 to i32
  %468 = call i32 @assert(i32 %467)
  %469 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %470 = call i32 @archive_entry_size(%struct.archive_entry* %469)
  %471 = call i32 @assertEqualInt(i32 32768, i32 %470)
  %472 = load %struct.archive*, %struct.archive** %3, align 8
  %473 = load %struct.archive*, %struct.archive** %3, align 8
  %474 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %475 = call i32 @archive_read_data(%struct.archive* %473, i8* %474, i32 1024)
  %476 = call i32 @assertEqualIntA(%struct.archive* %472, i32 1024, i32 %475)
  %477 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %478 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %479 = call i32 (i8*, ...) @assertEqualMem(i8* %477, i8* %478, i32 1024)
  %480 = load %struct.archive*, %struct.archive** %3, align 8
  %481 = load i32, i32* @ARCHIVE_EOF, align 4
  %482 = load %struct.archive*, %struct.archive** %3, align 8
  %483 = call i32 @archive_read_next_header(%struct.archive* %482, %struct.archive_entry** %4)
  %484 = call i32 @assertEqualIntA(%struct.archive* %480, i32 %481, i32 %483)
  %485 = load %struct.archive*, %struct.archive** %3, align 8
  %486 = load i32, i32* @ARCHIVE_OK, align 4
  %487 = load %struct.archive*, %struct.archive** %3, align 8
  %488 = call i32 @archive_read_close(%struct.archive* %487)
  %489 = call i32 @assertEqualIntA(%struct.archive* %485, i32 %486, i32 %488)
  %490 = load %struct.archive*, %struct.archive** %3, align 8
  %491 = load i32, i32* @ARCHIVE_OK, align 4
  %492 = load %struct.archive*, %struct.archive** %3, align 8
  %493 = call i32 @archive_read_free(%struct.archive* %492)
  %494 = call i32 @assertEqualIntA(%struct.archive* %490, i32 %491, i32 %493)
  %495 = load i8*, i8** %5, align 8
  %496 = call i32 @free(i8* %495)
  br label %497

497:                                              ; preds = %278, %39, %20
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_iso9660(%struct.archive*) #1

declare dso_local i32 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_write_set_option(%struct.archive*, i32*, i8*, i8*) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_birthtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualMem(i8*, ...) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
