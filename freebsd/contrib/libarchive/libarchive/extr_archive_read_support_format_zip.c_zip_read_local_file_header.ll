; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_read_local_file_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_read_local_file_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.archive_entry = type { i32 }
%struct.zip = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.zip_entry*, %struct.archive_string_conv*, %struct.archive_string_conv*, %struct.archive_string_conv*, i32, i32 (i32, i32*, i32)*, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.zip_entry = type { i8, i32, i8, i64, i8, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.archive_string_conv = type { i32 }
%struct.archive_wstring = type { i8* }
%struct.archive_string = type { i8* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Truncated ZIP file header\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PK\03\04\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Damaged Zip archive\00", align 1
@ZIP_ENCRYPTED = common dso_local global i32 0, align 4
@ZIP_STRONG_ENCRYPTED = common dso_local global i32 0, align 4
@ZIP_CENTRAL_DIRECTORY_ENCRYPTED = common dso_local global i32 0, align 4
@ZIP_LENGTH_AT_END = common dso_local global i32 0, align 4
@ZIP_UTF8_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Pathname cannot be converted from %s to current locale.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@AE_IFMT = common dso_local global i32 0, align 4
@AE_IFIFO = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@LA_FROM_CENTRAL_DIRECTORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Inconsistent CRC32 values\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"Inconsistent compressed size: %jd in central directory, %jd in local header\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"Inconsistent uncompressed size: %jd in central directory, %jd in local header\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Zip file with oversized link entry\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Truncated Zip file\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Can't allocate memory for Symlink\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Symlink cannot be converted from %s to current locale.\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Read error skipping symlink target name\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"ZIP %d.%d (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.zip*)* @zip_read_local_file_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_read_local_file_header(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.zip* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca %struct.zip*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.archive_string_conv*, align 8
  %16 = alloca %struct.zip_entry*, align 8
  %17 = alloca %struct.zip_entry, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca %struct.archive_wstring, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.archive_wstring, align 8
  %24 = alloca %struct.archive_string, align 8
  %25 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  store %struct.zip* %2, %struct.zip** %7, align 8
  %26 = load %struct.zip*, %struct.zip** %7, align 8
  %27 = getelementptr inbounds %struct.zip, %struct.zip* %26, i32 0, i32 6
  %28 = load %struct.zip_entry*, %struct.zip_entry** %27, align 8
  store %struct.zip_entry* %28, %struct.zip_entry** %16, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %29, i32* %18, align 4
  %30 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %31 = bitcast %struct.zip_entry* %17 to i8*
  %32 = bitcast %struct.zip_entry* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 72, i1 false)
  %33 = load %struct.zip*, %struct.zip** %7, align 8
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 15
  store i64 0, i64* %34, align 8
  %35 = load %struct.zip*, %struct.zip** %7, align 8
  %36 = getelementptr inbounds %struct.zip, %struct.zip* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.zip*, %struct.zip** %7, align 8
  %38 = getelementptr inbounds %struct.zip, %struct.zip* %37, i32 0, i32 14
  store i64 0, i64* %38, align 8
  %39 = load %struct.zip*, %struct.zip** %7, align 8
  %40 = getelementptr inbounds %struct.zip, %struct.zip* %39, i32 0, i32 13
  store i64 0, i64* %40, align 8
  %41 = load %struct.zip*, %struct.zip** %7, align 8
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %41, i32 0, i32 11
  %43 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %42, align 8
  %44 = call i32 %43(i32 0, i32* null, i32 0)
  %45 = load %struct.zip*, %struct.zip** %7, align 8
  %46 = getelementptr inbounds %struct.zip, %struct.zip* %45, i32 0, i32 12
  store i32 %44, i32* %46, align 8
  %47 = load %struct.zip*, %struct.zip** %7, align 8
  %48 = getelementptr inbounds %struct.zip, %struct.zip* %47, i32 0, i32 9
  %49 = load %struct.archive_string_conv*, %struct.archive_string_conv** %48, align 8
  %50 = icmp eq %struct.archive_string_conv* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %3
  %52 = load %struct.zip*, %struct.zip** %7, align 8
  %53 = getelementptr inbounds %struct.zip, %struct.zip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %58 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %57, i32 0, i32 0
  %59 = call %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.TYPE_7__* %58)
  %60 = load %struct.zip*, %struct.zip** %7, align 8
  %61 = getelementptr inbounds %struct.zip, %struct.zip* %60, i32 0, i32 8
  store %struct.archive_string_conv* %59, %struct.archive_string_conv** %61, align 8
  %62 = load %struct.zip*, %struct.zip** %7, align 8
  %63 = getelementptr inbounds %struct.zip, %struct.zip* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %51, %3
  %65 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %66 = call i8* @__archive_read_ahead(%struct.archive_read* %65, i64 30, i32* null)
  store i8* %66, i8** %8, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %70 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %69, i32 0, i32 0
  %71 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %72 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %70, i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %73, i32* %4, align 4
  br label %894

74:                                               ; preds = %64
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @memcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %80 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %79, i32 0, i32 0
  %81 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %80, i32 -1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %82, i32* %4, align 4
  br label %894

