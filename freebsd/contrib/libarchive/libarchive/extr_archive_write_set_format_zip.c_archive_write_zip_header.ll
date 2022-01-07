; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_archive_write_zip_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.zip* }
%struct.zip = type { i32, i64, i64, i64, i64, i64, i32, i32, i32, i32 (i32, i8*, i64)*, i32, i32, i8*, i8*, i8, i8*, i32, i32, %struct.TYPE_2__, i64, i32, i64, i64, %struct.archive_entry*, i32, i32, i32, %struct.archive_string_conv*, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i8*, i8*, i8* }
%struct.archive_string_conv = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i64 0, align 8
@AE_IFDIR = common dso_local global i64 0, align 8
@AE_IFLNK = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Filetype not supported\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ZIP_FLAG_AVOID_ZIP64 = common dso_local global i32 0, align 4
@ZIP_4GB_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Files > 4GB require Zip64 extensions\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Archives > 4GB require Zip64 extensions\00", align 1
@INT64_MAX = common dso_local global i64 0, align 8
@ZIP_ENTRY_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Can't allocate zip header data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't translate Pathname '%s' to %s\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Can't allocate memory  for Symlink\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@ZIP_ENTRY_FLAG_UTF8_NAME = common dso_local global i32 0, align 4
@COMPRESSION_STORE = common dso_local global i8* null, align 8
@COMPRESSION_UNSPECIFIED = common dso_local global i8* null, align 8
@COMPRESSION_DEFAULT = common dso_local global i8* null, align 8
@TRAD_HEADER_SIZE = common dso_local global i64 0, align 8
@WINZIP_AES128_HEADER_SIZE = common dso_local global i64 0, align 8
@AUTH_CODE_SIZE = common dso_local global i64 0, align 8
@WINZIP_AES256_HEADER_SIZE = common dso_local global i64 0, align 8
@ZIP_FLAG_FORCE_ZIP64 = common dso_local global i32 0, align 4
@ZIP_4GB_MAX_UNCOMPRESSED = common dso_local global i64 0, align 8
@ZIP_ENTRY_FLAG_LENGTH_AT_END = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"PK\03\04\00", align 1
@WINZIP_AES_ENCRYPTION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"PK\01\02\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"UT\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ux\0B\00\01\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\01\99\07\00\01\00AE\00", align 1
@AES_VENDOR_AE_2 = common dso_local global i32 0, align 4
@AES_VENDOR_AE_1 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"\01\00\10\00\00", align 1
@ZIP_FLAG_EXPERIMENT_xl = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"xl\00\00\00", align 1
@CODESET = common dso_local global i32 0, align 4
@COMPRESSION_DEFLATE = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @archive_write_zip_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_zip_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca [144 x i8], align 16
  %8 = alloca %struct.zip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.archive_string_conv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %26 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %27 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %26, i32 0, i32 1
  %28 = load %struct.zip*, %struct.zip** %27, align 8
  store %struct.zip* %28, %struct.zip** %8, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %29 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %30 = load %struct.zip*, %struct.zip** %8, align 8
  %31 = call %struct.archive_string_conv* @get_sconv(%struct.archive_write* %29, %struct.zip* %30)
  store %struct.archive_string_conv* %31, %struct.archive_string_conv** %14, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %32, i32* %16, align 4
  store i32 10, i32* %18, align 4
  %33 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %34 = call i64 @archive_entry_filetype(%struct.archive_entry* %33)
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* @AE_IFREG, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %2
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* @AE_IFDIR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* @AE_IFLNK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %48 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %47, i32 0, i32 0
  %49 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %50 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %48, i64 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %51, i32* %3, align 4
  br label %1111

