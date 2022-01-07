; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_format_7zip_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_archive_read_format_7zip_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_13__, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct._7zip = type { i64, i64, i32, i32, i8*, %struct.TYPE_12__, i32*, i32, i64, %struct._7zip_entry*, %struct._7zip_entry*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i64, %struct._7z_folder* }
%struct._7z_folder = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct._7zip_entry = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct._7z_header_info = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i64 0, align 8
@ARCHIVE_FORMAT_7ZIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"7-Zip\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Pathname cannot be converted from %s to current locale.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@MTIME_IS_SET = common dso_local global i32 0, align 4
@CTIME_IS_SET = common dso_local global i32 0, align 4
@ATIME_IS_SET = common dso_local global i32 0, align 4
@AE_IFMT = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Can't allocate memory for Symname\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_7zip_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_7zip_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct._7zip*, align 8
  %7 = alloca %struct._7zip_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._7z_folder*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct._7z_header_info, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %19 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %20 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct._7zip*
  store %struct._7zip* %24, %struct._7zip** %6, align 8
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %25, i32* %9, align 4
  store %struct._7z_folder* null, %struct._7z_folder** %10, align 8
  store i64 0, i64* %11, align 8
  %26 = load %struct._7zip*, %struct._7zip** %6, align 8
  %27 = getelementptr inbounds %struct._7zip, %struct._7zip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct._7zip*, %struct._7zip** %6, align 8
  %33 = getelementptr inbounds %struct._7zip, %struct._7zip* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* @ARCHIVE_FORMAT_7ZIP, align 4
  %36 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %37 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %40 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %46 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %34
  %49 = load %struct._7zip*, %struct._7zip** %6, align 8
  %50 = getelementptr inbounds %struct._7zip, %struct._7zip* %49, i32 0, i32 10
  %51 = load %struct._7zip_entry*, %struct._7zip_entry** %50, align 8
  %52 = icmp eq %struct._7zip_entry* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = call i32 @memset(%struct._7z_header_info* %12, i32 0, i32 4)
  %55 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %56 = load %struct._7zip*, %struct._7zip** %6, align 8
  %57 = call i32 @slurp_central_directory(%struct.archive_read* %55, %struct._7zip* %56, %struct._7z_header_info* %12)
  store i32 %57, i32* %8, align 4
  %58 = call i32 @free_Header(%struct._7z_header_info* %12)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %403

64:                                               ; preds = %53
  %65 = load %struct._7zip*, %struct._7zip** %6, align 8
  %66 = getelementptr inbounds %struct._7zip, %struct._7zip* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = load %struct._7zip*, %struct._7zip** %6, align 8
  %69 = getelementptr inbounds %struct._7zip, %struct._7zip* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct._7zip*, %struct._7zip** %6, align 8
  %71 = getelementptr inbounds %struct._7zip, %struct._7zip* %70, i32 0, i32 10
  %72 = load %struct._7zip_entry*, %struct._7zip_entry** %71, align 8
  %73 = load %struct._7zip*, %struct._7zip** %6, align 8
  %74 = getelementptr inbounds %struct._7zip, %struct._7zip* %73, i32 0, i32 9
  store %struct._7zip_entry* %72, %struct._7zip_entry** %74, align 8
  br label %80

75:                                               ; preds = %48
  %76 = load %struct._7zip*, %struct._7zip** %6, align 8
  %77 = getelementptr inbounds %struct._7zip, %struct._7zip* %76, i32 0, i32 9
  %78 = load %struct._7zip_entry*, %struct._7zip_entry** %77, align 8
  %79 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %78, i32 1
  store %struct._7zip_entry* %79, %struct._7zip_entry** %77, align 8
  br label %80

80:                                               ; preds = %75, %64
  %81 = load %struct._7zip*, %struct._7zip** %6, align 8
  %82 = getelementptr inbounds %struct._7zip, %struct._7zip* %81, i32 0, i32 9
  %83 = load %struct._7zip_entry*, %struct._7zip_entry** %82, align 8
  store %struct._7zip_entry* %83, %struct._7zip_entry** %7, align 8
  %84 = load %struct._7zip*, %struct._7zip** %6, align 8
  %85 = getelementptr inbounds %struct._7zip, %struct._7zip* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ule i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %90 = icmp eq %struct._7zip_entry* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88, %80
  %92 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %92, i32* %3, align 4
  br label %403