83:                                               ; preds = %74
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %19, align 1
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  %89 = load i8, i8* %88, align 1
  %90 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %91 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %90, i32 0, i32 0
  store i8 %89, i8* %91, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  %94 = call i8* @archive_le16dec(i8* %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %97 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %99 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ZIP_ENCRYPTED, align 4
  %102 = load i32, i32* @ZIP_STRONG_ENCRYPTED, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %136

106:                                              ; preds = %83
  %107 = load %struct.zip*, %struct.zip** %7, align 8
  %108 = getelementptr inbounds %struct.zip, %struct.zip* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %110 = call i32 @archive_entry_set_is_data_encrypted(%struct.archive_entry* %109, i32 1)
  %111 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %112 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ZIP_CENTRAL_DIRECTORY_ENCRYPTED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %106
  %118 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %119 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ZIP_ENCRYPTED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %117
  %125 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %126 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ZIP_STRONG_ENCRYPTED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %133 = call i32 @archive_entry_set_is_metadata_encrypted(%struct.archive_entry* %132, i32 1)
  %134 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %134, i32* %4, align 4
  br label %894

135:                                              ; preds = %124, %117, %106
  br label %136

136:                                              ; preds = %135, %83
  %137 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %138 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ZIP_ENCRYPTED, align 4
  %141 = and i32 %139, %140
  %142 = load %struct.zip*, %struct.zip** %7, align 8
  %143 = getelementptr inbounds %struct.zip, %struct.zip* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 8
  %146 = call i8* @archive_le16dec(i8* %145)
  %147 = ptrtoint i8* %146 to i8
  %148 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %149 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %148, i32 0, i32 2
  store i8 %147, i8* %149, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 10
  %152 = call i32 @zip_time(i8* %151)
  %153 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %154 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %153, i32 0, i32 11
  store i32 %152, i32* %154, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 14
  %157 = call i8* @archive_le32dec(i8* %156)
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %160 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %162 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %136
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 11
  %170 = load i8, i8* %169, align 1
  %171 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %172 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %171, i32 0, i32 4
  store i8 %170, i8* %172, align 8
  br label %179

173:                                              ; preds = %136
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 17
  %176 = load i8, i8* %175, align 1
  %177 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %178 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %177, i32 0, i32 4
  store i8 %176, i8* %178, align 8
  br label %179

179:                                              ; preds = %173, %167
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 18
  %182 = call i8* @archive_le32dec(i8* %181)
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %185 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 4
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 22
  %188 = call i8* @archive_le32dec(i8* %187)
  %189 = ptrtoint i8* %188 to i64
  %190 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %191 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %190, i32 0, i32 6
  store i64 %189, i64* %191, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 26
  %194 = call i8* @archive_le16dec(i8* %193)
  %195 = ptrtoint i8* %194 to i64
  store i64 %195, i64* %13, align 8
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 28
  %198 = call i8* @archive_le16dec(i8* %197)
  %199 = ptrtoint i8* %198 to i64
  store i64 %199, i64* %14, align 8
  %200 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %201 = call i64 @__archive_read_consume(%struct.archive_read* %200, i64 30)
  %202 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %203 = load i64, i64* %13, align 8
  %204 = call i8* @__archive_read_ahead(%struct.archive_read* %202, i64 %203, i32* null)
  store i8* %204, i8** %9, align 8
  %205 = icmp eq i8* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %179
  %207 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %208 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %207, i32 0, i32 0
  %209 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %210 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %208, i32 %209, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %211 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %211, i32* %4, align 4
  br label %894

212:                                              ; preds = %179
  %213 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %214 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @ZIP_UTF8_NAME, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %241

219:                                              ; preds = %212
  %220 = load %struct.zip*, %struct.zip** %7, align 8
  %221 = getelementptr inbounds %struct.zip, %struct.zip* %220, i32 0, i32 7
  %222 = load %struct.archive_string_conv*, %struct.archive_string_conv** %221, align 8
  %223 = icmp eq %struct.archive_string_conv* %222, null
  br i1 %223, label %224, label %237

224:                                              ; preds = %219
  %225 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %226 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %225, i32 0, i32 0
  %227 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.TYPE_7__* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %228 = load %struct.zip*, %struct.zip** %7, align 8
  %229 = getelementptr inbounds %struct.zip, %struct.zip* %228, i32 0, i32 7
  store %struct.archive_string_conv* %227, %struct.archive_string_conv** %229, align 8
  %230 = load %struct.zip*, %struct.zip** %7, align 8
  %231 = getelementptr inbounds %struct.zip, %struct.zip* %230, i32 0, i32 7
  %232 = load %struct.archive_string_conv*, %struct.archive_string_conv** %231, align 8
  %233 = icmp eq %struct.archive_string_conv* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %224
  %235 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %235, i32* %4, align 4
  br label %894

236:                                              ; preds = %224
  br label %237

237:                                              ; preds = %236, %219
  %238 = load %struct.zip*, %struct.zip** %7, align 8
  %239 = getelementptr inbounds %struct.zip, %struct.zip* %238, i32 0, i32 7
  %240 = load %struct.archive_string_conv*, %struct.archive_string_conv** %239, align 8
  store %struct.archive_string_conv* %240, %struct.archive_string_conv** %15, align 8
  br label %255

241:                                              ; preds = %212
  %242 = load %struct.zip*, %struct.zip** %7, align 8
  %243 = getelementptr inbounds %struct.zip, %struct.zip* %242, i32 0, i32 9
  %244 = load %struct.archive_string_conv*, %struct.archive_string_conv** %243, align 8
  %245 = icmp ne %struct.archive_string_conv* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load %struct.zip*, %struct.zip** %7, align 8
  %248 = getelementptr inbounds %struct.zip, %struct.zip* %247, i32 0, i32 9
  %249 = load %struct.archive_string_conv*, %struct.archive_string_conv** %248, align 8
  store %struct.archive_string_conv* %249, %struct.archive_string_conv** %15, align 8
  br label %254

250:                                              ; preds = %241
  %251 = load %struct.zip*, %struct.zip** %7, align 8
  %252 = getelementptr inbounds %struct.zip, %struct.zip* %251, i32 0, i32 8
  %253 = load %struct.archive_string_conv*, %struct.archive_string_conv** %252, align 8
  store %struct.archive_string_conv* %253, %struct.archive_string_conv** %15, align 8
  br label %254

254:                                              ; preds = %250, %246
  br label %255

255:                                              ; preds = %254, %237
  %256 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %257 = load i8*, i8** %9, align 8
  %258 = load i64, i64* %13, align 8
  %259 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8
  %260 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %256, i8* %257, i64 %258, %struct.archive_string_conv* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %280

262:                                              ; preds = %255
  %263 = load i32, i32* @errno, align 4
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %268 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %267, i32 0, i32 0
  %269 = load i32, i32* @ENOMEM, align 4
  %270 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %268, i32 %269, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %271 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %271, i32* %4, align 4
  br label %894

272:                                              ; preds = %262
  %273 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %274 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %273, i32 0, i32 0
  %275 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %276 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8
  %277 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %276)
  %278 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %274, i32 %275, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %279, i32* %18, align 4
  br label %280

