; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.zip = type { i32, i32, i64, i64 (i64, i8*, i32)*, i64, %struct.TYPE_6__*, i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@AE_IFMT = common dso_local global i32 0, align 4
@ZIP_STRONG_ENCRYPTED = common dso_local global i32 0, align 4
@WINZIP_AES_ENCRYPTION = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unsupported ZIP compression method (%d: %s)\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"ZIP compressed data is wrong size (read %jd, expected %jd)\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"ZIP uncompressed data is wrong size (read %jd, expected %jd)\0A\00", align 1
@AES_VENDOR_AE_2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"ZIP bad CRC: 0x%lx should be 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i32*)* @archive_read_format_zip_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_zip_read_data(%struct.archive_read* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zip*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.zip*
  store %struct.zip* %17, %struct.zip** %11, align 8
  %18 = load %struct.zip*, %struct.zip** %11, align 8
  %19 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.zip*, %struct.zip** %11, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = load %struct.zip*, %struct.zip** %11, align 8
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i64*, i64** %8, align 8
  store i64 0, i64* %31, align 8
  %32 = load i8**, i8*** %7, align 8
  store i8* null, i8** %32, align 8
  %33 = load %struct.zip*, %struct.zip** %11, align 8
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %38, i32* %5, align 4
  br label %268

39:                                               ; preds = %26
  %40 = load i32, i32* @AE_IFREG, align 4
  %41 = load %struct.zip*, %struct.zip** %11, align 8
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %41, i32 0, i32 5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AE_IFMT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %40, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %50, i32* %5, align 4
  br label %268

51:                                               ; preds = %39
  %52 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %53 = load %struct.zip*, %struct.zip** %11, align 8
  %54 = getelementptr inbounds %struct.zip, %struct.zip* %53, i32 0, i32 10
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @__archive_read_consume(%struct.archive_read* %52, i64 %55)
  %57 = load %struct.zip*, %struct.zip** %11, align 8
  %58 = getelementptr inbounds %struct.zip, %struct.zip* %57, i32 0, i32 10
  store i64 0, i64* %58, align 8
  %59 = load %struct.zip*, %struct.zip** %11, align 8
  %60 = getelementptr inbounds %struct.zip, %struct.zip* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %51
  %64 = load %struct.zip*, %struct.zip** %11, align 8
  %65 = getelementptr inbounds %struct.zip, %struct.zip* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.zip*, %struct.zip** %11, align 8
  %67 = getelementptr inbounds %struct.zip, %struct.zip* %66, i32 0, i32 5
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ZIP_STRONG_ENCRYPTED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %76 = call i32 @read_decryption_header(%struct.archive_read* %75)
  store i32 %76, i32* %10, align 4
  br label %92

77:                                               ; preds = %63
  %78 = load %struct.zip*, %struct.zip** %11, align 8
  %79 = getelementptr inbounds %struct.zip, %struct.zip* %78, i32 0, i32 5
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WINZIP_AES_ENCRYPTION, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %87 = call i32 @init_WinZip_AES_decryption(%struct.archive_read* %86)
  store i32 %87, i32* %10, align 4
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %90 = call i32 @init_traditional_PKWARE_decryption(%struct.archive_read* %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @ARCHIVE_OK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %268

98:                                               ; preds = %92
  %99 = load %struct.zip*, %struct.zip** %11, align 8
  %100 = getelementptr inbounds %struct.zip, %struct.zip* %99, i32 0, i32 9
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %51
  %102 = load %struct.zip*, %struct.zip** %11, align 8
  %103 = getelementptr inbounds %struct.zip, %struct.zip* %102, i32 0, i32 5
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %119 [
    i32 0, label %107
    i32 98, label %113
  ]

107:                                              ; preds = %101
  %108 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %109 = load i8**, i8*** %7, align 8
  %110 = load i64*, i64** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @zip_read_data_none(%struct.archive_read* %108, i8** %109, i64* %110, i32* %111)
  store i32 %112, i32* %10, align 4
  br label %138

113:                                              ; preds = %101
  %114 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %115 = load i8**, i8*** %7, align 8
  %116 = load i64*, i64** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @zip_read_data_zipx_ppmd(%struct.archive_read* %114, i8** %115, i64* %116, i32* %117)
  store i32 %118, i32* %10, align 4
  br label %138

119:                                              ; preds = %101
  %120 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %121 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %120, i32 0, i32 0
  %122 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %123 = load %struct.zip*, %struct.zip** %11, align 8
  %124 = getelementptr inbounds %struct.zip, %struct.zip* %123, i32 0, i32 5
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = load %struct.zip*, %struct.zip** %11, align 8
  %130 = getelementptr inbounds %struct.zip, %struct.zip* %129, i32 0, i32 5
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = call i64 @compression_name(i64 %134)
  %136 = call i32 @archive_set_error(i32* %121, i32 %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %128, i64 %135)
  %137 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %137, i32* %5, align 4
  br label %268

138:                                              ; preds = %113, %107
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @ARCHIVE_OK, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %5, align 4
  br label %268

144:                                              ; preds = %138
  %145 = load i64*, i64** %8, align 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.zip*, %struct.zip** %11, align 8
  %150 = getelementptr inbounds %struct.zip, %struct.zip* %149, i32 0, i32 3
  %151 = load i64 (i64, i8*, i32)*, i64 (i64, i8*, i32)** %150, align 8
  %152 = load %struct.zip*, %struct.zip** %11, align 8
  %153 = getelementptr inbounds %struct.zip, %struct.zip* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i8**, i8*** %7, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i64*, i64** %8, align 8
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i64 %151(i64 %154, i8* %156, i32 %159)
  %161 = load %struct.zip*, %struct.zip** %11, align 8
  %162 = getelementptr inbounds %struct.zip, %struct.zip* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %148, %144
  %164 = load %struct.zip*, %struct.zip** %11, align 8
  %165 = getelementptr inbounds %struct.zip, %struct.zip* %164, i32 0, i32 8
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %266

168:                                              ; preds = %163
  %169 = load %struct.zip*, %struct.zip** %11, align 8
  %170 = getelementptr inbounds %struct.zip, %struct.zip* %169, i32 0, i32 5
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.zip*, %struct.zip** %11, align 8
  %175 = getelementptr inbounds %struct.zip, %struct.zip* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %173, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %168
  %179 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %180 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %179, i32 0, i32 0
  %181 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %182 = load %struct.zip*, %struct.zip** %11, align 8
  %183 = getelementptr inbounds %struct.zip, %struct.zip* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.zip*, %struct.zip** %11, align 8
  %186 = getelementptr inbounds %struct.zip, %struct.zip* %185, i32 0, i32 5
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @archive_set_error(i32* %180, i32 %181, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %184, i64 %189)
  %191 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %191, i32* %5, align 4
  br label %268

192:                                              ; preds = %168
  %193 = load %struct.zip*, %struct.zip** %11, align 8
  %194 = getelementptr inbounds %struct.zip, %struct.zip* %193, i32 0, i32 5
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @UINT32_MAX, align 4
  %199 = and i32 %197, %198
  %200 = load %struct.zip*, %struct.zip** %11, align 8
  %201 = getelementptr inbounds %struct.zip, %struct.zip* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @UINT32_MAX, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %199, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %192
  %207 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %208 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %207, i32 0, i32 0
  %209 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %210 = load %struct.zip*, %struct.zip** %11, align 8
  %211 = getelementptr inbounds %struct.zip, %struct.zip* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = load %struct.zip*, %struct.zip** %11, align 8
  %215 = getelementptr inbounds %struct.zip, %struct.zip* %214, i32 0, i32 5
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = call i32 @archive_set_error(i32* %208, i32 %209, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %213, i64 %219)
  %221 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %221, i32* %5, align 4
  br label %268

222:                                              ; preds = %192
  %223 = load %struct.zip*, %struct.zip** %11, align 8
  %224 = getelementptr inbounds %struct.zip, %struct.zip* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = load %struct.zip*, %struct.zip** %11, align 8
  %229 = getelementptr inbounds %struct.zip, %struct.zip* %228, i32 0, i32 5
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @AES_VENDOR_AE_2, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %265

236:                                              ; preds = %227, %222
  %237 = load %struct.zip*, %struct.zip** %11, align 8
  %238 = getelementptr inbounds %struct.zip, %struct.zip* %237, i32 0, i32 5
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.zip*, %struct.zip** %11, align 8
  %243 = getelementptr inbounds %struct.zip, %struct.zip* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %241, %244
  br i1 %245, label %246, label %265

246:                                              ; preds = %236
  %247 = load %struct.zip*, %struct.zip** %11, align 8
  %248 = getelementptr inbounds %struct.zip, %struct.zip* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %265, label %251

251:                                              ; preds = %246
  %252 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %253 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %252, i32 0, i32 0
  %254 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %255 = load %struct.zip*, %struct.zip** %11, align 8
  %256 = getelementptr inbounds %struct.zip, %struct.zip* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.zip*, %struct.zip** %11, align 8
  %259 = getelementptr inbounds %struct.zip, %struct.zip* %258, i32 0, i32 5
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @archive_set_error(i32* %253, i32 %254, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %257, i64 %262)
  %264 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %264, i32* %5, align 4
  br label %268

265:                                              ; preds = %246, %236, %227
  br label %266

266:                                              ; preds = %265, %163
  %267 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %267, i32* %5, align 4
  br label %268

268:                                              ; preds = %266, %251, %206, %178, %142, %119, %96, %49, %37
  %269 = load i32, i32* %5, align 4
  ret i32 %269
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @read_decryption_header(%struct.archive_read*) #1

declare dso_local i32 @init_WinZip_AES_decryption(%struct.archive_read*) #1

declare dso_local i32 @init_traditional_PKWARE_decryption(%struct.archive_read*) #1

declare dso_local i32 @zip_read_data_none(%struct.archive_read*, i8**, i64*, i32*) #1

declare dso_local i32 @zip_read_data_zipx_ppmd(%struct.archive_read*, i8**, i64*, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i64, i64) #1

declare dso_local i64 @compression_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
