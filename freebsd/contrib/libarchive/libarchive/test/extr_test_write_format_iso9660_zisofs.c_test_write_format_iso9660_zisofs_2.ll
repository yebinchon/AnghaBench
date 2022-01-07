; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_zisofs.c_test_write_format_iso9660_zisofs_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_zisofs.c_test_write_format_iso9660_zisofs_2.c"
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
@.str.8 = private unnamed_addr constant [43 x i8] c"The ISO image size should be 110592 bytes.\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"System Area should be all nulls.\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"Primary Volume Descriptor should be in 16 Logical Sector.\00", align 1
@primary_id = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"CDROM                           \00", align 1
@volumesize2 = common dso_local global i8* null, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_write_format_iso9660_zisofs_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_write_format_iso9660_zisofs_2() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 122880, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i8* @malloc(i64 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %567

20:                                               ; preds = %0
  %21 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %21, %struct.archive** %3, align 8
  %22 = icmp ne %struct.archive* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.archive*, %struct.archive** %3, align 8
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_write_set_format_iso9660(%struct.archive* %26)
  %28 = call i32 @assertEqualIntA(%struct.archive* %25, i32 0, i32 %27)
  %29 = load %struct.archive*, %struct.archive** %3, align 8
  %30 = load %struct.archive*, %struct.archive** %3, align 8
  %31 = call i32 @archive_write_add_filter_none(%struct.archive* %30)
  %32 = call i32 @assertEqualIntA(%struct.archive* %29, i32 0, i32 %31)
  %33 = load %struct.archive*, %struct.archive** %3, align 8
  %34 = call i32 @archive_write_set_option(%struct.archive* %33, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %20
  %39 = call i32 @skipping(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  %41 = load %struct.archive*, %struct.archive** %3, align 8
  %42 = call i32 @archive_write_free(%struct.archive* %41)
  %43 = call i32 @assertEqualInt(i32 %40, i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @free(i8* %44)
  br label %567

46:                                               ; preds = %20
  %47 = load %struct.archive*, %struct.archive** %3, align 8
  %48 = load %struct.archive*, %struct.archive** %3, align 8
  %49 = call i32 @archive_write_set_option(%struct.archive* %48, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %50 = call i32 @assertEqualIntA(%struct.archive* %47, i32 0, i32 %49)
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = load %struct.archive*, %struct.archive** %3, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @archive_write_open_memory(%struct.archive* %52, i8* %53, i64 %54, i64* %7)
  %56 = call i32 @assertEqualIntA(%struct.archive* %51, i32 0, i32 %55)
  %57 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %57, %struct.archive_entry** %4, align 8
  %58 = icmp ne %struct.archive_entry* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %62 = call i32 @archive_entry_set_atime(%struct.archive_entry* %61, i32 2, i32 20)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %64 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %63, i32 3, i32 30)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %66 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %65, i32 4, i32 40)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %68 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %67, i32 5, i32 50)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %70 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %72 = load i32, i32* @S_IFREG, align 4
  %73 = or i32 %72, 493
  %74 = call i32 @archive_entry_set_mode(%struct.archive_entry* %71, i32 %73)
  %75 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %76 = call i32 @archive_entry_set_size(%struct.archive_entry* %75, i32 262144)
  %77 = load %struct.archive*, %struct.archive** %3, align 8
  %78 = load i32, i32* @ARCHIVE_OK, align 4
  %79 = load %struct.archive*, %struct.archive** %3, align 8
  %80 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %81 = call i32 @archive_write_header(%struct.archive* %79, %struct.archive_entry* %80)
  %82 = call i32 @assertEqualIntA(%struct.archive* %77, i32 %78, i32 %81)
  %83 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %84 = call i32 @archive_entry_free(%struct.archive_entry* %83)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %133, %46
  %86 = load i32, i32* %8, align 4
  %87 = icmp ult i32 %86, 256
  br i1 %87, label %88, label %136

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 1024
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = xor i32 %96, %97
  %99 = and i32 %98, 255
  %100 = trunc i32 %99 to i8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %102
  store i8 %100, i8* %103, align 1
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %92

107:                                              ; preds = %92
  br label %127

108:                                              ; preds = %88
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %123, %108
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 1024
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %113, %114
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = xor i32 %120, %115
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %118, align 1
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %109

126:                                              ; preds = %109
  br label %127

127:                                              ; preds = %126, %107
  %128 = load %struct.archive*, %struct.archive** %3, align 8
  %129 = load %struct.archive*, %struct.archive** %3, align 8
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %131 = call i32 @archive_write_data(%struct.archive* %129, i8* %130, i32 1024)
  %132 = call i32 @assertEqualIntA(%struct.archive* %128, i32 1024, i32 %131)
  br label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %8, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %85

136:                                              ; preds = %85
  %137 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %137, %struct.archive_entry** %4, align 8
  %138 = icmp ne %struct.archive_entry* %137, null
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %142 = call i32 @archive_entry_set_atime(%struct.archive_entry* %141, i32 2, i32 20)
  %143 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %144 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %143, i32 3, i32 30)
  %145 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %146 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %145, i32 4, i32 40)
  %147 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %148 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %147, i32 5, i32 50)
  %149 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %150 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %151 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %152 = load i32, i32* @S_IFREG, align 4
  %153 = or i32 %152, 493
  %154 = call i32 @archive_entry_set_mode(%struct.archive_entry* %151, i32 %153)
  %155 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %156 = call i32 @archive_entry_set_size(%struct.archive_entry* %155, i32 2048)
  %157 = load %struct.archive*, %struct.archive** %3, align 8
  %158 = load i32, i32* @ARCHIVE_OK, align 4
  %159 = load %struct.archive*, %struct.archive** %3, align 8
  %160 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %161 = call i32 @archive_write_header(%struct.archive* %159, %struct.archive_entry* %160)
  %162 = call i32 @assertEqualIntA(%struct.archive* %157, i32 %158, i32 %161)
  %163 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %164 = call i32 @archive_entry_free(%struct.archive_entry* %163)
  %165 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %166 = call i32 @memset(i8* %165, i8 signext 97, i32 1024)
  %167 = load %struct.archive*, %struct.archive** %3, align 8
  %168 = load %struct.archive*, %struct.archive** %3, align 8
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %170 = call i32 @archive_write_data(%struct.archive* %168, i8* %169, i32 1024)
  %171 = call i32 @assertEqualIntA(%struct.archive* %167, i32 1024, i32 %170)
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %173 = call i32 @memset(i8* %172, i8 signext 98, i32 1024)
  %174 = load %struct.archive*, %struct.archive** %3, align 8
  %175 = load %struct.archive*, %struct.archive** %3, align 8
  %176 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %177 = call i32 @archive_write_data(%struct.archive* %175, i8* %176, i32 1024)
  %178 = call i32 @assertEqualIntA(%struct.archive* %174, i32 1024, i32 %177)
  %179 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %179, %struct.archive_entry** %4, align 8
  %180 = icmp ne %struct.archive_entry* %179, null
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %184 = call i32 @archive_entry_set_atime(%struct.archive_entry* %183, i32 2, i32 20)
  %185 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %186 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %185, i32 3, i32 30)
  %187 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %188 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %187, i32 4, i32 40)
  %189 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %190 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %189, i32 5, i32 50)
  %191 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %192 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %193 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %194 = load i32, i32* @S_IFREG, align 4
  %195 = or i32 %194, 493
  %196 = call i32 @archive_entry_set_mode(%struct.archive_entry* %193, i32 %195)
  %197 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %198 = call i32 @archive_entry_set_size(%struct.archive_entry* %197, i32 2049)
  %199 = load %struct.archive*, %struct.archive** %3, align 8
  %200 = load i32, i32* @ARCHIVE_OK, align 4
  %201 = load %struct.archive*, %struct.archive** %3, align 8
  %202 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %203 = call i32 @archive_write_header(%struct.archive* %201, %struct.archive_entry* %202)
  %204 = call i32 @assertEqualIntA(%struct.archive* %199, i32 %200, i32 %203)
  %205 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %206 = call i32 @archive_entry_free(%struct.archive_entry* %205)
  %207 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %208 = call i32 @memset(i8* %207, i8 signext 90, i32 1024)
  %209 = load %struct.archive*, %struct.archive** %3, align 8
  %210 = load %struct.archive*, %struct.archive** %3, align 8
  %211 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %212 = call i32 @archive_write_data(%struct.archive* %210, i8* %211, i32 1024)
  %213 = call i32 @assertEqualIntA(%struct.archive* %209, i32 1024, i32 %212)
  %214 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %214, %struct.archive_entry** %4, align 8
  %215 = icmp ne %struct.archive_entry* %214, null
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %219 = call i32 @archive_entry_set_atime(%struct.archive_entry* %218, i32 2, i32 20)
  %220 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %221 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %220, i32 3, i32 30)
  %222 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %223 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %222, i32 4, i32 40)
  %224 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %225 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %224, i32 5, i32 50)
  %226 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %227 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %228 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %229 = load i32, i32* @S_IFREG, align 4
  %230 = or i32 %229, 493
  %231 = call i32 @archive_entry_set_mode(%struct.archive_entry* %228, i32 %230)
  %232 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %233 = call i32 @archive_entry_set_size(%struct.archive_entry* %232, i32 24)
  %234 = load %struct.archive*, %struct.archive** %3, align 8
  %235 = load i32, i32* @ARCHIVE_OK, align 4
  %236 = load %struct.archive*, %struct.archive** %3, align 8
  %237 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %238 = call i32 @archive_write_header(%struct.archive* %236, %struct.archive_entry* %237)
  %239 = call i32 @assertEqualIntA(%struct.archive* %234, i32 %235, i32 %238)
  %240 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %241 = call i32 @archive_entry_free(%struct.archive_entry* %240)
  %242 = load %struct.archive*, %struct.archive** %3, align 8
  %243 = load %struct.archive*, %struct.archive** %3, align 8
  %244 = load i8*, i8** @zisofs_data, align 8
  %245 = call i32 @archive_write_data(%struct.archive* %243, i8* %244, i32 24)
  %246 = call i32 @assertEqualIntA(%struct.archive* %242, i32 24, i32 %245)
  %247 = load %struct.archive*, %struct.archive** %3, align 8
  %248 = load i32, i32* @ARCHIVE_OK, align 4
  %249 = load %struct.archive*, %struct.archive** %3, align 8
  %250 = call i32 @archive_write_close(%struct.archive* %249)
  %251 = call i32 @assertEqualIntA(%struct.archive* %247, i32 %248, i32 %250)
  %252 = load %struct.archive*, %struct.archive** %3, align 8
  %253 = load i32, i32* @ARCHIVE_OK, align 4
  %254 = load %struct.archive*, %struct.archive** %3, align 8
  %255 = call i32 @archive_write_free(%struct.archive* %254)
  %256 = call i32 @assertEqualIntA(%struct.archive* %252, i32 %253, i32 %255)
  %257 = call i32 @failure(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %258 = load i64, i64* %7, align 8
  %259 = trunc i64 %258 to i32
  %260 = call i32 @assertEqualInt(i32 %259, i32 110592)
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %273, %136
  %262 = load i32, i32* %8, align 4
  %263 = icmp ult i32 %262, 32768
  br i1 %263, label %264, label %276

264:                                              ; preds = %261
  %265 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %266 = load i8*, i8** %5, align 8
  %267 = load i32, i32* %8, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = call i32 @assertEqualInt(i32 %271, i32 0)
  br label %273

273:                                              ; preds = %264
  %274 = load i32, i32* %8, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %8, align 4
  br label %261

276:                                              ; preds = %261
  %277 = call i32 @failure(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %278 = load i8*, i8** %5, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 32768
  %280 = load i8*, i8** @primary_id, align 8
  %281 = call i32 (i8*, ...) @assertEqualMem(i8* %279, i8* %280, i32 8)
  %282 = load i8*, i8** %5, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 32768
  %284 = getelementptr inbounds i8, i8* %283, i64 40
  %285 = call i32 (i8*, ...) @assertEqualMem(i8* %284, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 32)
  %286 = load i8*, i8** %5, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 32768
  %288 = getelementptr inbounds i8, i8* %287, i64 80
  %289 = load i8*, i8** @volumesize2, align 8
  %290 = call i32 (i8*, ...) @assertEqualMem(i8* %288, i8* %289, i32 8)
  %291 = call i32 @failure(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  %292 = load i8*, i8** %5, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 34816
  %294 = load i8*, i8** @supplementary_id, align 8
  %295 = call i32 (i8*, ...) @assertEqualMem(i8* %293, i8* %294, i32 8)
  %296 = load i8*, i8** %5, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 34816
  %298 = getelementptr inbounds i8, i8* %297, i64 40
  %299 = load i8*, i8** @volumeidu16, align 8
  %300 = call i32 (i8*, ...) @assertEqualMem(i8* %298, i8* %299, i32 32)
  %301 = load i8*, i8** %5, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 34816
  %303 = getelementptr inbounds i8, i8* %302, i64 80
  %304 = load i8*, i8** @volumesize2, align 8
  %305 = call i32 (i8*, ...) @assertEqualMem(i8* %303, i8* %304, i32 8)
  %306 = call i32 @failure(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.13, i64 0, i64 0))
  %307 = load i8*, i8** %5, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 32768
  %309 = getelementptr inbounds i8, i8* %308, i64 813
  %310 = load i8*, i8** %5, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 34816
  %312 = getelementptr inbounds i8, i8* %311, i64 813
  %313 = call i32 (i8*, ...) @assertEqualMem(i8* %309, i8* %312, i32 68)
  %314 = call i32 @failure(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i64 0, i64 0))
  %315 = load i8*, i8** %5, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 36864
  %317 = load i8*, i8** @terminator_id, align 8
  %318 = call i32 (i8*, ...) @assertEqualMem(i8* %316, i8* %317, i32 8)
  store i32 8, i32* %8, align 4
  br label %319

319:                                              ; preds = %332, %276
  %320 = load i32, i32* %8, align 4
  %321 = icmp ult i32 %320, 2048
  br i1 %321, label %322, label %335

322:                                              ; preds = %319
  %323 = call i32 @failure(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0))
  %324 = load i8*, i8** %5, align 8
  %325 = load i32, i32* %8, align 4
  %326 = add i32 36864, %325
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = call i32 @assertEqualInt(i32 %330, i32 0)
  br label %332