52:                                               ; preds = %42, %38, %2
  %53 = load %struct.zip*, %struct.zip** %8, align 8
  %54 = getelementptr inbounds %struct.zip, %struct.zip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ZIP_FLAG_AVOID_ZIP64, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %52
  %60 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %61 = call i64 @archive_entry_size_is_set(%struct.archive_entry* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %65 = call i32 @archive_entry_size(%struct.archive_entry* %64)
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @ZIP_4GB_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %71 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %70, i32 0, i32 0
  %72 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %73 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %71, i64 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %74, i32* %3, align 4
  br label %1111

75:                                               ; preds = %63, %59
  %76 = load %struct.zip*, %struct.zip** %8, align 8
  %77 = getelementptr inbounds %struct.zip, %struct.zip* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ZIP_4GB_MAX, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %83 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %82, i32 0, i32 0
  %84 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %85 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %83, i64 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %86, i32* %3, align 4
  br label %1111

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %52
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* @AE_IFREG, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %94 = call i32 @archive_entry_set_size(%struct.archive_entry* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load %struct.zip*, %struct.zip** %8, align 8
  %97 = getelementptr inbounds %struct.zip, %struct.zip* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.zip*, %struct.zip** %8, align 8
  %100 = getelementptr inbounds %struct.zip, %struct.zip* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* @INT64_MAX, align 8
  %102 = load %struct.zip*, %struct.zip** %8, align 8
  %103 = getelementptr inbounds %struct.zip, %struct.zip* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.zip*, %struct.zip** %8, align 8
  %105 = getelementptr inbounds %struct.zip, %struct.zip* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.zip*, %struct.zip** %8, align 8
  %107 = getelementptr inbounds %struct.zip, %struct.zip* %106, i32 0, i32 5
  store i64 0, i64* %107, align 8
  %108 = load %struct.zip*, %struct.zip** %8, align 8
  %109 = getelementptr inbounds %struct.zip, %struct.zip* %108, i32 0, i32 22
  store i64 0, i64* %109, align 8
  %110 = load %struct.zip*, %struct.zip** %8, align 8
  %111 = getelementptr inbounds %struct.zip, %struct.zip* %110, i32 0, i32 21
  store i64 0, i64* %111, align 8
  %112 = load %struct.zip*, %struct.zip** %8, align 8
  %113 = getelementptr inbounds %struct.zip, %struct.zip* %112, i32 0, i32 6
  store i32 0, i32* %113, align 8
  %114 = load %struct.zip*, %struct.zip** %8, align 8
  %115 = getelementptr inbounds %struct.zip, %struct.zip* %114, i32 0, i32 7
  store i32 0, i32* %115, align 4
  %116 = load %struct.zip*, %struct.zip** %8, align 8
  %117 = getelementptr inbounds %struct.zip, %struct.zip* %116, i32 0, i32 9
  %118 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %117, align 8
  %119 = call i32 %118(i32 0, i8* null, i64 0)
  %120 = load %struct.zip*, %struct.zip** %8, align 8
  %121 = getelementptr inbounds %struct.zip, %struct.zip* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 8
  %122 = load %struct.zip*, %struct.zip** %8, align 8
  %123 = getelementptr inbounds %struct.zip, %struct.zip* %122, i32 0, i32 10
  store i32 0, i32* %123, align 8
  %124 = load %struct.zip*, %struct.zip** %8, align 8
  %125 = getelementptr inbounds %struct.zip, %struct.zip* %124, i32 0, i32 23
  %126 = load %struct.archive_entry*, %struct.archive_entry** %125, align 8
  %127 = call i32 @archive_entry_free(%struct.archive_entry* %126)
  %128 = load %struct.zip*, %struct.zip** %8, align 8
  %129 = getelementptr inbounds %struct.zip, %struct.zip* %128, i32 0, i32 23
  store %struct.archive_entry* null, %struct.archive_entry** %129, align 8
  %130 = load %struct.zip*, %struct.zip** %8, align 8
  %131 = getelementptr inbounds %struct.zip, %struct.zip* %130, i32 0, i32 29
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %95
  %135 = load %struct.zip*, %struct.zip** %8, align 8
  %136 = getelementptr inbounds %struct.zip, %struct.zip* %135, i32 0, i32 32
  %137 = call i32 @archive_encrypto_aes_ctr_release(i32* %136)
  br label %138

138:                                              ; preds = %134, %95
  %139 = load %struct.zip*, %struct.zip** %8, align 8
  %140 = getelementptr inbounds %struct.zip, %struct.zip* %139, i32 0, i32 28
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.zip*, %struct.zip** %8, align 8
  %145 = getelementptr inbounds %struct.zip, %struct.zip* %144, i32 0, i32 31
  %146 = call i32 @archive_hmac_sha1_cleanup(i32* %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.zip*, %struct.zip** %8, align 8
  %149 = getelementptr inbounds %struct.zip, %struct.zip* %148, i32 0, i32 28
  store i64 0, i64* %149, align 8
  %150 = load %struct.zip*, %struct.zip** %8, align 8
  %151 = getelementptr inbounds %struct.zip, %struct.zip* %150, i32 0, i32 29
  store i64 0, i64* %151, align 8
  %152 = load %struct.zip*, %struct.zip** %8, align 8
  %153 = getelementptr inbounds %struct.zip, %struct.zip* %152, i32 0, i32 30
  store i64 0, i64* %153, align 8
  %154 = load i64, i64* %17, align 8
  %155 = load i64, i64* @AE_IFREG, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %182

157:                                              ; preds = %147
  %158 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %159 = call i64 @archive_entry_size_is_set(%struct.archive_entry* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %163 = call i32 @archive_entry_size(%struct.archive_entry* %162)
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %161, %157
  %166 = load %struct.zip*, %struct.zip** %8, align 8
  %167 = getelementptr inbounds %struct.zip, %struct.zip* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  switch i32 %168, label %180 [
    i32 130, label %169
    i32 129, label %169
    i32 128, label %169
  ]

169:                                              ; preds = %165, %165, %165
  %170 = load i32, i32* @ZIP_ENTRY_FLAG_ENCRYPTED, align 4
  %171 = load %struct.zip*, %struct.zip** %8, align 8
  %172 = getelementptr inbounds %struct.zip, %struct.zip* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.zip*, %struct.zip** %8, align 8
  %176 = getelementptr inbounds %struct.zip, %struct.zip* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.zip*, %struct.zip** %8, align 8
  %179 = getelementptr inbounds %struct.zip, %struct.zip* %178, i32 0, i32 10
  store i32 %177, i32* %179, align 8
  br label %181

180:                                              ; preds = %165
  br label %181

181:                                              ; preds = %180, %169
  br label %182

182:                                              ; preds = %181, %161, %147
  %183 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %184 = call i8* @archive_entry_clone(%struct.archive_entry* %183)
  %185 = bitcast i8* %184 to %struct.archive_entry*
  %186 = load %struct.zip*, %struct.zip** %8, align 8
  %187 = getelementptr inbounds %struct.zip, %struct.zip* %186, i32 0, i32 23
  store %struct.archive_entry* %185, %struct.archive_entry** %187, align 8
  %188 = load %struct.zip*, %struct.zip** %8, align 8
  %189 = getelementptr inbounds %struct.zip, %struct.zip* %188, i32 0, i32 23
  %190 = load %struct.archive_entry*, %struct.archive_entry** %189, align 8
  %191 = icmp eq %struct.archive_entry* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %182
  %193 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %194 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %193, i32 0, i32 0
  %195 = load i64, i64* @ENOMEM, align 8
  %196 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %194, i64 %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %197 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %197, i32* %3, align 4
  br label %1111

198:                                              ; preds = %182
  %199 = load %struct.archive_string_conv*, %struct.archive_string_conv** %14, align 8
  %200 = icmp ne %struct.archive_string_conv* %199, null
  br i1 %200, label %201, label %268

201:                                              ; preds = %198
  %202 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %203 = load %struct.archive_string_conv*, %struct.archive_string_conv** %14, align 8
  %204 = call i64 @archive_entry_pathname_l(%struct.archive_entry* %202, i8** %19, i64* %20, %struct.archive_string_conv* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %227

206:                                              ; preds = %201
  %207 = load i64, i64* @errno, align 8
  %208 = load i64, i64* @ENOMEM, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %212 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %211, i32 0, i32 0
  %213 = load i64, i64* @ENOMEM, align 8
  %214 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %212, i64 %213, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %215 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %215, i32* %3, align 4
  br label %1111

216:                                              ; preds = %206
  %217 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %218 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %217, i32 0, i32 0
  %219 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %220 = sext i32 %219 to i64
  %221 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %222 = call i32 @archive_entry_pathname(%struct.archive_entry* %221)
  %223 = load %struct.archive_string_conv*, %struct.archive_string_conv** %14, align 8
  %224 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %223)
  %225 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %218, i64 %220, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %222, i32 %224)
  %226 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %226, i32* %16, align 4
  br label %227

227:                                              ; preds = %216, %201
  %228 = load i64, i64* %20, align 8
  %229 = icmp ugt i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load %struct.zip*, %struct.zip** %8, align 8
  %232 = getelementptr inbounds %struct.zip, %struct.zip* %231, i32 0, i32 23
  %233 = load %struct.archive_entry*, %struct.archive_entry** %232, align 8
  %234 = load i8*, i8** %19, align 8
  %235 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %233, i8* %234)
  br label %236

236:                                              ; preds = %230, %227
  %237 = load i64, i64* %17, align 8
  %238 = load i64, i64* @AE_IFLNK, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %267

240:                                              ; preds = %236
  %241 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %242 = load %struct.archive_string_conv*, %struct.archive_string_conv** %14, align 8
  %243 = call i64 @archive_entry_symlink_l(%struct.archive_entry* %241, i8** %19, i64* %20, %struct.archive_string_conv* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %240
  %246 = load i64, i64* @errno, align 8
  %247 = load i64, i64* @ENOMEM, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %251 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %250, i32 0, i32 0
  %252 = load i64, i64* @ENOMEM, align 8
  %253 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %251, i64 %252, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %254 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %254, i32* %3, align 4
  br label %1111

255:                                              ; preds = %245
  br label %266

256:                                              ; preds = %240
  %257 = load i64, i64* %20, align 8
  %258 = icmp ugt i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load %struct.zip*, %struct.zip** %8, align 8
  %261 = getelementptr inbounds %struct.zip, %struct.zip* %260, i32 0, i32 23
  %262 = load %struct.archive_entry*, %struct.archive_entry** %261, align 8
  %263 = load i8*, i8** %19, align 8
  %264 = call i32 @archive_entry_set_symlink(%struct.archive_entry* %262, i8* %263)
  br label %265

265:                                              ; preds = %259, %256
  br label %266

266:                                              ; preds = %265, %255
  br label %267

267:                                              ; preds = %266, %236
  br label %268

268:                                              ; preds = %267, %198
  %269 = load %struct.zip*, %struct.zip** %8, align 8
  %270 = getelementptr inbounds %struct.zip, %struct.zip* %269, i32 0, i32 23
  %271 = load %struct.archive_entry*, %struct.archive_entry** %270, align 8
  %272 = call i32 @archive_entry_pathname(%struct.archive_entry* %271)
  %273 = call i32 @is_all_ascii(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %295, label %275

275:                                              ; preds = %268
  %276 = load %struct.zip*, %struct.zip** %8, align 8
  %277 = getelementptr inbounds %struct.zip, %struct.zip* %276, i32 0, i32 27
  %278 = load %struct.archive_string_conv*, %struct.archive_string_conv** %277, align 8
  %279 = icmp ne %struct.archive_string_conv* %278, null
  br i1 %279, label %280, label %294

280:                                              ; preds = %275
  %281 = load %struct.zip*, %struct.zip** %8, align 8
  %282 = getelementptr inbounds %struct.zip, %struct.zip* %281, i32 0, i32 27
  %283 = load %struct.archive_string_conv*, %struct.archive_string_conv** %282, align 8
  %284 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %283)
  %285 = call i64 @strcmp(i32 %284, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load i32, i32* @ZIP_ENTRY_FLAG_UTF8_NAME, align 4
  %289 = load %struct.zip*, %struct.zip** %8, align 8
  %290 = getelementptr inbounds %struct.zip, %struct.zip* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %287, %280
  br label %294

294:                                              ; preds = %293, %275
  br label %295

295:                                              ; preds = %294, %268
  %296 = load %struct.zip*, %struct.zip** %8, align 8
  %297 = getelementptr inbounds %struct.zip, %struct.zip* %296, i32 0, i32 23
  %298 = load %struct.archive_entry*, %struct.archive_entry** %297, align 8
  %299 = call i64 @path_length(%struct.archive_entry* %298)
  store i64 %299, i64* %11, align 8
  %300 = load i64, i64* %17, align 8
  %301 = load i64, i64* @AE_IFLNK, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %338

303:                                              ; preds = %295
  %304 = load %struct.zip*, %struct.zip** %8, align 8
  %305 = getelementptr inbounds %struct.zip, %struct.zip* %304, i32 0, i32 23
  %306 = load %struct.archive_entry*, %struct.archive_entry** %305, align 8
  %307 = call i8* @archive_entry_symlink(%struct.archive_entry* %306)
  store i8* %307, i8** %12, align 8
  %308 = load i8*, i8** %12, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %303
  %311 = load i8*, i8** %12, align 8
  %312 = call i64 @strlen(i8* %311)
  store i64 %312, i64* %13, align 8
  br label %314

313:                                              ; preds = %303
  store i64 0, i64* %13, align 8
  br label %314

314:                                              ; preds = %313, %310
  %315 = load i64, i64* %13, align 8
  %316 = load %struct.zip*, %struct.zip** %8, align 8
  %317 = getelementptr inbounds %struct.zip, %struct.zip* %316, i32 0, i32 3
  store i64 %315, i64* %317, align 8
  %318 = load i64, i64* %13, align 8
  %319 = load %struct.zip*, %struct.zip** %8, align 8
  %320 = getelementptr inbounds %struct.zip, %struct.zip* %319, i32 0, i32 4
  store i64 %318, i64* %320, align 8
  %321 = load i64, i64* %13, align 8
  %322 = load %struct.zip*, %struct.zip** %8, align 8
  %323 = getelementptr inbounds %struct.zip, %struct.zip* %322, i32 0, i32 5
  store i64 %321, i64* %323, align 8
  %324 = load %struct.zip*, %struct.zip** %8, align 8
  %325 = getelementptr inbounds %struct.zip, %struct.zip* %324, i32 0, i32 9
  %326 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %325, align 8
  %327 = load %struct.zip*, %struct.zip** %8, align 8
  %328 = getelementptr inbounds %struct.zip, %struct.zip* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  %330 = load i8*, i8** %12, align 8
  %331 = load i64, i64* %13, align 8
  %332 = call i32 %326(i32 %329, i8* %330, i64 %331)
  %333 = load %struct.zip*, %struct.zip** %8, align 8
  %334 = getelementptr inbounds %struct.zip, %struct.zip* %333, i32 0, i32 8
  store i32 %332, i32* %334, align 8
  %335 = load i8*, i8** @COMPRESSION_STORE, align 8
  %336 = load %struct.zip*, %struct.zip** %8, align 8
  %337 = getelementptr inbounds %struct.zip, %struct.zip* %336, i32 0, i32 12
  store i8* %335, i8** %337, align 8
  store i32 20, i32* %18, align 4
  br label %513

338:                                              ; preds = %295
  %339 = load i64, i64* %17, align 8
  %340 = load i64, i64* @AE_IFREG, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %348

342:                                              ; preds = %338
  %343 = load i8*, i8** @COMPRESSION_STORE, align 8
  %344 = load %struct.zip*, %struct.zip** %8, align 8
  %345 = getelementptr inbounds %struct.zip, %struct.zip* %344, i32 0, i32 12
  store i8* %343, i8** %345, align 8
  %346 = load %struct.zip*, %struct.zip** %8, align 8
  %347 = getelementptr inbounds %struct.zip, %struct.zip* %346, i32 0, i32 3
  store i64 0, i64* %347, align 8
  store i32 20, i32* %18, align 4
  br label %512

348:                                              ; preds = %338
  %349 = load %struct.zip*, %struct.zip** %8, align 8
  %350 = getelementptr inbounds %struct.zip, %struct.zip* %349, i32 0, i32 23
  %351 = load %struct.archive_entry*, %struct.archive_entry** %350, align 8
  %352 = call i64 @archive_entry_size_is_set(%struct.archive_entry* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %465

354:                                              ; preds = %348
  %355 = load %struct.zip*, %struct.zip** %8, align 8
  %356 = getelementptr inbounds %struct.zip, %struct.zip* %355, i32 0, i32 23
  %357 = load %struct.archive_entry*, %struct.archive_entry** %356, align 8
  %358 = call i32 @archive_entry_size(%struct.archive_entry* %357)
  %359 = sext i32 %358 to i64
  store i64 %359, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %360 = load i64, i64* %21, align 8
  %361 = load %struct.zip*, %struct.zip** %8, align 8
  %362 = getelementptr inbounds %struct.zip, %struct.zip* %361, i32 0, i32 3
  store i64 %360, i64* %362, align 8
  %363 = load %struct.zip*, %struct.zip** %8, align 8
  %364 = getelementptr inbounds %struct.zip, %struct.zip* %363, i32 0, i32 13
  %365 = load i8*, i8** %364, align 8
  %366 = load %struct.zip*, %struct.zip** %8, align 8
  %367 = getelementptr inbounds %struct.zip, %struct.zip* %366, i32 0, i32 12
  store i8* %365, i8** %367, align 8
  %368 = load %struct.zip*, %struct.zip** %8, align 8
  %369 = getelementptr inbounds %struct.zip, %struct.zip* %368, i32 0, i32 12
  %370 = load i8*, i8** %369, align 8
  %371 = load i8*, i8** @COMPRESSION_UNSPECIFIED, align 8
  %372 = icmp eq i8* %370, %371
  br i1 %372, label %373, label %377

373:                                              ; preds = %354
  %374 = load i8*, i8** @COMPRESSION_DEFAULT, align 8
  %375 = load %struct.zip*, %struct.zip** %8, align 8
  %376 = getelementptr inbounds %struct.zip, %struct.zip* %375, i32 0, i32 12
  store i8* %374, i8** %376, align 8
  br label %377

377:                                              ; preds = %373, %354
  %378 = load %struct.zip*, %struct.zip** %8, align 8
  %379 = getelementptr inbounds %struct.zip, %struct.zip* %378, i32 0, i32 12
  %380 = load i8*, i8** %379, align 8
  %381 = load i8*, i8** @COMPRESSION_STORE, align 8
  %382 = icmp eq i8* %380, %381
  br i1 %382, label %383, label %390

383:                                              ; preds = %377
  %384 = load i64, i64* %21, align 8
  %385 = load %struct.zip*, %struct.zip** %8, align 8
  %386 = getelementptr inbounds %struct.zip, %struct.zip* %385, i32 0, i32 4
  store i64 %384, i64* %386, align 8
  %387 = load i64, i64* %21, align 8
  %388 = load %struct.zip*, %struct.zip** %8, align 8
  %389 = getelementptr inbounds %struct.zip, %struct.zip* %388, i32 0, i32 5
  store i64 %387, i64* %389, align 8
  store i32 10, i32* %18, align 4
  br label %394

390:                                              ; preds = %377
  %391 = load i64, i64* %21, align 8
  %392 = load %struct.zip*, %struct.zip** %8, align 8
  %393 = getelementptr inbounds %struct.zip, %struct.zip* %392, i32 0, i32 5
  store i64 %391, i64* %393, align 8
  store i32 20, i32* %18, align 4
  br label %394

394:                                              ; preds = %390, %383
  %395 = load %struct.zip*, %struct.zip** %8, align 8
  %396 = getelementptr inbounds %struct.zip, %struct.zip* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @ZIP_ENTRY_FLAG_ENCRYPTED, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %429

401:                                              ; preds = %394
  %402 = load %struct.zip*, %struct.zip** %8, align 8
  %403 = getelementptr inbounds %struct.zip, %struct.zip* %402, i32 0, i32 10
  %404 = load i32, i32* %403, align 8
  switch i32 %404, label %415 [
    i32 130, label %405
    i32 129, label %407
    i32 128, label %411
  ]

405:                                              ; preds = %401
  %406 = load i64, i64* @TRAD_HEADER_SIZE, align 8
  store i64 %406, i64* %22, align 8
  store i32 20, i32* %18, align 4
  br label %416

407:                                              ; preds = %401
  %408 = load i64, i64* @WINZIP_AES128_HEADER_SIZE, align 8
  %409 = load i64, i64* @AUTH_CODE_SIZE, align 8
  %410 = add nsw i64 %408, %409
  store i64 %410, i64* %22, align 8
  store i32 20, i32* %18, align 4
  br label %416

411:                                              ; preds = %401
  %412 = load i64, i64* @WINZIP_AES256_HEADER_SIZE, align 8
  %413 = load i64, i64* @AUTH_CODE_SIZE, align 8
  %414 = add nsw i64 %412, %413
  store i64 %414, i64* %22, align 8
  store i32 20, i32* %18, align 4
  br label %416

415:                                              ; preds = %401
  br label %416

416:                                              ; preds = %415, %411, %407, %405
  %417 = load %struct.zip*, %struct.zip** %8, align 8
  %418 = getelementptr inbounds %struct.zip, %struct.zip* %417, i32 0, i32 12
  %419 = load i8*, i8** %418, align 8
  %420 = load i8*, i8** @COMPRESSION_STORE, align 8
  %421 = icmp eq i8* %419, %420
  br i1 %421, label %422, label %428

422:                                              ; preds = %416
  %423 = load i64, i64* %22, align 8
  %424 = load %struct.zip*, %struct.zip** %8, align 8
  %425 = getelementptr inbounds %struct.zip, %struct.zip* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = add i64 %426, %423
  store i64 %427, i64* %425, align 8
  br label %428

428:                                              ; preds = %422, %416
  br label %429

429:                                              ; preds = %428, %394
  %430 = load %struct.zip*, %struct.zip** %8, align 8
  %431 = getelementptr inbounds %struct.zip, %struct.zip* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @ZIP_FLAG_FORCE_ZIP64, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %456, label %436

436:                                              ; preds = %429
  %437 = load %struct.zip*, %struct.zip** %8, align 8
  %438 = getelementptr inbounds %struct.zip, %struct.zip* %437, i32 0, i32 5
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* %22, align 8
  %441 = add i64 %439, %440
  %442 = load i64, i64* @ZIP_4GB_MAX, align 8
  %443 = icmp ugt i64 %441, %442
  br i1 %443, label %456, label %444

444:                                              ; preds = %436
  %445 = load %struct.zip*, %struct.zip** %8, align 8
  %446 = getelementptr inbounds %struct.zip, %struct.zip* %445, i32 0, i32 5
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @ZIP_4GB_MAX_UNCOMPRESSED, align 8
  %449 = icmp ugt i64 %447, %448
  br i1 %449, label %450, label %459

450:                                              ; preds = %444
  %451 = load %struct.zip*, %struct.zip** %8, align 8
  %452 = getelementptr inbounds %struct.zip, %struct.zip* %451, i32 0, i32 12
  %453 = load i8*, i8** %452, align 8
  %454 = load i8*, i8** @COMPRESSION_STORE, align 8
  %455 = icmp ne i8* %453, %454
  br i1 %455, label %456, label %459

456:                                              ; preds = %450, %436, %429
  %457 = load %struct.zip*, %struct.zip** %8, align 8
  %458 = getelementptr inbounds %struct.zip, %struct.zip* %457, i32 0, i32 7
  store i32 1, i32* %458, align 4
  store i32 45, i32* %18, align 4
  br label %459

459:                                              ; preds = %456, %450, %444
  %460 = load i32, i32* @ZIP_ENTRY_FLAG_LENGTH_AT_END, align 4
  %461 = load %struct.zip*, %struct.zip** %8, align 8
  %462 = getelementptr inbounds %struct.zip, %struct.zip* %461, i32 0, i32 6
  %463 = load i32, i32* %462, align 8
  %464 = or i32 %463, %460
  store i32 %464, i32* %462, align 8
  br label %511

465:                                              ; preds = %348
  %466 = load i8*, i8** @COMPRESSION_DEFAULT, align 8
  %467 = load %struct.zip*, %struct.zip** %8, align 8
  %468 = getelementptr inbounds %struct.zip, %struct.zip* %467, i32 0, i32 12
  store i8* %466, i8** %468, align 8
  %469 = load i32, i32* @ZIP_ENTRY_FLAG_LENGTH_AT_END, align 4
  %470 = load %struct.zip*, %struct.zip** %8, align 8
  %471 = getelementptr inbounds %struct.zip, %struct.zip* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 8
  %473 = or i32 %472, %469
  store i32 %473, i32* %471, align 8
  %474 = load %struct.zip*, %struct.zip** %8, align 8
  %475 = getelementptr inbounds %struct.zip, %struct.zip* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @ZIP_FLAG_AVOID_ZIP64, align 4
  %478 = and i32 %476, %477
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %483

480:                                              ; preds = %465
  %481 = load %struct.zip*, %struct.zip** %8, align 8
  %482 = getelementptr inbounds %struct.zip, %struct.zip* %481, i32 0, i32 7
  store i32 1, i32* %482, align 4
  store i32 45, i32* %18, align 4
  br label %492

483:                                              ; preds = %465
  %484 = load %struct.zip*, %struct.zip** %8, align 8
  %485 = getelementptr inbounds %struct.zip, %struct.zip* %484, i32 0, i32 12
  %486 = load i8*, i8** %485, align 8
  %487 = load i8*, i8** @COMPRESSION_STORE, align 8
  %488 = icmp eq i8* %486, %487
  br i1 %488, label %489, label %490

489:                                              ; preds = %483
  store i32 10, i32* %18, align 4
  br label %491

490:                                              ; preds = %483
  store i32 20, i32* %18, align 4
  br label %491

491:                                              ; preds = %490, %489
  br label %492

492:                                              ; preds = %491, %480
  %493 = load %struct.zip*, %struct.zip** %8, align 8
  %494 = getelementptr inbounds %struct.zip, %struct.zip* %493, i32 0, i32 6
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @ZIP_ENTRY_FLAG_ENCRYPTED, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %510

499:                                              ; preds = %492
  %500 = load %struct.zip*, %struct.zip** %8, align 8
  %501 = getelementptr inbounds %struct.zip, %struct.zip* %500, i32 0, i32 10
  %502 = load i32, i32* %501, align 8
  switch i32 %502, label %508 [
    i32 130, label %503
    i32 129, label %503
    i32 128, label %503
  ]

503:                                              ; preds = %499, %499, %499
  %504 = load i32, i32* %18, align 4
  %505 = icmp slt i32 %504, 20
  br i1 %505, label %506, label %507

506:                                              ; preds = %503
  store i32 20, i32* %18, align 4
  br label %507

507:                                              ; preds = %506, %503
  br label %509

508:                                              ; preds = %499
  br label %509

509:                                              ; preds = %508, %507
  br label %510

510:                                              ; preds = %509, %492
  br label %511

511:                                              ; preds = %510, %459
  br label %512

512:                                              ; preds = %511, %342
  br label %513

513:                                              ; preds = %512, %314
  %514 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %515 = call i32 @memset(i8* %514, i32 0, i32 32)
  %516 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %517 = call i32 (i8*, ...) @memcpy(i8* %516, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %518 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %519 = getelementptr inbounds i8, i8* %518, i64 4
  %520 = load i32, i32* %18, align 4
  %521 = call i32 @archive_le16enc(i8* %519, i32 %520)
  %522 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %523 = getelementptr inbounds i8, i8* %522, i64 6
  %524 = load %struct.zip*, %struct.zip** %8, align 8
  %525 = getelementptr inbounds %struct.zip, %struct.zip* %524, i32 0, i32 6
  %526 = load i32, i32* %525, align 8
  %527 = call i32 @archive_le16enc(i8* %523, i32 %526)
  %528 = load %struct.zip*, %struct.zip** %8, align 8
  %529 = getelementptr inbounds %struct.zip, %struct.zip* %528, i32 0, i32 10
  %530 = load i32, i32* %529, align 8
  %531 = icmp eq i32 %530, 129
  br i1 %531, label %537, label %532

532:                                              ; preds = %513
  %533 = load %struct.zip*, %struct.zip** %8, align 8
  %534 = getelementptr inbounds %struct.zip, %struct.zip* %533, i32 0, i32 10
  %535 = load i32, i32* %534, align 8
  %536 = icmp eq i32 %535, 128
  br i1 %536, label %537, label %542

537:                                              ; preds = %532, %513
  %538 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %539 = getelementptr inbounds i8, i8* %538, i64 8
  %540 = load i32, i32* @WINZIP_AES_ENCRYPTION, align 4
  %541 = call i32 @archive_le16enc(i8* %539, i32 %540)
  br label %550

542:                                              ; preds = %532
  %543 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %544 = getelementptr inbounds i8, i8* %543, i64 8
  %545 = load %struct.zip*, %struct.zip** %8, align 8
  %546 = getelementptr inbounds %struct.zip, %struct.zip* %545, i32 0, i32 12
  %547 = load i8*, i8** %546, align 8
  %548 = ptrtoint i8* %547 to i32
  %549 = call i32 @archive_le16enc(i8* %544, i32 %548)
  br label %550

550:                                              ; preds = %542, %537
  %551 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %552 = getelementptr inbounds i8, i8* %551, i64 10
  %553 = load %struct.zip*, %struct.zip** %8, align 8
  %554 = getelementptr inbounds %struct.zip, %struct.zip* %553, i32 0, i32 23
  %555 = load %struct.archive_entry*, %struct.archive_entry** %554, align 8
  %556 = call i64 @archive_entry_mtime(%struct.archive_entry* %555)
  %557 = call i32 @dos_time(i64 %556)
  %558 = call i32 @archive_le32enc(i8* %552, i32 %557)
  %559 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %560 = getelementptr inbounds i8, i8* %559, i64 14
  %561 = load %struct.zip*, %struct.zip** %8, align 8
  %562 = getelementptr inbounds %struct.zip, %struct.zip* %561, i32 0, i32 8
  %563 = load i32, i32* %562, align 8
  %564 = call i32 @archive_le32enc(i8* %560, i32 %563)
  %565 = load %struct.zip*, %struct.zip** %8, align 8
  %566 = getelementptr inbounds %struct.zip, %struct.zip* %565, i32 0, i32 7
  %567 = load i32, i32* %566, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %580

569:                                              ; preds = %550
  %570 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %571 = getelementptr inbounds i8, i8* %570, i64 18
  %572 = load i64, i64* @ZIP_4GB_MAX, align 8
  %573 = trunc i64 %572 to i32
  %574 = call i32 @archive_le32enc(i8* %571, i32 %573)
  %575 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %576 = getelementptr inbounds i8, i8* %575, i64 22
  %577 = load i64, i64* @ZIP_4GB_MAX, align 8
  %578 = trunc i64 %577 to i32
  %579 = call i32 @archive_le32enc(i8* %576, i32 %578)
  br label %595

580:                                              ; preds = %550
  %581 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %582 = getelementptr inbounds i8, i8* %581, i64 18
  %583 = load %struct.zip*, %struct.zip** %8, align 8
  %584 = getelementptr inbounds %struct.zip, %struct.zip* %583, i32 0, i32 4
  %585 = load i64, i64* %584, align 8
  %586 = trunc i64 %585 to i32
  %587 = call i32 @archive_le32enc(i8* %582, i32 %586)
  %588 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %589 = getelementptr inbounds i8, i8* %588, i64 22
  %590 = load %struct.zip*, %struct.zip** %8, align 8
  %591 = getelementptr inbounds %struct.zip, %struct.zip* %590, i32 0, i32 5
  %592 = load i64, i64* %591, align 8
  %593 = trunc i64 %592 to i32
  %594 = call i32 @archive_le32enc(i8* %589, i32 %593)
  br label %595

595:                                              ; preds = %580, %569
  %596 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %597 = getelementptr inbounds i8, i8* %596, i64 26
  %598 = load i64, i64* %11, align 8
  %599 = trunc i64 %598 to i32
  %600 = call i32 @archive_le16enc(i8* %597, i32 %599)
  %601 = load %struct.zip*, %struct.zip** %8, align 8
  %602 = getelementptr inbounds %struct.zip, %struct.zip* %601, i32 0, i32 10
  %603 = load i32, i32* %602, align 8
  %604 = icmp eq i32 %603, 130
  br i1 %604, label %605, label %623

605:                                              ; preds = %595
  %606 = load %struct.zip*, %struct.zip** %8, align 8
  %607 = getelementptr inbounds %struct.zip, %struct.zip* %606, i32 0, i32 6
  %608 = load i32, i32* %607, align 8
  %609 = load i32, i32* @ZIP_ENTRY_FLAG_LENGTH_AT_END, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %605
  %613 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 11
  %614 = load i8, i8* %613, align 1
  %615 = load %struct.zip*, %struct.zip** %8, align 8
  %616 = getelementptr inbounds %struct.zip, %struct.zip* %615, i32 0, i32 14
  store i8 %614, i8* %616, align 8
  br label %622

617:                                              ; preds = %605
  %618 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 17
  %619 = load i8, i8* %618, align 1
  %620 = load %struct.zip*, %struct.zip** %8, align 8
  %621 = getelementptr inbounds %struct.zip, %struct.zip* %620, i32 0, i32 14
  store i8 %619, i8* %621, align 8
  br label %622

622:                                              ; preds = %617, %612
  br label %623

623:                                              ; preds = %622, %595
  %624 = load %struct.zip*, %struct.zip** %8, align 8
  %625 = call i8* @cd_alloc(%struct.zip* %624, i32 46)
  %626 = load %struct.zip*, %struct.zip** %8, align 8
  %627 = getelementptr inbounds %struct.zip, %struct.zip* %626, i32 0, i32 15
  store i8* %625, i8** %627, align 8
  %628 = load %struct.zip*, %struct.zip** %8, align 8
  %629 = getelementptr inbounds %struct.zip, %struct.zip* %628, i32 0, i32 26
  %630 = load i32, i32* %629, align 8
  %631 = add nsw i32 %630, 1
  store i32 %631, i32* %629, align 8
  %632 = load %struct.zip*, %struct.zip** %8, align 8
  %633 = getelementptr inbounds %struct.zip, %struct.zip* %632, i32 0, i32 15
  %634 = load i8*, i8** %633, align 8
  %635 = call i32 @memset(i8* %634, i32 0, i32 46)
  %636 = load %struct.zip*, %struct.zip** %8, align 8
  %637 = getelementptr inbounds %struct.zip, %struct.zip* %636, i32 0, i32 15
  %638 = load i8*, i8** %637, align 8
  %639 = call i32 (i8*, ...) @memcpy(i8* %638, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %640 = load %struct.zip*, %struct.zip** %8, align 8
  %641 = getelementptr inbounds %struct.zip, %struct.zip* %640, i32 0, i32 15
  %642 = load i8*, i8** %641, align 8
  %643 = getelementptr inbounds i8, i8* %642, i64 4
  %644 = load i32, i32* %18, align 4
  %645 = add nsw i32 768, %644
  %646 = call i32 @archive_le16enc(i8* %643, i32 %645)
  %647 = load %struct.zip*, %struct.zip** %8, align 8
  %648 = getelementptr inbounds %struct.zip, %struct.zip* %647, i32 0, i32 15
  %649 = load i8*, i8** %648, align 8
  %650 = getelementptr inbounds i8, i8* %649, i64 6
  %651 = load i32, i32* %18, align 4
  %652 = call i32 @archive_le16enc(i8* %650, i32 %651)
  %653 = load %struct.zip*, %struct.zip** %8, align 8
  %654 = getelementptr inbounds %struct.zip, %struct.zip* %653, i32 0, i32 15
  %655 = load i8*, i8** %654, align 8
  %656 = getelementptr inbounds i8, i8* %655, i64 8
  %657 = load %struct.zip*, %struct.zip** %8, align 8
  %658 = getelementptr inbounds %struct.zip, %struct.zip* %657, i32 0, i32 6
  %659 = load i32, i32* %658, align 8
  %660 = call i32 @archive_le16enc(i8* %656, i32 %659)
  %661 = load %struct.zip*, %struct.zip** %8, align 8
  %662 = getelementptr inbounds %struct.zip, %struct.zip* %661, i32 0, i32 10
  %663 = load i32, i32* %662, align 8
  %664 = icmp eq i32 %663, 129
  br i1 %664, label %670, label %665

665:                                              ; preds = %623
  %666 = load %struct.zip*, %struct.zip** %8, align 8
  %667 = getelementptr inbounds %struct.zip, %struct.zip* %666, i32 0, i32 10
  %668 = load i32, i32* %667, align 8
  %669 = icmp eq i32 %668, 128
  br i1 %669, label %670, label %677

670:                                              ; preds = %665, %623
  %671 = load %struct.zip*, %struct.zip** %8, align 8
  %672 = getelementptr inbounds %struct.zip, %struct.zip* %671, i32 0, i32 15
  %673 = load i8*, i8** %672, align 8
  %674 = getelementptr inbounds i8, i8* %673, i64 10
  %675 = load i32, i32* @WINZIP_AES_ENCRYPTION, align 4
  %676 = call i32 @archive_le16enc(i8* %674, i32 %675)
  br label %687

677:                                              ; preds = %665
  %678 = load %struct.zip*, %struct.zip** %8, align 8
  %679 = getelementptr inbounds %struct.zip, %struct.zip* %678, i32 0, i32 15
  %680 = load i8*, i8** %679, align 8
  %681 = getelementptr inbounds i8, i8* %680, i64 10
  %682 = load %struct.zip*, %struct.zip** %8, align 8
  %683 = getelementptr inbounds %struct.zip, %struct.zip* %682, i32 0, i32 12
  %684 = load i8*, i8** %683, align 8
  %685 = ptrtoint i8* %684 to i32
  %686 = call i32 @archive_le16enc(i8* %681, i32 %685)
  br label %687

687:                                              ; preds = %677, %670
  %688 = load %struct.zip*, %struct.zip** %8, align 8
  %689 = getelementptr inbounds %struct.zip, %struct.zip* %688, i32 0, i32 15
  %690 = load i8*, i8** %689, align 8
  %691 = getelementptr inbounds i8, i8* %690, i64 12
  %692 = load %struct.zip*, %struct.zip** %8, align 8
  %693 = getelementptr inbounds %struct.zip, %struct.zip* %692, i32 0, i32 23
  %694 = load %struct.archive_entry*, %struct.archive_entry** %693, align 8
  %695 = call i64 @archive_entry_mtime(%struct.archive_entry* %694)
  %696 = call i32 @dos_time(i64 %695)
  %697 = call i32 @archive_le32enc(i8* %691, i32 %696)
  %698 = load %struct.zip*, %struct.zip** %8, align 8
  %699 = getelementptr inbounds %struct.zip, %struct.zip* %698, i32 0, i32 15
  %700 = load i8*, i8** %699, align 8
  %701 = getelementptr inbounds i8, i8* %700, i64 28
  %702 = load i64, i64* %11, align 8
  %703 = trunc i64 %702 to i32
  %704 = call i32 @archive_le16enc(i8* %701, i32 %703)
  %705 = load %struct.zip*, %struct.zip** %8, align 8
  %706 = getelementptr inbounds %struct.zip, %struct.zip* %705, i32 0, i32 15
  %707 = load i8*, i8** %706, align 8
  %708 = getelementptr inbounds i8, i8* %707, i64 38
  %709 = load %struct.zip*, %struct.zip** %8, align 8
  %710 = getelementptr inbounds %struct.zip, %struct.zip* %709, i32 0, i32 23
  %711 = load %struct.archive_entry*, %struct.archive_entry** %710, align 8
  %712 = call i64 @archive_entry_mode(%struct.archive_entry* %711)
  %713 = trunc i64 %712 to i32
  %714 = shl i32 %713, 16
  %715 = call i32 @archive_le32enc(i8* %708, i32 %714)
  %716 = load %struct.zip*, %struct.zip** %8, align 8
  %717 = load i64, i64* %11, align 8
  %718 = trunc i64 %717 to i32
  %719 = call i8* @cd_alloc(%struct.zip* %716, i32 %718)
  store i8* %719, i8** %9, align 8
  %720 = load %struct.zip*, %struct.zip** %8, align 8
  %721 = getelementptr inbounds %struct.zip, %struct.zip* %720, i32 0, i32 23
  %722 = load %struct.archive_entry*, %struct.archive_entry** %721, align 8
  %723 = load i8*, i8** %9, align 8
  %724 = call i32 @copy_path(%struct.archive_entry* %722, i8* %723)
  %725 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %726 = call i32 @memset(i8* %725, i32 0, i32 144)
  %727 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  store i8* %727, i8** %9, align 8
  %728 = load i8*, i8** %9, align 8
  %729 = call i32 (i8*, ...) @memcpy(i8* %728, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %730 = load i8*, i8** %9, align 8
  %731 = getelementptr inbounds i8, i8* %730, i64 2
  %732 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %733 = call i64 @archive_entry_mtime_is_set(%struct.archive_entry* %732)
  %734 = icmp ne i64 %733, 0
  %735 = zext i1 %734 to i64
  %736 = select i1 %734, i32 4, i32 0
  %737 = add nsw i32 1, %736
  %738 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %739 = call i64 @archive_entry_atime_is_set(%struct.archive_entry* %738)
  %740 = icmp ne i64 %739, 0
  %741 = zext i1 %740 to i64
  %742 = select i1 %740, i32 4, i32 0
  %743 = add nsw i32 %737, %742
  %744 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %745 = call i64 @archive_entry_ctime_is_set(%struct.archive_entry* %744)
  %746 = icmp ne i64 %745, 0
  %747 = zext i1 %746 to i64
  %748 = select i1 %746, i32 4, i32 0
  %749 = add nsw i32 %743, %748
  %750 = call i32 @archive_le16enc(i8* %731, i32 %749)
  %751 = load i8*, i8** %9, align 8
  %752 = getelementptr inbounds i8, i8* %751, i64 4
  store i8* %752, i8** %9, align 8
  %753 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %754 = call i64 @archive_entry_mtime_is_set(%struct.archive_entry* %753)
  %755 = icmp ne i64 %754, 0
  %756 = zext i1 %755 to i64
  %757 = select i1 %755, i32 1, i32 0
  %758 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %759 = call i64 @archive_entry_atime_is_set(%struct.archive_entry* %758)
  %760 = icmp ne i64 %759, 0
  %761 = zext i1 %760 to i64
  %762 = select i1 %760, i32 2, i32 0
  %763 = or i32 %757, %762
  %764 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %765 = call i64 @archive_entry_ctime_is_set(%struct.archive_entry* %764)
  %766 = icmp ne i64 %765, 0
  %767 = zext i1 %766 to i64
  %768 = select i1 %766, i32 4, i32 0
  %769 = or i32 %763, %768
  %770 = trunc i32 %769 to i8
  %771 = load i8*, i8** %9, align 8
  %772 = getelementptr inbounds i8, i8* %771, i32 1
  store i8* %772, i8** %9, align 8
  store i8 %770, i8* %771, align 1
  %773 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %774 = call i64 @archive_entry_mtime_is_set(%struct.archive_entry* %773)
  %775 = icmp ne i64 %774, 0
  br i1 %775, label %776, label %784

776:                                              ; preds = %687
  %777 = load i8*, i8** %9, align 8
  %778 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %779 = call i64 @archive_entry_mtime(%struct.archive_entry* %778)
  %780 = trunc i64 %779 to i32
  %781 = call i32 @archive_le32enc(i8* %777, i32 %780)
  %782 = load i8*, i8** %9, align 8
  %783 = getelementptr inbounds i8, i8* %782, i64 4
  store i8* %783, i8** %9, align 8
  br label %784

784:                                              ; preds = %776, %687
  %785 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %786 = call i64 @archive_entry_atime_is_set(%struct.archive_entry* %785)
  %787 = icmp ne i64 %786, 0
  br i1 %787, label %788, label %796

788:                                              ; preds = %784
  %789 = load i8*, i8** %9, align 8
  %790 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %791 = call i64 @archive_entry_atime(%struct.archive_entry* %790)
  %792 = trunc i64 %791 to i32
  %793 = call i32 @archive_le32enc(i8* %789, i32 %792)
  %794 = load i8*, i8** %9, align 8
  %795 = getelementptr inbounds i8, i8* %794, i64 4
  store i8* %795, i8** %9, align 8
  br label %796

796:                                              ; preds = %788, %784
  %797 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %798 = call i64 @archive_entry_ctime_is_set(%struct.archive_entry* %797)
  %799 = icmp ne i64 %798, 0
  br i1 %799, label %800, label %808

800:                                              ; preds = %796
  %801 = load i8*, i8** %9, align 8
  %802 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %803 = call i64 @archive_entry_ctime(%struct.archive_entry* %802)
  %804 = trunc i64 %803 to i32
  %805 = call i32 @archive_le32enc(i8* %801, i32 %804)
  %806 = load i8*, i8** %9, align 8
  %807 = getelementptr inbounds i8, i8* %806, i64 4
  store i8* %807, i8** %9, align 8
  br label %808

808:                                              ; preds = %800, %796
  %809 = load i8*, i8** %9, align 8
  %810 = call i32 (i8*, ...) @memcpy(i8* %809, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %811 = load i8*, i8** %9, align 8
  %812 = getelementptr inbounds i8, i8* %811, i64 5
  store i8* %812, i8** %9, align 8
  %813 = load i8*, i8** %9, align 8
  %814 = getelementptr inbounds i8, i8* %813, i32 1
  store i8* %814, i8** %9, align 8
  store i8 4, i8* %813, align 1
  %815 = load i8*, i8** %9, align 8
  %816 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %817 = call i64 @archive_entry_uid(%struct.archive_entry* %816)
  %818 = trunc i64 %817 to i32
  %819 = call i32 @archive_le32enc(i8* %815, i32 %818)
  %820 = load i8*, i8** %9, align 8
  %821 = getelementptr inbounds i8, i8* %820, i64 4
  store i8* %821, i8** %9, align 8
  %822 = load i8*, i8** %9, align 8
  %823 = getelementptr inbounds i8, i8* %822, i32 1
  store i8* %823, i8** %9, align 8
  store i8 4, i8* %822, align 1
  %824 = load i8*, i8** %9, align 8
  %825 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %826 = call i64 @archive_entry_gid(%struct.archive_entry* %825)
  %827 = trunc i64 %826 to i32
  %828 = call i32 @archive_le32enc(i8* %824, i32 %827)
  %829 = load i8*, i8** %9, align 8
  %830 = getelementptr inbounds i8, i8* %829, i64 4
  store i8* %830, i8** %9, align 8
  %831 = load %struct.zip*, %struct.zip** %8, align 8
  %832 = getelementptr inbounds %struct.zip, %struct.zip* %831, i32 0, i32 6
  %833 = load i32, i32* %832, align 8
  %834 = load i32, i32* @ZIP_ENTRY_FLAG_ENCRYPTED, align 4
  %835 = and i32 %833, %834
  %836 = icmp ne i32 %835, 0
  br i1 %836, label %837, label %893

837:                                              ; preds = %808
  %838 = load %struct.zip*, %struct.zip** %8, align 8
  %839 = getelementptr inbounds %struct.zip, %struct.zip* %838, i32 0, i32 10
  %840 = load i32, i32* %839, align 8
  %841 = icmp eq i32 %840, 129
  br i1 %841, label %847, label %842

842:                                              ; preds = %837
  %843 = load %struct.zip*, %struct.zip** %8, align 8
  %844 = getelementptr inbounds %struct.zip, %struct.zip* %843, i32 0, i32 10
  %845 = load i32, i32* %844, align 8
  %846 = icmp eq i32 %845, 128
  br i1 %846, label %847, label %893

847:                                              ; preds = %842, %837
  %848 = load i8*, i8** %9, align 8
  %849 = call i32 (i8*, ...) @memcpy(i8* %848, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 8)
  %850 = load %struct.zip*, %struct.zip** %8, align 8
  %851 = getelementptr inbounds %struct.zip, %struct.zip* %850, i32 0, i32 23
  %852 = load %struct.archive_entry*, %struct.archive_entry** %851, align 8
  %853 = call i64 @archive_entry_size_is_set(%struct.archive_entry* %852)
  %854 = icmp ne i64 %853, 0
  br i1 %854, label %855, label %869

855:                                              ; preds = %847
  %856 = load %struct.zip*, %struct.zip** %8, align 8
  %857 = getelementptr inbounds %struct.zip, %struct.zip* %856, i32 0, i32 23
  %858 = load %struct.archive_entry*, %struct.archive_entry** %857, align 8
  %859 = call i32 @archive_entry_size(%struct.archive_entry* %858)
  %860 = icmp slt i32 %859, 20
  br i1 %860, label %861, label %869

861:                                              ; preds = %855
  %862 = load i8*, i8** %9, align 8
  %863 = getelementptr inbounds i8, i8* %862, i64 4
  %864 = load i32, i32* @AES_VENDOR_AE_2, align 4
  %865 = call i32 @archive_le16enc(i8* %863, i32 %864)
  %866 = load i32, i32* @AES_VENDOR_AE_2, align 4
  %867 = load %struct.zip*, %struct.zip** %8, align 8
  %868 = getelementptr inbounds %struct.zip, %struct.zip* %867, i32 0, i32 16
  store i32 %866, i32* %868, align 8
  br label %873

869:                                              ; preds = %855, %847
  %870 = load i32, i32* @AES_VENDOR_AE_1, align 4
  %871 = load %struct.zip*, %struct.zip** %8, align 8
  %872 = getelementptr inbounds %struct.zip, %struct.zip* %871, i32 0, i32 16
  store i32 %870, i32* %872, align 8
  br label %873

873:                                              ; preds = %869, %861
  %874 = load i8*, i8** %9, align 8
  %875 = getelementptr inbounds i8, i8* %874, i64 8
  store i8* %875, i8** %9, align 8
  %876 = load %struct.zip*, %struct.zip** %8, align 8
  %877 = getelementptr inbounds %struct.zip, %struct.zip* %876, i32 0, i32 10
  %878 = load i32, i32* %877, align 8
  %879 = icmp eq i32 %878, 129
  %880 = zext i1 %879 to i64
  %881 = select i1 %879, i32 1, i32 3
  %882 = trunc i32 %881 to i8
  %883 = load i8*, i8** %9, align 8
  %884 = getelementptr inbounds i8, i8* %883, i32 1
  store i8* %884, i8** %9, align 8
  store i8 %882, i8* %883, align 1
  %885 = load i8*, i8** %9, align 8
  %886 = load %struct.zip*, %struct.zip** %8, align 8
  %887 = getelementptr inbounds %struct.zip, %struct.zip* %886, i32 0, i32 12
  %888 = load i8*, i8** %887, align 8
  %889 = ptrtoint i8* %888 to i32
  %890 = call i32 @archive_le16enc(i8* %885, i32 %889)
  %891 = load i8*, i8** %9, align 8
  %892 = getelementptr inbounds i8, i8* %891, i64 2
  store i8* %892, i8** %9, align 8
  br label %893

893:                                              ; preds = %873, %842, %808
  %894 = load %struct.zip*, %struct.zip** %8, align 8
  %895 = getelementptr inbounds %struct.zip, %struct.zip* %894, i32 0, i32 24
  %896 = load i32, i32* %895, align 8
  %897 = load %struct.zip*, %struct.zip** %8, align 8
  %898 = getelementptr inbounds %struct.zip, %struct.zip* %897, i32 0, i32 25
  store i32 %896, i32* %898, align 4
  %899 = load %struct.zip*, %struct.zip** %8, align 8
  %900 = load i8*, i8** %9, align 8
  %901 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %902 = ptrtoint i8* %900 to i64
  %903 = ptrtoint i8* %901 to i64
  %904 = sub i64 %902, %903
  %905 = trunc i64 %904 to i32
  %906 = call i8* @cd_alloc(%struct.zip* %899, i32 %905)
  store i8* %906, i8** %10, align 8
  %907 = load i8*, i8** %10, align 8
  %908 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %909 = load i8*, i8** %9, align 8
  %910 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %911 = ptrtoint i8* %909 to i64
  %912 = ptrtoint i8* %910 to i64
  %913 = sub i64 %911, %912
  %914 = call i32 (i8*, ...) @memcpy(i8* %907, i8* %908, i64 %913)
  %915 = load %struct.zip*, %struct.zip** %8, align 8
  %916 = getelementptr inbounds %struct.zip, %struct.zip* %915, i32 0, i32 7
  %917 = load i32, i32* %916, align 4
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %919, label %949

919:                                              ; preds = %893
  %920 = load i8*, i8** %9, align 8
  store i8* %920, i8** %23, align 8
  %921 = load i8*, i8** %9, align 8
  %922 = call i32 (i8*, ...) @memcpy(i8* %921, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %923 = load i8*, i8** %9, align 8
  %924 = getelementptr inbounds i8, i8* %923, i64 4
  store i8* %924, i8** %9, align 8
  %925 = load i8*, i8** %9, align 8
  %926 = load %struct.zip*, %struct.zip** %8, align 8
  %927 = getelementptr inbounds %struct.zip, %struct.zip* %926, i32 0, i32 5
  %928 = load i64, i64* %927, align 8
  %929 = call i32 @archive_le64enc(i8* %925, i64 %928)
  %930 = load i8*, i8** %9, align 8
  %931 = getelementptr inbounds i8, i8* %930, i64 8
  store i8* %931, i8** %9, align 8
  %932 = load i8*, i8** %9, align 8
  %933 = load %struct.zip*, %struct.zip** %8, align 8
  %934 = getelementptr inbounds %struct.zip, %struct.zip* %933, i32 0, i32 4
  %935 = load i64, i64* %934, align 8
  %936 = call i32 @archive_le64enc(i8* %932, i64 %935)
  %937 = load i8*, i8** %9, align 8
  %938 = getelementptr inbounds i8, i8* %937, i64 8
  store i8* %938, i8** %9, align 8
  %939 = load i8*, i8** %23, align 8
  %940 = getelementptr inbounds i8, i8* %939, i64 2
  %941 = load i8*, i8** %9, align 8
  %942 = load i8*, i8** %23, align 8
  %943 = getelementptr inbounds i8, i8* %942, i64 4
  %944 = ptrtoint i8* %941 to i64
  %945 = ptrtoint i8* %943 to i64
  %946 = sub i64 %944, %945
  %947 = trunc i64 %946 to i32
  %948 = call i32 @archive_le16enc(i8* %940, i32 %947)
  br label %949

949:                                              ; preds = %919, %893
  %950 = load %struct.zip*, %struct.zip** %8, align 8
  %951 = getelementptr inbounds %struct.zip, %struct.zip* %950, i32 0, i32 0
  %952 = load i32, i32* %951, align 8
  %953 = load i32, i32* @ZIP_FLAG_EXPERIMENT_xl, align 4
  %954 = and i32 %952, %953
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %1018

956:                                              ; preds = %949
  %957 = load i8*, i8** %9, align 8
  store i8* %957, i8** %24, align 8
  store i32 7, i32* %25, align 4
  %958 = load i8*, i8** %9, align 8
  %959 = call i32 (i8*, ...) @memcpy(i8* %958, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 4)
  %960 = load i8*, i8** %9, align 8
  %961 = getelementptr inbounds i8, i8* %960, i64 4
  store i8* %961, i8** %9, align 8
  %962 = load i32, i32* %25, align 4
  %963 = trunc i32 %962 to i8
  %964 = load i8*, i8** %9, align 8
  %965 = getelementptr inbounds i8, i8* %964, i64 0
  store i8 %963, i8* %965, align 1
  %966 = load i8*, i8** %9, align 8
  %967 = getelementptr inbounds i8, i8* %966, i64 1
  store i8* %967, i8** %9, align 8
  %968 = load i32, i32* %25, align 4
  %969 = and i32 %968, 1
  %970 = icmp ne i32 %969, 0
  br i1 %970, label %971, label %978

971:                                              ; preds = %956
  %972 = load i8*, i8** %9, align 8
  %973 = load i32, i32* %18, align 4
  %974 = add nsw i32 768, %973
  %975 = call i32 @archive_le16enc(i8* %972, i32 %974)
  %976 = load i8*, i8** %9, align 8
  %977 = getelementptr inbounds i8, i8* %976, i64 2
  store i8* %977, i8** %9, align 8
  br label %978

978:                                              ; preds = %971, %956
  %979 = load i32, i32* %25, align 4
  %980 = and i32 %979, 2
  %981 = icmp ne i32 %980, 0
  br i1 %981, label %982, label %987

982:                                              ; preds = %978
  %983 = load i8*, i8** %9, align 8
  %984 = call i32 @archive_le16enc(i8* %983, i32 0)
  %985 = load i8*, i8** %9, align 8
  %986 = getelementptr inbounds i8, i8* %985, i64 2
  store i8* %986, i8** %9, align 8
  br label %987

987:                                              ; preds = %982, %978
  %988 = load i32, i32* %25, align 4
  %989 = and i32 %988, 4
  %990 = icmp ne i32 %989, 0
  br i1 %990, label %991, label %1002

991:                                              ; preds = %987
  %992 = load i8*, i8** %9, align 8
  %993 = load %struct.zip*, %struct.zip** %8, align 8
  %994 = getelementptr inbounds %struct.zip, %struct.zip* %993, i32 0, i32 23
  %995 = load %struct.archive_entry*, %struct.archive_entry** %994, align 8
  %996 = call i64 @archive_entry_mode(%struct.archive_entry* %995)
  %997 = trunc i64 %996 to i32
  %998 = shl i32 %997, 16
  %999 = call i32 @archive_le32enc(i8* %992, i32 %998)
  %1000 = load i8*, i8** %9, align 8
  %1001 = getelementptr inbounds i8, i8* %1000, i64 4
  store i8* %1001, i8** %9, align 8
  br label %1002

1002:                                             ; preds = %991, %987
  %1003 = load i32, i32* %25, align 4
  %1004 = and i32 %1003, 8
  %1005 = icmp ne i32 %1004, 0
  br i1 %1005, label %1006, label %1007

1006:                                             ; preds = %1002
  br label %1007

1007:                                             ; preds = %1006, %1002
  %1008 = load i8*, i8** %24, align 8
  %1009 = getelementptr inbounds i8, i8* %1008, i64 2
  %1010 = load i8*, i8** %9, align 8
  %1011 = load i8*, i8** %24, align 8
  %1012 = getelementptr inbounds i8, i8* %1011, i64 4
  %1013 = ptrtoint i8* %1010 to i64
  %1014 = ptrtoint i8* %1012 to i64
  %1015 = sub i64 %1013, %1014
  %1016 = trunc i64 %1015 to i32
  %1017 = call i32 @archive_le16enc(i8* %1009, i32 %1016)
  br label %1018

1018:                                             ; preds = %1007, %949
  %1019 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %1020 = getelementptr inbounds i8, i8* %1019, i64 28
  %1021 = load i8*, i8** %9, align 8
  %1022 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %1023 = ptrtoint i8* %1021 to i64
  %1024 = ptrtoint i8* %1022 to i64
  %1025 = sub i64 %1023, %1024
  %1026 = trunc i64 %1025 to i32
  %1027 = call i32 @archive_le16enc(i8* %1020, i32 %1026)
  %1028 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1029 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %1030 = call i32 (%struct.archive_write*, ...) @__archive_write_output(%struct.archive_write* %1028, i8* %1029, i32 30)
  store i32 %1030, i32* %15, align 4
  %1031 = load i32, i32* %15, align 4
  %1032 = load i32, i32* @ARCHIVE_OK, align 4
  %1033 = icmp ne i32 %1031, %1032
  br i1 %1033, label %1034, label %1036

1034:                                             ; preds = %1018
  %1035 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1035, i32* %3, align 4
  br label %1111

1036:                                             ; preds = %1018
  %1037 = load %struct.zip*, %struct.zip** %8, align 8
  %1038 = getelementptr inbounds %struct.zip, %struct.zip* %1037, i32 0, i32 1
  %1039 = load i64, i64* %1038, align 8
  %1040 = add nsw i64 %1039, 30
  store i64 %1040, i64* %1038, align 8
  %1041 = load %struct.zip*, %struct.zip** %8, align 8
  %1042 = getelementptr inbounds %struct.zip, %struct.zip* %1041, i32 0, i32 23
  %1043 = load %struct.archive_entry*, %struct.archive_entry** %1042, align 8
  %1044 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1045 = call i32 @write_path(%struct.archive_entry* %1043, %struct.archive_write* %1044)
  store i32 %1045, i32* %15, align 4
  %1046 = load i32, i32* %15, align 4
  %1047 = load i32, i32* @ARCHIVE_OK, align 4
  %1048 = icmp sle i32 %1046, %1047
  br i1 %1048, label %1049, label %1051

1049:                                             ; preds = %1036
  %1050 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1050, i32* %3, align 4
  br label %1111

1051:                                             ; preds = %1036
  %1052 = load i32, i32* %15, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = load %struct.zip*, %struct.zip** %8, align 8
  %1055 = getelementptr inbounds %struct.zip, %struct.zip* %1054, i32 0, i32 1
  %1056 = load i64, i64* %1055, align 8
  %1057 = add nsw i64 %1056, %1053
  store i64 %1057, i64* %1055, align 8
  %1058 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1059 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %1060 = load i8*, i8** %9, align 8
  %1061 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %1062 = ptrtoint i8* %1060 to i64
  %1063 = ptrtoint i8* %1061 to i64
  %1064 = sub i64 %1062, %1063
  %1065 = call i32 (%struct.archive_write*, ...) @__archive_write_output(%struct.archive_write* %1058, i8* %1059, i64 %1064)
  store i32 %1065, i32* %15, align 4
  %1066 = load i32, i32* %15, align 4
  %1067 = load i32, i32* @ARCHIVE_OK, align 4
  %1068 = icmp ne i32 %1066, %1067
  br i1 %1068, label %1069, label %1071

1069:                                             ; preds = %1051
  %1070 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1070, i32* %3, align 4
  br label %1111

1071:                                             ; preds = %1051
  %1072 = load i8*, i8** %9, align 8
  %1073 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %1074 = ptrtoint i8* %1072 to i64
  %1075 = ptrtoint i8* %1073 to i64
  %1076 = sub i64 %1074, %1075
  %1077 = load %struct.zip*, %struct.zip** %8, align 8
  %1078 = getelementptr inbounds %struct.zip, %struct.zip* %1077, i32 0, i32 1
  %1079 = load i64, i64* %1078, align 8
  %1080 = add nsw i64 %1079, %1076
  store i64 %1080, i64* %1078, align 8
  %1081 = load i8*, i8** %12, align 8
  %1082 = icmp ne i8* %1081, null
  br i1 %1082, label %1083, label %1109

1083:                                             ; preds = %1071
  %1084 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1085 = load i8*, i8** %12, align 8
  %1086 = load i64, i64* %13, align 8
  %1087 = call i32 (%struct.archive_write*, ...) @__archive_write_output(%struct.archive_write* %1084, i8* %1085, i64 %1086)
  store i32 %1087, i32* %15, align 4
  %1088 = load i32, i32* %15, align 4
  %1089 = load i32, i32* @ARCHIVE_OK, align 4
  %1090 = icmp ne i32 %1088, %1089
  br i1 %1090, label %1091, label %1093

1091:                                             ; preds = %1083
  %1092 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1092, i32* %3, align 4
  br label %1111

1093:                                             ; preds = %1083
  %1094 = load i64, i64* %13, align 8
  %1095 = load %struct.zip*, %struct.zip** %8, align 8
  %1096 = getelementptr inbounds %struct.zip, %struct.zip* %1095, i32 0, i32 22
  %1097 = load i64, i64* %1096, align 8
  %1098 = add i64 %1097, %1094
  store i64 %1098, i64* %1096, align 8
  %1099 = load i64, i64* %13, align 8
  %1100 = load %struct.zip*, %struct.zip** %8, align 8
  %1101 = getelementptr inbounds %struct.zip, %struct.zip* %1100, i32 0, i32 21
  %1102 = load i64, i64* %1101, align 8
  %1103 = add i64 %1102, %1099
  store i64 %1103, i64* %1101, align 8
  %1104 = load i64, i64* %13, align 8
  %1105 = load %struct.zip*, %struct.zip** %8, align 8
  %1106 = getelementptr inbounds %struct.zip, %struct.zip* %1105, i32 0, i32 1
  %1107 = load i64, i64* %1106, align 8
  %1108 = add i64 %1107, %1104
  store i64 %1108, i64* %1106, align 8
  br label %1109

1109:                                             ; preds = %1093, %1071
  %1110 = load i32, i32* %16, align 4
  store i32 %1110, i32* %3, align 4
  br label %1111

1111:                                             ; preds = %1109, %1091, %1069, %1049, %1034, %249, %210, %192, %81, %69, %46
  %1112 = load i32, i32* %3, align 4
  ret i32 %1112
}

declare dso_local %struct.archive_string_conv* @get_sconv(%struct.archive_write*, %struct.zip*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #1

declare dso_local i64 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_encrypto_aes_ctr_release(i32*) #1

declare dso_local i32 @archive_hmac_sha1_cleanup(i32*) #1

declare dso_local i8* @archive_entry_clone(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_pathname_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i64 @archive_entry_symlink_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_set_symlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @is_all_ascii(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @path_length(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @archive_le16enc(i8*, i32) #1

declare dso_local i32 @archive_le32enc(i8*, i32) #1

declare dso_local i32 @dos_time(i64) #1

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i8* @cd_alloc(%struct.zip*, i32) #1

declare dso_local i64 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @copy_path(%struct.archive_entry*, i8*) #1

declare dso_local i64 @archive_entry_mtime_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_atime_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime_is_set(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_le64enc(i8*, i64) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, ...) #1

declare dso_local i32 @write_path(%struct.archive_entry*, %struct.archive_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