280:                                              ; preds = %272, %255
  %281 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %282 = load i64, i64* %13, align 8
  %283 = call i64 @__archive_read_consume(%struct.archive_read* %281, i64 %282)
  %284 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %285 = load i64, i64* %14, align 8
  %286 = call i8* @__archive_read_ahead(%struct.archive_read* %284, i64 %285, i32* null)
  store i8* %286, i8** %9, align 8
  %287 = icmp eq i8* %286, null
  br i1 %287, label %288, label %294

288:                                              ; preds = %280
  %289 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %290 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %289, i32 0, i32 0
  %291 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %292 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %290, i32 %291, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %293 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %293, i32* %4, align 4
  br label %894

294:                                              ; preds = %280
  %295 = load i32, i32* @ARCHIVE_OK, align 4
  %296 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %297 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %298 = load i8*, i8** %9, align 8
  %299 = load i64, i64* %14, align 8
  %300 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %301 = call i32 @process_extra(%struct.archive_read* %296, %struct.archive_entry* %297, i8* %298, i64 %299, %struct.zip_entry* %300)
  %302 = icmp ne i32 %295, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %294
  %304 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %304, i32* %4, align 4
  br label %894

305:                                              ; preds = %294
  %306 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %307 = load i64, i64* %14, align 8
  %308 = call i64 @__archive_read_consume(%struct.archive_read* %306, i64 %307)
  %309 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %310 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %309, i32 0, i32 7
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @AE_IFMT, align 4
  %313 = and i32 %311, %312
  %314 = load i32, i32* @AE_IFIFO, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %305
  %317 = load i32, i32* @AE_IFMT, align 4
  %318 = xor i32 %317, -1
  %319 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %320 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 8
  %322 = and i32 %321, %318
  store i32 %322, i32* %320, align 8
  %323 = load i32, i32* @AE_IFREG, align 4
  %324 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %325 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %316, %305
  %329 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %330 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %335 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %334, i32 0, i32 7
  %336 = load i32, i32* %335, align 8
  %337 = or i32 %336, 436
  store i32 %337, i32* %335, align 8
  br label %338

338:                                              ; preds = %333, %328
  %339 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %340 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %339, i32 0, i32 0
  %341 = load i8, i8* %340, align 8
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %388

344:                                              ; preds = %338
  %345 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %346 = call i32* @archive_entry_pathname_w(%struct.archive_entry* %345)
  store i32* %346, i32** %10, align 8
  %347 = icmp ne i32* %346, null
  br i1 %347, label %348, label %388

348:                                              ; preds = %344
  %349 = load i32*, i32** %10, align 8
  %350 = call i32* @wcschr(i32* %349, i32 47)
  %351 = icmp eq i32* %350, null
  br i1 %351, label %352, label %387

352:                                              ; preds = %348
  %353 = load i32*, i32** %10, align 8
  %354 = call i32* @wcschr(i32* %353, i32 92)
  %355 = icmp ne i32* %354, null
  br i1 %355, label %356, label %387

356:                                              ; preds = %352
  %357 = call i32 @archive_string_init(%struct.archive_wstring* %21)
  %358 = load i32*, i32** %10, align 8
  %359 = call i32 @archive_wstrcpy(%struct.archive_wstring* %21, i32* %358)
  store i64 0, i64* %20, align 8
  br label %360

360:                                              ; preds = %378, %356
  %361 = load i64, i64* %20, align 8
  %362 = call i64 @archive_strlen(%struct.archive_wstring* %21)
  %363 = icmp ult i64 %361, %362
  br i1 %363, label %364, label %381

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %21, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = load i64, i64* %20, align 8
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp eq i32 %370, 92
  br i1 %371, label %372, label %377

372:                                              ; preds = %364
  %373 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %21, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8
  %375 = load i64, i64* %20, align 8
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  store i8 47, i8* %376, align 1
  br label %377

377:                                              ; preds = %372, %364
  br label %378

378:                                              ; preds = %377
  %379 = load i64, i64* %20, align 8
  %380 = add i64 %379, 1
  store i64 %380, i64* %20, align 8
  br label %360

381:                                              ; preds = %360
  %382 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %383 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %21, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %382, i8* %384)
  %386 = call i32 @archive_wstring_free(%struct.archive_wstring* %21)
  br label %387

387:                                              ; preds = %381, %352, %348
  br label %388