332:                                              ; preds = %322
  %333 = load i32, i32* %8, align 4
  %334 = add i32 %333, 1
  store i32 %334, i32* %8, align 4
  br label %319

335:                                              ; preds = %319
  %336 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %337 = load i8*, i8** %5, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 63488
  %339 = load i8*, i8** @zisofs_magic, align 8
  %340 = call i32 (i8*, ...) @assertEqualMem(i8* %338, i8* %339, i32 8)
  %341 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %342 = call i32 @memset(i8* %341, i8 signext 97, i32 1024)
  %343 = call i32 @failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %344 = load i8*, i8** %5, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 104448
  %346 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %347 = call i32 (i8*, ...) @assertEqualMem(i8* %345, i8* %346, i32 1024)
  %348 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %349 = call i32 @memset(i8* %348, i8 signext 98, i32 1024)
  %350 = call i32 @failure(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %351 = load i8*, i8** %5, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 104448
  %353 = getelementptr inbounds i8, i8* %352, i64 1024
  %354 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %355 = call i32 (i8*, ...) @assertEqualMem(i8* %353, i8* %354, i32 1024)
  %356 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %357 = load i8*, i8** %5, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 106496
  %359 = load i8*, i8** @zisofs_magic, align 8
  %360 = call i32 (i8*, ...) @assertEqualMem(i8* %358, i8* %359, i32 8)
  %361 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %362 = load i8*, i8** %5, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 108544
  %364 = load i8*, i8** @zisofs_magic, align 8
  %365 = call i32 (i8*, ...) @assertEqualMem(i8* %363, i8* %364, i32 8)
  %366 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %366, %struct.archive** %3, align 8
  %367 = icmp ne %struct.archive* %366, null
  %368 = zext i1 %367 to i32
  %369 = call i32 @assert(i32 %368)
  %370 = load %struct.archive*, %struct.archive** %3, align 8
  %371 = load %struct.archive*, %struct.archive** %3, align 8
  %372 = call i32 @archive_read_support_format_all(%struct.archive* %371)
  %373 = call i32 @assertEqualIntA(%struct.archive* %370, i32 0, i32 %372)
  %374 = load %struct.archive*, %struct.archive** %3, align 8
  %375 = load %struct.archive*, %struct.archive** %3, align 8
  %376 = call i32 @archive_read_support_filter_all(%struct.archive* %375)
  %377 = call i32 @assertEqualIntA(%struct.archive* %374, i32 0, i32 %376)
  %378 = load %struct.archive*, %struct.archive** %3, align 8
  %379 = load %struct.archive*, %struct.archive** %3, align 8
  %380 = load i8*, i8** %5, align 8
  %381 = load i64, i64* %7, align 8
  %382 = call i32 @archive_read_open_memory(%struct.archive* %379, i8* %380, i64 %381)
  %383 = call i32 @assertEqualIntA(%struct.archive* %378, i32 0, i32 %382)
  %384 = load %struct.archive*, %struct.archive** %3, align 8
  %385 = load %struct.archive*, %struct.archive** %3, align 8
  %386 = call i32 @archive_read_next_header(%struct.archive* %385, %struct.archive_entry** %4)
  %387 = call i32 @assertEqualIntA(%struct.archive* %384, i32 0, i32 %386)
  %388 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %389 = call i32 @archive_entry_atime(%struct.archive_entry* %388)
  %390 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %391 = call i32 @archive_entry_ctime(%struct.archive_entry* %390)
  %392 = call i32 @assertEqualInt(i32 %389, i32 %391)
  %393 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %394 = call i32 @archive_entry_atime(%struct.archive_entry* %393)
  %395 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %396 = call i32 @archive_entry_mtime(%struct.archive_entry* %395)
  %397 = call i32 @assertEqualInt(i32 %394, i32 %396)
  %398 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %399 = call i32 @archive_entry_pathname(%struct.archive_entry* %398)
  %400 = call i32 @assertEqualString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 %399)
  %401 = load i32, i32* @S_IFDIR, align 4
  %402 = or i32 %401, 365
  %403 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %404 = call i32 @archive_entry_mode(%struct.archive_entry* %403)
  %405 = icmp eq i32 %402, %404
  %406 = zext i1 %405 to i32
  %407 = call i32 @assert(i32 %406)
  %408 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %409 = call i32 @archive_entry_size(%struct.archive_entry* %408)
  %410 = call i32 @assertEqualInt(i32 2048, i32 %409)
  %411 = load %struct.archive*, %struct.archive** %3, align 8
  %412 = load %struct.archive*, %struct.archive** %3, align 8
  %413 = call i32 @archive_read_next_header(%struct.archive* %412, %struct.archive_entry** %4)
  %414 = call i32 @assertEqualIntA(%struct.archive* %411, i32 0, i32 %413)
  %415 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %416 = call i32 @archive_entry_atime(%struct.archive_entry* %415)
  %417 = call i32 @assertEqualInt(i32 2, i32 %416)
  %418 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %419 = call i32 @archive_entry_ctime(%struct.archive_entry* %418)
  %420 = call i32 @assertEqualInt(i32 4, i32 %419)
  %421 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %422 = call i32 @archive_entry_mtime(%struct.archive_entry* %421)
  %423 = call i32 @assertEqualInt(i32 5, i32 %422)
  %424 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %425 = call i32 @archive_entry_pathname(%struct.archive_entry* %424)
  %426 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %425)
  %427 = load i32, i32* @S_IFREG, align 4
  %428 = or i32 %427, 365
  %429 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %430 = call i32 @archive_entry_mode(%struct.archive_entry* %429)
  %431 = icmp eq i32 %428, %430
  %432 = zext i1 %431 to i32
  %433 = call i32 @assert(i32 %432)
  %434 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %435 = call i32 @archive_entry_size(%struct.archive_entry* %434)
  %436 = call i32 @assertEqualInt(i32 262144, i32 %435)
  %437 = load %struct.archive*, %struct.archive** %3, align 8
  %438 = load %struct.archive*, %struct.archive** %3, align 8
  %439 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %440 = call i32 @archive_read_data(%struct.archive* %438, i8* %439, i32 1024)
  %441 = call i32 @assertEqualIntA(%struct.archive* %437, i32 1024, i32 %440)
  %442 = load %struct.archive*, %struct.archive** %3, align 8
  %443 = load %struct.archive*, %struct.archive** %3, align 8
  %444 = call i32 @archive_read_next_header(%struct.archive* %443, %struct.archive_entry** %4)
  %445 = call i32 @assertEqualIntA(%struct.archive* %442, i32 0, i32 %444)
  %446 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %447 = call i32 @archive_entry_atime(%struct.archive_entry* %446)
  %448 = call i32 @assertEqualInt(i32 2, i32 %447)
  %449 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %450 = call i32 @archive_entry_ctime(%struct.archive_entry* %449)
  %451 = call i32 @assertEqualInt(i32 4, i32 %450)
  %452 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %453 = call i32 @archive_entry_mtime(%struct.archive_entry* %452)
  %454 = call i32 @assertEqualInt(i32 5, i32 %453)
  %455 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %456 = call i32 @archive_entry_pathname(%struct.archive_entry* %455)
  %457 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %456)
  %458 = load i32, i32* @S_IFREG, align 4
  %459 = or i32 %458, 365
  %460 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %461 = call i32 @archive_entry_mode(%struct.archive_entry* %460)
  %462 = icmp eq i32 %459, %461
  %463 = zext i1 %462 to i32
  %464 = call i32 @assert(i32 %463)
  %465 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %466 = call i32 @archive_entry_size(%struct.archive_entry* %465)
  %467 = call i32 @assertEqualInt(i32 2048, i32 %466)
  %468 = load %struct.archive*, %struct.archive** %3, align 8
  %469 = load %struct.archive*, %struct.archive** %3, align 8
  %470 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %471 = call i32 @archive_read_data(%struct.archive* %469, i8* %470, i32 1024)
  %472 = call i32 @assertEqualIntA(%struct.archive* %468, i32 1024, i32 %471)
  %473 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %474 = call i32 @memset(i8* %473, i8 signext 97, i32 1024)
  %475 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %476 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %477 = call i32 (i8*, ...) @assertEqualMem(i8* %475, i8* %476, i32 1024)
  %478 = load %struct.archive*, %struct.archive** %3, align 8
  %479 = load %struct.archive*, %struct.archive** %3, align 8
  %480 = call i32 @archive_read_next_header(%struct.archive* %479, %struct.archive_entry** %4)
  %481 = call i32 @assertEqualIntA(%struct.archive* %478, i32 0, i32 %480)
  %482 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %483 = call i32 @archive_entry_atime(%struct.archive_entry* %482)
  %484 = call i32 @assertEqualInt(i32 2, i32 %483)
  %485 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %486 = call i32 @archive_entry_ctime(%struct.archive_entry* %485)
  %487 = call i32 @assertEqualInt(i32 4, i32 %486)
  %488 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %489 = call i32 @archive_entry_mtime(%struct.archive_entry* %488)
  %490 = call i32 @assertEqualInt(i32 5, i32 %489)
  %491 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %492 = call i32 @archive_entry_pathname(%struct.archive_entry* %491)
  %493 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %492)
  %494 = load i32, i32* @S_IFREG, align 4
  %495 = or i32 %494, 365
  %496 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %497 = call i32 @archive_entry_mode(%struct.archive_entry* %496)
  %498 = icmp eq i32 %495, %497
  %499 = zext i1 %498 to i32
  %500 = call i32 @assert(i32 %499)
  %501 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %502 = call i32 @archive_entry_size(%struct.archive_entry* %501)
  %503 = call i32 @assertEqualInt(i32 2049, i32 %502)
  %504 = load %struct.archive*, %struct.archive** %3, align 8
  %505 = load %struct.archive*, %struct.archive** %3, align 8
  %506 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %507 = call i32 @archive_read_data(%struct.archive* %505, i8* %506, i32 1024)
  %508 = call i32 @assertEqualIntA(%struct.archive* %504, i32 1024, i32 %507)
  %509 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %510 = call i32 @memset(i8* %509, i8 signext 90, i32 1024)
  %511 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %512 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %513 = call i32 (i8*, ...) @assertEqualMem(i8* %511, i8* %512, i32 1024)
  %514 = load %struct.archive*, %struct.archive** %3, align 8
  %515 = load %struct.archive*, %struct.archive** %3, align 8
  %516 = call i32 @archive_read_next_header(%struct.archive* %515, %struct.archive_entry** %4)
  %517 = call i32 @assertEqualIntA(%struct.archive* %514, i32 0, i32 %516)
  %518 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %519 = call i32 @archive_entry_atime(%struct.archive_entry* %518)
  %520 = call i32 @assertEqualInt(i32 2, i32 %519)
  %521 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %522 = call i32 @archive_entry_ctime(%struct.archive_entry* %521)
  %523 = call i32 @assertEqualInt(i32 4, i32 %522)
  %524 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %525 = call i32 @archive_entry_mtime(%struct.archive_entry* %524)
  %526 = call i32 @assertEqualInt(i32 5, i32 %525)
  %527 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %528 = call i32 @archive_entry_pathname(%struct.archive_entry* %527)
  %529 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %528)
  %530 = load i32, i32* @S_IFREG, align 4
  %531 = or i32 %530, 365
  %532 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %533 = call i32 @archive_entry_mode(%struct.archive_entry* %532)
  %534 = icmp eq i32 %531, %533
  %535 = zext i1 %534 to i32
  %536 = call i32 @assert(i32 %535)
  %537 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %538 = call i32 @archive_entry_size(%struct.archive_entry* %537)
  %539 = call i32 @assertEqualInt(i32 32768, i32 %538)
  %540 = load %struct.archive*, %struct.archive** %3, align 8
  %541 = load %struct.archive*, %struct.archive** %3, align 8
  %542 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %543 = call i32 @archive_read_data(%struct.archive* %541, i8* %542, i32 1024)
  %544 = call i32 @assertEqualIntA(%struct.archive* %540, i32 1024, i32 %543)
  %545 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %546 = call i32 @memset(i8* %545, i8 signext 0, i32 1024)
  %547 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %548 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %549 = call i32 (i8*, ...) @assertEqualMem(i8* %547, i8* %548, i32 1024)
  %550 = load %struct.archive*, %struct.archive** %3, align 8
  %551 = load i32, i32* @ARCHIVE_EOF, align 4
  %552 = load %struct.archive*, %struct.archive** %3, align 8
  %553 = call i32 @archive_read_next_header(%struct.archive* %552, %struct.archive_entry** %4)
  %554 = call i32 @assertEqualIntA(%struct.archive* %550, i32 %551, i32 %553)
  %555 = load %struct.archive*, %struct.archive** %3, align 8
  %556 = load i32, i32* @ARCHIVE_OK, align 4
  %557 = load %struct.archive*, %struct.archive** %3, align 8
  %558 = call i32 @archive_read_close(%struct.archive* %557)
  %559 = call i32 @assertEqualIntA(%struct.archive* %555, i32 %556, i32 %558)
  %560 = load %struct.archive*, %struct.archive** %3, align 8
  %561 = load i32, i32* @ARCHIVE_OK, align 4
  %562 = load %struct.archive*, %struct.archive** %3, align 8
  %563 = call i32 @archive_read_free(%struct.archive* %562)
  %564 = call i32 @assertEqualIntA(%struct.archive* %560, i32 %561, i32 %563)
  %565 = load i8*, i8** %5, align 8
  %566 = call i32 @free(i8* %565)
  br label %567

567:                                              ; preds = %335, %38, %19
  ret void
}

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

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

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