93:                                               ; preds = %88
  %94 = load %struct._7zip*, %struct._7zip** %6, align 8
  %95 = getelementptr inbounds %struct._7zip, %struct._7zip* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %95, align 8
  %98 = load %struct._7zip*, %struct._7zip** %6, align 8
  %99 = getelementptr inbounds %struct._7zip, %struct._7zip* %98, i32 0, i32 8
  store i64 0, i64* %99, align 8
  %100 = load %struct._7zip*, %struct._7zip** %6, align 8
  %101 = getelementptr inbounds %struct._7zip, %struct._7zip* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  %102 = call i32 @crc32(i32 0, i32* null, i32 0)
  %103 = load %struct._7zip*, %struct._7zip** %6, align 8
  %104 = getelementptr inbounds %struct._7zip, %struct._7zip* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 8
  %105 = load %struct._7zip*, %struct._7zip** %6, align 8
  %106 = getelementptr inbounds %struct._7zip, %struct._7zip* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %93
  %110 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %111 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %110, i32 0, i32 0
  %112 = call i32* @archive_string_conversion_from_charset(%struct.TYPE_13__* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %113 = load %struct._7zip*, %struct._7zip** %6, align 8
  %114 = getelementptr inbounds %struct._7zip, %struct._7zip* %113, i32 0, i32 6
  store i32* %112, i32** %114, align 8
  %115 = load %struct._7zip*, %struct._7zip** %6, align 8
  %116 = getelementptr inbounds %struct._7zip, %struct._7zip* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %120, i32* %3, align 4
  br label %403

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %93
  %123 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %124 = icmp ne %struct._7zip_entry* %123, null
  br i1 %124, label %125, label %174

125:                                              ; preds = %122
  %126 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %127 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct._7zip*, %struct._7zip** %6, align 8
  %130 = getelementptr inbounds %struct._7zip, %struct._7zip* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ult i64 %128, %133
  br i1 %134, label %135, label %174

135:                                              ; preds = %125
  %136 = load %struct._7zip*, %struct._7zip** %6, align 8
  %137 = getelementptr inbounds %struct._7zip, %struct._7zip* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load %struct._7z_folder*, %struct._7z_folder** %139, align 8
  %141 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %142 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %140, i64 %143
  store %struct._7z_folder* %144, %struct._7z_folder** %10, align 8
  store i64 0, i64* %11, align 8
  br label %145

145:                                              ; preds = %170, %135
  %146 = load %struct._7z_folder*, %struct._7z_folder** %10, align 8
  %147 = icmp ne %struct._7z_folder* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i64, i64* %11, align 8
  %150 = load %struct._7z_folder*, %struct._7z_folder** %10, align 8
  %151 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ult i64 %149, %152
  br label %154

154:                                              ; preds = %148, %145
  %155 = phi i1 [ false, %145 ], [ %153, %148 ]
  br i1 %155, label %156, label %173

156:                                              ; preds = %154
  %157 = load %struct._7z_folder*, %struct._7z_folder** %10, align 8
  %158 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %157, i32 0, i32 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  switch i32 %163, label %169 [
    i32 129, label %164
    i32 128, label %164
    i32 130, label %164
  ]

164:                                              ; preds = %156, %156, %156
  %165 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %166 = call i32 @archive_entry_set_is_data_encrypted(%struct.archive_entry* %165, i32 1)
  %167 = load %struct._7zip*, %struct._7zip** %6, align 8
  %168 = getelementptr inbounds %struct._7zip, %struct._7zip* %167, i32 0, i32 0
  store i64 1, i64* %168, align 8
  br label %169

169:                                              ; preds = %156, %164
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %11, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %11, align 8
  br label %145

173:                                              ; preds = %154
  br label %174

174:                                              ; preds = %173, %125, %122
  %175 = load %struct._7zip*, %struct._7zip** %6, align 8
  %176 = getelementptr inbounds %struct._7zip, %struct._7zip* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load %struct._7zip*, %struct._7zip** %6, align 8
  %182 = getelementptr inbounds %struct._7zip, %struct._7zip* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %180, %174
  %184 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %185 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %186 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %185, i32 0, i32 11
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i8*
  %189 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %190 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %189, i32 0, i32 10
  %191 = load i32, i32* %190, align 8
  %192 = load %struct._7zip*, %struct._7zip** %6, align 8
  %193 = getelementptr inbounds %struct._7zip, %struct._7zip* %192, i32 0, i32 6
  %194 = load i32*, i32** %193, align 8
  %195 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %184, i8* %188, i32 %191, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %183
  %198 = load i64, i64* @errno, align 8
  %199 = load i64, i64* @ENOMEM, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %203 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %202, i32 0, i32 0
  %204 = load i64, i64* @ENOMEM, align 8
  %205 = call i32 (%struct.TYPE_13__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_13__* %203, i64 %204, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %206 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %206, i32* %3, align 4
  br label %403

207:                                              ; preds = %197
  %208 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %209 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %208, i32 0, i32 0
  %210 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %211 = sext i32 %210 to i64
  %212 = load %struct._7zip*, %struct._7zip** %6, align 8
  %213 = getelementptr inbounds %struct._7zip, %struct._7zip* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @archive_string_conversion_charset_name(i32* %214)
  %216 = call i32 (%struct.TYPE_13__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_13__* %209, i64 %211, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %207, %183
  %219 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %220 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %221 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @archive_entry_set_mode(%struct.archive_entry* %219, i32 %222)
  %224 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %225 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @MTIME_IS_SET, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %218
  %231 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %232 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %233 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 4
  %235 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %236 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %231, i32 %234, i32 %237)
  br label %239

239:                                              ; preds = %230, %218
  %240 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %241 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @CTIME_IS_SET, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %239
  %247 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %248 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %249 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 4
  %251 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %252 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %247, i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %246, %239
  %256 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %257 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @ATIME_IS_SET, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %255
  %263 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %264 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %265 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %268 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @archive_entry_set_atime(%struct.archive_entry* %263, i32 %266, i32 %269)
  br label %271

271:                                              ; preds = %262, %255
  %272 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %273 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, -1
  br i1 %275, label %276, label %294

276:                                              ; preds = %271
  %277 = load %struct._7zip*, %struct._7zip** %6, align 8
  %278 = getelementptr inbounds %struct._7zip, %struct._7zip* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %283 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct._7zip*, %struct._7zip** %6, align 8
  %288 = getelementptr inbounds %struct._7zip, %struct._7zip* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 4
  %289 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %290 = load %struct._7zip*, %struct._7zip** %6, align 8
  %291 = getelementptr inbounds %struct._7zip, %struct._7zip* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @archive_entry_set_size(%struct.archive_entry* %289, i32 %292)
  br label %299

294:                                              ; preds = %271
  %295 = load %struct._7zip*, %struct._7zip** %6, align 8
  %296 = getelementptr inbounds %struct._7zip, %struct._7zip* %295, i32 0, i32 3
  store i32 0, i32* %296, align 4
  %297 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %298 = call i32 @archive_entry_set_size(%struct.archive_entry* %297, i32 0)
  br label %299

299:                                              ; preds = %294, %276
  %300 = load %struct._7zip*, %struct._7zip** %6, align 8
  %301 = getelementptr inbounds %struct._7zip, %struct._7zip* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = icmp slt i32 %302, 1
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = load %struct._7zip*, %struct._7zip** %6, align 8
  %306 = getelementptr inbounds %struct._7zip, %struct._7zip* %305, i32 0, i32 2
  store i32 1, i32* %306, align 8
  br label %307

307:                                              ; preds = %304, %299
  %308 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %309 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @AE_IFMT, align 4
  %312 = and i32 %310, %311
  %313 = load i32, i32* @AE_IFLNK, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %391

315:                                              ; preds = %307
  store i8* null, i8** %13, align 8
  store i64 0, i64* %14, align 8
  br label %316

316:                                              ; preds = %348, %315
  %317 = load %struct._7zip*, %struct._7zip** %6, align 8
  %318 = getelementptr inbounds %struct._7zip, %struct._7zip* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %359

321:                                              ; preds = %316
  %322 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %323 = call i32 @archive_read_format_7zip_read_data(%struct.archive_read* %322, i8** %15, i64* %17, i32* %18)
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* @ARCHIVE_WARN, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %331

327:                                              ; preds = %321
  %328 = load i8*, i8** %13, align 8
  %329 = call i32 @free(i8* %328)
  %330 = load i32, i32* %8, align 4
  store i32 %330, i32* %3, align 4
  br label %403

331:                                              ; preds = %321
  %332 = load i8*, i8** %13, align 8
  %333 = load i64, i64* %14, align 8
  %334 = load i64, i64* %17, align 8
  %335 = add i64 %333, %334
  %336 = add i64 %335, 1
  %337 = call i8* @realloc(i8* %332, i64 %336)
  store i8* %337, i8** %16, align 8
  %338 = load i8*, i8** %16, align 8
  %339 = icmp eq i8* %338, null
  br i1 %339, label %340, label %348

340:                                              ; preds = %331
  %341 = load i8*, i8** %13, align 8
  %342 = call i32 @free(i8* %341)
  %343 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %344 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %343, i32 0, i32 0
  %345 = load i64, i64* @ENOMEM, align 8
  %346 = call i32 (%struct.TYPE_13__*, i64, i8*, ...) @archive_set_error(%struct.TYPE_13__* %344, i64 %345, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %347 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %347, i32* %3, align 4
  br label %403

348:                                              ; preds = %331
  %349 = load i8*, i8** %16, align 8
  store i8* %349, i8** %13, align 8
  %350 = load i8*, i8** %13, align 8
  %351 = load i64, i64* %14, align 8
  %352 = getelementptr inbounds i8, i8* %350, i64 %351
  %353 = load i8*, i8** %15, align 8
  %354 = load i64, i64* %17, align 8
  %355 = call i32 @memcpy(i8* %352, i8* %353, i64 %354)
  %356 = load i64, i64* %17, align 8
  %357 = load i64, i64* %14, align 8
  %358 = add i64 %357, %356
  store i64 %358, i64* %14, align 8
  br label %316

359:                                              ; preds = %316
  %360 = load i64, i64* %14, align 8
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %379

362:                                              ; preds = %359
  %363 = load i32, i32* @AE_IFMT, align 4
  %364 = xor i32 %363, -1
  %365 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %366 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = and i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load i32, i32* @AE_IFREG, align 4
  %370 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %371 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 8
  %374 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %375 = load %struct._7zip_entry*, %struct._7zip_entry** %7, align 8
  %376 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @archive_entry_set_mode(%struct.archive_entry* %374, i32 %377)
  br label %386

379:                                              ; preds = %359
  %380 = load i8*, i8** %13, align 8
  %381 = load i64, i64* %14, align 8
  %382 = getelementptr inbounds i8, i8* %380, i64 %381
  store i8 0, i8* %382, align 1
  %383 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %384 = load i8*, i8** %13, align 8
  %385 = call i32 @archive_entry_copy_symlink(%struct.archive_entry* %383, i8* %384)
  br label %386

386:                                              ; preds = %379, %362
  %387 = load i8*, i8** %13, align 8
  %388 = call i32 @free(i8* %387)
  %389 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %390 = call i32 @archive_entry_set_size(%struct.archive_entry* %389, i32 0)
  br label %391

391:                                              ; preds = %386, %307
  %392 = load %struct._7zip*, %struct._7zip** %6, align 8
  %393 = getelementptr inbounds %struct._7zip, %struct._7zip* %392, i32 0, i32 4
  %394 = load i8*, i8** %393, align 8
  %395 = call i32 @sprintf(i8* %394, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %396 = load %struct._7zip*, %struct._7zip** %6, align 8
  %397 = getelementptr inbounds %struct._7zip, %struct._7zip* %396, i32 0, i32 4
  %398 = load i8*, i8** %397, align 8
  %399 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %400 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 0
  store i8* %398, i8** %401, align 8
  %402 = load i32, i32* %9, align 4
  store i32 %402, i32* %3, align 4
  br label %403

403:                                              ; preds = %391, %340, %327, %201, %119, %91, %62
  %404 = load i32, i32* %3, align 4
  ret i32 %404
}

declare dso_local i32 @memset(%struct._7z_header_info*, i32, i32) #1

declare dso_local i32 @slurp_central_directory(%struct.archive_read*, %struct._7zip*, %struct._7z_header_info*) #1

declare dso_local i32 @free_Header(%struct._7z_header_info*) #1

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i32* @archive_string_conversion_from_charset(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @archive_entry_set_is_data_encrypted(%struct.archive_entry*, i32) #1

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i8*, i32, i32*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_13__*, i64, i8*, ...) #1

declare dso_local i32 @archive_string_conversion_charset_name(i32*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_read_format_7zip_read_data(%struct.archive_read*, i8**, i64*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @archive_entry_copy_symlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