388:                                              ; preds = %387, %344, %338
  %389 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %390 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %389, i32 0, i32 7
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @AE_IFMT, align 4
  %393 = and i32 %391, %392
  %394 = load i32, i32* @AE_IFDIR, align 4
  %395 = icmp ne i32 %393, %394
  br i1 %395, label %396, label %474

396:                                              ; preds = %388
  %397 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %398 = call i32* @archive_entry_pathname_w(%struct.archive_entry* %397)
  store i32* %398, i32** %10, align 8
  %399 = load i32*, i32** %10, align 8
  %400 = icmp ne i32* %399, null
  br i1 %400, label %401, label %416

401:                                              ; preds = %396
  %402 = load i32*, i32** %10, align 8
  %403 = call i64 @wcslen(i32* %402)
  store i64 %403, i64* %12, align 8
  %404 = load i64, i64* %12, align 8
  %405 = icmp ugt i64 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %401
  %407 = load i32*, i32** %10, align 8
  %408 = load i64, i64* %12, align 8
  %409 = sub i64 %408, 1
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = icmp eq i32 %411, 47
  br label %413

413:                                              ; preds = %406, %401
  %414 = phi i1 [ false, %401 ], [ %412, %406 ]
  %415 = zext i1 %414 to i32
  store i32 %415, i32* %22, align 4
  br label %440

416:                                              ; preds = %396
  %417 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %418 = call i8* @archive_entry_pathname(%struct.archive_entry* %417)
  store i8* %418, i8** %11, align 8
  %419 = load i8*, i8** %11, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %424

421:                                              ; preds = %416
  %422 = load i8*, i8** %11, align 8
  %423 = call i64 @strlen(i8* %422)
  br label %425

424:                                              ; preds = %416
  br label %425

425:                                              ; preds = %424, %421
  %426 = phi i64 [ %423, %421 ], [ 0, %424 ]
  store i64 %426, i64* %12, align 8
  %427 = load i64, i64* %12, align 8
  %428 = icmp ugt i64 %427, 0
  br i1 %428, label %429, label %437

429:                                              ; preds = %425
  %430 = load i8*, i8** %11, align 8
  %431 = load i64, i64* %12, align 8
  %432 = sub i64 %431, 1
  %433 = getelementptr inbounds i8, i8* %430, i64 %432
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp eq i32 %435, 47
  br label %437

437:                                              ; preds = %429, %425
  %438 = phi i1 [ false, %425 ], [ %436, %429 ]
  %439 = zext i1 %438 to i32
  store i32 %439, i32* %22, align 4
  br label %440

440:                                              ; preds = %437, %413
  %441 = load i32, i32* %22, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %459

443:                                              ; preds = %440
  %444 = load i32, i32* @AE_IFMT, align 4
  %445 = xor i32 %444, -1
  %446 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %447 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %446, i32 0, i32 7
  %448 = load i32, i32* %447, align 8
  %449 = and i32 %448, %445
  store i32 %449, i32* %447, align 8
  %450 = load i32, i32* @AE_IFDIR, align 4
  %451 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %452 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %451, i32 0, i32 7
  %453 = load i32, i32* %452, align 8
  %454 = or i32 %453, %450
  store i32 %454, i32* %452, align 8
  %455 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %456 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %455, i32 0, i32 7
  %457 = load i32, i32* %456, align 8
  %458 = or i32 %457, 73
  store i32 %458, i32* %456, align 8
  br label %473

459:                                              ; preds = %440
  %460 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %461 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @AE_IFMT, align 4
  %464 = and i32 %462, %463
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %472

466:                                              ; preds = %459
  %467 = load i32, i32* @AE_IFREG, align 4
  %468 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %469 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 8
  %471 = or i32 %470, %467
  store i32 %471, i32* %469, align 8
  br label %472

472:                                              ; preds = %466, %459
  br label %473

473:                                              ; preds = %472, %443
  br label %474

474:                                              ; preds = %473, %388
  %475 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %476 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %475, i32 0, i32 7
  %477 = load i32, i32* %476, align 8
  %478 = load i32, i32* @AE_IFMT, align 4
  %479 = and i32 %477, %478
  %480 = load i32, i32* @AE_IFDIR, align 4
  %481 = icmp eq i32 %479, %480
  br i1 %481, label %482, label %547

482:                                              ; preds = %474
  %483 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %484 = call i32* @archive_entry_pathname_w(%struct.archive_entry* %483)
  store i32* %484, i32** %10, align 8
  %485 = load i32*, i32** %10, align 8
  %486 = icmp ne i32* %485, null
  br i1 %486, label %487, label %510

487:                                              ; preds = %482
  %488 = load i32*, i32** %10, align 8
  %489 = call i64 @wcslen(i32* %488)
  store i64 %489, i64* %12, align 8
  %490 = load i64, i64* %12, align 8
  %491 = icmp ugt i64 %490, 0
  br i1 %491, label %492, label %509

492:                                              ; preds = %487
  %493 = load i32*, i32** %10, align 8
  %494 = load i64, i64* %12, align 8
  %495 = sub i64 %494, 1
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = icmp ne i32 %497, 47
  br i1 %498, label %499, label %509

499:                                              ; preds = %492
  %500 = call i32 @archive_string_init(%struct.archive_wstring* %23)
  %501 = load i32*, i32** %10, align 8
  %502 = call i32 @archive_wstrcat(%struct.archive_wstring* %23, i32* %501)
  %503 = call i32 @archive_wstrappend_wchar(%struct.archive_wstring* %23, i32 47)
  %504 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %505 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %23, i32 0, i32 0
  %506 = load i8*, i8** %505, align 8
  %507 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %504, i8* %506)
  %508 = call i32 @archive_wstring_free(%struct.archive_wstring* %23)
  br label %509

509:                                              ; preds = %499, %492, %487
  br label %546

510:                                              ; preds = %482
  %511 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %512 = call i8* @archive_entry_pathname(%struct.archive_entry* %511)
  store i8* %512, i8** %11, align 8
  %513 = load i8*, i8** %11, align 8
  %514 = icmp ne i8* %513, null
  br i1 %514, label %515, label %518

515:                                              ; preds = %510
  %516 = load i8*, i8** %11, align 8
  %517 = call i64 @strlen(i8* %516)
  br label %519

518:                                              ; preds = %510
  br label %519

519:                                              ; preds = %518, %515
  %520 = phi i64 [ %517, %515 ], [ 0, %518 ]
  store i64 %520, i64* %12, align 8
  %521 = load i64, i64* %12, align 8
  %522 = icmp ugt i64 %521, 0
  br i1 %522, label %523, label %545

523:                                              ; preds = %519
  %524 = load i8*, i8** %11, align 8
  %525 = load i64, i64* %12, align 8
  %526 = sub i64 %525, 1
  %527 = getelementptr inbounds i8, i8* %524, i64 %526
  %528 = load i8, i8* %527, align 1
  %529 = sext i8 %528 to i32
  %530 = icmp ne i32 %529, 47
  br i1 %530, label %531, label %545

531:                                              ; preds = %523
  %532 = bitcast %struct.archive_string* %24 to %struct.archive_wstring*
  %533 = call i32 @archive_string_init(%struct.archive_wstring* %532)
  %534 = bitcast %struct.archive_string* %24 to %struct.archive_wstring*
  %535 = load i8*, i8** %11, align 8
  %536 = call i32 @archive_strcat(%struct.archive_wstring* %534, i8* %535)
  %537 = bitcast %struct.archive_string* %24 to %struct.archive_wstring*
  %538 = call i32 @archive_strappend_char(%struct.archive_wstring* %537, i8 signext 47)
  %539 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %540 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %24, i32 0, i32 0
  %541 = load i8*, i8** %540, align 8
  %542 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %539, i8* %541)
  %543 = bitcast %struct.archive_string* %24 to %struct.archive_wstring*
  %544 = call i32 @archive_string_free(%struct.archive_wstring* %543)
  br label %545

545:                                              ; preds = %531, %523, %519
  br label %546

546:                                              ; preds = %545, %509
  br label %547

547:                                              ; preds = %546, %474
  %548 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %549 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %548, i32 0, i32 8
  %550 = load i32, i32* %549, align 4
  %551 = load i32, i32* @LA_FROM_CENTRAL_DIRECTORY, align 4
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %650

554:                                              ; preds = %547
  %555 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %556 = xor i32 %555, -1
  %557 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %558 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 4
  %560 = and i32 %559, %556
  store i32 %560, i32* %558, align 4
  %561 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %562 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %561, i32 0, i32 3
  %563 = load i64, i64* %562, align 8
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %565, label %570

565:                                              ; preds = %554
  %566 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 3
  %567 = load i64, i64* %566, align 8
  %568 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %569 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %568, i32 0, i32 3
  store i64 %567, i64* %569, align 8
  br label %589

570:                                              ; preds = %554
  %571 = load %struct.zip*, %struct.zip** %7, align 8
  %572 = getelementptr inbounds %struct.zip, %struct.zip* %571, i32 0, i32 10
  %573 = load i32, i32* %572, align 8
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %588, label %575

575:                                              ; preds = %570
  %576 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %577 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %576, i32 0, i32 3
  %578 = load i64, i64* %577, align 8
  %579 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = icmp ne i64 %578, %580
  br i1 %581, label %582, label %588

582:                                              ; preds = %575
  %583 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %584 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %583, i32 0, i32 0
  %585 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %586 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %584, i32 %585, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %587 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %587, i32* %18, align 4
  br label %588

588:                                              ; preds = %582, %575, %570
  br label %589

589:                                              ; preds = %588, %565
  %590 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %591 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %590, i32 0, i32 5
  %592 = load i32, i32* %591, align 4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %599

594:                                              ; preds = %589
  %595 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 5
  %596 = load i32, i32* %595, align 4
  %597 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %598 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %597, i32 0, i32 5
  store i32 %596, i32* %598, align 4
  br label %618

599:                                              ; preds = %589
  %600 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %601 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %600, i32 0, i32 5
  %602 = load i32, i32* %601, align 4
  %603 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 5
  %604 = load i32, i32* %603, align 4
  %605 = icmp ne i32 %602, %604
  br i1 %605, label %606, label %617

606:                                              ; preds = %599
  %607 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %608 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %607, i32 0, i32 0
  %609 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %610 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 5
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %613 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %612, i32 0, i32 5
  %614 = load i32, i32* %613, align 4
  %615 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %608, i32 %609, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i32 %611, i32 %614)
  %616 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %616, i32* %18, align 4
  br label %617

617:                                              ; preds = %606, %599
  br label %618

618:                                              ; preds = %617, %594
  %619 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %620 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %619, i32 0, i32 6
  %621 = load i64, i64* %620, align 8
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %623, label %628

623:                                              ; preds = %618
  %624 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 6
  %625 = load i64, i64* %624, align 8
  %626 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %627 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %626, i32 0, i32 6
  store i64 %625, i64* %627, align 8
  br label %649

628:                                              ; preds = %618
  %629 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %630 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %629, i32 0, i32 6
  %631 = load i64, i64* %630, align 8
  %632 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 6
  %633 = load i64, i64* %632, align 8
  %634 = icmp ne i64 %631, %633
  br i1 %634, label %635, label %648

635:                                              ; preds = %628
  %636 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %637 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %636, i32 0, i32 0
  %638 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %639 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %17, i32 0, i32 6
  %640 = load i64, i64* %639, align 8
  %641 = trunc i64 %640 to i32
  %642 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %643 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %642, i32 0, i32 6
  %644 = load i64, i64* %643, align 8
  %645 = trunc i64 %644 to i32
  %646 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %637, i32 %638, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0), i32 %641, i32 %645)
  %647 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %647, i32* %18, align 4
  br label %648

648:                                              ; preds = %635, %628
  br label %649

649:                                              ; preds = %648, %623
  br label %650

650:                                              ; preds = %649, %547
  %651 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %652 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %653 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %652, i32 0, i32 7
  %654 = load i32, i32* %653, align 8
  %655 = call i32 @archive_entry_set_mode(%struct.archive_entry* %651, i32 %654)
  %656 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %657 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %658 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %657, i32 0, i32 13
  %659 = load i32, i32* %658, align 8
  %660 = call i32 @archive_entry_set_uid(%struct.archive_entry* %656, i32 %659)
  %661 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %662 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %663 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %662, i32 0, i32 12
  %664 = load i32, i32* %663, align 4
  %665 = call i32 @archive_entry_set_gid(%struct.archive_entry* %661, i32 %664)
  %666 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %667 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %668 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %667, i32 0, i32 11
  %669 = load i32, i32* %668, align 8
  %670 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %666, i32 %669, i32 0)
  %671 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %672 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %673 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %672, i32 0, i32 10
  %674 = load i32, i32* %673, align 4
  %675 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %671, i32 %674, i32 0)
  %676 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %677 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %678 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %677, i32 0, i32 9
  %679 = load i32, i32* %678, align 8
  %680 = call i32 @archive_entry_set_atime(%struct.archive_entry* %676, i32 %679, i32 0)
  %681 = load %struct.zip*, %struct.zip** %7, align 8
  %682 = getelementptr inbounds %struct.zip, %struct.zip* %681, i32 0, i32 6
  %683 = load %struct.zip_entry*, %struct.zip_entry** %682, align 8
  %684 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %683, i32 0, i32 7
  %685 = load i32, i32* %684, align 8
  %686 = load i32, i32* @AE_IFMT, align 4
  %687 = and i32 %685, %686
  %688 = load i32, i32* @AE_IFLNK, align 4
  %689 = icmp eq i32 %687, %688
  br i1 %689, label %690, label %826

690:                                              ; preds = %650
  %691 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %692 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %691, i32 0, i32 5
  %693 = load i32, i32* %692, align 4
  %694 = icmp sgt i32 %693, 65536
  br i1 %694, label %695, label %701

695:                                              ; preds = %690
  %696 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %697 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %696, i32 0, i32 0
  %698 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %699 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %697, i32 %698, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %700 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %700, i32* %4, align 4
  br label %894

701:                                              ; preds = %690
  %702 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %703 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %702, i32 0, i32 5
  %704 = load i32, i32* %703, align 4
  %705 = sext i32 %704 to i64
  store i64 %705, i64* %25, align 8
  %706 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %707 = call i32 @archive_entry_set_size(%struct.archive_entry* %706, i64 0)
  %708 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %709 = load i64, i64* %25, align 8
  %710 = call i8* @__archive_read_ahead(%struct.archive_read* %708, i64 %709, i32* null)
  store i8* %710, i8** %8, align 8
  %711 = load i8*, i8** %8, align 8
  %712 = icmp eq i8* %711, null
  br i1 %712, label %713, label %719

713:                                              ; preds = %701
  %714 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %715 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %714, i32 0, i32 0
  %716 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %717 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %715, i32 %716, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %718 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %718, i32* %4, align 4
  br label %894

719:                                              ; preds = %701
  %720 = load %struct.zip*, %struct.zip** %7, align 8
  %721 = getelementptr inbounds %struct.zip, %struct.zip* %720, i32 0, i32 9
  %722 = load %struct.archive_string_conv*, %struct.archive_string_conv** %721, align 8
  store %struct.archive_string_conv* %722, %struct.archive_string_conv** %15, align 8
  %723 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8
  %724 = icmp eq %struct.archive_string_conv* %723, null
  br i1 %724, label %725, label %738

725:                                              ; preds = %719
  %726 = load %struct.zip*, %struct.zip** %7, align 8
  %727 = getelementptr inbounds %struct.zip, %struct.zip* %726, i32 0, i32 6
  %728 = load %struct.zip_entry*, %struct.zip_entry** %727, align 8
  %729 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = load i32, i32* @ZIP_UTF8_NAME, align 4
  %732 = and i32 %730, %731
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %738

734:                                              ; preds = %725
  %735 = load %struct.zip*, %struct.zip** %7, align 8
  %736 = getelementptr inbounds %struct.zip, %struct.zip* %735, i32 0, i32 7
  %737 = load %struct.archive_string_conv*, %struct.archive_string_conv** %736, align 8
  store %struct.archive_string_conv* %737, %struct.archive_string_conv** %15, align 8
  br label %738

738:                                              ; preds = %734, %725, %719
  %739 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8
  %740 = icmp eq %struct.archive_string_conv* %739, null
  br i1 %740, label %741, label %745

741:                                              ; preds = %738
  %742 = load %struct.zip*, %struct.zip** %7, align 8
  %743 = getelementptr inbounds %struct.zip, %struct.zip* %742, i32 0, i32 8
  %744 = load %struct.archive_string_conv*, %struct.archive_string_conv** %743, align 8
  store %struct.archive_string_conv* %744, %struct.archive_string_conv** %15, align 8
  br label %745

745:                                              ; preds = %741, %738
  %746 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %747 = load i8*, i8** %8, align 8
  %748 = load i64, i64* %25, align 8
  %749 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8
  %750 = call i64 @archive_entry_copy_symlink_l(%struct.archive_entry* %746, i8* %747, i64 %748, %struct.archive_string_conv* %749)
  %751 = icmp ne i64 %750, 0
  br i1 %751, label %752, label %810

752:                                              ; preds = %745
  %753 = load i32, i32* @errno, align 4
  %754 = load i32, i32* @ENOMEM, align 4
  %755 = icmp ne i32 %753, %754
  br i1 %755, label %756, label %776

756:                                              ; preds = %752
  %757 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8
  %758 = load %struct.zip*, %struct.zip** %7, align 8
  %759 = getelementptr inbounds %struct.zip, %struct.zip* %758, i32 0, i32 7
  %760 = load %struct.archive_string_conv*, %struct.archive_string_conv** %759, align 8
  %761 = icmp eq %struct.archive_string_conv* %757, %760
  br i1 %761, label %762, label %776

762:                                              ; preds = %756
  %763 = load %struct.zip*, %struct.zip** %7, align 8
  %764 = getelementptr inbounds %struct.zip, %struct.zip* %763, i32 0, i32 6
  %765 = load %struct.zip_entry*, %struct.zip_entry** %764, align 8
  %766 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %765, i32 0, i32 1
  %767 = load i32, i32* %766, align 4
  %768 = load i32, i32* @ZIP_UTF8_NAME, align 4
  %769 = and i32 %767, %768
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %776

771:                                              ; preds = %762
  %772 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %773 = load i8*, i8** %8, align 8
  %774 = load i64, i64* %25, align 8
  %775 = call i64 @archive_entry_copy_symlink_l(%struct.archive_entry* %772, i8* %773, i64 %774, %struct.archive_string_conv* null)
  br label %776

776:                                              ; preds = %771, %762, %756, %752
  %777 = load i32, i32* @errno, align 4
  %778 = load i32, i32* @ENOMEM, align 4
  %779 = icmp eq i32 %777, %778
  br i1 %779, label %780, label %786

780:                                              ; preds = %776
  %781 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %782 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %781, i32 0, i32 0
  %783 = load i32, i32* @ENOMEM, align 4
  %784 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %782, i32 %783, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %785 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %785, i32* %4, align 4
  br label %894

786:                                              ; preds = %776
  %787 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8
  %788 = load %struct.zip*, %struct.zip** %7, align 8
  %789 = getelementptr inbounds %struct.zip, %struct.zip* %788, i32 0, i32 7
  %790 = load %struct.archive_string_conv*, %struct.archive_string_conv** %789, align 8
  %791 = icmp ne %struct.archive_string_conv* %787, %790
  br i1 %791, label %801, label %792

792:                                              ; preds = %786
  %793 = load %struct.zip*, %struct.zip** %7, align 8
  %794 = getelementptr inbounds %struct.zip, %struct.zip* %793, i32 0, i32 6
  %795 = load %struct.zip_entry*, %struct.zip_entry** %794, align 8
  %796 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %795, i32 0, i32 1
  %797 = load i32, i32* %796, align 4
  %798 = load i32, i32* @ZIP_UTF8_NAME, align 4
  %799 = and i32 %797, %798
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %809

801:                                              ; preds = %792, %786
  %802 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %803 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %802, i32 0, i32 0
  %804 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %805 = load %struct.archive_string_conv*, %struct.archive_string_conv** %15, align 8
  %806 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %805)
  %807 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %803, i32 %804, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %806)
  %808 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %808, i32* %18, align 4
  br label %809

809:                                              ; preds = %801, %792
  br label %810

810:                                              ; preds = %809, %745
  %811 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %812 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %811, i32 0, i32 5
  store i32 0, i32* %812, align 4
  %813 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %814 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %813, i32 0, i32 6
  store i64 0, i64* %814, align 8
  %815 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %816 = load i64, i64* %25, align 8
  %817 = call i64 @__archive_read_consume(%struct.archive_read* %815, i64 %816)
  %818 = icmp slt i64 %817, 0
  br i1 %818, label %819, label %825

819:                                              ; preds = %810
  %820 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %821 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %820, i32 0, i32 0
  %822 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %823 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_7__* %821, i32 %822, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %824 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %824, i32* %4, align 4
  br label %894

825:                                              ; preds = %810
  br label %845

826:                                              ; preds = %650
  %827 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %828 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %827, i32 0, i32 1
  %829 = load i32, i32* %828, align 4
  %830 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %831 = and i32 %829, %830
  %832 = icmp eq i32 0, %831
  br i1 %832, label %838, label %833

833:                                              ; preds = %826
  %834 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %835 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %834, i32 0, i32 6
  %836 = load i64, i64* %835, align 8
  %837 = icmp sgt i64 %836, 0
  br i1 %837, label %838, label %844

838:                                              ; preds = %833, %826
  %839 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %840 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %841 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %840, i32 0, i32 6
  %842 = load i64, i64* %841, align 8
  %843 = call i32 @archive_entry_set_size(%struct.archive_entry* %839, i64 %842)
  br label %844

844:                                              ; preds = %838, %833
  br label %845

845:                                              ; preds = %844, %825
  %846 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %847 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %846, i32 0, i32 5
  %848 = load i32, i32* %847, align 4
  %849 = load %struct.zip*, %struct.zip** %7, align 8
  %850 = getelementptr inbounds %struct.zip, %struct.zip* %849, i32 0, i32 4
  store i32 %848, i32* %850, align 8
  %851 = load %struct.zip_entry*, %struct.zip_entry** %16, align 8
  %852 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %851, i32 0, i32 1
  %853 = load i32, i32* %852, align 4
  %854 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %855 = and i32 %853, %854
  %856 = icmp eq i32 0, %855
  br i1 %856, label %857, label %865

857:                                              ; preds = %845
  %858 = load %struct.zip*, %struct.zip** %7, align 8
  %859 = getelementptr inbounds %struct.zip, %struct.zip* %858, i32 0, i32 4
  %860 = load i32, i32* %859, align 8
  %861 = icmp slt i32 %860, 1
  br i1 %861, label %862, label %865

862:                                              ; preds = %857
  %863 = load %struct.zip*, %struct.zip** %7, align 8
  %864 = getelementptr inbounds %struct.zip, %struct.zip* %863, i32 0, i32 0
  store i32 1, i32* %864, align 8
  br label %865

865:                                              ; preds = %862, %857, %845
  %866 = load %struct.zip*, %struct.zip** %7, align 8
  %867 = getelementptr inbounds %struct.zip, %struct.zip* %866, i32 0, i32 5
  %868 = call i32 @archive_string_empty(%struct.TYPE_6__* %867)
  %869 = load %struct.zip*, %struct.zip** %7, align 8
  %870 = getelementptr inbounds %struct.zip, %struct.zip* %869, i32 0, i32 5
  %871 = load i8, i8* %19, align 1
  %872 = sext i8 %871 to i32
  %873 = sdiv i32 %872, 10
  %874 = trunc i32 %873 to i8
  %875 = load i8, i8* %19, align 1
  %876 = sext i8 %875 to i32
  %877 = srem i32 %876, 10
  %878 = trunc i32 %877 to i8
  %879 = load %struct.zip*, %struct.zip** %7, align 8
  %880 = getelementptr inbounds %struct.zip, %struct.zip* %879, i32 0, i32 6
  %881 = load %struct.zip_entry*, %struct.zip_entry** %880, align 8
  %882 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %881, i32 0, i32 2
  %883 = load i8, i8* %882, align 8
  %884 = call i32 @compression_name(i8 signext %883)
  %885 = call i32 @archive_string_sprintf(%struct.TYPE_6__* %870, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8 signext %874, i8 signext %878, i32 %884)
  %886 = load %struct.zip*, %struct.zip** %7, align 8
  %887 = getelementptr inbounds %struct.zip, %struct.zip* %886, i32 0, i32 5
  %888 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 4
  %890 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %891 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %890, i32 0, i32 0
  %892 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %891, i32 0, i32 0
  store i32 %889, i32* %892, align 4
  %893 = load i32, i32* %18, align 4
  store i32 %893, i32* %4, align 4
  br label %894

894:                                              ; preds = %865, %819, %780, %713, %695, %303, %288, %266, %234, %206, %131, %78, %68
  %895 = load i32, i32* %4, align 4
  ret i32 %895
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.archive_string_conv* @archive_string_default_conversion_for_read(%struct.TYPE_7__*) #2

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #2

declare dso_local i32 @archive_set_error(%struct.TYPE_7__*, i32, i8*, ...) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i8* @archive_le16dec(i8*) #2

declare dso_local i32 @archive_entry_set_is_data_encrypted(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_set_is_metadata_encrypted(%struct.archive_entry*, i32) #2

declare dso_local i32 @zip_time(i8*) #2

declare dso_local i8* @archive_le32dec(i8*) #2

declare dso_local i64 @__archive_read_consume(%struct.archive_read*, i64) #2

declare dso_local %struct.archive_string_conv* @archive_string_conversion_from_charset(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i8*, i64, %struct.archive_string_conv*) #2

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #2

declare dso_local i32 @process_extra(%struct.archive_read*, %struct.archive_entry*, i8*, i64, %struct.zip_entry*) #2

declare dso_local i32* @archive_entry_pathname_w(%struct.archive_entry*) #2

declare dso_local i32* @wcschr(i32*, i32) #2

declare dso_local i32 @archive_string_init(%struct.archive_wstring*) #2

declare dso_local i32 @archive_wstrcpy(%struct.archive_wstring*, i32*) #2

declare dso_local i64 @archive_strlen(%struct.archive_wstring*) #2

declare dso_local i32 @archive_entry_copy_pathname_w(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_wstring_free(%struct.archive_wstring*) #2

declare dso_local i64 @wcslen(i32*) #2

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @archive_wstrcat(%struct.archive_wstring*, i32*) #2

declare dso_local i32 @archive_wstrappend_wchar(%struct.archive_wstring*, i32) #2

declare dso_local i32 @archive_strcat(%struct.archive_wstring*, i8*) #2

declare dso_local i32 @archive_strappend_char(%struct.archive_wstring*, i8 signext) #2

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_string_free(%struct.archive_wstring*) #2

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #2

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #2

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #2

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #2

declare dso_local i64 @archive_entry_copy_symlink_l(%struct.archive_entry*, i8*, i64, %struct.archive_string_conv*) #2

declare dso_local i32 @archive_string_empty(%struct.TYPE_6__*) #2

declare dso_local i32 @archive_string_sprintf(%struct.TYPE_6__*, i8*, i8 signext, i8 signext, i32) #2

declare dso_local i32 @compression_name(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
